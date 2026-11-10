using System;
using UnityEngine;

/// <summary>
/// Independent two-hand space-exploration loop for a Humanoid character.
/// Attach to the SAME GameObject as the Animator. The controller must play
/// a standing clip and the Base Layer's IK Pass must be enabled.
///
/// This script only controls character transforms and Humanoid IK.
/// It does not touch materials, shaders, cameras, or lighting.
/// </summary>
[RequireComponent(typeof(Animator))]
public class ExploreHandsIK : MonoBehaviour
{
    [Serializable]
    public class ArmMotion
    {
        [Tooltip("Azimuth 0 = forward, +90 = character right, -90 = character left")]
        [Range(-180f, 180f)] public float azimuthCenter = 55f;

        [Tooltip("Maximum swing from the center, in degrees")]
        [Range(0f, 150f)] public float azimuthAmplitude = 65f;

        [Tooltip("Complete horizontal back-and-forth cycles per loop")]
        [Range(1, 6)] public int azimuthCycles = 1;
        [Range(0f, 360f)] public float azimuthPhase = 0f;

        [Tooltip("Average hand elevation in degrees")]
        [Range(-70f, 80f)] public float elevationCenter = 10f;
        [Range(0f, 75f)] public float elevationAmplitude = 37f;
        [Range(1, 6)] public int elevationCycles = 2;
        [Range(0f, 360f)] public float elevationPhase = 90f;

        [Tooltip("Fraction of full arm length used for the target")]
        [Range(0.25f, 0.98f)] public float reach = 0.80f;
        [Range(0f, 1f)] public float ikWeight = 1f;

        [Tooltip("How far the elbow hint points outward")]
        [Range(0f, 1.0f)] public float elbowOut = 0.60f;
        [Range(-0.8f, 0.8f)] public float elbowForward = 0.05f;
        [Range(-0.8f, 0.8f)] public float elbowUp = -0.15f;
        [Range(0f, 1f)] public float elbowHintWeight = 0.65f;
    }

    [Header("01 | Loop and Body")]
    [Min(2f)] public float loopSeconds = 10f;
    public bool rotateBody360 = true;
    [Range(-2, 2)] public int bodyTurnsPerLoop = 1;
    [Range(-180f, 180f)] public float initialBodyYaw = 0f;
    public bool playMotion = true;

    [Header("02 | Right Arm")]
    public ArmMotion rightArm = new ArmMotion
    {
        azimuthCenter = 65f,
        azimuthAmplitude = 80f,
        azimuthCycles = 1,
        azimuthPhase = 0f,
        elevationCenter = 5f,
        elevationAmplitude = 40f,
        elevationCycles = 2,
        elevationPhase = 100f,
        reach = 0.83f
    };

    [Header("03 | Left Arm")]
    public ArmMotion leftArm = new ArmMotion
    {
        azimuthCenter = -65f,
        azimuthAmplitude = 70f,
        azimuthCycles = 2,
        azimuthPhase = 70f,
        elevationCenter = 10f,
        elevationAmplitude = 35f,
        elevationCycles = 3,
        elevationPhase = 15f,
        reach = 0.78f
    };

    [Header("04 | Legs / Knee Straightening")]
    [Tooltip("Corrects bent knees from the base animation using foot IK")]
    public bool straightenLegs = true;
    [Range(0f, 1f)] public float feetIKWeight = 1f;
    [Tooltip("Close to 1 = straighter knees; 0.96-0.99 recommended")]
    [Range(0.85f, 0.998f)] public float legExtension = 0.985f;
    [Tooltip("Small outward foot offset relative to each thigh length")]
    [Range(-0.15f, 0.30f)] public float feetOutward = 0.04f;
    [Tooltip("Small forward foot offset relative to leg length")]
    [Range(-0.20f, 0.30f)] public float feetForward = 0f;
    [Range(0f, 1f)] public float kneeHintWeight = 0.55f;
    [Range(0f, 1f)] public float kneeHintForward = 0.40f;
    [Range(0f, 0.5f)] public float kneeHintOutward = 0.08f;

    [Header("05 | Editor Debug")]
    public bool drawIKTargetsInScene = false;

