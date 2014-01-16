.class public Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
.super Landroid/app/Service;
.source "ViPER4AndroidService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$LocalBinder;,
        Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;,
        Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;
    }
.end annotation


# static fields
.field private static final ACTION_QUERY_DRIVERSTATUS:Ljava/lang/String; = "com.vipercn.viper4android_v2.QUERY_DRIVERSTATUS"

.field private static final ACTION_QUERY_DRIVERSTATUS_RESULT:Ljava/lang/String; = "com.vipercn.viper4android_v2.QUERY_DRIVERSTATUS_RESULT"

.field private static final ACTION_QUERY_EQUALIZER:Ljava/lang/String; = "com.vipercn.viper4android_v2.QUERY_EQUALIZER"

.field private static final ACTION_QUERY_EQUALIZER_RESULT:Ljava/lang/String; = "com.vipercn.viper4android_v2.QUERY_EQUALIZER_RESULT"

.field private static final ACTION_RELEASE_EFFECT:Ljava/lang/String; = "com.vipercn.viper4android_v2.RELEASE_EFFECT"

.field private static final ACTION_SET_ENABLED:Ljava/lang/String; = "com.vipercn.viper4android_v2.SET_ENABLED"

.field private static final ACTION_SET_EQUALIZER:Ljava/lang/String; = "com.vipercn.viper4android_v2.SET_EQUALIZER"

.field private static final ACTION_TAKEOVER_EFFECT:Ljava/lang/String; = "com.vipercn.viper4android_v2.TAKEOVER_EFFECT"

.field private static final ACTION_TAKEOVER_EFFECT_RESULT:Ljava/lang/String; = "com.vipercn.viper4android_v2.TAKEOVER_EFFECT_RESULT"

.field public static final DEVICE_GLOBAL_OUTPUT_MIXER:I = 0x0

.field public static final ID_V4A_GENERAL_FX:Ljava/util/UUID; = null

.field public static final PARAM_FX_TYPE_SWITCH:I = 0x10001

.field public static final PARAM_GET_CHANNELS:I = 0x8008

.field public static final PARAM_GET_CONFIGURE:I = 0x8004

.field public static final PARAM_GET_CONVKNLID:I = 0x800a

.field public static final PARAM_GET_CONVUSABLE:I = 0x8009

.field public static final PARAM_GET_DRIVER_VERSION:I = 0x8001

.field public static final PARAM_GET_EFFECT_TYPE:I = 0x8006

.field public static final PARAM_GET_ENABLED:I = 0x8003

.field public static final PARAM_GET_NEONENABLED:I = 0x8002

.field public static final PARAM_GET_SAMPLINGRATE:I = 0x8007

.field public static final PARAM_GET_STREAMING:I = 0x8005

.field public static final PARAM_HPFX_AGC_MAXSCALER:I = 0x1001b

.field public static final PARAM_HPFX_AGC_PROCESS_ENABLED:I = 0x10018

.field public static final PARAM_HPFX_AGC_RATIO:I = 0x10019

.field public static final PARAM_HPFX_AGC_VOLUME:I = 0x1001a

.field public static final PARAM_HPFX_COLM_DEPTH:I = 0x1000f

.field public static final PARAM_HPFX_COLM_MIDIMAGE:I = 0x1000e

.field public static final PARAM_HPFX_COLM_PROCESS_ENABLED:I = 0x1000c

.field public static final PARAM_HPFX_COLM_WIDENING:I = 0x1000d

.field public static final PARAM_HPFX_CONV_COMMITBUFFER:I = 0x10006

.field public static final PARAM_HPFX_CONV_CROSSCHANNEL:I = 0x10007

.field public static final PARAM_HPFX_CONV_PREPAREBUFFER:I = 0x10004

.field public static final PARAM_HPFX_CONV_PROCESS_ENABLED:I = 0x10002

.field public static final PARAM_HPFX_CONV_SETBUFFER:I = 0x10005

.field public static final PARAM_HPFX_CONV_UPDATEKERNEL_DEPRECATED:I = 0x10003

.field public static final PARAM_HPFX_CURE_CROSSFEED:I = 0x1002a

.field public static final PARAM_HPFX_CURE_PROCESS_ENABLED:I = 0x10029

.field public static final PARAM_HPFX_DIFFSURR_DELAYTIME:I = 0x10011

.field public static final PARAM_HPFX_DIFFSURR_PROCESS_ENABLED:I = 0x10010

.field public static final PARAM_HPFX_DYNSYS_BASSGAIN:I = 0x10021

.field public static final PARAM_HPFX_DYNSYS_ENABLETUBE:I = 0x1001d

.field public static final PARAM_HPFX_DYNSYS_PROCESS_ENABLED:I = 0x1001c

.field public static final PARAM_HPFX_DYNSYS_SIDEGAIN:I = 0x10020

.field public static final PARAM_HPFX_DYNSYS_XCOEFFS:I = 0x1001e

.field public static final PARAM_HPFX_DYNSYS_YCOEFFS:I = 0x1001f

.field public static final PARAM_HPFX_FIREQ_BANDLEVEL:I = 0x1000b

.field public static final PARAM_HPFX_FIREQ_PROCESS_ENABLED:I = 0x1000a

.field public static final PARAM_HPFX_LIMITER_THRESHOLD:I = 0x1002d

.field public static final PARAM_HPFX_OUTPUT_PAN:I = 0x1002c

.field public static final PARAM_HPFX_OUTPUT_VOLUME:I = 0x1002b

.field public static final PARAM_HPFX_REVB_DAMP:I = 0x10015

.field public static final PARAM_HPFX_REVB_DRY:I = 0x10017

.field public static final PARAM_HPFX_REVB_PROCESS_ENABLED:I = 0x10012

.field public static final PARAM_HPFX_REVB_ROOMSIZE:I = 0x10013

.field public static final PARAM_HPFX_REVB_WET:I = 0x10016

.field public static final PARAM_HPFX_REVB_WIDTH:I = 0x10014

.field public static final PARAM_HPFX_VHE_EFFECT_LEVEL:I = 0x10009

.field public static final PARAM_HPFX_VHE_PROCESS_ENABLED:I = 0x10008

.field public static final PARAM_HPFX_VIPERBASS_BASSGAIN:I = 0x10025

.field public static final PARAM_HPFX_VIPERBASS_MODE:I = 0x10023

