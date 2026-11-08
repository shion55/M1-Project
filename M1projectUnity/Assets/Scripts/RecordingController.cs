using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
public class RecordingController : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private OSCManager oscManager;
    [SerializeField] private AppFlowController appFlowController;
    [SerializeField] private ExperienceController experienceController;
    [Header("Panels")]
    [SerializeField] private GameObject recordingPanel;
    [SerializeField] private GameObject experiencePanel;

    [Header("Recording UI")]
    [SerializeField] private Image RecProgress;
    [SerializeField] private GameObject startText;
    [SerializeField] private GameObject recText;
    [SerializeField] private GameObject finishedText;
    [Header("Retry Recording")]
    [SerializeField] private GameObject retryButton;
    [Header("Recording Settings")]
    [SerializeField, Min(0.1f)]
    private float RecordingDuration = 5f;

    public bool IsRecording { get; private set; }
    public bool IsRecordFinished { get; private set; }

    private Tween recordingTween;

    private void Awake()
    {
        IsRecording = false;
        IsRecordFinished = false;

        if (RecProgress != null)
            RecProgress.fillAmount = 0f;

        UpdateRecordingUI();
    }

    public void ToggleRecording()
    {
        if (IsRecording)
            return;

        if (IsRecordFinished)
            StartExperience();
        else
            StartRecording();
    }

    public void StartRecording()
    {
        if (IsRecording || IsRecordFinished)
            return;

        if (appFlowController == null ||
            appFlowController.CurrentConsent ==
                AppFlowController.ConsentMode.None)
        {
            Debug.LogWarning(
                "[Recording] 同意が選択されていません。", this);
            return;
        }

        if (!TrySendRecordCommand(1))
            return;

        recordingTween?.Kill();

        IsRecording = true;
        IsRecordFinished = false;

        if (RecProgress != null)
        {
            RecProgress.fillAmount = 0f;

            recordingTween = RecProgress
                .DOFillAmount(1f, RecordingDuration)
                .SetEase(Ease.Linear)
                .OnComplete(StopRecording);
        }
        else
        {
            recordingTween = DOVirtual.DelayedCall(
                RecordingDuration,
                StopRecording
            );
        }

        UpdateRecordingUI();
    }

    public void StopRecording()
    {
        if (!IsRecording)
            return;

        if (!TrySendRecordCommand(0))
            return;

        recordingTween?.Kill();
        recordingTween = null;

        IsRecording = false;
        IsRecordFinished = true;

        if (RecProgress != null)
            RecProgress.fillAmount = 1f;

        UpdateRecordingUI();
    }

    public void ResetRecording()
    {
        recordingTween?.Kill();
        recordingTween = null;

        if (IsRecording)
            TrySendRecordCommand(0);

        IsRecording = false;
        IsRecordFinished = false;

        if (RecProgress != null)
            RecProgress.fillAmount = 0f;

        UpdateRecordingUI();
    }

    public void RetryRecording()
    {
        if (IsRecording || !IsRecordFinished)
            return;

        ResetRecording();
    }

    public void StartExperience()
    {
        if (IsRecording || !IsRecordFinished)
            return;


        experienceController.BeginExperience();
    }

    private bool TrySendRecordCommand(int value)
    {
        if (oscManager == null)
        {
            Debug.LogError(
                "[Recording] OSCManagerが未設定です。", this);
            return false;
        }

        if (!oscManager.TrySendInt(
            "/record", value, out string error))
        {
            Debug.LogError(
                "[Recording] OSC送信失敗: " + error, this);
            return false;
        }

        return true;
    }

    private void UpdateRecordingUI()
    {
        if (startText != null)
            startText.SetActive(!IsRecording && !IsRecordFinished);

        if (recText != null)
            recText.SetActive(IsRecording);

        if (finishedText != null)
            finishedText.SetActive(IsRecordFinished);

        if (retryButton != null)
            retryButton.SetActive(IsRecordFinished);
    }

    private void OnDestroy()
    {
        recordingTween?.Kill();
        recordingTween = null;
    }
}
