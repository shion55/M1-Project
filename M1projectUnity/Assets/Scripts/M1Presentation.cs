using System;
using System.Collections;
using System.Collections.Generic;
using DG.Tweening;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
#if ENABLE_INPUT_SYSTEM
using UnityEngine.InputSystem;
#endif

public class M1Presentation : MonoBehaviour
{
    public static M1Presentation Instance { get; private set; }

    private Canvas canvas;
    private Image inputShield;
    private RectTransform rippleLayer;
    private RectTransform hiddenDebugArea;
    private bool transitioning;
    public const float MaxFadeSeconds = 1.5f;
    private const string FadeKey = "M1.UI.FadeSeconds";
    public const int MinTextSize = 76;
    public const int MaxTextSize = 108;
    public const float MinLineInterval = 0.55f;
    public const float MaxLineInterval = 2.5f;
    private const string TextSizeKey = "M1.UI.TextSize";
    private const string LineIntervalKey = "M1.UI.LineInterval";
    public static int TextSize => Mathf.Clamp(PlayerPrefs.GetInt(TextSizeKey, 88), MinTextSize, MaxTextSize);
    public static float LineInterval => Mathf.Clamp(PlayerPrefs.GetFloat(LineIntervalKey, 1.05f), MinLineInterval, MaxLineInterval);
    public static float FadeSeconds => Mathf.Clamp(PlayerPrefs.GetFloat(FadeKey, .28f), 0f, MaxFadeSeconds);

    public static void SaveReadingSettings(int textSize, float lineInterval, float fadeSeconds)
    {
        PlayerPrefs.SetInt(TextSizeKey, textSize);
        PlayerPrefs.SetFloat(LineIntervalKey, lineInterval);
        PlayerPrefs.SetFloat(FadeKey, fadeSeconds);
        PlayerPrefs.Save();
    }

    public bool IsTransitioning => transitioning;

    public static M1Presentation Ensure(Canvas targetCanvas)
    {
        if (Instance != null) return Instance;
        var go = new GameObject("M1 Presentation", typeof(RectTransform), typeof(M1Presentation));
        go.transform.SetParent(targetCanvas.transform, false);
        Stretch(go.GetComponent<RectTransform>());
        Instance = go.GetComponent<M1Presentation>();
        Instance.Initialize(targetCanvas);
        return Instance;
    }

    private void Initialize(Canvas targetCanvas)
    {
        canvas = targetCanvas;
        hiddenDebugArea = GameObject.Find("DebugOpenArea")?.GetComponent<RectTransform>();

        rippleLayer = FullRect("Ripple Layer", transform);
        rippleLayer.SetAsLastSibling();

        inputShield = FullRect("Transition Input Shield", transform).gameObject.AddComponent<Image>();
        inputShield.color = Color.clear;
        inputShield.canvasRenderer.cullTransparentMesh = false;
        inputShield.raycastTarget = false;
    }

    public void KeepHiddenTargetAbovePages() => hiddenDebugArea?.SetAsLastSibling();

    public void Transition(Func<GameObject> currentPage, Action switchPage)
    {
        if (transitioning) return;
        StartCoroutine(TransitionRoutine(currentPage, switchPage));
    }

    private IEnumerator TransitionRoutine(Func<GameObject> currentPage, Action switchPage)
    {
        transitioning = true;
        inputShield.raycastTarget = true;
        CanvasGroup outgoing = null;
        CanvasGroup incoming = null;
        float fadeSeconds = FadeSeconds;
        try
        {
            outgoing = GetPageGroup(currentPage());
            outgoing.interactable = false;
            if (fadeSeconds > 0f)
                yield return FadeTo(outgoing, 0f, fadeSeconds);

            switchPage();
            incoming = GetPageGroup(currentPage());
            incoming.interactable = false;
            if (fadeSeconds > 0f)
            {
                incoming.alpha = 0f;
                yield return FadeTo(incoming, 1f, fadeSeconds);
            }
        }
        finally
        {
            RestorePageGroup(outgoing);
            if (incoming != outgoing)
                RestorePageGroup(incoming);
            inputShield.raycastTarget = false;
            transitioning = false;
        }
    }

