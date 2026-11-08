
using UnityEngine;

public class ExperienceController : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private OSCManager oscManager;
    [SerializeField] private AppFlowController appFlowController;
    [SerializeField] private RecordingController recordingController;

    public bool IsExperiencing { get; private set; }

    public void BeginExperience()
    {
        if (IsExperiencing)
            return;

        if (recordingController == null ||
            !recordingController.IsRecordFinished)
        {
            Debug.LogWarning(
                "[Experience] 録音が完了していません。");
            return;
        }

        if (oscManager == null || appFlowController == null)
        {
            Debug.LogError(
                "[Experience] 参照が不足しています。");
            return;
        }

        if (!oscManager.TrySendInt(
            "/experience", 1, out string error))
        {
            Debug.LogError(
                "[Experience] 開始OSC送信失敗: " + error);
            return;
        }

        IsExperiencing = true;

        appFlowController.ShowExperience();

        Debug.Log("[Experience] 体験開始");
    }

    public void EndExperience()
    {
        if (!IsExperiencing)
            return;

        if (oscManager == null || appFlowController == null)
            return;

        if (!oscManager.TrySendInt(
            "/experience", 0, out string error))
        {
            Debug.LogError(
                "[Experience] 終了OSC送信失敗: " + error);
            return;
        }

        IsExperiencing = false;

        appFlowController.ReturnToMainMenu();

        Debug.Log("[Experience] 体験終了");
    }
}