.field public static final PARAM_HPFX_VIPERBASS_PROCESS_ENABLED:I = 0x10022

.field public static final PARAM_HPFX_VIPERBASS_SPEAKER:I = 0x10024

.field public static final PARAM_HPFX_VIPERCLARITY_CLARITY:I = 0x10028

.field public static final PARAM_HPFX_VIPERCLARITY_MODE:I = 0x10027

.field public static final PARAM_HPFX_VIPERCLARITY_PROCESS_ENABLED:I = 0x10026

.field public static final PARAM_SET_COMM_STATUS:I = 0x9001

.field public static final PARAM_SET_DOPROCESS_STATUS:I = 0x9004

.field public static final PARAM_SET_FORCEENABLE_STATUS:I = 0x9005

.field public static final PARAM_SET_RESET_STATUS:I = 0x9003

.field public static final PARAM_SET_UPDATE_STATUS:I = 0x9002

.field public static final PARAM_SPKFX_AGC_MAXSCALER:I = 0x10040

.field public static final PARAM_SPKFX_AGC_PROCESS_ENABLED:I = 0x1003d

.field public static final PARAM_SPKFX_AGC_RATIO:I = 0x1003e

.field public static final PARAM_SPKFX_AGC_VOLUME:I = 0x1003f

.field public static final PARAM_SPKFX_CONV_COMMITBUFFER:I = 0x10032

.field public static final PARAM_SPKFX_CONV_CROSSCHANNEL:I = 0x10033

.field public static final PARAM_SPKFX_CONV_PREPAREBUFFER:I = 0x10030

.field public static final PARAM_SPKFX_CONV_PROCESS_ENABLED:I = 0x1002e

.field public static final PARAM_SPKFX_CONV_SETBUFFER:I = 0x10031

.field public static final PARAM_SPKFX_CONV_UPDATEKERNEL_DEPRECATED:I = 0x1002f

.field public static final PARAM_SPKFX_CORR_PROCESS_ENABLED:I = 0x1003c

.field public static final PARAM_SPKFX_FIREQ_BANDLEVEL:I = 0x10035

.field public static final PARAM_SPKFX_FIREQ_PROCESS_ENABLED:I = 0x10034

.field public static final PARAM_SPKFX_LIMITER_THRESHOLD:I = 0x10042

.field public static final PARAM_SPKFX_OUTPUT_VOLUME:I = 0x10041

.field public static final PARAM_SPKFX_REVB_DAMP:I = 0x10039

.field public static final PARAM_SPKFX_REVB_DRY:I = 0x1003b

.field public static final PARAM_SPKFX_REVB_PROCESS_ENABLED:I = 0x10036

.field public static final PARAM_SPKFX_REVB_ROOMSIZE:I = 0x10037

.field public static final PARAM_SPKFX_REVB_WET:I = 0x1003a

.field public static final PARAM_SPKFX_REVB_WIDTH:I = 0x10038

.field public static final V4A_FX_TYPE_HEADPHONE:I = 0x1

.field public static final V4A_FX_TYPE_NONE:I = 0x0

.field public static final V4A_FX_TYPE_SPEAKER:I = 0x2

.field protected static mPreviousMode:Ljava/lang/String;

.field protected static mUseBluetooth:Z

.field protected static mUseHeadset:Z

.field protected static mUseUSBSoundCard:Z


# instance fields
.field private bMediaMounted:Z

.field private final m3rdAPI_QUERY_DRIVERSTATUS_Receiver:Landroid/content/BroadcastReceiver;

.field private final m3rdAPI_QUERY_EQUALIZER_Receiver:Landroid/content/BroadcastReceiver;

.field private final m3rdAPI_RELEASE_EFFECT_Receiver:Landroid/content/BroadcastReceiver;

.field private final m3rdAPI_SET_ENABLED_Receiver:Landroid/content/BroadcastReceiver;

.field private final m3rdAPI_SET_EQUALIZER_Receiver:Landroid/content/BroadcastReceiver;

.field private final m3rdAPI_TAKEOVER_EFFECT_Receiver:Landroid/content/BroadcastReceiver;

.field private m3rdEnabled:Z

.field private m3rdEqualizerEnabled:Z

.field private m3rdEqualizerLevels:[F

.field private final mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

.field private final mBinder:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$LocalBinder;

.field private final mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

.field private mDriverIsReady:Z

.field private mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

.field private mGeneralFXList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;",
            ">;"
        }
    .end annotation
.end field

