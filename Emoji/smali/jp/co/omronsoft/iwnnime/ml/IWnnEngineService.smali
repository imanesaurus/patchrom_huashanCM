.class public Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;
.super Landroid/app/Service;
.source "IWnnEngineService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DELAY_MS_UPDATE_DECOEMOJI_DICTIONARY:I = 0x0

.field private static final ENGINE_INITIALIZE:I = 0x2

.field private static final ENGINE_INITIALIZE_REGISTRATION_DICTIONARY:I = 0x6

.field private static final ENGINE_PREFIXATION:I = 0x4

.field private static final ENGINE_PREFIXATION_AND_SEARCH:I = 0x5

.field private static final ENGINE_SEARCH:I = 0x3

.field private static final ENGINE_SEARCH_REGISTRATION_DICTIONARY:I = 0x7

.field private static final ENGINE_STATUS_CHECK_TABLE:[[Z = null

.field private static final ENGINE_UNCONNECTION:I = 0x0

.field private static final ENGINE_UNSETTING:I = 0x1

.field private static final ERR_COMMON:I = -0x1

.field private static final ERR_INVALID_STATE:I = -0x7f

.field private static final ERR_NO_DICTIONARY:I = -0x7e

.field private static final FUNCTION_ADDWORD:I = 0xf

.field private static final FUNCTION_CONNECT:I = 0x0

.field private static final FUNCTION_CONVERT:I = 0x9

.field private static final FUNCTION_DELETEWORD:I = 0x11

.field private static final FUNCTION_DISCONNECT:I = 0x1

.field private static final FUNCTION_GETNEXTCANDIDATE:I = 0xa

.field private static final FUNCTION_INITIALIZEDICTIONARY:I = 0x13

.field private static final FUNCTION_INIT_BREAK:I = 0x3

.field private static final FUNCTION_INIT_INIT:I = 0x2

.field private static final FUNCTION_LEARNCANDIDATE:I = 0xb

.field private static final FUNCTION_LEARNCANDIDATENOSTORE:I = 0xc

.field private static final FUNCTION_LEARNWORD:I = 0xd

.field private static final FUNCTION_LEARNWORDNOSTORE:I = 0xe

.field private static final FUNCTION_PREDICT:I = 0x8

.field private static final FUNCTION_SEARCHWORDS:I = 0x10

.field private static final FUNCTION_SETDICTIONARY:I = 0x4

.field private static final FUNCTION_SETLEARNDICTIONARY:I = 0x7

.field private static final FUNCTION_SETNORMALDICTIONARY:I = 0x5

.field private static final FUNCTION_SETUSERDICTIONARY:I = 0x6

.field private static final FUNCTION_STARTINPUT:I = 0x15

.field private static final FUNCTION_UNDO:I = 0x14

.field private static final FUNCTION_WRITEOUTDICTIONARY:I = 0x12

.field private static final MSG_UPDATE_DECOEMOJI_DICTIONARY:I = 0x1

.field private static final RESULTLIST_ARRAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "iWnn"


# instance fields
.field private mConfigurationFile:Ljava/lang/String;

.field private mConnectedPackage:Ljava/lang/String;

.field private mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

.field private mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

.field private mEngineService:Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;

.field private mEngineStatus:I

.field private mErrorCode:I

.field private mFilesDirPath:Ljava/lang/String;

.field private mFlexibleSearch:Z

.field mHandler:Landroid/os/Handler;

.field private mIsBind:Z

.field private mIsConverting:Z

.field private mIsFlexibleCharsetInit:Z

.field private mSegment:I

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mTenKeyType:Z

.field private mWnnWordArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 115
    const/16 v0, 0x16

    new-array v0, v0, [[Z

    const/4 v1, 0x0

    new-array v2, v3, [Z

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [Z

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [Z

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Z

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Z

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [Z

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [Z

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [Z

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [Z

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->ENGINE_STATUS_CHECK_TABLE:[[Z

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_3
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_5
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_6
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_8
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_b
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_c
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_d
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_10
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_11
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_12
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_13
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_14
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_15
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1055
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;

    .line 147
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsConverting:Z

    .line 150
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mSegment:I

    .line 153
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsFlexibleCharsetInit:Z

    .line 159
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mFlexibleSearch:Z

    .line 162
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mTenKeyType:Z

    .line 165
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I

    .line 174
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    .line 180
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mFilesDirPath:Ljava/lang/String;

    .line 183
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$1;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mHandler:Landroid/os/Handler;

    .line 199
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$2;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mServiceConn:Landroid/content/ServiceConnection;

    .line 214
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;-><init>(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineService:Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;

    .line 1055
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    return-object v0
.end method

.method static synthetic access$002(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    return-object p1
.end method

.method static synthetic access$100()[[Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->ENGINE_STATUS_CHECK_TABLE:[[Z

    return-object v0
.end method

.method static synthetic access$1000(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mSegment:I

    return v0
.end method

.method static synthetic access$1002(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mSegment:I

    return p1
.end method

.method static synthetic access$1008(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mSegment:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mSegment:I

    return v0
.end method

.method static synthetic access$1100(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConfigurationFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConfigurationFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConnectedPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mFlexibleSearch:Z

    return v0
.end method

.method static synthetic access$1302(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mFlexibleSearch:Z

    return p1
.end method

.method static synthetic access$1400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mTenKeyType:Z

    return v0
.end method

.method static synthetic access$1402(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mTenKeyType:Z

    return p1
.end method

.method static synthetic access$1500(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->callCheckDecoEmoji()V

    return-void
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I

    return v0
.end method

.method static synthetic access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I

    return p1
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->stopDecoEmojiUpdating()V

    return-void
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    return-object v0
.end method

.method static synthetic access$500(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mFilesDirPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsFlexibleCharsetInit:Z

    return v0
.end method

.method static synthetic access$602(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsFlexibleCharsetInit:Z

    return p1
.end method

.method static synthetic access$700(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsConverting:Z

    return v0
.end method

.method static synthetic access$702(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsConverting:Z

    return p1
.end method

.method static synthetic access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I

    return v0
.end method

.method static synthetic access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I

    return p1
.end method

.method private callCheckDecoEmoji()V
    .locals 5

    .prologue
    .line 1147
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1148
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "preferenceId"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1150
    .local v0, decoemoji_id:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    if-eqz v3, :cond_0

    .line 1152
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;->aidl_checkDecoEmoji(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception v1

    .line 1154
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private decoEmojiBindStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1129
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 1131
    .local v1, success:Z
    if-eqz v1, :cond_0

    .line 1132
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsBind:Z

    .line 1134
    :cond_0
    return-void
.end method

.method private stopDecoEmojiUpdating()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1141
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 1085
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I

    if-nez v2, :cond_1

    .line 1086
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I

    .line 1087
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConnectedPackage:Ljava/lang/String;

    .line 1089
    const/4 v2, 0x0

    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->setConvertFunctionEnabled(Z)V

    .line 1090
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v0

    .line 1091
    .local v0, assist:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getEmojiFunctionType()I

    move-result v1

    .line 1093
    .local v1, functype:I
    if-eqz v1, :cond_0

    .line 1094
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->setConvertFunctionEnabled(Z)V

    .line 1095
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->decoEmojiBindStart()V

    .line 1098
    .end local v1           #functype:I
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineService:Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;

    .line 1101
    .end local v0           #assist:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    :goto_0
    return-object v2

    .line 1100
    :cond_1
    const-string v2, "iWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IWnnEngineService::onBind(): Already connecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConnectedPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 1062
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1063
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngineForService()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    .line 1064
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mFilesDirPath:Ljava/lang/String;

    .line 1065
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1072
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->stopDecoEmojiUpdating()V

    .line 1073
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->close()V

    .line 1074
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1115
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsBind:Z

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1117
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsBind:Z

    .line 1119
    :cond_0
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I

    .line 1120
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->stopDecoEmojiUpdating()V

    .line 1121
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->close()V

    .line 1122
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
