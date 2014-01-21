.class public Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
.super Landroid/inputmethodservice/InputMethodService;
.source "OpenWnn.java"


# static fields
.field private static DEBUG:Z = false

.field private static final DECOEMOJI_GIJI_DICTIONALY_NAME:Ljava/lang/String; = "njdecoemoji.a"

.field private static final DECOEMOJI_GIJI_DICTIONALY_PATH:Ljava/lang/String; = "/data/data/jp.co.omronsoft.iwnnime.ml/dicset/master/"

.field public static final DENSITY_XHIGH:I = 0x140

.field public static final PERFORMANCE_DEBUG:Z = false

.field public static final SCREEN_SIZE_10:I = 0x2

.field public static final SCREEN_SIZE_4:I = 0x0

.field public static final SCREEN_SIZE_7:I = 0x1

.field public static final SUBTYPE_EMOJI_INPUT_EXTRA_VALUE:Ljava/lang/String; = "emojiinput"

.field private static final TABLET_DISPLAY_DP_MIN:F = 600.0f

.field private static mCurrentIme:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

.field private static mIsXLarge:Z

.field private static mScreenSize:I

.field private static mTabletMode:Z


# instance fields
.field private KeyActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/KeyAction;",
            ">;"
        }
    .end annotation
.end field

.field mAttribute:Landroid/view/inputmethod/EditorInfo;

.field protected mAutoHideMode:Z

.field protected mCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

.field protected mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

.field private mConsumeDownEvent:Z

.field protected mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

.field private mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

.field protected mDirectInputMode:Z

.field private mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

.field private mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field private mFunfun:I

.field protected mInputConnection:Landroid/view/inputmethod/InputConnection;

.field protected mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

.field private mIsBind:Z

.field private mIsEmojiAssistWorking:Z

.field protected mIsKeep:Z

.field protected mPreConverter:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field public mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    .line 115
    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsXLarge:Z

    .line 118
    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mTabletMode:Z

    .line 121
    sput v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mScreenSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 90
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    .line 92
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    .line 94
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    .line 96
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    .line 98
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mPreConverter:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 100
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    .line 102
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 104
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mAutoHideMode:Z

    .line 106
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDirectInputMode:Z

    .line 130
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->KeyActionList:Ljava/util/List;

    .line 139
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsBind:Z

    .line 145
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$1;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mServiceConn:Landroid/content/ServiceConnection;

    .line 165
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    .line 173
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$2;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    return-object p1
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getPreferenceId()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->callCheckDecoEmoji()V

    return-void
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsEmojiAssistWorking:Z

    return v0
.end method

.method static synthetic access$500(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)Ljp/co/omronsoft/android/emoji/EmojiAssist;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    return-object v0
.end method