    private Animator anim;
    private Transform rightShoulder, rightElbow, rightHand;
    private Transform leftShoulder, leftElbow, leftHand;
    private Transform rightThigh, rightKnee, rightFoot;
    private Transform leftThigh, leftKnee, leftFoot;
    private Quaternion startRotation;
    private float timeStarted;
    private bool ready;

    private Vector3 lastRightTarget, lastLeftTarget;
    private Vector3 lastRightFootTarget, lastLeftFootTarget;

    private void Awake()
    {
        anim = GetComponent<Animator>();
        if (anim.avatar == null || !anim.isHuman || !anim.avatar.isValid)
        {
            Debug.LogError("ExploreHandsIK: Rig must be a valid Humanoid Avatar.", this);
            enabled = false;
            return;
        }

        rightShoulder = anim.GetBoneTransform(HumanBodyBones.RightUpperArm);
        rightElbow = anim.GetBoneTransform(HumanBodyBones.RightLowerArm);
        rightHand = anim.GetBoneTransform(HumanBodyBones.RightHand);
        leftShoulder = anim.GetBoneTransform(HumanBodyBones.LeftUpperArm);
        leftElbow = anim.GetBoneTransform(HumanBodyBones.LeftLowerArm);
        leftHand = anim.GetBoneTransform(HumanBodyBones.LeftHand);

        rightThigh = anim.GetBoneTransform(HumanBodyBones.RightUpperLeg);
        rightKnee = anim.GetBoneTransform(HumanBodyBones.RightLowerLeg);
        rightFoot = anim.GetBoneTransform(HumanBodyBones.RightFoot);
        leftThigh = anim.GetBoneTransform(HumanBodyBones.LeftUpperLeg);
        leftKnee = anim.GetBoneTransform(HumanBodyBones.LeftLowerLeg);
        leftFoot = anim.GetBoneTransform(HumanBodyBones.LeftFoot);

        if (rightShoulder == null || rightElbow == null || rightHand == null ||
            leftShoulder == null || leftElbow == null || leftHand == null)
        {
            Debug.LogError("ExploreHandsIK: Missing shoulder/elbow/hand bones.", this);
            enabled = false;
            return;
        }

        if (rightThigh == null || rightKnee == null || rightFoot == null ||
            leftThigh == null || leftKnee == null || leftFoot == null)
        {
            Debug.LogWarning("ExploreHandsIK: Leg bones missing; disabling leg straightening.", this);
            straightenLegs = false;
        }

        startRotation = transform.rotation;
        timeStarted = Time.time;
        anim.applyRootMotion = false;
        ready = true;
    }

    private float Phase()
    {
        float elapsed = playMotion ? Time.time - timeStarted : 0f;
        return Mathf.Repeat(elapsed / Mathf.Max(2f, loopSeconds), 1f) * Mathf.PI * 2f;
    }

    private void Update()
    {
        if (!ready) return;
        float phase = Phase();
        float bodyYaw = initialBodyYaw +
                        (rotateBody360 ? bodyTurnsPerLoop * phase * Mathf.Rad2Deg : 0f);
        transform.rotation = startRotation * Quaternion.Euler(0f, bodyYaw, 0f);


    }

    private void OnAnimatorIK(int layerIndex)
    {
        if (!ready || layerIndex != 0) return;
        float phase = Phase();

        DriveHand(AvatarIKGoal.RightHand, AvatarIKHint.RightElbow,
            rightShoulder, rightElbow, rightHand, rightArm, 1f, phase, out lastRightTarget);
        DriveHand(AvatarIKGoal.LeftHand, AvatarIKHint.LeftElbow,
            leftShoulder, leftElbow, leftHand, leftArm, -1f, phase, out lastLeftTarget);

        if (straightenLegs)
        {
            DriveLeg(AvatarIKGoal.RightFoot, AvatarIKHint.RightKnee,
                rightThigh, rightKnee, rightFoot, 1f, out lastRightFootTarget);
            DriveLeg(AvatarIKGoal.LeftFoot, AvatarIKHint.LeftKnee,
                leftThigh, leftKnee, leftFoot, -1f, out lastLeftFootTarget);
        }
        else
        {
            anim.SetIKPositionWeight(AvatarIKGoal.RightFoot, 0f);
            anim.SetIKPositionWeight(AvatarIKGoal.LeftFoot, 0f);
            anim.SetIKRotationWeight(AvatarIKGoal.RightFoot, 0f);
            anim.SetIKRotationWeight(AvatarIKGoal.LeftFoot, 0f);
            anim.SetIKHintPositionWeight(AvatarIKHint.RightKnee, 0f);
            anim.SetIKHintPositionWeight(AvatarIKHint.LeftKnee, 0f);
        }
    }

