.class public Lcom/vipercn/viper4android_v2/receiver/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 18
    const-string v3, "ViPER4Android"

    const-string v4, "System booted."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->CheckLibrary()Z

    move-result v1

    .line 21
    .local v1, bJniLoaded:Z
    const-string v3, "ViPER4Android"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Jni library status = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v3, "com.vipercn.viper4android_v2.settings"

    invoke-virtual {p1, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 24
    .local v2, prefSettings:Landroid/content/SharedPreferences;
    const-string v3, "viper4android.settings.driverconfigured"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    .local v0, bDriverConfigured:Z
    if-eqz v0, :cond_0

    .line 27
    const-string v3, "ViPER4Android"

    const-string v4, "Start viper4android audio service."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v3, "ViPER4Android"

    const-string v4, "Driver not configured correctly."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