.method private callCheckDecoEmoji()V
    .locals 5

    .prologue
    .line 808
    sget-boolean v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "OpenWnn"

    const-string v4, "callCheckDecoEmoji() START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 810
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "preferenceId"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 812
    .local v0, decoemoji_id:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    if-eqz v3, :cond_2

    .line 814
    :try_start_0
    sget-boolean v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "OpenWnn"

    const-string v4, "callCheckDecoEmoji() call aidl_checkDecoEmoji()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;->aidl_checkDecoEmoji(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :cond_2
    :goto_0
    sget-boolean v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "OpenWnn"

    const-string v4, "callCheckDecoEmoji() END"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_3
    return-void

    .line 816
    :catch_0
    move-exception v1

    .line 817
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeChannel(Ljava/nio/channels/FileChannel;)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 948
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "closeChannel()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    if-eqz p0, :cond_1

    .line 952
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :cond_1
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, e:Ljava/io/IOException;
    const-string v1, "OpenWnn"

    const-string v2, "Fail to close FileChannel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private copyPresetDecoEmojiGijiDictionary()V
    .locals 10

    .prologue
    .line 911
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "copyPresetDecoEmojiGijiDictionary()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v1, "/data/data/jp.co.omronsoft.iwnnime.ml/dicset/master/njdecoemoji.a"

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    .local v6, decoEmojiGijiDic:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 916
    new-instance v9, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/etc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "njdecoemoji.a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 918
    .local v9, presetDecoEmojiGijiDic:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 919
    const/4 v0, 0x0

    .line 920
    .local v0, channelSrc:Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 923
    .local v5, channelDest:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v8, folder:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 926
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 927
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 929
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    .line 934
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    .line 942
    .end local v0           #channelSrc:Ljava/nio/channels/FileChannel;
    .end local v5           #channelDest:Ljava/nio/channels/FileChannel;
    .end local v8           #folder:Ljava/io/File;
    .end local v9           #presetDecoEmojiGijiDic:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 930
    .restart local v0       #channelSrc:Ljava/nio/channels/FileChannel;
    .restart local v5       #channelDest:Ljava/nio/channels/FileChannel;
    .restart local v9       #presetDecoEmojiGijiDic:Ljava/io/File;
    :catch_0
    move-exception v7

    .line 931
    .local v7, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "OpenWnn"

    const-string v2, "Fail to copy preset DecoEmoji pseudo dictionary"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    .line 934
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 933
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    .line 934
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    throw v1

    .line 937
    .end local v0           #channelSrc:Ljava/nio/channels/FileChannel;
    .end local v5           #channelDest:Ljava/nio/channels/FileChannel;
    :cond_2
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OpenWnn"

    const-string v2, "  Preset DecoEmoji pseudo dictionary is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 940
    .end local v9           #presetDecoEmojiGijiDic:Ljava/io/File;
    :cond_3
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OpenWnn"

    const-string v2, "  DecoEmoji pseudo dictionary is found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private decoEmojiBindStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 777
    sget-boolean v4, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "OpenWnn"

    const-string v5, "decoEmojiBindStart() START"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v0

    .line 779
    .local v0, assist:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    if-eqz v0, :cond_2

    .line 780
    invoke-virtual {v0}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getEmojiFunctionType()I

    move-result v1

    .line 781
    .local v1, functype:I
    if-nez v1, :cond_2

    .line 792
    .end local v1           #functype:I
    :cond_1
    :goto_0
    return-void

    .line 786
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v4, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 787
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v4, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 788
    .local v3, success:Z
    if-eqz v3, :cond_3

    .line 789
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsBind:Z

    .line 791
    :cond_3
    sget-boolean v4, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "OpenWnn"

    const-string v5, "decoEmojiBindStart() END"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private endEmojiAssist()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    if-nez v0, :cond_0

    .line 851
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    .line 853
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    invoke-virtual {v0}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->stopAnimation()V

    .line 854
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsEmojiAssistWorking:Z

    .line 855
    return-void
.end method

.method public static getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    .locals 1

    .prologue
    .line 638
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mCurrentIme:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    return-object v0
.end method

.method public static getFilesDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 977
    if-nez p0, :cond_1

    .line 984
    :cond_0
    :goto_0
    return-object v1

    .line 980
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 981
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPreferenceId()I
    .locals 3

    .prologue
    .line 887
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 888
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "preferenceId"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static isDebugging()Z
    .locals 1

    .prologue
    .line 692
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    return v0
.end method

.method public static isScreenSize10inch()Z
    .locals 3

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, ret:Z
    sget v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mScreenSize:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 768
    const/4 v0, 0x1

    .line 770
    :cond_0
    return v0
.end method

.method public static isTabletMode()Z
    .locals 1

    .prologue
    .line 758
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mTabletMode:Z

    return v0
.end method

.method public static isXLarge()Z
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method private registReceiver()V
    .locals 3

    .prologue
    .line 895
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 896
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 898
    return-void
.end method

.method private startEmojiAssist()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    if-nez v0, :cond_0

    .line 840
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    .line 842
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsEmojiAssistWorking:Z

    .line 843
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    invoke-virtual {v0}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->startAnimation()V

    .line 844
    return-void
.end method

.method private unregistReceiver()V
    .locals 2

    .prologue
    .line 904
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 905
    return-void
.end method

.method public static updateTabletMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 736
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mScreenSize:I

    .line 737
    sget v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mScreenSize:I

    packed-switch v0, :pswitch_data_0

    .line 751
    :goto_0
    return-void

    .line 739
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mTabletMode:Z

    goto :goto_0

    .line 744
    :pswitch_1
    const/4 v0, 0x1

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mTabletMode:Z

    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected close()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->close()V

    .line 630
    :cond_0
    return-void
.end method

.method public deleteSurrogateText(I)V
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 993
    sparse-switch p1, :sswitch_data_0

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 997
    :sswitch_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 998
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 999
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1000
    .local v1, lastChar:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1001
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 993
    :sswitch_data_0
    .sparse-switch
        -0xea -> :sswitch_0
        -0xd6 -> :sswitch_0
        -0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    return-object v0
.end method

.method public getDecoEmojiBindInterface()Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    .locals 2

    .prologue
    .line 800
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "getDecoEmojiBindInterface() START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    return-object v0
.end method

.method public getEmojiAssist()Ljp/co/omronsoft/android/emoji/EmojiAssist;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    if-nez v0, :cond_0

    .line 830
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    .line 832
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;

    return-object v0
