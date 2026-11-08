using UnityEngine;
using UnityEngine.EventSystems;


public class HiddenDebugOpner : MonoBehaviour, IPointerDownHandler, IPointerUpHandler, IPointerExitHandler
{
    [SerializeField] private DebugPanelController debugPanelController;
    [SerializeField, Min(0.5f)] private float holdSeconds = 5f;

    private bool isHolding;
    private float holdStartedAt;
    private int activePointerId;

    public void OnPointerDown(PointerEventData eventData)
    {
        if (isHolding)
            return;

        isHolding = true;
        activePointerId = eventData.pointerId;
        holdStartedAt = Time.unscaledTime;
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        if (isHolding && eventData.pointerId == activePointerId)
            CancelHold();
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        if (isHolding && eventData.pointerId == activePointerId)
            CancelHold();
    }

    private void Update()
    {
        if (!isHolding || Time.unscaledTime - holdStartedAt < holdSeconds)
            return;

        CancelHold();
        if (debugPanelController != null)
            debugPanelController.Open();
        else
            Debug.LogError("[HiddenDebugOpener] DebugPanelController is not assigned.", this);
    }

    private void OnDisable()
    {
        CancelHold();
    }

    private void CancelHold()
    {
        isHolding = false;
        activePointerId = 0;
    }
}
