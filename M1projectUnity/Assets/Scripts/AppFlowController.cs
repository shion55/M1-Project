using UnityEngine;

public class AppFlowController : MonoBehaviour
{
    [Header("Panels")]
    [SerializeField] private GameObject mainMenuPanel;
    [SerializeField] private GameObject descriptionPanel1;
    [SerializeField] private GameObject descriptionPanel2;
    [SerializeField] private GameObject recordingPanel;
    [SerializeField] private GameObject experiencePanel;
    [Header("OSC")]
    [SerializeField] private OSCManager oscManager;

    [Header("Recording Controller")]
    [SerializeField] private RecordingController recordingController;

    public enum ConsentMode
    {
        None = -1,
        NoSave = 0,
        Save = 1
    }

    public ConsentMode CurrentConsent { get; private set; }
        = ConsentMode.None;

    private enum Page
    {
        MainMenu,
        Description1,
        Description2,
        Recording,
        Experience
    }

    private void Awake()
    {
        if (mainMenuPanel == null ||
            descriptionPanel1 == null ||
            descriptionPanel2 == null ||
            recordingPanel == null)
        {
            Debug.LogError(
                "[AppFlow] Panelの参照が不足しています。", this);
            enabled = false;
            return;
        }

        CurrentConsent = ConsentMode.None;
        ShowPage(Page.MainMenu);
    }

    private void ShowPage(Page page)
    {
        mainMenuPanel.SetActive(page == Page.MainMenu);
        descriptionPanel1.SetActive(page == Page.Description1);
        descriptionPanel2.SetActive(page == Page.Description2);
        recordingPanel.SetActive(page == Page.Recording);
        experiencePanel.SetActive(page == Page.Experience);
    }

    private void SendConsent(ConsentMode mode)
    {
        if (oscManager == null)
        {
            Debug.LogError(
                "[AppFlow] OscManagerが未設定です。", this);
            return;
        }

        oscManager.SendInt("/consent", (int)mode);
    }

    public void StartExperience()
    {
        recordingController?.ResetRecording();

        CurrentConsent = ConsentMode.None;
        SendConsent(CurrentConsent);

        ShowPage(Page.Description1);
    }

    public void NextDescription()
    {
        ShowPage(Page.Description2);
    }

    public void CancelExperience()
    {
        ReturnToMainMenu();
    }

    public void PlayWithoutSaving()
    {
        ChooseConsent(ConsentMode.NoSave);
    }

    public void PlayWithSaving()
    {
        ChooseConsent(ConsentMode.Save);
    }

    private void ChooseConsent(ConsentMode mode)
    {
        recordingController?.ResetRecording();

        CurrentConsent = mode;
        SendConsent(mode);

        ShowPage(Page.Recording);
    }
    public void ShowExperience()
    {
        ShowPage(Page.Experience);
    }
    public void ReturnToMainMenu()
    {
        recordingController?.ResetRecording();

        CurrentConsent = ConsentMode.None;
        SendConsent(CurrentConsent);

        ShowPage(Page.MainMenu);
    }
}
