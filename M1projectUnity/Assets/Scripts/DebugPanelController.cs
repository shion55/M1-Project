using TMPro;
using UnityEngine;
using DG.Tweening;
using System.Collections.Generic;
using UnityEngine.UI;

public class DebugPanelController : MonoBehaviour
{
    [Header("Scene references")]
    [SerializeField] private OSCManager oscManager;
    [SerializeField] private GameObject debugPanel;

    [Header("DebugPanel children")]
    [SerializeField] private TMP_InputField ipInput;
    [SerializeField] private TMP_InputField portInput;
    [SerializeField] private TMP_Text statusText; // Optional
    [SerializeField] private RecordingController recordingController;
    [SerializeField] private AppFlowController appFlowController;
    private TMP_InputField durationInput;
    private TMP_InputField textSizeInput;
    private TMP_InputField lineIntervalInput;
    private TMP_InputField fadeInput;
    private readonly List<TMP_Text> settingsLabels = new List<TMP_Text>();
    private CanvasGroup debugCanvasGroup;

    private void Awake()
    {
        CreateSettingsFields();
        if (debugPanel != null)
        {
            debugCanvasGroup = debugPanel.GetComponent<CanvasGroup>();
            if (debugCanvasGroup == null)
                debugCanvasGroup = debugPanel.AddComponent<CanvasGroup>();
            debugPanel.SetActive(false);
        }
    }

    private void CreateSettingsFields()
    {
        if (debugPanel == null || portInput == null) return;
        if (debugPanel.TryGetComponent<Image>(out var background))
            background.color = new Color32(248, 247, 242, 255);
        AddSettingsLabel("Maxへの接続", -405f, 350f, 44f);
        AddSettingsLabel("表示・録音", 405f, 350f, 44f);
        PlaceInput(ipInput, -365f, 220f, 360f);
        PlaceInput(portInput, -365f, 105f, 360f);
        ReplaceLegacyLabel("Iptext", "送信先IP", 220f);
        ReplaceLegacyLabel("PortText", "ポート", 105f);
        StyleDebugButton("SaveButton", "設定を保存", 405f, -290f, 290f);
        StyleDebugButton("TestButton", "OSC送信テスト", -405f, -290f, 290f);
        StyleDebugButton("CloseButton", "閉じる", -705f, 455f, 155f);
        textSizeInput = AddNumberField("文字サイズ", "pt", 220f, TMP_InputField.ContentType.IntegerNumber);
        lineIntervalInput = AddNumberField("行の表示間隔", "秒", 105f, TMP_InputField.ContentType.DecimalNumber);
        fadeInput = AddNumberField("フェード（片道）", "秒", -10f, TMP_InputField.ContentType.DecimalNumber);
        durationInput = AddNumberField("録音時間", "秒", -125f, TMP_InputField.ContentType.DecimalNumber);
        if (statusText != null)
        {
            statusText.rectTransform.anchoredPosition = new Vector2(0f, -435f);
            statusText.rectTransform.sizeDelta = new Vector2(1450f, 130f);
            statusText.enableAutoSizing = false;
            statusText.fontSize = 32f;
            statusText.textWrappingMode = TextWrappingModes.Normal;
            statusText.overflowMode = TextOverflowModes.Ellipsis;
            statusText.margin = Vector4.zero;
            statusText.alignment = TextAlignmentOptions.Center;
        }
    }

    private TMP_InputField AddNumberField(string label, string unit, float y, TMP_InputField.ContentType type)
    {
        AddSettingsLabel(label, 314f, y, 34f, 278f);
        AddSettingsLabel(unit, 705f, y, 32f, 65f);
        var field = Instantiate(portInput, debugPanel.transform);
        field.name = label + " Input";
        field.contentType = type;
        PlaceInput(field, 565f, y, 175f);
        return field;
    }

    private static void PlaceInput(TMP_InputField field, float x, float y, float width)
    {
        if (field == null) return;
        var rect = (RectTransform)field.transform;
        rect.anchoredPosition = new Vector2(x, y);
        rect.sizeDelta = new Vector2(width, 72f);
    }

    private void ReplaceLegacyLabel(string name, string caption, float y)
    {
        var original = debugPanel.transform.Find(name);
        if (original != null) original.gameObject.SetActive(false);
        AddSettingsLabel(caption, -650f, y, 34f, 140f);
    }

    private void StyleDebugButton(string name, string caption, float x, float y, float width)
    {
        var rect = debugPanel.transform.Find(name) as RectTransform;
        if (rect == null) return;
        rect.anchoredPosition = new Vector2(x, y);
        rect.sizeDelta = new Vector2(width, 72f);
        var label = M1Presentation.StyleButton(rect, caption, null, 36f, name == "CloseButton");
        if (label != null) settingsLabels.Add(label);
    }

    private void AddSettingsLabel(string labelText, float x, float y, float fontSize, float width = 460f)
    {
        var go = new GameObject(labelText, typeof(RectTransform), typeof(TextMeshProUGUI));
        go.transform.SetParent(debugPanel.transform, false);
        var label = go.GetComponent<TextMeshProUGUI>();
        label.text = labelText;
        label.fontSize = fontSize;
        label.color = new Color32(30, 47, 47, 255);
        label.alignment = TextAlignmentOptions.Left;
        label.textWrappingMode = TextWrappingModes.NoWrap;
        label.raycastTarget = false;
        label.rectTransform.sizeDelta = new Vector2(width, 64f);
        label.rectTransform.anchoredPosition = new Vector2(x, y);
        settingsLabels.Add(label);
    }

