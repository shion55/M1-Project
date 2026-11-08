using System;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Text;
using UnityEngine;

public class OSCManager : MonoBehaviour
{
    [Header("Default OSC Destination")]
    [SerializeField] private string ipAddress = "127.0.0.1";
    [SerializeField] private int port = 9000;

    private const string IpPrefKey = "M1.OSC.DestinationIP";
    private const string PortPrefKey = "M1.OSC.DestinationPort";

    private UdpClient udpClient;
    private IPEndPoint destination;

    public string DestinationIP =>
        destination != null
            ? destination.Address.ToString()
            : ipAddress;

    public int DestinationPort =>
        destination != null ? destination.Port : port;

    private void Awake()
    {
        try
        {
            udpClient = new UdpClient(AddressFamily.InterNetwork);
        }
        catch (Exception e)
        {
            Debug.LogError("[OSC] UDP初期化失敗: " + e.Message);
            return;
        }

        string savedIP =
            PlayerPrefs.GetString(IpPrefKey, ipAddress);
        int savedPort =
            PlayerPrefs.GetInt(PortPrefKey, port);

        if (!TryApplyDestination(
            savedIP, savedPort, out string error))
        {
            Debug.LogWarning(
                "[OSC] 設定値が不正です: " + error);

            TryApplyDestination("127.0.0.1", 9000, out _);
        }
    }

    public bool TrySaveDestination(
        string newIP, int newPort, out string error)
    {
        if (udpClient == null)
        {
            error = "UDPが初期化されていません。";
            return false;
        }

        if (!TryApplyDestination(
            newIP, newPort, out error))
            return false;

        PlayerPrefs.SetString(IpPrefKey, DestinationIP);
        PlayerPrefs.SetInt(PortPrefKey, DestinationPort);
        PlayerPrefs.Save();

        return true;
    }

    private bool TryApplyDestination(
        string newIP, int newPort, out string error)
    {
        if (newPort < 1 || newPort > 65535)
        {
            error = "Portは1～65535で指定してください。";
            return false;
        }

        string trimmedIP = (newIP ?? "").Trim();

        if (!IPAddress.TryParse(
                trimmedIP, out IPAddress parsedIP) ||
            parsedIP.AddressFamily != AddressFamily.InterNetwork)
        {
            error = "IPv4アドレスが不正です。";
            return false;
        }

        destination = new IPEndPoint(parsedIP, newPort);
        ipAddress = destination.Address.ToString();
        port = newPort;

        error = null;
        return true;
    }

    public void SendInt(string address, int value)
    {
        if (!TrySendInt(address, value, out string error))
            Debug.LogError("[OSC] 送信失敗: " + error);
    }

    public bool TrySendInt(
        string address, int value, out string error)
    {
        if (udpClient == null || destination == null)
        {
            error = "UDPまたは送信先が未設定です。";
            return false;
        }

        if (string.IsNullOrEmpty(address) ||
            !address.StartsWith("/"))
        {
            error = "OSCアドレスが不正です。";
            return false;
        }

        try
        {
            byte[] packet;

            using (MemoryStream stream = new MemoryStream())
            {
                WriteOscString(stream, address);
                WriteOscString(stream, ",i");

                byte[] data = BitConverter.GetBytes(value);

                if (BitConverter.IsLittleEndian)
                    Array.Reverse(data);

                stream.Write(data, 0, data.Length);
                packet = stream.ToArray();
            }

            udpClient.Send(
                packet, packet.Length, destination);

            Debug.Log(
                $"[OSC] {address} {value} -> " +
                $"{DestinationIP}:{DestinationPort}");

            error = null;
            return true;
        }
        catch (Exception e)
        {
            error = e.Message;
            return false;
        }
    }

    private static void WriteOscString(
        Stream stream, string text)
    {
        byte[] bytes = Encoding.UTF8.GetBytes(text);
        stream.Write(bytes, 0, bytes.Length);
        stream.WriteByte(0);

        while (stream.Position % 4 != 0)
            stream.WriteByte(0);
    }

    private void OnDestroy()
    {
        udpClient?.Close();
        udpClient = null;
    }
}
