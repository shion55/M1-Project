using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
public class AppFlowController : MonoBehaviour
{
    [Header("Panels")]
    [SerializeField] private GameObject mainMenuPanel;
    [SerializeField] private GameObject consentPanel;
    [SerializeField] private GameObject descriptionPanel1;
    [SerializeField] private GameObject recordingPanel;
    [SerializeField] private GameObject descriptionPanel2;
    [SerializeField] private GameObject experiencePanel;


    [Header("UIAnimation")]
    private Tween voiceTween;
    private Tween recprogressTween;

    public Image Desc1Voice;
    public Image Desc1Prog;

    public int Desc1AnimDuration = 3;

    private bool IsDesc1AnimPlay = false; 

    [Header("OSC")]
    [SerializeField] private OSCManager oscManager;

    [Header("Recording Controller")]
    [SerializeField] private RecordingController recordingController;

    [SerializeField] private ExperienceController experienceController;

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
        Consent,
        Description1,
        Recording,
        Description2,
        Experience
    }

    private void Awake()
    {
        if (mainMenuPanel == null ||
            consentPanel == null ||
            descriptionPanel1 == null ||
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
        consentPanel.SetActive(page == Page.Consent);
        descriptionPanel1.SetActive(page == Page.Description1);
        recordingPanel.SetActive(page == Page.Recording);
        descriptionPanel2.SetActive(page == Page.Description2);
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

        ShowPage(Page.Consent);
    }

    public void StartRecording()
    {
        IsDesc1AnimPlay = false;
        ShowPage(Page.Recording);
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
        ShowPage(Page.Description1);


        IsDesc1AnimPlay = true;
        DescriptRecordAnim();
    }
    private void DescriptRecordAnim()
    {
        voiceTween?.Kill();
        recprogressTween?.Kill();
        Desc1Voice.fillAmount = 0f;
        Desc1Prog.fillAmount = 0f;
        if (!IsDesc1AnimPlay)
            return;
        voiceTween = Desc1Voice
                .DOFillAmount(1f, Desc1AnimDuration)
                .SetEase(Ease.Linear)
                .OnComplete(DescriptRecordAnim);
        recprogressTween = Desc1Prog
                .DOFillAmount(1f, Desc1AnimDuration)
                .SetEase(Ease.Linear)
                .OnComplete(DescriptRecordAnim);
    }
    public void ShowDescription2()
    {
        ShowPage(Page.Description2);


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