.end method

.method public getExtractEditText()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    return-object v0
.end method

.method public getFilesDirPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 969
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 970
    .local v0, dir:Ljava/io/File;
    if-nez v0, :cond_0

    .line 971
    const/4 v1, 0x0

    .line 973
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFunfun()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mFunfun:I

    return v0
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    .line 535
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 536
    const-string v0, "iWnn"

    const-string v1, "OpenWnn::hideWindow()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 554
    :goto_0
    return-void

    .line 540
    :cond_0
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "hideWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 543
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->removeMessages()V

    .line 547
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDirectInputMode:Z

    .line 548
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->hideStatusIcon()V

    .line 550
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->callCheckDecoEmoji()V

    .line 551
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->endEmojiAssist()V

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsKeep:Z

    goto :goto_0
.end method

.method public isKeepInput()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsKeep:Z

    return v0
.end method

.method public isSubtypeExtraEmojiInput()Z
    .locals 3

    .prologue
    .line 960
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 961
    .local v0, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, subtypeExtra:Ljava/lang/String;
    const-string v2, "emojiinput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 963
    const/4 v2, 0x1

    .line 965
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 2
    .parameter "outInsets"

    .prologue
    .line 561
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 562
    const-string v0, "iWnn"

    const-string v1, "OpenWnn::onComputeInsets()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 567
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->updateXLargeMode()V

    .line 212
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->updateTabletMode(Landroid/content/Context;)V

    .line 213
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 215
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "debug_log"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    .line 218
    sput-object p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mCurrentIme:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    .line 220
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->copyPresetDecoEmojiGijiDictionary()V

    .line 224
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getFilesDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->init(Ljava/lang/String;)V

    .line 225
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->clear()V

    .line 227
    :cond_2
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->registReceiver()V

    .line 229
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 5

    .prologue
    .line 237
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v2

    if-nez v2, :cond_1

    .line 238
    const-string v2, "iWnn"

    const-string v3, "OpenWnn::onCreateCandidatesView()  Unprocessing onCreate() "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v0

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :cond_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v2, :cond_2

    .line 241
    const-string v2, "iWnn"

    const-string v3, "OpenWnn::onCreateCandidatesView()  InputConnection is not active"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_2
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    if-eqz v2, :cond_3

    .line 245
    const-string v2, "window"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 246
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v2, p0, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, view:Landroid/view/View;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->setViewType(I)V

    .line 250
    sget-boolean v2, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateCandidatesView()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v0           #view:Landroid/view/View;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_3
    sget-boolean v2, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateCandidatesView()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_4
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 4

    .prologue
    .line 866
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v1

    .line 867
    .local v1, v:Landroid/view/View;
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v0

    .local v0, assist:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    move-object v2, v1

    .line 868
    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f030005

    invoke-virtual {v0, v2, v3}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->replaceExtractEditText(Landroid/view/ViewGroup;I)Landroid/inputmethodservice/ExtractEditText;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 869
    return-object v1
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 5

    .prologue
    .line 265
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v2

    if-nez v2, :cond_0

    .line 266
    const-string v2, "iWnn"

    const-string v3, "OpenWnn::onCreateInputView()  Unprocessing onCreate() "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v2

    .line 282
    :goto_0
    return-object v2

    .line 268
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v2, :cond_1

    .line 269
    const-string v2, "iWnn"

    const-string v3, "OpenWnn::onCreateInputView()  InputConnection is not active"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 272
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 273
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "debug_log"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    .line 274
    sget-boolean v2, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "OpenWnn"

    const-string v3, "onCreateInputView()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    if-eqz v2, :cond_3

    .line 277
    const-string v2, "window"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 278
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 282
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_3
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 292
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 293
    const-string v0, "iWnn"

    const-string v1, "OpenWnn::onDestroy()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 310
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 298
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->removeMessages()V

    .line 302
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mCurrentIme:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    .line 303
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->close()V

    .line 305
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsBind:Z

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->unbindService(Landroid/content/ServiceConnection;)V

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsBind:Z

    .line 309
    :cond_3
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->unregistReceiver()V

    goto :goto_0
.end method

