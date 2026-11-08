using TMPro;
using UnityEngine;

public class DebugPanelController : MonoBehaviour
{
    [Header("Scene references")]
    [SerializeField] private OSCManager oscManager;
    [SerializeField] private GameObject debugPanel;

    [Header("DebugPanel children")]
    [SerializeField] private TMP_InputField ipInput;
    [SerializeField] private TMP_InputField portInput;
    [SerializeField] private TMP_Text statusText; // Optional

    private void Awake()
    {
        if (debugPanel != null)
            debugPanel.SetActive(false);
    }

    public void Open()
    {
        if (!ValidateReferences())
            return;

        // Show the currently active destination, including saved settings.
        ipInput.SetTextWithoutNotify(oscManager.DestinationIP);
        portInput.SetTextWithoutNotify(oscManager.DestinationPort.ToString());
        SetStatus("OSC settings");
        debugPanel.SetActive(true);
        debugPanel.transform.SetAsLastSibling();
    }

    public void Close()
    {
        if (debugPanel != null)
            debugPanel.SetActive(false);
    }

    public void SaveSettings()
    {
        if (!ValidateReferences())
            return;

        if (!int.TryParse(portInput.text.Trim(), out int newPort))
        {
            SetStatus("Invalid port number (1–65535).");
            return;
        }

        if (oscManager.TrySaveDestination(ipInput.text, newPort, out string error))
        {
            // Normalize the input fields to the saved values.
            ipInput.SetTextWithoutNotify(oscManager.DestinationIP);
            portInput.SetTextWithoutNotify(oscManager.DestinationPort.ToString());
            SetStatus($"Saved: {oscManager.DestinationIP}:{oscManager.DestinationPort}");
        }
        else
        {
            SetStatus($"Could not save: {error}");
        }
    }

    public void SendTest()
    {
        if (!ValidateReferences())
            return;

        // Avoid testing an older destination while unsaved edits are visible.
        if (ipInput.text.Trim() != oscManager.DestinationIP ||
            portInput.text.Trim() != oscManager.DestinationPort.ToString())
        {
            SetStatus("Save the destination before testing.");
            return;
        }

        if (oscManager.TrySendInt("/test", 1, out string error))
        {
            SetStatus("Sent /test 1 (Max receipt is not confirmed).");
        }
        else
        {
            SetStatus($"Test send failed: {error}");
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