    private static CanvasGroup GetPageGroup(GameObject page)
    {
        // Unity can return an object that compares equal to null even though ?? skips its fallback.
        var group = page.GetComponent<CanvasGroup>();
        return group != null ? group : page.AddComponent<CanvasGroup>();
    }

    private static void RestorePageGroup(CanvasGroup group)
    {
        if (group == null) return;
        group.alpha = 1f;
        group.interactable = true;
    }

    private static IEnumerator FadeTo(CanvasGroup group, float alpha, float duration)
    {
        float start = group.alpha;
        float time = 0f;
        while (time < duration)
        {
            time += Time.unscaledDeltaTime;
            group.alpha = Mathf.SmoothStep(start, alpha, time / duration);
            yield return null;
        }
        group.alpha = alpha;
    }

    private void Update()
    {
        bool pressed = false;
        Vector2 position = default;
#if ENABLE_INPUT_SYSTEM
        var touch = Touchscreen.current?.primaryTouch;
        if (touch != null && touch.press.wasPressedThisFrame)
        {
            pressed = true;
            position = touch.position.ReadValue();
        }
        else if (Mouse.current != null && Mouse.current.leftButton.wasPressedThisFrame)
        {
            pressed = true;
            position = Mouse.current.position.ReadValue();
        }
#else
        if (Input.GetMouseButtonDown(0))
        {
            pressed = true;
            position = Input.mousePosition;
        }
#endif
        if (!pressed || IsInsideHiddenDebug(position)) return;
        SpawnRipple(position);
    }

    private Camera UICamera => canvas.renderMode == RenderMode.ScreenSpaceOverlay ? null : canvas.worldCamera;

    private bool IsInsideHiddenDebug(Vector2 screenPoint)
    {
        return hiddenDebugArea != null && hiddenDebugArea.gameObject.activeInHierarchy &&
               RectTransformUtility.RectangleContainsScreenPoint(hiddenDebugArea, screenPoint, UICamera);
    }

    private void SpawnRipple(Vector2 screenPoint)
    {
        var go = new GameObject("Ripple", typeof(RectTransform), typeof(CanvasRenderer), typeof(Image));
        go.transform.SetParent(rippleLayer, false);
        var rt = go.GetComponent<RectTransform>();
        rt.sizeDelta = new Vector2(152f, 152f);
        rt.localScale = Vector3.one * .25f;
        RectTransformUtility.ScreenPointToLocalPointInRectangle(rippleLayer, screenPoint, UICamera, out var local);
        rt.anchoredPosition = local;
        var image = go.GetComponent<Image>();
        image.sprite = MakeRingSprite();
        image.color = new Color(0.16f, 0.49f, 0.47f, 0.85f);
        image.raycastTarget = false;
        var group = go.AddComponent<CanvasGroup>();
        group.alpha = 1f;
        var sequence = DOTween.Sequence().SetUpdate(true).SetLink(go);
        sequence.Join(rt.DOScale(1f, 0.56f).SetEase(Ease.OutCubic));
        sequence.Insert(.08f, group.DOFade(0f, 0.48f).SetEase(Ease.InQuad));
        sequence.OnComplete(() => Destroy(go));
    }

    private static Sprite ringSprite;
    private static Sprite MakeRingSprite()
    {
        if (ringSprite != null) return ringSprite;
        const int size = 128;
        var texture = new Texture2D(size, size, TextureFormat.RGBA32, false) { name = "Tap Ripple Ring" };
        var colors = new Color32[size * size];
        var center = new Vector2((size - 1) * .5f, (size - 1) * .5f);
        float radius = size * .45f;
        for (int y = 0; y < size; y++)
        for (int x = 0; x < size; x++)
        {
            float d = Vector2.Distance(new Vector2(x, y), center);
            byte a = (byte)(Mathf.Clamp01(2.4f - Mathf.Abs(radius - d)) * 255);
            colors[y * size + x] = new Color32(255, 255, 255, a);
        }
        texture.SetPixels32(colors);
        texture.Apply();
        ringSprite = Sprite.Create(texture, new Rect(0, 0, size, size), Vector2.one * .5f, 100f);
        return ringSprite;
    }