    private void DriveHand(AvatarIKGoal goal, AvatarIKHint elbowHint,
        Transform shoulder, Transform elbow, Transform hand,
        ArmMotion settings, float side, float phase, out Vector3 target)
    {
        float length = Vector3.Distance(shoulder.position, elbow.position) +
                       Vector3.Distance(elbow.position, hand.position);
        if (length < 0.001f) { target = hand.position; return; }

        float az = settings.azimuthCenter + settings.azimuthAmplitude *
                   Mathf.Sin(phase * settings.azimuthCycles + settings.azimuthPhase * Mathf.Deg2Rad);
        float el = settings.elevationCenter + settings.elevationAmplitude *
                   Mathf.Sin(phase * settings.elevationCycles + settings.elevationPhase * Mathf.Deg2Rad);
        float azRad = az * Mathf.Deg2Rad;
        float elRad = Mathf.Clamp(el, -85f, 85f) * Mathf.Deg2Rad;

        // Zero azimuth points toward character forward. Positive azimuth = right.
        Vector3 localDirection = new Vector3(
            Mathf.Sin(azRad) * Mathf.Cos(elRad),
            Mathf.Sin(elRad),
            Mathf.Cos(azRad) * Mathf.Cos(elRad));
        target = shoulder.position + transform.TransformDirection(localDirection) *
                 length * settings.reach;

        Vector3 hint = shoulder.position + length * (
            transform.right * side * settings.elbowOut +
            transform.forward * settings.elbowForward +
            transform.up * settings.elbowUp);

        anim.SetIKPositionWeight(goal, settings.ikWeight);
        anim.SetIKPosition(goal, target);
        anim.SetIKRotationWeight(goal, 0f);
        anim.SetIKHintPositionWeight(elbowHint, settings.elbowHintWeight);
        anim.SetIKHintPosition(elbowHint, hint);
    }

    private void DriveLeg(AvatarIKGoal goal, AvatarIKHint kneeHint,
        Transform thigh, Transform knee, Transform foot,
        float side, out Vector3 target)
    {
        float length = Vector3.Distance(thigh.position, knee.position) +
                       Vector3.Distance(knee.position, foot.position);
        if (length < 0.001f) { target = foot.position; return; }

        Vector3 direction = -transform.up * legExtension +
                            transform.right * (side * feetOutward) +
                            transform.forward * feetForward;
        direction = direction.normalized;
        target = thigh.position + direction * length * legExtension;

        Vector3 hint = thigh.position + length *
            (-transform.up * 0.40f + transform.forward * kneeHintForward +
             transform.right * side * kneeHintOutward);

        anim.SetIKPositionWeight(goal, feetIKWeight);
        anim.SetIKPosition(goal, target);
        anim.SetIKRotationWeight(goal, 0f);
        anim.SetIKHintPositionWeight(kneeHint, kneeHintWeight);
        anim.SetIKHintPosition(kneeHint, hint);
    }

    private void OnDrawGizmosSelected()
    {
        if (!drawIKTargetsInScene || !Application.isPlaying || !ready) return;
        Gizmos.color = new Color(0.15f, 0.65f, 1f);
        Gizmos.DrawSphere(lastRightTarget, 0.04f);
        Gizmos.DrawLine(rightShoulder.position, lastRightTarget);
        Gizmos.color = new Color(1f, 0.55f, 0.15f);
        Gizmos.DrawSphere(lastLeftTarget, 0.04f);
        Gizmos.DrawLine(leftShoulder.position, lastLeftTarget);
        if (straightenLegs)
        {
            Gizmos.color = Color.green;
            Gizmos.DrawWireSphere(lastRightFootTarget, 0.035f);
            Gizmos.DrawWireSphere(lastLeftFootTarget, 0.035f);
        }
    }

}
