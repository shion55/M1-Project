using UnityEngine;
using UnityEngine.UI;
using TMPro;
public class AppFlowController : MonoBehaviour
{
    [Header("Panels")]
    [SerializeField] private GameObject mainMenuPanel;
    [SerializeField] private GameObject archivedConsentPanel;
    [SerializeField] private GameObject recordingPanel;
    [SerializeField] private GameObject descriptionPanel2;
    [SerializeField] private GameObject experiencePanel;
    [SerializeField] private Font japaneseFont;
    [SerializeField] private Font simplifiedChineseFont;


    [Header("OSC")]
    [SerializeField] private OSCManager oscManager;

    [Header("Recording Controller")]
    [SerializeField] private RecordingController recordingController;

    [SerializeField] private ExperienceController experienceController;
    private GameObject workIntroPanel;
    private GameObject consentNarrativePanel;
    private GameObject recordingGuidePanel;
    private M1Presentation presentation;
    private GameObject currentPanel;
    private TMP_FontAsset runtimeFont;
    private TMP_FontAsset chineseFont;
    private M1Language language;
    private readonly Button[] languageButtons = new Button[3];
    public TMP_FontAsset InterfaceFont => runtimeFont;

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
        Recording,
        Description2,
        Experience
    }

    private void Awake()
    {
        if (mainMenuPanel == null ||
            archivedConsentPanel == null ||
            recordingPanel == null ||
            descriptionPanel2 == null ||
            experiencePanel == null)
        {
            Debug.LogError(
                "[AppFlow] Panelの参照が不足しています。", this);
            enabled = false;
            return;
        }

        CurrentConsent = ConsentMode.None;
        BuildPresentationPages();
        ShowPage(Page.MainMenu);
    }

    private void BuildPresentationPages()
    {
        Canvas canvas = mainMenuPanel.GetComponentInParent<Canvas>(true);
        presentation = M1Presentation.Ensure(canvas);
        runtimeFont = japaneseFont != null
            ? TMP_FontAsset.CreateFontAsset(japaneseFont)
            : mainMenuPanel.GetComponentInChildren<TMP_Text>(true)?.font;
        if (japaneseFont != null && runtimeFont != null)
            runtimeFont.isMultiAtlasTexturesEnabled = true;
        chineseFont = simplifiedChineseFont != null ? TMP_FontAsset.CreateFontAsset(simplifiedChineseFont) : runtimeFont;
        if (chineseFont != null) chineseFont.isMultiAtlasTexturesEnabled = true;
        CreateLanguageTabs();
        ApplyLanguage(M1Language.Japanese);
    }

    private void CreateLanguageTabs()
    {
        var tabs = new GameObject("Language Tabs", typeof(RectTransform), typeof(HorizontalLayoutGroup));
        tabs.transform.SetParent(mainMenuPanel.transform, false);
        var rect = tabs.GetComponent<RectTransform>();
        rect.anchorMin = new Vector2(.08f, .07f);
        rect.anchorMax = new Vector2(.92f, .21f);
        rect.offsetMin = rect.offsetMax = Vector2.zero;
        var layout = tabs.GetComponent<HorizontalLayoutGroup>();
        layout.childAlignment = TextAnchor.MiddleCenter;
        layout.childControlWidth = layout.childControlHeight = true;
        layout.childForceExpandWidth = layout.childForceExpandHeight = false;
        layout.spacing = 18f;

        string[] labels = { "日本語", "English", "简体中文" };
        for (int i = 0; i < labels.Length; i++)
        {
            M1Language choice = (M1Language)i;
            var tab = new GameObject(labels[i], typeof(RectTransform), typeof(Image), typeof(Button), typeof(LayoutElement));
            tab.transform.SetParent(tabs.transform, false);
            tab.GetComponent<LayoutElement>().preferredWidth = 220f;
            tab.GetComponent<LayoutElement>().preferredHeight = 82f;
            var button = tab.GetComponent<Button>();
            M1Presentation.StyleButton((RectTransform)tab.transform, labels[i],
                choice == M1Language.Chinese ? chineseFont : runtimeFont, 42f, true);
            button.onClick.AddListener(() => SelectLanguage(choice));
            languageButtons[i] = button;
        }
    }

    private void SelectLanguage(M1Language choice)
    {
        if (choice == language || presentation.IsTransitioning || currentPanel != mainMenuPanel) return;
        ApplyLanguage(choice);
    }

    private void ApplyLanguage(M1Language choice)
    {
        language = choice;
        M1Copy copy = M1Copy.For(choice);
        TMP_FontAsset font = choice == M1Language.Chinese ? chineseFont : runtimeFont;
        for (int i = 0; i < languageButtons.Length; i++)
        {
            bool selected = i == (int)choice;
            languageButtons[i].image.color = selected ? new Color32(36, 78, 75, 255) : new Color32(224, 234, 229, 255);
            languageButtons[i].GetComponentInChildren<TMP_Text>(true).color =
                selected ? Color.white : new Color32(30, 47, 47, 255);
        }

        if (workIntroPanel != null) Destroy(workIntroPanel);
        if (consentNarrativePanel != null) Destroy(consentNarrativePanel);
        if (recordingGuidePanel != null) Destroy(recordingGuidePanel);
        Transform pageParent = mainMenuPanel.transform.parent;
        var roundButton = mainMenuPanel.transform.Find("StartButton").GetComponent<Button>();
        workIntroPanel = M1Presentation.CreateNarrativePanel(pageParent, "WorkIntroductionPanel", font, copy.Intro,
            buttons => M1Presentation.AddNarrativeButton(buttons, roundButton, copy.Next, font, ShowConsentIntroduction));
        consentNarrativePanel = M1Presentation.CreateNarrativePanel(pageParent, "VoicePolicyPanel", font, copy.Consent,
            buttons =>
            {
                var back = archivedConsentPanel.transform.Find("CancelButton").GetComponent<Button>();
                var noSave = archivedConsentPanel.transform.Find("Play_NoSaveButton").GetComponent<Button>();
                var save = archivedConsentPanel.transform.Find("Play_SaveButton").GetComponent<Button>();
                M1Presentation.AddNarrativeButton(buttons, back, copy.Back, font);
                var noSaveButton = M1Presentation.AddNarrativeButton(buttons, noSave);
                foreach (var label in noSaveButton.GetComponentsInChildren<TMP_Text>(true))
                {
                    bool isNote = label.text.Contains("残さない");
                    UpdateText(label, isNote ? copy.NoSaveNote : copy.NoSave, font);
                    if (isNote)
                    {
                        Vector2 position = label.rectTransform.anchoredPosition;
                        position.y = -44f;
                        label.rectTransform.anchoredPosition = position;
                    }
                    if (choice == M1Language.English)
                    {
                        label.textWrappingMode = TextWrappingModes.NoWrap;
                        label.enableAutoSizing = true;
                        label.fontSizeMax = label.fontSize;
                        label.fontSizeMin = 28f;
                    }
                }
                M1Presentation.AddNarrativeButton(buttons, save, copy.Save, font);
            });
        recordingGuidePanel = M1Presentation.CreateNarrativePanel(pageParent, "RecordingGuidePanel", font, copy.RecordingGuide,
            buttons => M1Presentation.AddNarrativeButton(buttons, roundButton, copy.ToRecord, font, StartRecording));

        UpdateText(roundButton.GetComponentInChildren<TMP_Text>(true), copy.Start, font);
        UpdateText(descriptionPanel2.transform.Find("NextButton")?.GetComponentInChildren<TMP_Text>(true), copy.Start, font);
        var operation = descriptionPanel2.transform.Find("ExDescPanel")?.GetComponentInChildren<TMP_Text>(true);
        UpdateText(operation, copy.Operation, font);
        if (operation != null)
        {
            operation.enableAutoSizing = choice == M1Language.English;
            operation.fontSizeMax = 82f;
            operation.fontSizeMin = 52f;
            operation.fontSize = 82f;
        }
        UpdateText(experiencePanel.transform.Find("EndButton")?.GetComponentInChildren<TMP_Text>(true), copy.End, font);
        recordingController?.ApplyLanguage(copy, font);
        presentation.KeepHiddenTargetAbovePages();
        presentation.transform.SetAsLastSibling();
    }

    internal static void UpdateText(TMP_Text label, string value, TMP_FontAsset font)
    {
        if (label == null) return;
        if (font != null) label.font = font;
        label.text = value;
    }

    private void ShowPage(Page page)
    {
        mainMenuPanel.SetActive(page == Page.MainMenu);
        recordingPanel.SetActive(page == Page.Recording);
        descriptionPanel2.SetActive(page == Page.Description2);
        experiencePanel.SetActive(page == Page.Experience);
        if (workIntroPanel != null) workIntroPanel.SetActive(false);
        if (consentNarrativePanel != null) consentNarrativePanel.SetActive(false);
        if (recordingGuidePanel != null) recordingGuidePanel.SetActive(false);
        currentPanel = page switch
        {
            Page.MainMenu => mainMenuPanel,
            Page.Recording => recordingPanel,
            Page.Description2 => descriptionPanel2,
            Page.Experience => experiencePanel,
            _ => mainMenuPanel
        };
    }

    private void SetExclusive(GameObject panel)
    {
        ShowPage(Page.MainMenu);
        mainMenuPanel.SetActive(false);
        panel.SetActive(true);
        currentPanel = panel;
    }

    private void ChangePage(System.Action action)
    {
        if (presentation != null) presentation.Transition(() => currentPanel, action);
        else action();
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
        if (presentation != null && presentation.IsTransitioning) return;
        recordingController?.ResetRecording();

        CurrentConsent = ConsentMode.None;
        SendConsent(CurrentConsent);

        ChangePage(() => SetExclusive(workIntroPanel));
    }

    private void ShowConsentIntroduction()
    {
        ChangePage(() => SetExclusive(consentNarrativePanel));
    }

    public void StartRecording()
    {
        ChangePage(() => ShowPage(Page.Recording));
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
        if (presentation != null && presentation.IsTransitioning) return;
        recordingController?.ResetRecording();

        CurrentConsent = mode;
        SendConsent(mode);
        ChangePage(() => SetExclusive(recordingGuidePanel));
    }
    public void ShowDescription2()
    {
        ChangePage(() => ShowPage(Page.Description2));


    }
    public void ShowExperience()
    {
        ChangePage(() => ShowPage(Page.Experience));
    }
    public void ReturnToMainMenu()
    {
        if (presentation != null && presentation.IsTransitioning) return;
        recordingController?.ResetRecording();

        CurrentConsent = ConsentMode.None;
        SendConsent(CurrentConsent);

        ChangePage(() => ShowPage(Page.MainMenu));
    }
}