    public static GameObject CreateNarrativePanel(Transform parent, string name, TMP_FontAsset font,
        IReadOnlyList<string> lines, Action<Transform> buildButtons)
    {
        var panel = new GameObject(name, typeof(RectTransform), typeof(CanvasRenderer), typeof(Image), typeof(NarrativePage));
        panel.transform.SetParent(parent, false);
        Stretch(panel.GetComponent<RectTransform>());
        var bg = panel.GetComponent<Image>();
        bg.color = new Color32(248, 247, 242, 255);

        var content = new GameObject("Content", typeof(RectTransform), typeof(VerticalLayoutGroup));
        content.transform.SetParent(panel.transform, false);
        var contentRt = content.GetComponent<RectTransform>();
        contentRt.anchorMin = new Vector2(.035f, .36f);
        contentRt.anchorMax = new Vector2(.965f, .95f);
        contentRt.offsetMin = contentRt.offsetMax = Vector2.zero;
        var layout = content.GetComponent<VerticalLayoutGroup>();
        layout.spacing = 8f;
        layout.childAlignment = TextAnchor.MiddleCenter;
        layout.childControlHeight = true;
        layout.childControlWidth = true;
        layout.childForceExpandHeight = false;

        var page = panel.GetComponent<NarrativePage>();
        foreach (string line in lines)
        {
            var textGo = new GameObject("Line", typeof(RectTransform), typeof(CanvasRenderer), typeof(TextMeshProUGUI), typeof(CanvasGroup), typeof(LayoutElement));
            textGo.transform.SetParent(content.transform, false);
            var text = textGo.GetComponent<TextMeshProUGUI>();
            text.text = line;
            text.font = font;
            text.color = new Color32(30, 47, 47, 255);
            text.alignment = TextAlignmentOptions.Center;
            text.textWrappingMode = TextWrappingModes.NoWrap;
            text.raycastTarget = false;
            page.Lines.Add(text);
        }

        var buttons = new GameObject("Buttons", typeof(RectTransform), typeof(HorizontalLayoutGroup), typeof(CanvasGroup));
        buttons.transform.SetParent(panel.transform, false);
        var buttonRect = buttons.GetComponent<RectTransform>();
        buttonRect.anchorMin = new Vector2(.08f, .02f);
        buttonRect.anchorMax = new Vector2(.92f, .34f);
        buttonRect.offsetMin = buttonRect.offsetMax = Vector2.zero;
        var row = buttons.GetComponent<HorizontalLayoutGroup>();
        row.spacing = 44f;
        row.childAlignment = TextAnchor.MiddleCenter;
        row.childControlWidth = true;
        row.childControlHeight = true;
        row.childForceExpandWidth = false;
        row.childForceExpandHeight = false;
        page.Actions = buttons.GetComponent<CanvasGroup>();
        buildButtons(buttons.transform);

        panel.SetActive(false);
        return panel;
    }

    internal static Button AddNarrativeButton(Transform parent, Button original, string caption = null,
        TMP_FontAsset font = null, UnityEngine.Events.UnityAction action = null)
    {
        const float diameter = 360f;
        var slot = new GameObject(original.name + " Slot", typeof(RectTransform), typeof(LayoutElement));
        slot.transform.SetParent(parent, false);
        var layout = slot.GetComponent<LayoutElement>();
        layout.preferredWidth = diameter;
        layout.preferredHeight = diameter;

        var button = Instantiate(original, slot.transform, false);
        var rect = (RectTransform)button.transform;
        rect.anchorMin = rect.anchorMax = new Vector2(.5f, .5f);
        rect.anchoredPosition = Vector2.zero;
        float scale = diameter / Mathf.Max(rect.sizeDelta.x, rect.sizeDelta.y);
        rect.localScale = Vector3.one * scale;
        if (action != null)
        {
            button.onClick = new Button.ButtonClickedEvent();
            button.onClick.AddListener(action);
        }
        if (caption == null) return button;
        var label = button.GetComponentInChildren<TMP_Text>(true);
        if (label != null)
        {
            label.text = caption;
            if (font != null) label.font = font;
            label.enableAutoSizing = false;
            label.fontSize = 76f / scale;
            label.enableAutoSizing = true;
            label.fontSizeMin = 42f / scale;
            label.fontSizeMax = 76f / scale;
        }
        return button;
    }

