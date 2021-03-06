.class public final Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
.super Landroid/support/v4/app/FragmentActivity;
.source "ViPER4Android.java"


# static fields
.field public static final ACTION_CANCEL_NOTIFY:Ljava/lang/String; = "com.vipercn.viper4android_v2.CANCELNOTIFY"

.field public static final ACTION_SHOW_NOTIFY:Ljava/lang/String; = "com.vipercn.viper4android_v2.SHOWNOTIFY"

.field public static final ACTION_UPDATE_PREFERENCES:Ljava/lang/String; = "com.vipercn.viper4android_v2.UPDATE"

.field public static final NOTIFY_FOREGROUND_ID:I = 0x1

.field public static final SHARED_PREFERENCES_BASENAME:Ljava/lang/String; = "com.vipercn.viper4android_v2"

.field private static hProceedDriverHandler:Landroid/os/Handler;


# instance fields
.field protected actionBar:Landroid/app/ActionBar;

.field private mActivityContext:Landroid/content/Context;

.field private mAudioServiceConnection:Landroid/content/ServiceConnection;

.field private mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

.field private mProfileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected pagerAdapter:Lcom/vipercn/viper4android_v2/activity/MyAdapter;

.field private szSaveProfileNameGlobal:Ljava/lang/String;

.field protected viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1;

    invoke-direct {v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1;-><init>()V

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->hProceedDriverHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    .line 292
    iput-object p0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 423
    new-instance v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$2;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$2;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    .line 694
    const-string v0, ""

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->szSaveProfileNameGlobal:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static CPUHasQualitySelection()Z
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;

    invoke-direct {v0}, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;-><init>()V

    .line 222
    .local v0, mCPUInfo:Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;
    invoke-virtual {v0}, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->HasNEON()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 223
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private CheckFirstRun()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 70
    .local v2, packageMgr:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 71
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v5, ""

    .line 74
    .local v5, szVersion:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 75
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const-string v8, "com.vipercn.viper4android_v2.settings"

    invoke-virtual {p0, v8, v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 83
    .local v3, prefSettings:Landroid/content/SharedPreferences;
    const-string v8, "viper4android.settings.lastversion"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, szLastVersion:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 87
    .end local v3           #prefSettings:Landroid/content/SharedPreferences;
    .end local v4           #szLastVersion:Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 77
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v6, v7

    .line 79
    goto :goto_0

    .line 85
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #prefSettings:Landroid/content/SharedPreferences;
    .restart local v4       #szLastVersion:Ljava/lang/String;
    :cond_1
    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method private CheckSoftwareActive()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v3, "com.vipercn.viper4android_v2.settings"

    invoke-virtual {p0, v3, v2}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 117
    .local v1, prefSettings:Landroid/content/SharedPreferences;
    const-string v3, "viper4android.settings.onlineactive"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    .local v0, bActived:Z
    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static DetermineCPUWithDriver(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "szQual"

    .prologue
    .line 228
    const-string v1, "libv4a_fx_"

    .line 230
    .local v1, szDriverFile:Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "jb_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    :goto_0
    new-instance v0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;

    invoke-direct {v0}, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;-><init>()V

    .line 235
    .local v0, mCPUInfo:Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;
    invoke-virtual {v0}, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->HasNEON()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 237
    if-nez p0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NEON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Driver selection = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-object v1

    .line 232
    .end local v0           #mCPUInfo:Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ics_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 238
    .restart local v0       #mCPUInfo:Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;
    :cond_1
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NEON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 239
    :cond_2
    const-string v2, "sq"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NEON_SQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 240
    :cond_3
    const-string v2, "hq"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NEON_HQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 241
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NEON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 243
    :cond_5
    invoke-virtual {v0}, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->HasVFP()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "VFP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 244
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NOVFP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private ProcessDriverCheck()V
    .locals 11

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 184
    .local v1, bDriverIsUsable:Z
    new-instance v0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;

    new-instance v9, Lcom/vipercn/viper4android_v2/activity/Utils;

    invoke-direct {v9}, Lcom/vipercn/viper4android_v2/activity/Utils;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v9}, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;-><init>(Lcom/vipercn/viper4android_v2/activity/Utils;)V

    .line 185
    .local v0, aeuUtils:Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;
    invoke-virtual {v0}, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->IsViPER4AndroidEngineFound()Z

    move-result v9

    if-nez v9, :cond_1

    .line 186
    const/4 v1, 0x0

    .line 209
    :goto_0
    if-nez v1, :cond_0

    .line 211
    const-string v9, "ViPER4Android"

    const-string v10, "Android audio effect engine reports the v4a driver is not usable"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 213
    .local v4, message:Landroid/os/Message;
    const v9, 0xa00a

    iput v9, v4, Landroid/os/Message;->what:I

    .line 214
    iput-object p0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    sget-object v9, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->hProceedDriverHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    .end local v4           #message:Landroid/os/Message;
    :cond_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 190
    .local v6, packageMgr:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 191
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v7, ""

    .line 194
    .local v7, szApkVer:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->GetViPER4AndroidEngineVersion()[I

    move-result-object v3

    .line 195
    .local v3, iaDrvVer:[I
    new-instance v9, Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    aget v10, v3, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, szDriverVersion:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 197
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 198
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_2

    .line 199
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 202
    .end local v3           #iaDrvVer:[I
    .end local v8           #szDriverVersion:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot found ViPER4Android\'s apk [weird]"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static ReadTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .parameter "inputStream"

    .prologue
    .line 254
    const/4 v2, 0x0

    .line 257
    .local v2, inputStreamReader:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v3, p0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v2           #inputStreamReader:Ljava/io/InputStreamReader;
    .local v3, inputStreamReader:Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 264
    .local v5, reader:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 268
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 278
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v3

    .end local v3           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .restart local v2       #inputStreamReader:Ljava/io/InputStreamReader;
    :goto_1
    return-object v7

    .line 259
    :catch_0
    move-exception v1

    .line 261
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    goto :goto_1

    .line 270
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    .end local v2           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_0
    :try_start_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 274
    .end local v4           #line:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 276
    .local v0, e:Ljava/io/IOException;
    const-string v7, ""

    move-object v2, v3

    .end local v3           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputStreamReader:Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method private SetFirstRun()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 93
    .local v3, packageMgr:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 94
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v5, ""

    .line 97
    .local v5, szVersion:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 98
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const-string v6, "com.vipercn.viper4android_v2.settings"

    invoke-virtual {p0, v6, v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 106
    .local v4, prefSettings:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 107
    .local v1, edSettingsEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 109
    const-string v6, "viper4android.settings.lastversion"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    .end local v1           #edSettingsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #prefSettings:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private SetSoftwareActive()V
    .locals 4

    .prologue
    .line 123
    const-string v2, "com.vipercn.viper4android_v2.settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 124
    .local v1, prefSettings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, edSettingsEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 127
    const-string v2, "viper4android.settings.onlineactive"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    :cond_0
    return-void
.end method

.method private SubmitInformation()Z
    .locals 16

    .prologue
    .line 134
    const-string v9, ""

    .line 135
    .local v9, szCode:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    const-string v12, "0123456789abcdef"

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 136
    .local v6, pchHexTab:[B
    new-instance v7, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v7, v11, v12}, Ljava/util/Random;-><init>(J)V

    .line 137
    .local v7, rndMachine:Ljava/util/Random;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    const/16 v11, 0x8

    if-lt v5, v11, :cond_0

    .line 147
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 148
    const/4 v5, 0x0

    :goto_1
    const/4 v11, 0x4

    if-lt v5, v11, :cond_2

    .line 158
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 160
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://vipersaudio.com/stat/v4a_stat.php?code="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&ver=viper4android-fx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, szURL:Ljava/lang/String;
    const-string v11, "ViPER4Android"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Submit code = \""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 166
    .local v3, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 167
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 168
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_4

    .line 169
    const/4 v11, 0x1

    .line 176
    .end local v2           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_2
    return v11

    .line 139
    .end local v10           #szURL:Ljava/lang/String;
    :cond_0
    const/16 v11, 0x100

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-byte v0, v11

    .line 140
    .local v0, btCode:B
    if-gez v0, :cond_1

    .line 142
    add-int/lit16 v11, v0, 0x100

    int-to-short v8, v11

    .line 143
    .local v8, shortData:S
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%c%c"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    shr-int/lit8 v15, v8, 0x4

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    and-int/lit8 v15, v8, 0xf

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 137
    .end local v8           #shortData:S
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 145
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%c%c"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    shr-int/lit8 v15, v0, 0x4

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    and-int/lit8 v15, v0, 0xf

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 150
    .end local v0           #btCode:B
    :cond_2
    const/16 v11, 0x100

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-byte v0, v11

    .line 151
    .restart local v0       #btCode:B
    if-gez v0, :cond_3

    .line 153
    add-int/lit16 v11, v0, 0x100

    int-to-short v8, v11

    .line 154
    .restart local v8       #shortData:S
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%c%c"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    shr-int/lit8 v15, v8, 0x4

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    and-int/lit8 v15, v8, 0xf

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 148
    .end local v8           #shortData:S
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 156
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%c%c"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    shr-int/lit8 v15, v0, 0x4

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    and-int/lit8 v15, v0, 0xf

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 170
    .end local v0           #btCode:B
    .restart local v2       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v10       #szURL:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 172
    .end local v2           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "ViPER4Android"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Submit failed, error = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    return-void
.end method

.method static synthetic access$1(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->CheckSoftwareActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Z
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->SubmitInformation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->SetSoftwareActive()V

    return-void
.end method

.method static synthetic access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->ProcessDriverCheck()V

    return-void
.end method

.method static synthetic access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    .locals 1
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->szSaveProfileNameGlobal:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->szSaveProfileNameGlobal:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 442
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 445
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->CheckLibrary()Z

    move-result v3

    .line 446
    .local v3, bJniLoaded:Z
    const-string v15, "ViPER4Android"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Jni library status = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->CheckFirstRun()Z

    .line 455
    const-string v15, "ViPER4Android"

    const-string v16, "Starting service, reason = ViPER4Android::onCreate"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v9, Landroid/content/Intent;

    const-class v15, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    .local v9, serviceIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 458
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    const/16 v16, 0x40

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v9, v15, v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 461
    const v15, 0x7f030004

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->setContentView(I)V

    .line 462
    new-instance v15, Lcom/vipercn/viper4android_v2/activity/MyAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Lcom/vipercn/viper4android_v2/activity/MyAdapter;-><init>(Landroid/app/FragmentManager;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->pagerAdapter:Lcom/vipercn/viper4android_v2/activity/MyAdapter;

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getActionBar()Landroid/app/ActionBar;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    .line 464
    const v15, 0x7f080008

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 467
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 469
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->pagerAdapter:Lcom/vipercn/viper4android_v2/activity/MyAdapter;

    invoke-virtual {v15}, Lcom/vipercn/viper4android_v2/activity/MyAdapter;->getEntries()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v17

    if-lt v15, v0, :cond_1

    .line 491
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->viewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->pagerAdapter:Lcom/vipercn/viper4android_v2/activity/MyAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v16, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$4;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 500
    invoke-direct/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->CheckFirstRun()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 502
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 503
    .local v13, szLocale:Ljava/lang/String;
    const-string v12, "Changelog_"

    .line 504
    .local v12, szChangelog_AssetsName:Ljava/lang/String;
    const-string v15, "zh_CN"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 505
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "zh_CN"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 509
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ".txt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 511
    const-string v11, ""

    .line 512
    .local v11, szChangeLog:Ljava/lang/String;
    const/4 v6, 0x0

    .line 515
    .local v6, isHandle:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 516
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->ReadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 517
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 520
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->SetFirstRun()V

    .line 521
    const-string v15, ""

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 523
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 524
    .local v7, mChglog:Landroid/app/AlertDialog$Builder;
    const v15, 0x7f0600a7

    invoke-virtual {v7, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 525
    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f060098

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 527
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 532
    .end local v6           #isHandle:Ljava/io/InputStream;
    .end local v7           #mChglog:Landroid/app/AlertDialog$Builder;
    .end local v11           #szChangeLog:Ljava/lang/String;
    .end local v12           #szChangelog_AssetsName:Ljava/lang/String;
    .end local v13           #szLocale:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v15, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$5;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    invoke-direct {v2, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 544
    .local v2, activeThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 547
    new-instance v8, Ljava/lang/Thread;

    new-instance v15, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    invoke-direct {v8, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 561
    .local v8, postInitThread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 562
    return-void

    .line 469
    .end local v2           #activeThread:Ljava/lang/Thread;
    .end local v8           #postInitThread:Ljava/lang/Thread;
    :cond_1
    aget-object v5, v16, v15

    .line 471
    .local v5, entry:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v14

    .line 472
    .local v14, tab:Landroid/app/ActionBar$Tab;
    new-instance v18, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$3;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 480
    :try_start_1
    const-class v18, Lcom/vipercn/viper4android_v2/R$string;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "_title"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 481
    .local v10, stringId:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 469
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 483
    .end local v10           #stringId:I
    :catch_0
    move-exception v4

    .line 485
    .local v4, e:Ljava/lang/Exception;
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 506
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #entry:Ljava/lang/String;
    .end local v14           #tab:Landroid/app/ActionBar$Tab;
    .restart local v12       #szChangelog_AssetsName:Ljava/lang/String;
    .restart local v13       #szLocale:Ljava/lang/String;
    :cond_2
    const-string v15, "zh_TW"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 507
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "zh_TW"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 508
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "en_US"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 519
    .restart local v6       #isHandle:Ljava/io/InputStream;
    .restart local v11       #szChangeLog:Ljava/lang/String;
    :catch_1
    move-exception v15

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 597
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 598
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 567
    const-string v0, "ViPER4Android"

    const-string v1, "Main activity onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->unbindService(Landroid/content/ServiceConnection;)V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 570
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 571
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 41
    .parameter "item"

    .prologue
    .line 699
    const-string v38, "com.vipercn.viper4android_v2.settings"

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 701
    .local v23, prefSettings:Landroid/content/SharedPreferences;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 702
    .local v7, choice:I
    packed-switch v7, :pswitch_data_0

    .line 1270
    const/16 v38, 0x0

    :goto_0
    return v38

    .line 706
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 707
    .local v22, packageMgr:Landroid/content/pm/PackageManager;
    const/16 v21, 0x0

    .line 708
    .local v21, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v36, ""

    .line 711
    .local v36, szVersion:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getPackageName()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    .line 712
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v36, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0600ac

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 717
    .local v25, szAbout:Ljava/lang/String;
    new-instance v38, Ljava/lang/StringBuilder;

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v36, v39, v40

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "\n"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 718
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0600ad

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 720
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    .local v14, mHelp:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0600ab

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 722
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f060098

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    new-instance v39, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$7;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$7;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 725
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0600af

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    new-instance v39, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$8;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$8;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 735
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 736
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 714
    .end local v14           #mHelp:Landroid/app/AlertDialog$Builder;
    .end local v25           #szAbout:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 715
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v36, "N/A"

    goto/16 :goto_1

    .line 741
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v21           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v22           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v36           #szVersion:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0600b1

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v37

    .line 742
    .local v37, uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-string v38, "android.intent.action.VIEW"

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 743
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->startActivity(Landroid/content/Intent;)V

    .line 744
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 749
    .end local v10           #intent:Landroid/content/Intent;
    .end local v37           #uri:Landroid/net/Uri;
    :pswitch_2
    new-instance v8, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    .line 802
    .local v8, df:Landroid/app/DialogFragment;
    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v8, v0, v1}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v38

    const-string v39, "v4astatus"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v8, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 804
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 810
    .end local v8           #df:Landroid/app/DialogFragment;
    :pswitch_3
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 811
    .local v30, szLocale:Ljava/lang/String;
    const-string v27, "Changelog_"

    .line 812
    .local v27, szChangelog_AssetsName:Ljava/lang/String;
    const-string v38, "zh_CN"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 813
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "zh_CN"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 817
    :goto_2
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, ".txt"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 819
    const-string v26, ""

    .line 820
    .local v26, szChangeLog:Ljava/lang/String;
    const/4 v11, 0x0

    .line 823
    .local v11, isHandle:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 824
    invoke-static {v11}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->ReadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v26

    .line 825
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 829
    :goto_3
    const-string v38, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2

    const/16 v38, 0x1

    goto/16 :goto_0

    .line 814
    .end local v11           #isHandle:Ljava/io/InputStream;
    .end local v26           #szChangeLog:Ljava/lang/String;
    :cond_0
    const-string v38, "zh_TW"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 815
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "zh_TW"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_2

    .line 816
    :cond_1
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "en_US"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_2

    .line 830
    .restart local v11       #isHandle:Ljava/io/InputStream;
    .restart local v26       #szChangeLog:Ljava/lang/String;
    :cond_2
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 831
    .local v12, mChglog:Landroid/app/AlertDialog$Builder;
    const v38, 0x7f0600a7

    move/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 832
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f060098

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 834
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 835
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 841
    .end local v11           #isHandle:Ljava/io/InputStream;
    .end local v12           #mChglog:Landroid/app/AlertDialog$Builder;
    .end local v26           #szChangeLog:Ljava/lang/String;
    .end local v27           #szChangelog_AssetsName:Ljava/lang/String;
    .end local v30           #szLocale:Ljava/lang/String;
    :pswitch_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v38

    const-string v39, "mounted"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_3

    .line 842
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 845
    :cond_3
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetV4AProfilePath()Ljava/lang/String;

    move-result-object v34

    .line 846
    .local v34, szProfilePath:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetProfileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    if-gtz v38, :cond_4

    const/16 v38, 0x1

    goto/16 :goto_0

    .line 848
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v38

    new-array v4, v0, [Ljava/lang/String;

    .line 849
    .local v4, arrayProfileList:[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, nPrfIdx:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v18

    move/from16 v1, v38

    if-lt v0, v1, :cond_5

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v16

    .line 856
    .local v16, nCurrentPage:I
    new-instance v38, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 857
    const v39, 0x7f06008f

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 858
    const/high16 v39, 0x7f02

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 859
    new-instance v39, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;I)V

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 898
    const v39, 0x7f060099

    new-instance v40, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$11;

    invoke-direct/range {v40 .. v41}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$11;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    invoke-virtual/range {v38 .. v40}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 899
    invoke-virtual/range {v38 .. v38}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/app/AlertDialog;->show()V

    .line 901
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 850
    .end local v16           #nCurrentPage:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    aput-object v38, v4, v18

    .line 849
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 907
    .end local v4           #arrayProfileList:[Ljava/lang/String;
    .end local v18           #nPrfIdx:I
    .end local v34           #szProfilePath:Ljava/lang/String;
    :pswitch_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v38

    const-string v39, "mounted"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_6

    .line 908
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 911
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v16

    .line 914
    .restart local v16       #nCurrentPage:I
    new-instance v8, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v8, v0, v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;I)V

    .line 1020
    .restart local v8       #df:Landroid/app/DialogFragment;
    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v8, v0, v1}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 1021
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v38

    const-string v39, "v4a_saveprofile"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v8, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1022
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 1027
    .end local v8           #df:Landroid/app/DialogFragment;
    .end local v16           #nCurrentPage:I
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1028
    .local v32, szMenuText:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0600a2

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 1031
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1032
    .local v13, mConfirm:Landroid/app/AlertDialog$Builder;
    const-string v38, "ViPER4Android"

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1033
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f06009d

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f06008a

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    new-instance v39, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$13;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$13;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f06008b

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1049
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1148
    .end local v13           #mConfirm:Landroid/app/AlertDialog$Builder;
    :goto_5
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 1051
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0600a3

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 1054
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->CPUHasQualitySelection()Z

    move-result v5

    .line 1055
    .local v5, bCanChooseQuality:Z
    if-eqz v5, :cond_8

    .line 1057
    new-instance v38, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1058
    const v39, 0x7f06009a

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1059
    const/high16 v39, 0x7f02

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1060
    const/high16 v39, 0x7f05

    new-instance v40, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;

    invoke-direct/range {v40 .. v41}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    invoke-virtual/range {v38 .. v40}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1119
    const v39, 0x7f060099

    new-instance v40, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$15;

    invoke-direct/range {v40 .. v41}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$15;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    invoke-virtual/range {v38 .. v40}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1120
    invoke-virtual/range {v38 .. v38}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/app/AlertDialog;->show()V

    goto :goto_5

    .line 1124
    :cond_8
    const-string v38, ""

    invoke-static/range {v38 .. v38}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->DetermineCPUWithDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1125
    .local v29, szDriverFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vipercn/viper4android_v2/activity/Utils;->InstallDrv_FX(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 1127
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1128
    .local v15, mResult:Landroid/app/AlertDialog$Builder;
    const-string v38, "ViPER4Android"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0600a4

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f060098

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1131
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_5

    .line 1135
    .end local v15           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_9
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1136
    .restart local v15       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v38, "ViPER4Android"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0600a6

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f060098

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1139
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_5

    .line 1145
    .end local v5           #bCanChooseQuality:Z
    .end local v15           #mResult:Landroid/app/AlertDialog$Builder;
    .end local v29           #szDriverFileName:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0600aa

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1146
    .local v35, szTip:Ljava/lang/String;
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 1153
    .end local v32           #szMenuText:Ljava/lang/String;
    .end local v35           #szTip:Ljava/lang/String;
    :pswitch_7
    const-string v38, "viper4android.settings.uiprefer"

    const/16 v39, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 1154
    .local v20, nUIPrefer:I
    if-ltz v20, :cond_b

    const/16 v38, 0x2

    move/from16 v0, v20

    move/from16 v1, v38

    if-le v0, v1, :cond_c

    :cond_b
    const/16 v20, 0x0

    .line 1155
    :cond_c
    new-instance v38, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1156
    const v39, 0x7f06009f

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1157
    const/high16 v39, 0x7f02

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1158
    const v39, 0x7f050002

    new-instance v40, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$16;

    invoke-direct/range {v40 .. v41}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$16;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v20

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1177
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    .line 1178
    .local v24, selectDialog:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->show()V

    .line 1179
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 1184
    .end local v20           #nUIPrefer:I
    .end local v24           #selectDialog:Landroid/app/Dialog;
    :pswitch_8
    const-string v38, "viper4android.settings.compatiblemode"

    const-string v39, "global"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1185
    .local v28, szCompatibleMode:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1186
    .local v19, nSelIdx:I
    const-string v38, "global"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_d

    const/16 v19, 0x0

    .line 1188
    :goto_6
    new-instance v38, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1189
    const v39, 0x7f0600a0

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1190
    const/high16 v39, 0x7f02

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1191
    const v39, 0x7f050004

    new-instance v40, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$17;

    invoke-direct/range {v40 .. v41}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$17;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v19

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1205
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    .line 1206
    .restart local v24       #selectDialog:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->show()V

    .line 1207
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 1187
    .end local v24           #selectDialog:Landroid/app/Dialog;
    :cond_d
    const/16 v19, 0x1

    goto :goto_6

    .line 1212
    .end local v19           #nSelIdx:I
    .end local v28           #szCompatibleMode:Ljava/lang/String;
    :pswitch_9
    const-string v38, "viper4android.settings.show_notify_icon"

    const/16 v39, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1213
    .local v6, bEnableNotify:Z
    if-eqz v6, :cond_e

    const/4 v6, 0x0

    .line 1214
    :goto_7
    if-eqz v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f060088

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1216
    :goto_8
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1217
    .local v9, e:Landroid/content/SharedPreferences$Editor;
    const-string v38, "viper4android.settings.show_notify_icon"

    move-object/from16 v0, v38

    invoke-interface {v9, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1218
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1220
    if-eqz v6, :cond_10

    new-instance v38, Landroid/content/Intent;

    const-string v39, "com.vipercn.viper4android_v2.SHOWNOTIFY"

    invoke-direct/range {v38 .. v39}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->sendBroadcast(Landroid/content/Intent;)V

    .line 1222
    :goto_9
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 1213
    .end local v9           #e:Landroid/content/SharedPreferences$Editor;
    :cond_e
    const/4 v6, 0x1

    goto :goto_7

    .line 1215
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f060087

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_8

    .line 1221
    .restart local v9       #e:Landroid/content/SharedPreferences$Editor;
    :cond_10
    new-instance v38, Landroid/content/Intent;

    const-string v39, "com.vipercn.viper4android_v2.CANCELNOTIFY"

    invoke-direct/range {v38 .. v39}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 1227
    .end local v6           #bEnableNotify:Z
    .end local v9           #e:Landroid/content/SharedPreferences$Editor;
    :pswitch_a
    const-string v38, "viper4android.settings.lock_effect"

    const-string v39, "none"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1228
    .local v31, szLockedEffect:Ljava/lang/String;
    const/16 v17, -0x1

    .line 1229
    .local v17, nLockIndex:I
    const-string v38, "none"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_11

    const/16 v17, 0x0

    .line 1236
    :goto_a
    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v38, 0x0

    .line 1237
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f060083

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v33, v38

    const/16 v38, 0x1

    .line 1238
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f060084

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v33, v38

    const/16 v38, 0x2

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f060086

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v33, v38

    const/16 v38, 0x3

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f060085

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v33, v38

    .line 1243
    .local v33, szModeList:[Ljava/lang/String;
    new-instance v38, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1244
    const v39, 0x7f060089

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1245
    const/high16 v39, 0x7f02

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1246
    new-instance v39, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$18;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$18;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    move/from16 v2, v17

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 1264
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    .line 1265
    .restart local v24       #selectDialog:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->show()V

    .line 1267
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 1230
    .end local v24           #selectDialog:Landroid/app/Dialog;
    .end local v33           #szModeList:[Ljava/lang/String;
    :cond_11
    const-string v38, "headset"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_12

    const/16 v17, 0x1

    goto/16 :goto_a

    .line 1231
    :cond_12
    const-string v38, "speaker"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_13

    const/16 v17, 0x2

    goto/16 :goto_a

    .line 1232
    :cond_13
    const-string v38, "bluetooth"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_14

    const/16 v17, 0x3

    goto/16 :goto_a

    .line 1233
    :cond_14
    const/16 v17, 0x4

    goto/16 :goto_a

    .line 827
    .end local v17           #nLockIndex:I
    .end local v31           #szLockedEffect:Ljava/lang/String;
    .restart local v11       #isHandle:Ljava/io/InputStream;
    .restart local v26       #szChangeLog:Ljava/lang/String;
    .restart local v27       #szChangelog_AssetsName:Ljava/lang/String;
    .restart local v30       #szLocale:Ljava/lang/String;
    :catch_1
    move-exception v38

    goto/16 :goto_3

    .line 702
    :pswitch_data_0
    .packed-switch 0x7f080009
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 17
    .parameter "menu"

    .prologue
    .line 604
    const-string v14, "com.vipercn.viper4android_v2.settings"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 605
    .local v9, preferences:Landroid/content/SharedPreferences;
    const-string v14, "viper4android.settings.show_notify_icon"

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 606
    .local v3, bEnableNotify:Z
    const-string v14, "viper4android.settings.compatiblemode"

    const-string v15, "global"

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 609
    .local v10, szDriverMode:Ljava/lang/String;
    const-string v14, "viper4android.settings.lock_effect"

    const-string v15, "none"

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 610
    .local v11, szLockedEffect:Ljava/lang/String;
    const-string v14, "ViPER4Android"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "lock_effect = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    if-eqz v3, :cond_1

    .line 616
    const v14, 0x7f08000a

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 617
    .local v7, miNotify:Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060088

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 618
    .local v13, szNotifyTitle:Ljava/lang/String;
    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 628
    :goto_0
    const/4 v1, 0x1

    .line 629
    .local v1, bDriverInGlobalMode:Z
    const-string v14, "global"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 630
    const/4 v1, 0x0

    .line 631
    :cond_0
    if-nez v1, :cond_2

    .line 634
    const v14, 0x7f080010

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 635
    .local v5, miDrvStatus:Landroid/view/MenuItem;
    const/4 v14, 0x0

    invoke-interface {v5, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 644
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    if-nez v14, :cond_4

    .line 646
    const v14, 0x7f08000f

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 647
    .local v4, drvInstItem:Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0600a3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 648
    .local v12, szMenuTitle:Ljava/lang/String;
    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 649
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->IsEnvironmentInited()Z

    move-result v14

    if-nez v14, :cond_3

    .line 650
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 677
    :goto_2
    const v14, 0x7f08000c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 678
    .local v8, miSaveProfile:Landroid/view/MenuItem;
    const v14, 0x7f08000b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 679
    .local v6, miLoadProfile:Landroid/view/MenuItem;
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->IsEnvironmentInited()Z

    move-result v14

    if-nez v14, :cond_8

    .line 681
    const/4 v14, 0x0

    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 682
    const/4 v14, 0x0

    invoke-interface {v6, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 690
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v14

    return v14

    .line 622
    .end local v1           #bDriverInGlobalMode:Z
    .end local v4           #drvInstItem:Landroid/view/MenuItem;
    .end local v5           #miDrvStatus:Landroid/view/MenuItem;
    .end local v6           #miLoadProfile:Landroid/view/MenuItem;
    .end local v7           #miNotify:Landroid/view/MenuItem;
    .end local v8           #miSaveProfile:Landroid/view/MenuItem;
    .end local v12           #szMenuTitle:Ljava/lang/String;
    .end local v13           #szNotifyTitle:Ljava/lang/String;
    :cond_1
    const v14, 0x7f08000a

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 623
    .restart local v7       #miNotify:Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060087

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 624
    .restart local v13       #szNotifyTitle:Ljava/lang/String;
    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 639
    .restart local v1       #bDriverInGlobalMode:Z
    :cond_2
    const v14, 0x7f080010

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 640
    .restart local v5       #miDrvStatus:Landroid/view/MenuItem;
    const/4 v14, 0x1

    invoke-interface {v5, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 651
    .restart local v4       #drvInstItem:Landroid/view/MenuItem;
    .restart local v12       #szMenuTitle:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x1

    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 655
    .end local v4           #drvInstItem:Landroid/view/MenuItem;
    .end local v12           #szMenuTitle:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v14}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverIsReady()Z

    move-result v2

    .line 656
    .local v2, bDriverIsReady:Z
    if-eqz v2, :cond_6

    .line 658
    const v14, 0x7f08000f

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 659
    .restart local v4       #drvInstItem:Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0600a2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 660
    .restart local v12       #szMenuTitle:Ljava/lang/String;
    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 661
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->IsEnvironmentInited()Z

    move-result v14

    if-nez v14, :cond_5

    .line 662
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 663
    :cond_5
    const/4 v14, 0x1

    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 667
    .end local v4           #drvInstItem:Landroid/view/MenuItem;
    .end local v12           #szMenuTitle:Ljava/lang/String;
    :cond_6
    const v14, 0x7f08000f

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 668
    .restart local v4       #drvInstItem:Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0600a3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 669
    .restart local v12       #szMenuTitle:Ljava/lang/String;
    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 670
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->IsEnvironmentInited()Z

    move-result v14

    if-nez v14, :cond_7

    .line 671
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 672
    :cond_7
    const/4 v14, 0x1

    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 686
    .end local v2           #bDriverIsReady:Z
    .restart local v6       #miLoadProfile:Landroid/view/MenuItem;
    .restart local v8       #miSaveProfile:Landroid/view/MenuItem;
    :cond_8
    const/4 v14, 0x1

    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 687
    const/4 v14, 0x1

    invoke-interface {v6, v14}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 576
    const-string v3, "ViPER4Android"

    const-string v4, "Main activity onResume()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 580
    const-string v3, "com.vipercn.viper4android_v2.settings"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getAudioOutputRouting(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, routing:Ljava/lang/String;
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->pagerAdapter:Lcom/vipercn/viper4android_v2/activity/MyAdapter;

    invoke-virtual {v3}, Lcom/vipercn/viper4android_v2/activity/MyAdapter;->getEntries()[Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, entries:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 591
    :goto_1
    return-void

    .line 584
    :cond_0
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 586
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 587
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_1

    .line 582
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