    public void Open()
    {
        if (!ValidateReferences())
            return;

        // Show the currently active destination, including saved settings.
        ipInput.SetTextWithoutNotify(oscManager.DestinationIP);
        portInput.SetTextWithoutNotify(oscManager.DestinationPort.ToString());
        if (durationInput != null && recordingController != null)
            durationInput.SetTextWithoutNotify(recordingController.RecordingDurationSeconds.ToString("0.###"));
        textSizeInput?.SetTextWithoutNotify(M1Presentation.TextSize.ToString());
        lineIntervalInput?.SetTextWithoutNotify(M1Presentation.LineInterval.ToString("0.##"));
        fadeInput?.SetTextWithoutNotify(M1Presentation.FadeSeconds.ToString("0.##"));
        if (appFlowController != null && appFlowController.InterfaceFont != null)
        {
            foreach (var label in settingsLabels) label.font = appFlowController.InterfaceFont;
            if (statusText != null) statusText.font = appFlowController.InterfaceFont;
        }
        SetStatus("設定を保存すると、次の画面切り替えから反映されます。");
        debugPanel.SetActive(true);
        debugPanel.transform.SetAsLastSibling();
        debugCanvasGroup.DOKill();
        debugCanvasGroup.alpha = 0f;
        debugCanvasGroup.DOFade(1f, .25f).SetUpdate(true);
    }

    public void Close()
    {
        if (debugPanel == null) return;
        if (debugCanvasGroup == null) { debugPanel.SetActive(false); return; }
        debugCanvasGroup.DOKill();
        debugCanvasGroup.DOFade(0f, .2f).SetUpdate(true)
            .OnComplete(() => debugPanel.SetActive(false));
    }

    public void SaveSettings()
    {
        if (!ValidateReferences())
            return;

        if (!int.TryParse(portInput.text.Trim(), out int newPort))
        {
            SetStatus("ポートは1〜65535の整数で指定してください。");
            return;
        }

        if (!int.TryParse(textSizeInput.text, out int textSize) ||
            textSize < M1Presentation.MinTextSize || textSize > M1Presentation.MaxTextSize)
        {
            SetStatus($"文字サイズは{M1Presentation.MinTextSize}〜{M1Presentation.MaxTextSize}で指定してください。");
            return;
        }
        if (!TryReadRange(lineIntervalInput, M1Presentation.MinLineInterval, M1Presentation.MaxLineInterval, out float interval))
        {
            SetStatus("行の表示間隔は0.55〜2.5秒で指定してください。");
            return;
        }
        if (!TryReadRange(durationInput, 3f, 60f, out float duration))
        {
            SetStatus("録音時間は3〜60秒で指定してください。");
            return;
        }
        if (!TryReadRange(fadeInput, 0f, M1Presentation.MaxFadeSeconds, out float fade))
        {
            SetStatus($"フェード時間は0〜{M1Presentation.MaxFadeSeconds}秒で指定してください。");
            return;
        }
        bool changeDuration = recordingController != null &&
                              !Mathf.Approximately(recordingController.RecordingDurationSeconds, duration);
        if (changeDuration && recordingController.IsRecording)
        {
            SetStatus("録音中は録音時間を変更できません。");
            return;
        }

        if (oscManager.TrySaveDestination(ipInput.text, newPort, out string error))
        {
            if (changeDuration && !recordingController.TrySaveRecordingDuration(duration, out string durationError))
            {
                SetStatus(durationError);
                return;
            }
            M1Presentation.SaveReadingSettings(textSize, interval, fade);
            // Normalize the input fields to the saved values.
            ipInput.SetTextWithoutNotify(oscManager.DestinationIP);
            portInput.SetTextWithoutNotify(oscManager.DestinationPort.ToString());
            SetStatus($"保存しました\n文字 {textSize} pt・行間隔 {interval:0.##} 秒・フェード {fade:0.##} 秒・録音 {duration:0.###} 秒");
        }
        else
        {
            SetStatus($"保存できませんでした。\n{error}");
        }
    }

    private static bool TryReadRange(TMP_InputField field, float min, float max, out float value) =>
        float.TryParse(field.text, out value) && value >= min && value <= max;

    public void SendTest()
    {
        if (!ValidateReferences())
            return;

        // Avoid testing an older destination while unsaved edits are visible.
        if (ipInput.text.Trim() != oscManager.DestinationIP ||
            portInput.text.Trim() != oscManager.DestinationPort.ToString())
        {
            SetStatus("送信先を保存してから、テストしてください。");
            return;
        }

        if (oscManager.TrySendInt("/test", 1, out string error))
        {
            SetStatus("テスト信号 /test 1 を送信しました。\nMax側で受信を確認してください。");
        }
        else
        {
            SetStatus($"テスト送信に失敗しました。\n{error}");
        }
    }

    private bool ValidateReferences()
    {
        bool valid = oscManager != null && debugPanel != null &&
                     ipInput != null && portInput != null;

        if (!valid)
        {
            Debug.LogError("[DebugPanel] Assign OscManager, DebugPanel, IP Input and Port Input in the Inspector.", this);
        }

        return valid;
    }

    private void SetStatus(string message)
    {
        if (statusText != null)
            statusText.text = message;
        Debug.Log($"[DebugPanel] {message}", this);
    }
}