.method public onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public onExtractedTextClicked()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 318
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v3

    if-nez v3, :cond_0

    .line 319
    const-string v3, "iWnn"

    const-string v4, "OpenWnn::onKeyDown()  Unprocessing onCreate() "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 370
    :goto_0
    return v3

    .line 321
    :cond_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v3, :cond_1

    .line 322
    const-string v3, "iWnn"

    const-string v4, "IWnnLanguageSwitcher::onKeyDown()  InputConnection is not active"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 325
    :cond_1
    sget-boolean v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "OpenWnn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 328
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConsumeDownEvent:Z

    .line 329
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConsumeDownEvent:Z

    goto :goto_0

    .line 331
    :cond_3
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v3, :cond_4

    const/16 v3, 0x6f

    if-eq p1, v3, :cond_4

    const/16 v3, 0x44

    if-ne p1, v3, :cond_6

    .line 333
    :cond_4
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v3, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConsumeDownEvent:Z

    .line 353
    :goto_1
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/KeyAction;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyAction;-><init>()V

    .line 354
    .local v0, Keycodeinfo:Ljp/co/omronsoft/iwnnime/ml/KeyAction;
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConsumeDownEvent:Z

    iput-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyAction;->mConsumeDownEvent:Z

    .line 355
    iput p1, v0, Ljp/co/omronsoft/iwnnime/ml/KeyAction;->mKeyCode:I

    .line 357
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->KeyActionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 358
    .local v1, cnt:I
    if-eqz v1, :cond_5

    .line 359
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 360
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->KeyActionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/KeyAction;

    iget v3, v3, Ljp/co/omronsoft/iwnnime/ml/KeyAction;->mKeyCode:I

    if-ne v3, p1, :cond_7

    .line 361
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->KeyActionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 366
    .end local v2           #i:I
    :cond_5
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->KeyActionList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConsumeDownEvent:Z

    if-nez v3, :cond_8

    .line 368
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 335
    .end local v0           #Keycodeinfo:Ljp/co/omronsoft/iwnnime/ml/KeyAction;
    .end local v1           #cnt:I
    :cond_6
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v3, v3, 0xf

    packed-switch v3, :pswitch_data_0

    .line 348
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v3, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConsumeDownEvent:Z

    goto :goto_1

    .line 337
    :pswitch_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v3, v3, 0xff0

    sparse-switch v3, :sswitch_data_0

    .line 343
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v3, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConsumeDownEvent:Z

    goto :goto_1

    .line 340
    :sswitch_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConsumeDownEvent:Z

    .line 341
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 359
    .restart local v0       #Keycodeinfo:Ljp/co/omronsoft/iwnnime/ml/KeyAction;
    .restart local v1       #cnt:I
    .restart local v2       #i:I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 370
    .end local v2           #i:I
    :cond_8
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConsumeDownEvent:Z

    goto/16 :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 337
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 419
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v1

    if-nez v1, :cond_0

    .line 420
    const-string v1, "iWnn"

    const-string v2, "OpenWnn::onKeyLongPress()  Unprocessing onCreate() "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 427
    :goto_0
    return v1

    .line 423
    :cond_0
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OpenWnn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyLongPress("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_1
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v0, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 426
    .local v0, wnnEvent:Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
    const v1, -0xfffffdc

    iput v1, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 427
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x72

    const/16 v6, 0x71

    .line 379
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v5

    if-nez v5, :cond_1

    .line 380
    const-string v5, "iWnn"

    const-string v6, "OpenWnn::onKeyUp()  Unprocessing onCreate() "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 410
    :cond_0
    :goto_0
    return v3

    .line 382
    :cond_1
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v5, :cond_2

    .line 383
    const-string v5, "iWnn"

    const-string v6, "OpenWnn::onKeyUp()  InputConnection is not active"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 386
    :cond_2
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConsumeDownEvent:Z

    .line 387
    .local v3, ret:Z
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->KeyActionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 388
    .local v1, cnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 389
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->KeyActionList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/KeyAction;

    .line 390
    .local v0, Keycodeinfo:Ljp/co/omronsoft/iwnnime/ml/KeyAction;
    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/KeyAction;->mKeyCode:I

    if-ne v5, p1, :cond_4

    .line 391
    iget-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyAction;->mConsumeDownEvent:Z

    .line 392
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->KeyActionList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 396
    .end local v0           #Keycodeinfo:Ljp/co/omronsoft/iwnnime/ml/KeyAction;
    :cond_3
    if-nez v3, :cond_5

    if-eq p1, v6, :cond_5

    if-eq p1, v7, :cond_5

    .line 397
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 409
    :goto_2
    sget-boolean v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "OpenWnn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onKeyUp("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    .restart local v0       #Keycodeinfo:Ljp/co/omronsoft/iwnnime/ml/KeyAction;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 398
    .end local v0           #Keycodeinfo:Ljp/co/omronsoft/iwnnime/ml/KeyAction;
    :cond_5
    if-nez v3, :cond_7

    if-eq p1, v6, :cond_6

    if-ne p1, v7, :cond_7

    .line 399
    :cond_6
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v5, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 400
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    .line 402
    :cond_7
    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v4, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 403
    .local v4, wnnEvent:Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
    const/4 v5, 0x4

    if-ne p1, v5, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_8

    .line 405
    const v5, -0xffffff9

    iput v5, v4, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    .line 407
    :cond_8
    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    move-result v3

    goto :goto_2
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 436
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_1

    .line 437
    const-string v0, "iWnn"

    const-string v1, "OpenWnn::onStartInput()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 442
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 443
    if-nez p2, :cond_2

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->clear()V

    .line 446
    :cond_2
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onStartInput()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v3, 0x0

    .line 455
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v1

    if-nez v1, :cond_0

    .line 456
    const-string v1, "iWnn"

    const-string v2, "OpenWnn::onStartInputView()  Unprocessing onCreate() "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 485
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 461
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 463
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 465
    if-nez p2, :cond_1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    .line 468
    :cond_1
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "OpenWnn"

    const-string v2, "onStartInputView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_8

    .line 470
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDirectInputMode:Z

    .line 471
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v1

    if-nez v1, :cond_3

    .line 472
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getFilesDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->init(Ljava/lang/String;)V

    .line 477
    :cond_3
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 478
    .local v0, pref:Landroid/content/SharedPreferences;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->setPreferences(Landroid/content/SharedPreferences;)V

    .line 479
    :cond_4
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v1, v0, p1}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->setPreferences(Landroid/content/SharedPreferences;Landroid/view/inputmethod/EditorInfo;)V

    .line 480
    :cond_5
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mPreConverter:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    if-eqz v1, :cond_6

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mPreConverter:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    invoke-interface {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/LetterConverter;->setPreferences(Landroid/content/SharedPreferences;)V

    .line 481
    :cond_6
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    if-eqz v1, :cond_7

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-interface {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->setPreferences(Landroid/content/SharedPreferences;)V

    .line 483
    :cond_7
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->decoEmojiBindStart()V

    .line 484
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->startEmojiAssist()V

    goto :goto_0

    .line 475
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDirectInputMode:Z

    goto :goto_1
.end method

.method public requestHideSelf(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 493
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_1

    .line 494
    const-string v0, "iWnn"

    const-string v1, "OpenWnn::requestHideSelf()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OpenWnn"

    const-string v1, "requestHideSelf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_2
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 502
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->hideWindow()V

    goto :goto_0
.end method

.method public requestShowSelf()V
    .locals 7

    .prologue
    .line 700
    :try_start_0
    const-class v2, Landroid/inputmethodservice/InputMethodService;

    const-string v3, "requestShowSelf"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 701
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 702
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 710
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenWnn::requestShowSelf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 705
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 706
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenWnn::requestShowSelf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 708
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenWnn::requestShowSelf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected searchToggleCharacter(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "prevChar"
    .parameter "toggleTable"
    .parameter "reverse"

    .prologue
    .line 603
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 604
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 605
    if-eqz p3, :cond_1

    .line 606
    add-int/lit8 v0, v0, -0x1

    .line 607
    if-gez v0, :cond_0

    .line 608
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p2, v1

    .line 622
    :goto_1
    return-object v1

    .line 610
    :cond_0
    aget-object v1, p2, v0

    goto :goto_1

    .line 613
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 614
    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 615
    const/4 v1, 0x0

    aget-object v1, p2, v1

    goto :goto_1

    .line 617
    :cond_2
    aget-object v1, p2, v0

    goto :goto_1

    .line 603
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setCandidatesViewShown(Z)V
    .locals 3
    .parameter "shown"

    .prologue
    .line 513
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_1

    .line 514
    const-string v0, "iWnn"

    const-string v1, "OpenWnn::setCandidatesViewShown()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 519
    if-eqz p1, :cond_3

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->showWindow(Z)V

    .line 526
    :cond_2
    :goto_1
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCandidatesViewShown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_3
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mAutoHideMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    if-nez v0, :cond_2

    .line 523
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->hideWindow()V

    goto :goto_1
.end method

.method public setFunfun(I)V
    .locals 0
    .parameter "funfun"

    .prologue
    .line 656
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mFunfun:I

    .line 657
    return-void
.end method

.method public setStateOfKeepInput(Z)V
    .locals 0
    .parameter "in"

    .prologue
    .line 674
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsKeep:Z

    .line 675
    return-void
.end method

.method public updateXLargeMode()V
    .locals 2

    .prologue
    .line 725
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsXLarge:Z

    .line 728
    return-void

    .line 725
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