    internal static TMP_Text StyleButton(RectTransform rect, string label, TMP_FontAsset font, float fontSize, bool secondary = false)
    {
        if (rect == null || !rect.TryGetComponent<Image>(out var image)) return null;
        image.sprite = RoundedButtonSprite();
        image.type = Image.Type.Sliced;
        image.color = secondary ? new Color32(224, 234, 229, 255) : new Color32(36, 78, 75, 255);
        if (rect.TryGetComponent<Button>(out var button))
        {
            button.targetGraphic = image;
            button.transition = Selectable.Transition.ColorTint;
        }
        foreach (Transform child in rect) child.gameObject.SetActive(false);

        var textGo = new GameObject("Caption", typeof(RectTransform), typeof(TextMeshProUGUI));
        textGo.transform.SetParent(rect, false);
        Stretch(textGo.GetComponent<RectTransform>());
        var text = textGo.GetComponent<TextMeshProUGUI>();
        text.text = label;
        text.font = font;
        text.fontSize = fontSize;
        text.color = secondary ? new Color32(30, 47, 47, 255) : Color.white;
        text.alignment = TextAlignmentOptions.Center;
        text.raycastTarget = false;
        return text;
    }

    private static Sprite buttonSprite;

    private static Sprite RoundedButtonSprite()
    {
        if (buttonSprite != null) return buttonSprite;
        const int size = 64;
        const int radius = 24;
        var texture = new Texture2D(size, size, TextureFormat.RGBA32, false);
        var pixels = new Color32[size * size];
        for (int y = 0; y < size; y++)
        for (int x = 0; x < size; x++)
        {
            float dx = Mathf.Max(Mathf.Abs(x + .5f - size * .5f) - (size * .5f - radius), 0f);
            float dy = Mathf.Max(Mathf.Abs(y + .5f - size * .5f) - (size * .5f - radius), 0f);
            byte alpha = (byte)(255 * Mathf.Clamp01(radius + .5f - Mathf.Sqrt(dx * dx + dy * dy)));
            pixels[y * size + x] = new Color32(255, 255, 255, alpha);
        }
        texture.SetPixels32(pixels);
        texture.Apply(false, true);
        buttonSprite = Sprite.Create(texture, new Rect(0, 0, size, size), new Vector2(.5f, .5f),
            100f, 0, SpriteMeshType.FullRect, Vector4.one * radius);
        return buttonSprite;
    }

    private static RectTransform FullRect(string name, Transform parent)
    {
        var go = new GameObject(name, typeof(RectTransform));
        go.transform.SetParent(parent, false);
        var rt = go.GetComponent<RectTransform>();
        Stretch(rt);
        return rt;
    }

    private static void Stretch(RectTransform rt)
    {
        rt.anchorMin = Vector2.zero;
        rt.anchorMax = Vector2.one;
        rt.offsetMin = rt.offsetMax = Vector2.zero;
    }
}

public class NarrativePage : MonoBehaviour
{
    public readonly List<TMP_Text> Lines = new List<TMP_Text>();
    public CanvasGroup Actions;
    private Sequence sequence;

    private void OnEnable()
    {
        sequence?.Kill();
        int textSize = M1Presentation.TextSize;
        float interval = M1Presentation.LineInterval;
        foreach (var line in Lines)
        {
            line.enableAutoSizing = true;
            line.fontSizeMin = 44f;
            line.fontSizeMax = textSize;
            line.GetComponent<LayoutElement>().preferredHeight = 114f;
            line.GetComponent<CanvasGroup>().alpha = 0f;
        }
        if (Actions != null) { Actions.alpha = 0f; Actions.interactable = false; Actions.blocksRaycasts = false; }
        sequence = DOTween.Sequence().SetUpdate(true).SetDelay(M1Presentation.FadeSeconds + .04f);
        for (int i = 0; i < Lines.Count; i++)
            sequence.Insert(i * interval, Lines[i].GetComponent<CanvasGroup>().DOFade(1f, .45f));
        if (Actions != null)
        {
            sequence.AppendInterval(.18f).Append(Actions.DOFade(1f, .32f));
            sequence.OnComplete(() => { Actions.interactable = true; Actions.blocksRaycasts = true; });
        }
    }

    private void OnDisable() => sequence?.Kill();
}