.field private mOverriddenEqualizerLevels:[F

.field private final mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mRoutingReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenOnReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

.field private mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

.field private mWorkingWith3rd:Z

.field private final tmMediaStatusTimer:Ljava/util/Timer;

.field private ttMediaStatusTimer:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 674
    const-string v0, "41d3c987-e6cf-11e3-a88a-11aba5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    .line 775
    sput-boolean v1, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseHeadset:Z

    .line 776
    sput-boolean v1, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseBluetooth:Z

    .line 777
    sput-boolean v1, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseUSBSoundCard:Z

    .line 778
    const-string v0, "none"

    sput-object v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mPreviousMode:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 773
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$LocalBinder;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mBinder:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$LocalBinder;

    .line 780
    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mOverriddenEqualizerLevels:[F

    .line 781
    iput-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    .line 782
    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    .line 783
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;

    .line 784
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    invoke-direct {v0, p0, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    .line 795
    iput-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEnabled:Z

    .line 796
    iput-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerEnabled:Z

    .line 797
    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerLevels:[F

    .line 798
    iput-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mWorkingWith3rd:Z

    .line 800
    iput-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->bMediaMounted:Z

    .line 801
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->tmMediaStatusTimer:Ljava/util/Timer;

    .line 802
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$1;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$1;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ttMediaStatusTimer:Ljava/util/TimerTask;

    .line 825
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$2;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$2;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_QUERY_DRIVERSTATUS_Receiver:Landroid/content/BroadcastReceiver;

    .line 837
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$3;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$3;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_QUERY_EQUALIZER_Receiver:Landroid/content/BroadcastReceiver;

    .line 855
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_TAKEOVER_EFFECT_Receiver:Landroid/content/BroadcastReceiver;

    .line 891
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$5;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$5;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_RELEASE_EFFECT_Receiver:Landroid/content/BroadcastReceiver;

    .line 908
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$6;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$6;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_SET_ENABLED_Receiver:Landroid/content/BroadcastReceiver;

    .line 940
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$7;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$7;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_SET_EQUALIZER_Receiver:Landroid/content/BroadcastReceiver;

    .line 990
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$8;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$8;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    .line 1052
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$9;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$9;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 1062
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 1078
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$11;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$11;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 1088
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$12;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    .line 1098
    new-instance v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$13;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$13;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    return-void
.end method

.method private CancelNotification()V
    .locals 2

    .prologue
    .line 1176
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1177
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 1178
    const/16 v1, 0x1234

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1179
    :cond_0
    return-void
.end method

.method private ShowNotification(Ljava/lang/String;)V
    .locals 14
    .parameter "nFXType"

    .prologue
    .line 1140
    const-string v10, "com.vipercn.viper4android_v2.settings"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1141
    .local v7, preferences:Landroid/content/SharedPreferences;
    const-string v10, "viper4android.settings.show_notify_icon"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1142
    .local v0, bEnableNotify:Z
    if-nez v0, :cond_1

    .line 1144
    const-string v10, "ViPER4Android"

    const-string v11, "ShowNotification(): show_notify = false"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "icon"

    const-string v12, "drawable"

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1149
    .local v4, nIconID:I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ViPER4Android FX "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1150
    .local v8, szNotifyText:Ljava/lang/String;
    const-string v3, "ViPER4Android FX"

    .local v3, contentTitle:Ljava/lang/CharSequence;
    move-object v2, p1

    .line 1151
    .local v2, contentText:Ljava/lang/CharSequence;
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1152
    .local v5, notificationIntent:Landroid/content/Intent;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1154
    .local v1, contentItent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1156
    new-instance v10, Landroid/app/Notification$Builder;

    invoke-direct {v10, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1157
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1158
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1159
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1161
    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1162
    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1163
    invoke-virtual {v10, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1164
    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1165
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1166
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 1168
    .local v9, v4aNotify:Landroid/app/Notification;
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 1169
    .local v6, notificationManager:Landroid/app/NotificationManager;
    if-eqz v6, :cond_0

    .line 1170
    const/16 v10, 0x1234

    invoke-virtual {v6, v10, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 800
    iput-boolean p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->bMediaMounted:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Z
    .locals 1
    .parameter

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->bMediaMounted:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;[F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerLevels:[F

    return-void
.end method

.method static synthetic access$11(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;
    .locals 1
    .parameter

    .prologue
    .line 784
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 783
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ShowNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V
    .locals 0
    .parameter

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->CancelNotification()V

    return-void
.end method

.method static synthetic access$2(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Z
    .locals 1
    .parameter

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 798
    iput-boolean p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mWorkingWith3rd:Z

    return-void
.end method

.method static synthetic access$4(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Z
    .locals 1
    .parameter

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mWorkingWith3rd:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 795
    iput-boolean p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEnabled:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Z
    .locals 1
    .parameter

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEnabled:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Z
    .locals 1
    .parameter

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerEnabled:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 796
    iput-boolean p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerEnabled:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)[F
    .locals 1
    .parameter

    .prologue
    .line 797
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerLevels:[F

    return-object v0
.end method

.method public static getAudioOutputRouting(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "prefSettings"

    .prologue
    .line 1383
    const-string v1, "viper4android.settings.lock_effect"

    const-string v2, "none"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1384
    .local v0, szLockedEffect:Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1386
    sget-boolean v1, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseBluetooth:Z

    if-eqz v1, :cond_1

    const-string v0, "bluetooth"

    .line 1391
    .end local v0           #szLockedEffect:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1387
    .restart local v0       #szLockedEffect:Ljava/lang/String;
    :cond_1
    sget-boolean v1, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseHeadset:Z

    if-eqz v1, :cond_2

    const-string v0, "headset"

    goto :goto_0

    .line 1388
    :cond_2
    sget-boolean v1, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseUSBSoundCard:Z

    if-eqz v1, :cond_3

    const-string v0, "headset"

    goto :goto_0

    .line 1389
    :cond_3
    const-string v0, "speaker"

    goto :goto_0
.end method


# virtual methods
.method public GetConvolverUsable()Z
    .locals 3

    .prologue
    .line 1481
    const/4 v0, 0x0

    .line 1482
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 1484
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const v2, 0x8009

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1485
    const/4 v0, 0x1

    .line 1487
    :cond_0
    return v0
.end method

.method public GetDriverChannels()I
    .locals 3

    .prologue
    .line 1473
    const/4 v0, 0x0

    .line 1474
    .local v0, nResult:I
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const v2, 0x8008

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v0

    .line 1476
    :cond_0
    return v0
.end method

.method public GetDriverEffectType()I
    .locals 3

    .prologue
    .line 1457
    const/4 v0, 0x0

    .line 1458
    .local v0, nResult:I
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 1459
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const v2, 0x8006

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v0

    .line 1460
    :cond_0
    return v0
.end method

.method public GetDriverEnabled()Z
    .locals 3

    .prologue
    .line 1424
    const/4 v0, 0x0

    .line 1425
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 1427
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const v2, 0x8003

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1428
    const/4 v0, 0x1

    .line 1430
    :cond_0
    return v0
.end method

.method public GetDriverIsReady()Z
    .locals 1

    .prologue
    .line 1396
    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    return v0
.end method

.method public GetDriverNEON()Z
    .locals 3

    .prologue
    .line 1413
    const/4 v0, 0x0

    .line 1414
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const v2, 0x8002

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1417
    const/4 v0, 0x1

    .line 1419
    :cond_0
    return v0
.end method

.method public GetDriverProcess()Z
    .locals 3

    .prologue
    .line 1446
    const/4 v0, 0x0

    .line 1447
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 1449
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const v2, 0x8005

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1450
    const/4 v0, 0x1

    .line 1452
    :cond_0
    return v0
.end method

.method public GetDriverSamplingRate()I
    .locals 3

    .prologue
    .line 1465
    const/4 v0, 0x0

    .line 1466
    .local v0, nResult:I
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 1467
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const v2, 0x8007

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v0

    .line 1468
    :cond_0
    return v0
.end method

.method public GetDriverUsable()Z
    .locals 3

    .prologue
    .line 1435
    const/4 v0, 0x0

    .line 1436
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-eqz v1, :cond_0

    .line 1438
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const v2, 0x8004

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1439
    const/4 v0, 0x1

    .line 1441
    :cond_0
    return v0
.end method

.method protected SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V
    .locals 1
    .parameter "idx"
    .parameter "level"
    .parameter "hpfx"
    .parameter "dsp"

    .prologue
    .line 1492
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-nez v0, :cond_1

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x1000b

    invoke-virtual {p4, v0, p1, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    goto :goto_0

    .line 1494
    :cond_2
    const v0, 0x10035

    invoke-virtual {p4, v0, p1, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    goto :goto_0
.end method

.method public StartStatusUpdating()V
    .locals 3

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const v1, 0x9002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1403
    :cond_0
    return-void
.end method

.method public StopStatusUpdating()V
    .locals 3

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const v1, 0x9002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1409
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mBinder:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 24

    .prologue
    .line 1185
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 1187
    const-string v2, "ViPER4Android"

    const-string v3, "Query ViPER4Android engine ..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    new-instance v8, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;

    new-instance v2, Lcom/vipercn/viper4android_v2/activity/Utils;

    invoke-direct {v2}, Lcom/vipercn/viper4android_v2/activity/Utils;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v2}, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;-><init>(Lcom/vipercn/viper4android_v2/activity/Utils;)V

    .line 1189
    .local v8, aeuUtils:Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;
    invoke-virtual {v8}, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->IsViPER4AndroidEngineFound()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1191
    const-string v2, "ViPER4Android"

    const-string v3, "ViPER4Android engine not found, create empty service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    .line 1317
    :goto_0
    return-void

    .line 1197
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 1198
    .local v18, packageMgr:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .line 1199
    .local v17, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v21, ""

    .line 1202
    .local v21, szApkVer:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->GetViPER4AndroidEngineVersion()[I

    move-result-object v15

    .line 1203
    .local v15, iaDrvVer:[I
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v15, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v15, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v15, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, v15, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1204
    .local v23, szDriverVersion:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 1205
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1206
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1208
    const-string v2, "ViPER4Android"

    const-string v3, "ViPER4Android engine is not compatible with service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1213
    .end local v15           #iaDrvVer:[I
    .end local v23           #szDriverVersion:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1215
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ViPER4Android"

    const-string v3, "Cannot found ViPER4Android\'s apk [weird]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    goto :goto_0

    .line 1220
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15       #iaDrvVer:[I
    .restart local v23       #szDriverVersion:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 1223
    .local v12, context:Landroid/content/Context;
    const-string v2, "audio"

    invoke-virtual {v12, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioManager;

    .line 1224
    .local v16, mAudioManager:Landroid/media/AudioManager;
    if-eqz v16, :cond_2

    .line 1226
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    sput-boolean v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseBluetooth:Z

    .line 1227
    sget-boolean v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseBluetooth:Z

    if-eqz v2, :cond_9

    .line 1229
    const-string v2, "ViPER4Android"

    const-string v3, "Current is a2dp mode [bluetooth]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseHeadset:Z

    .line 1231
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseUSBSoundCard:Z

    .line 1248
    :cond_2
    :goto_1
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Get current mode from system ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "com.vipercn.viper4android_v2.settings"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getAudioOutputRouting(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v2, :cond_3

    .line 1251
    const-string v2, "ViPER4Android"

    const-string v3, "onCreate, mGeneralFX != null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_3
    const-string v2, "com.vipercn.viper4android_v2.settings"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1254
    .local v19, prefSettings:Landroid/content/SharedPreferences;
    const-string v2, "viper4android.settings.driverconfigured"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 1255
    .local v11, bDriverConfigured:Z
    if-nez v11, :cond_4

    .line 1257
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1258
    .local v14, edPrefSettings:Landroid/content/SharedPreferences$Editor;
    if-eqz v14, :cond_4

    .line 1260
    const-string v2, "viper4android.settings.driverconfigured"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1261
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1264
    .end local v14           #edPrefSettings:Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v2, "viper4android.settings.compatiblemode"

    const-string v3, "global"

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1265
    .local v22, szCompatibleMode:Ljava/lang/String;
    const-string v2, "global"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v2, :cond_5

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    invoke-virtual {v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->release()V

    .line 1269
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    .line 1278
    :cond_6
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_7

    .line 1279
    const/4 v2, 0x1

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->startForeground(ILandroid/app/Notification;)V

    .line 1281
    :cond_7
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1282
    .local v10, audioSessionFilter:Landroid/content/IntentFilter;
    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1283
    const-string v2, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1286
    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    .line 1287
    .local v20, screenFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1290
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1291
    .local v9, audioFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1292
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_8

    .line 1295
    const-string v2, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1297
    :cond_8
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1298
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vipercn.viper4android_v2.UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vipercn.viper4android_v2.SHOWNOTIFY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vipercn.viper4android_v2.CANCELNOTIFY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_QUERY_DRIVERSTATUS_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vipercn.viper4android_v2.QUERY_DRIVERSTATUS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_QUERY_EQUALIZER_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vipercn.viper4android_v2.QUERY_EQUALIZER"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_TAKEOVER_EFFECT_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vipercn.viper4android_v2.TAKEOVER_EFFECT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_RELEASE_EFFECT_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vipercn.viper4android_v2.RELEASE_EFFECT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_SET_ENABLED_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vipercn.viper4android_v2.SET_ENABLED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_SET_EQUALIZER_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vipercn.viper4android_v2.SET_EQUALIZER"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1312
    const-string v2, "ViPER4Android"

    const-string v3, "Service launched."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem(Z)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->tmMediaStatusTimer:Ljava/util/Timer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ttMediaStatusTimer:Ljava/util/TimerTask;

    const-wide/16 v4, 0x3a98

    const-wide/32 v6, 0xea60

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 1235
    .end local v9           #audioFilter:Landroid/content/IntentFilter;
    .end local v10           #audioSessionFilter:Landroid/content/IntentFilter;
    .end local v11           #bDriverConfigured:Z
    .end local v19           #prefSettings:Landroid/content/SharedPreferences;
    .end local v20           #screenFilter:Landroid/content/IntentFilter;
    .end local v22           #szCompatibleMode:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    sput-boolean v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseHeadset:Z

    .line 1236
    sget-boolean v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseHeadset:Z

    if-eqz v2, :cond_a

    .line 1238
    const-string v2, "ViPER4Android"

    const-string v3, "Current is headset mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseUSBSoundCard:Z

    goto/16 :goto_1

    .line 1243
    :cond_a
    const-string v2, "ViPER4Android"

    const-string v3, "Current is speaker mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseUSBSoundCard:Z

    goto/16 :goto_1

    .line 1273
    .restart local v11       #bDriverConfigured:Z
    .restart local v19       #prefSettings:Landroid/content/SharedPreferences;
    .restart local v22       #szCompatibleMode:Ljava/lang/String;
    :cond_b
    const-string v2, "ViPER4Android"

    const-string v3, "Creating global V4ADSPModule ..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-nez v2, :cond_6

    .line 1275
    new-instance v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    sget-object v3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Ljava/util/UUID;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 1322
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1324
    iget-boolean v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-nez v3, :cond_0

    .line 1366
    :goto_0
    return-void

    .line 1327
    :cond_0
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->tmMediaStatusTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 1329
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_1

    .line 1330
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->stopForeground(Z)V

    .line 1332
    :cond_1
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1333
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1334
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1335
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1336
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mShowNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1337
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mCancelNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1339
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_QUERY_DRIVERSTATUS_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1340
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_QUERY_EQUALIZER_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1341
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_TAKEOVER_EFFECT_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1342
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_RELEASE_EFFECT_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1343
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_SET_ENABLED_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1344
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdAPI_SET_EQUALIZER_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1346
    invoke-direct {p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->CancelNotification()V

    .line 1348
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v3, :cond_2

    .line 1349
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    invoke-virtual {v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->release()V

    .line 1350
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    .line 1352
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    invoke-virtual {v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;->acquire()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1354
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_1
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 1361
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1362
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    invoke-virtual {v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;->release()V

    .line 1365
    .end local v0           #idx:I
    :cond_3
    const-string v3, "ViPER4Android"

    const-string v4, "Service destroyed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1356
    .restart local v0       #idx:I
    :cond_4
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1357
    .local v1, sessionId:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    .line 1358
    .local v2, v4aModule:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_5

    if-nez v2, :cond_6

    .line 1354
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1359
    :cond_6
    invoke-virtual {v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->release()V

    goto :goto_2
.end method

.method public setEqualizerLevels([F)V
    .locals 1
    .parameter "levels"

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mOverriddenEqualizerLevels:[F

    .line 1377
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem(Z)V

    .line 1378
    return-void
.end method

.method protected updateSystem(Z)V
    .locals 11
    .parameter "bRequireReset"

    .prologue
    const/4 v10, 0x0

    .line 1499
    const-string v6, "com.vipercn.viper4android_v2.settings"

    invoke-virtual {p0, v6, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getAudioOutputRouting(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 1500
    .local v1, mode:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "com.vipercn.viper4android_v2."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1501
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v6, "ViPER4Android"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Begin system update("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/4 v2, 0x0

    .line 1504
    .local v2, nFXType:I
    const-string v6, "headset"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "bluetooth"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 1507
    :cond_1
    :goto_0
    sget-object v6, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mPreviousMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1509
    sput-object v1, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mPreviousMode:Ljava/lang/String;

    .line 1510
    const-string v6, "headset"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1511
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "text_headset"

    const-string v8, "string"

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ShowNotification(Ljava/lang/String;)V

    .line 1517
    :cond_2
    :goto_1
    const-string v6, "com.vipercn.viper4android_v2.settings"

    invoke-virtual {p0, v6, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1518
    .local v3, prefSettings:Landroid/content/SharedPreferences;
    const-string v6, "viper4android.settings.compatiblemode"

    const-string v7, "global"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1519
    .local v5, szCompatibleMode:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1520
    .local v0, mFXInLocalMode:Z
    const-string v6, "global"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v0, 0x0

    .line 1523
    :goto_2
    const-string v6, "ViPER4Android"

    const-string v7, "<+++++++++++++++ Update global effect +++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-virtual {p0, v4, v2, p1, v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem_Global(Landroid/content/SharedPreferences;IZZ)V

    .line 1525
    const-string v6, "ViPER4Android"

    const-string v7, "<++++++++++++++++++++++++++++++++++++++++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const-string v6, "ViPER4Android"

    const-string v7, "<+++++++++++++++ Update local effect +++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-virtual {p0, v4, v2, p1, v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem_Local(Landroid/content/SharedPreferences;IZZ)V

    .line 1529
    const-string v6, "ViPER4Android"

    const-string v7, "<+++++++++++++++++++++++++++++++++++++++++++++++++++>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    return-void

    .line 1505
    .end local v0           #mFXInLocalMode:Z
    .end local v3           #prefSettings:Landroid/content/SharedPreferences;
    .end local v5           #szCompatibleMode:Ljava/lang/String;
    :cond_3
    const-string v6, "speaker"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    .line 1512
    :cond_4
    const-string v6, "bluetooth"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1513
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "text_bluetooth"

    const-string v8, "string"

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ShowNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 1514
    :cond_5
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "text_speaker"

    const-string v8, "string"

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ShowNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 1521
    .restart local v0       #mFXInLocalMode:Z
    .restart local v3       #prefSettings:Landroid/content/SharedPreferences;
    .restart local v5       #szCompatibleMode:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x1

    goto :goto_2
.end method

.method protected updateSystem_Global(Landroid/content/SharedPreferences;IZZ)V
    .locals 7
    .parameter "preferences"
    .parameter "nFXType"
    .parameter "bRequireReset"
    .parameter "mLocalFX"

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mDriverIsReady:Z

    if-nez v0, :cond_1

    .line 1536
    :cond_0
    const-string v0, "ViPER4Android"

    const-string v1, "updateSystem(): Effects is invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :goto_0
    return-void

    .line 1542
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1544
    const-string v0, "ViPER4Android"

    const-string v1, "The effect is controlling by system now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1548
    :catch_0
    move-exception v6

    .line 1550
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ViPER4Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSystem_Global(), Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1554
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    if-eqz p4, :cond_3

    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;ZZ)V

    goto :goto_0

    .line 1555
    :cond_3
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFX:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;ZZ)V

    goto :goto_0
.end method

.method protected updateSystem_Local(Landroid/content/SharedPreferences;IZZ)V
    .locals 10
    .parameter "preferences"
    .parameter "nFXType"
    .parameter "bRequireReset"
    .parameter "mLocalFX"

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    invoke-virtual {v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;->acquire()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1562
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1563
    .local v9, v4aUnderControl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, idx:I
    :goto_0
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    .line 1580
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_4

    .line 1583
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    invoke-virtual {v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;->release()V

    .line 1586
    .end local v7           #idx:I
    .end local v9           #v4aUnderControl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2
    return-void

    .line 1565
    .restart local v7       #idx:I
    .restart local v9       #v4aUnderControl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1566
    .local v8, sessionId:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    .line 1567
    .local v3, v4aModule:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v3, :cond_2

    .line 1563
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1570
    :cond_2
    if-nez p4, :cond_3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1573
    :catch_0
    move-exception v6

    .line 1575
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ViPER4Android"

    const-string v1, "Trouble trying to manage session %d, removing..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1576
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1571
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1581
    .end local v3           #v4aModule:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;
    .end local v8           #sessionId:Ljava/lang/Integer;
    :cond_4
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1580
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1585
    .end local v7           #idx:I
    .end local v9           #v4aUnderControl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    const-string v0, "ViPER4Android"

    const-string v1, "Semaphore accquire failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected updateSystem_Module(Landroid/content/SharedPreferences;ILcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;ZZ)V
    .locals 11
    .parameter "preferences"
    .parameter "nFXType"
    .parameter "v4aModule"
    .parameter "bRequireReset"
    .parameter "mMasterSwitchOff"

    .prologue
    .line 1590
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Commiting effects type"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const v8, 0x10001

    invoke-virtual {p3, v8, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1594
    const/4 v8, 0x1

    if-ne p2, v8, :cond_1c

    .line 1596
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Commiting headphone-fx parameters"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating FIR Equalizer."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-boolean v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mWorkingWith3rd:Z

    if-nez v8, :cond_9

    .line 1602
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mOverriddenEqualizerLevels:[F

    if-eqz v8, :cond_7

    .line 1604
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mOverriddenEqualizerLevels:[F

    array-length v8, v8

    if-lt v5, v8, :cond_6

    .line 1613
    .end local v5           #i:I
    :cond_0
    const-string v8, "viper4android.headphonefx.fireq.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1614
    const v8, 0x1000a

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1630
    :goto_1
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Convolver."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const-string v8, "viper4android.headphonefx.convolver.kernel"

    const-string v9, ""

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1632
    .local v7, szConvIRFileName:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->SetConvIRFile(Ljava/lang/String;Z)V

    .line 1633
    const v8, 0x10007

    const-string v9, "viper4android.headphonefx.convolver.crosschannel"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1634
    const-string v8, "viper4android.headphonefx.convolver.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1635
    const v8, 0x10002

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1639
    :goto_2
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Field Surround (Colorful Music)."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const-string v8, "viper4android.headphonefx.colorfulmusic.coeffs"

    const-string v9, "120;200"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1641
    .local v2, cmParameter:[Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 1643
    const v8, 0x1000d

    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1644
    const v8, 0x1000f

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1646
    :cond_1
    const v8, 0x1000e

    const-string v9, "viper4android.headphonefx.colorfulmusic.midimage"

    const-string v10, "150"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1647
    const-string v8, "viper4android.headphonefx.colorfulmusic.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1648
    const v8, 0x1000c

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1652
    :goto_3
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Diff Surround."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const v8, 0x10011

    const-string v9, "viper4android.headphonefx.diffsurr.delay"

    const-string v10, "500"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1654
    const-string v8, "viper4android.headphonefx.diffsurr.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1655
    const v8, 0x10010

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1659
    :goto_4
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating ViPER\'s Headphone Surround Engine +."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const v8, 0x10009

    const-string v9, "viper4android.headphonefx.vhs.qual"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1661
    const-string v8, "viper4android.headphonefx.vhs.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1662
    const v8, 0x10008

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1666
    :goto_5
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Reverberation."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const v8, 0x10013

    const-string v9, "viper4android.headphonefx.reverb.roomsize"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1668
    const v8, 0x10014

    const-string v9, "viper4android.headphonefx.reverb.roomwidth"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1669
    const v8, 0x10015

    const-string v9, "viper4android.headphonefx.reverb.damp"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1670
    const v8, 0x10016

    const-string v9, "viper4android.headphonefx.reverb.wet"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1671
    const v8, 0x10017

    const-string v9, "viper4android.headphonefx.reverb.dry"

    const-string v10, "50"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1672
    const-string v8, "viper4android.headphonefx.reverb.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1673
    const v8, 0x10012

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1677
    :goto_6
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Playback AGC."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    const v8, 0x10019

    const-string v9, "viper4android.headphonefx.playbackgain.ratio"

    const-string v10, "50"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1679
    const v8, 0x1001a

    const-string v9, "viper4android.headphonefx.playbackgain.volume"

    const-string v10, "80"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1680
    const v8, 0x1001b

    const-string v9, "viper4android.headphonefx.playbackgain.maxscaler"

    const-string v10, "400"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1681
    const-string v8, "viper4android.headphonefx.playbackgain.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1682
    const v8, 0x10018

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1686
    :goto_7
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Dynamic System."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    const-string v8, "viper4android.headphonefx.dynamicsystem.coeffs"

    const-string v9, "100;5600;40;40;50;50"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1688
    .local v4, dsParameter:[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x6

    if-ne v8, v9, :cond_2

    .line 1690
    const v8, 0x1001e

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p3, v8, v9, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 1691
    const v8, 0x1001f

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x3

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p3, v8, v9, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 1692
    const v8, 0x10020

    const/4 v9, 0x4

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p3, v8, v9, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 1694
    :cond_2
    const-string v8, "viper4android.headphonefx.dynamicsystem.bass"

    const-string v9, "0"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1695
    .local v3, dsBass:I
    mul-int/lit8 v8, v3, 0x14

    add-int/lit8 v3, v8, 0x64

    .line 1696
    const v8, 0x10021

    invoke-virtual {p3, v8, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1697
    const-string v8, "viper4android.headphonefx.dynamicsystem.tube"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1698
    const v8, 0x1001d

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1700
    :goto_8
    const-string v8, "viper4android.headphonefx.dynamicsystem.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1701
    const v8, 0x1001c

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1705
    :goto_9
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Fidelity Control."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const v8, 0x10023

    const-string v9, "viper4android.headphonefx.fidelity.bass.mode"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1707
    const v8, 0x10024

    const-string v9, "viper4android.headphonefx.fidelity.bass.freq"

    const-string v10, "40"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1708
    const v8, 0x10025

    const-string v9, "viper4android.headphonefx.fidelity.bass.gain"

    const-string v10, "50"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1709
    const-string v8, "viper4android.headphonefx.fidelity.bass.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1710
    const v8, 0x10022

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1712
    :goto_a
    const v8, 0x10027

    const-string v9, "viper4android.headphonefx.fidelity.clarity.mode"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1713
    const v8, 0x10028

    const-string v9, "viper4android.headphonefx.fidelity.clarity.gain"

    const-string v10, "50"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1714
    const-string v8, "viper4android.headphonefx.fidelity.clarity.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1715
    const v8, 0x10026

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1719
    :goto_b
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Cure System."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const v8, 0x1002a

    const-string v9, "viper4android.headphonefx.cure.crossfeed"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1721
    const-string v8, "viper4android.headphonefx.cure.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 1722
    const v8, 0x10029

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1726
    :goto_c
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Shutting down speaker optimizer."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const v8, 0x1003c

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1730
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Limiter."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const v8, 0x1002b

    const-string v9, "viper4android.headphonefx.outvol"

    const-string v10, "100"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1732
    const v8, 0x1002c

    const-string v9, "viper4android.headphonefx.channelpan"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1733
    const v8, 0x1002d

    const-string v9, "viper4android.headphonefx.limiter"

    const-string v10, "100"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1736
    iget-boolean v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mWorkingWith3rd:Z

    if-nez v8, :cond_1a

    .line 1738
    const-string v8, "viper4android.global.forceenable.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1739
    .local v0, bForceEnable:Z
    if-eqz v0, :cond_18

    const v8, 0x9005

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1742
    :goto_d
    const-string v8, "viper4android.headphonefx.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1743
    .local v1, bMasterControl:Z
    if-eqz p5, :cond_3

    const/4 v1, 0x0

    .line 1744
    :cond_3
    if-eqz v1, :cond_19

    const v8, 0x9004

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1746
    :goto_e
    iget-object v8, p3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v8, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 1869
    .end local v0           #bForceEnable:Z
    .end local v1           #bMasterControl:Z
    .end local v2           #cmParameter:[Ljava/lang/String;
    .end local v3           #dsBass:I
    .end local v4           #dsParameter:[Ljava/lang/String;
    .end local v7           #szConvIRFileName:Ljava/lang/String;
    :cond_4
    :goto_f
    if-eqz p4, :cond_5

    .line 1870
    const v8, 0x9003

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1873
    :cond_5
    const-string v8, "ViPER4Android"

    const-string v9, "System updated."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    return-void

    .line 1605
    .restart local v5       #i:I
    :cond_6
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mOverriddenEqualizerLevels:[F

    aget v8, v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v8, v9, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V

    .line 1604
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1609
    .end local v5           #i:I
    :cond_7
    const-string v8, "viper4android.headphonefx.fireq.custom"

    const-string v9, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1610
    .local v6, levels:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:S
    :goto_10
    array-length v8, v6

    if-ge v5, v8, :cond_0

    .line 1611
    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v8, v9, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V

    .line 1610
    add-int/lit8 v8, v5, 0x1

    int-to-short v5, v8

    goto :goto_10

    .line 1615
    .end local v5           #i:S
    .end local v6           #levels:[Ljava/lang/String;
    :cond_8
    const v8, 0x1000a

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    .line 1619
    :cond_9
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerLevels:[F

    if-eqz v8, :cond_a

    .line 1621
    const/4 v5, 0x0

    .local v5, i:I
    :goto_11
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerLevels:[F

    array-length v8, v8

    if-lt v5, v8, :cond_b

    .line 1624
    .end local v5           #i:I
    :cond_a
    iget-boolean v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerEnabled:Z

    if-eqz v8, :cond_c

    .line 1625
    const v8, 0x1000a

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    .line 1622
    .restart local v5       #i:I
    :cond_b
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerLevels:[F

    aget v8, v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v8, v9, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V

    .line 1621
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1626
    .end local v5           #i:I
    :cond_c
    const v8, 0x1000a

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_1

    .line 1636
    .restart local v7       #szConvIRFileName:Ljava/lang/String;
    :cond_d
    const v8, 0x10002

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_2

    .line 1649
    .restart local v2       #cmParameter:[Ljava/lang/String;
    :cond_e
    const v8, 0x1000c

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_3

    .line 1656
    :cond_f
    const v8, 0x10010

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_4

    .line 1663
    :cond_10
    const v8, 0x10008

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_5

    .line 1674
    :cond_11
    const v8, 0x10012

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_6

    .line 1683
    :cond_12
    const v8, 0x10018

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_7

    .line 1699
    .restart local v3       #dsBass:I
    .restart local v4       #dsParameter:[Ljava/lang/String;
    :cond_13
    const v8, 0x1001d

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_8

    .line 1702
    :cond_14
    const v8, 0x1001c

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_9

    .line 1711
    :cond_15
    const v8, 0x10022

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_a

    .line 1716
    :cond_16
    const v8, 0x10026

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_b

    .line 1723
    :cond_17
    const v8, 0x10029

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_c

    .line 1740
    .restart local v0       #bForceEnable:Z
    :cond_18
    const v8, 0x9005

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_d

    .line 1745
    .restart local v1       #bMasterControl:Z
    :cond_19
    const v8, 0x9004

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_e

    .line 1750
    .end local v0           #bForceEnable:Z
    .end local v1           #bMasterControl:Z
    :cond_1a
    iget-boolean v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEnabled:Z

    if-eqz v8, :cond_1b

    .line 1752
    const v8, 0x9004

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1753
    iget-object v8, p3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    goto/16 :goto_f

    .line 1757
    :cond_1b
    const v8, 0x9004

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1758
    iget-object v8, p3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    goto/16 :goto_f

    .line 1764
    .end local v2           #cmParameter:[Ljava/lang/String;
    .end local v3           #dsBass:I
    .end local v4           #dsParameter:[Ljava/lang/String;
    .end local v7           #szConvIRFileName:Ljava/lang/String;
    :cond_1c
    const/4 v8, 0x2

    if-ne p2, v8, :cond_4

    .line 1766
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Commiting speaker-fx parameters"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating FIR Equalizer."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-boolean v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mWorkingWith3rd:Z

    if-nez v8, :cond_22

    .line 1772
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mOverriddenEqualizerLevels:[F

    if-eqz v8, :cond_20

    .line 1774
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_12
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mOverriddenEqualizerLevels:[F

    array-length v8, v8

    if-lt v5, v8, :cond_1f

    .line 1783
    .end local v5           #i:I
    :cond_1d
    const-string v8, "viper4android.headphonefx.fireq.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1784
    const v8, 0x10034

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1800
    :goto_13
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Reverberation."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    const v8, 0x10037

    const-string v9, "viper4android.headphonefx.reverb.roomsize"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1802
    const v8, 0x10038

    const-string v9, "viper4android.headphonefx.reverb.roomwidth"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1803
    const v8, 0x10039

    const-string v9, "viper4android.headphonefx.reverb.damp"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1804
    const v8, 0x1003a

    const-string v9, "viper4android.headphonefx.reverb.wet"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1805
    const v8, 0x1003b

    const-string v9, "viper4android.headphonefx.reverb.dry"

    const-string v10, "50"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1806
    const-string v8, "viper4android.headphonefx.reverb.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 1807
    const v8, 0x10036

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1811
    :goto_14
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Convolver."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const-string v8, "viper4android.headphonefx.convolver.kernel"

    const-string v9, ""

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1813
    .restart local v7       #szConvIRFileName:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p3, v7, v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->SetConvIRFile(Ljava/lang/String;Z)V

    .line 1814
    const v8, 0x10033

    const-string v9, "viper4android.headphonefx.convolver.crosschannel"

    const-string v10, "0"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1815
    const-string v8, "viper4android.headphonefx.convolver.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1816
    const v8, 0x1002e

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1820
    :goto_15
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Speaker Optimizer."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const-string v8, "viper4android.speakerfx.spkopt.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1822
    const v8, 0x1003c

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1826
    :goto_16
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating eXtraLoud."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    const v8, 0x1003e

    const-string v9, "viper4android.headphonefx.playbackgain.ratio"

    const-string v10, "50"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1828
    const v8, 0x1003f

    const-string v9, "viper4android.headphonefx.playbackgain.volume"

    const-string v10, "80"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1829
    const v8, 0x10040

    const-string v9, "viper4android.headphonefx.playbackgain.maxscaler"

    const-string v10, "400"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1830
    const-string v8, "viper4android.headphonefx.playbackgain.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1831
    const v8, 0x1003d

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1835
    :goto_17
    const-string v8, "ViPER4Android"

    const-string v9, "updateSystem(): Updating Limiter."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const v8, 0x10041

    const-string v9, "viper4android.headphonefx.outvol"

    const-string v10, "100"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1837
    const v8, 0x10042

    const-string v9, "viper4android.speakerfx.limiter"

    const-string v10, "100"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1840
    iget-boolean v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mWorkingWith3rd:Z

    if-nez v8, :cond_2c

    .line 1842
    const-string v8, "viper4android.global.forceenable.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1843
    .restart local v0       #bForceEnable:Z
    if-eqz v0, :cond_2a

    const v8, 0x9005

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1846
    :goto_18
    const-string v8, "viper4android.speakerfx.enable"

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1847
    .restart local v1       #bMasterControl:Z
    if-eqz p5, :cond_1e

    const/4 v1, 0x0

    .line 1848
    :cond_1e
    if-eqz v1, :cond_2b

    const v8, 0x9004

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1850
    :goto_19
    iget-object v8, p3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v8, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    goto/16 :goto_f

    .line 1775
    .end local v0           #bForceEnable:Z
    .end local v1           #bMasterControl:Z
    .end local v7           #szConvIRFileName:Ljava/lang/String;
    .restart local v5       #i:I
    :cond_1f
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mOverriddenEqualizerLevels:[F

    aget v8, v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p0, v5, v8, v9, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V

    .line 1774
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    .line 1779
    .end local v5           #i:I
    :cond_20
    const-string v8, "viper4android.headphonefx.fireq.custom"

    const-string v9, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1780
    .restart local v6       #levels:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:S
    :goto_1a
    array-length v8, v6

    if-ge v5, v8, :cond_1d

    .line 1781
    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p0, v5, v8, v9, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V

    .line 1780
    add-int/lit8 v8, v5, 0x1

    int-to-short v5, v8

    goto :goto_1a

    .line 1785
    .end local v5           #i:S
    .end local v6           #levels:[Ljava/lang/String;
    :cond_21
    const v8, 0x10034

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_13

    .line 1789
    :cond_22
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerLevels:[F

    if-eqz v8, :cond_23

    .line 1791
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1b
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerLevels:[F

    array-length v8, v8

    if-lt v5, v8, :cond_24

    .line 1794
    .end local v5           #i:I
    :cond_23
    iget-boolean v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerEnabled:Z

    if-eqz v8, :cond_25

    .line 1795
    const v8, 0x10034

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_13

    .line 1792
    .restart local v5       #i:I
    :cond_24
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEqualizerLevels:[F

    aget v8, v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p0, v5, v8, v9, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->SetV4AEqualizerBandLevel(IIZLcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V

    .line 1791
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1796
    .end local v5           #i:I
    :cond_25
    const v8, 0x10034

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_13

    .line 1808
    :cond_26
    const v8, 0x10036

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_14

    .line 1817
    .restart local v7       #szConvIRFileName:Ljava/lang/String;
    :cond_27
    const v8, 0x1002e

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_15

    .line 1823
    :cond_28
    const v8, 0x1003c

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_16

    .line 1832
    :cond_29
    const v8, 0x1003d

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_17

    .line 1844
    .restart local v0       #bForceEnable:Z
    :cond_2a
    const v8, 0x9005

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_18

    .line 1849
    .restart local v1       #bMasterControl:Z
    :cond_2b
    const v8, 0x9004

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_19

    .line 1854
    .end local v0           #bForceEnable:Z
    .end local v1           #bMasterControl:Z
    :cond_2c
    iget-boolean v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->m3rdEnabled:Z

    if-eqz v8, :cond_2d

    .line 1856
    const v8, 0x9004

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1857
    iget-object v8, p3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    goto/16 :goto_f

    .line 1861
    :cond_2d
    const v8, 0x9004

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 1862
    iget-object v8, p3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    goto/16 :goto_f
.end method
