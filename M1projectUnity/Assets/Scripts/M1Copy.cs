internal enum M1Language { Japanese, English, Chinese }

internal sealed class M1Copy
{
    public string[] Intro { get; }
    public string[] Consent { get; }
    public string[] RecordingGuide { get; }
    public string Operation { get; }
    public string Start { get; }
    public string Next { get; }
    public string Back { get; }
    public string NoSave { get; }
    public string NoSaveNote { get; }
    public string Save { get; }
    public string ToRecord { get; }
    public string Record { get; }
    public string Recording { get; }
    public string Retry { get; }
    public string End { get; }

    private M1Copy(string[] intro, string[] consent, string[] recordingGuide, string operation,
        string start, string next, string back, string noSave, string noSaveNote, string save,
        string toRecord, string record, string recording, string retry, string end)
    {
        Intro = intro;
        Consent = consent;
        RecordingGuide = recordingGuide;
        Operation = operation;
        Start = start;
        Next = next;
        Back = back;
        NoSave = noSave;
        NoSaveNote = noSaveNote;
        Save = save;
        ToRecord = toRecord;
        Record = record;
        Recording = recording;
        Retry = retry;
        End = end;
    }

    public static M1Copy For(M1Language language) => Versions[(int)language];

    private static readonly M1Copy[] Versions =
    {
        new M1Copy(
            new[] { "この作品は、録音したあなたの声を", "両手を使って操作しながら", "再び<color=#246A62><b>「聞く」</b></color>ための", "試みです" },
            new[] { "録音は断片となって", "作品に蓄積されていきます", "まず、あなたの声をどのように扱うか", "決めてください" },
            new[] { "ゲージが一周するまで", "声を出してみてください", "好きな歌の一節を歌っても", "今思っていることを話しても", "大丈夫です" },
            "スピーカーの円の中央に立ち\n両手を動かして声を探してみましょう。\n手の高さや向きを変えながら、\n音の変化を探ってみてください。",
            "はじめる", "次へ", "もどる", "体験のみ", "（声を残さない）", "残す",
            "録音へ", "録音開始", "録音中", "もう一度\n録音", "おわる"),
        new M1Copy(
            new[] { "This work invites you to", "<color=#246A62><b>listen</b></color> to your recorded voice again", "and reshape what you hear", "by moving both hands." },
            new[] { "Saved recordings become fragments", "that accumulate in the artwork.", "First, choose what happens", "to your voice after the experience." },
            new[] { "Use your voice until the ring fills.", "You can sing a line from a song", "or say whatever is on your mind.", "Either is fine." },
            "Stand in the center of the speaker circle.\nMove both hands to explore your voice.\nChange the height and direction of your hands\nand listen to how the sound changes.",
            "Start", "Next", "Back", "Experience only", "Voice not saved", "Save my\nvoice",
            "To\nrecording", "Record", "Recording…", "Record\nagain", "Finish"),
        new M1Copy(
            new[] { "这件作品邀请你用双手", "操控自己录下的声音，", "再次<color=#246A62><b>「聆听」</b></color>自己的声音。" },
            new[] { "保存的录音会化为声音片段，", "逐渐积累在这件作品中。", "请先选择如何处理", "你录下的声音。" },
            new[] { "请持续发声，直到进度环走完一圈。", "你可以唱一小段喜欢的歌，", "也可以说说你此刻在想什么。", "都可以。" },
            "请站在扬声器围成的圆圈中央。\n用双手探索你录下的声音。\n试着改变双手的高度和方向，\n听听声音如何变化。",
            "开始", "下一步", "返回", "仅体验", "（不保存声音）", "保存声音",
            "前往录音", "开始录音", "录音中", "重新录音", "结束")
    };
}
