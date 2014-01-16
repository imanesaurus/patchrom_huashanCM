.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$13;
.super Landroid/content/BroadcastReceiver;
.source "ViPER4AndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$13;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 1098
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1103
    const-string v7, "ViPER4Android"

    const-string v8, "mRoutingReceiver::onReceive()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, action:Ljava/lang/String;
    sget-boolean v2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseHeadset:Z

    .line 1107
    .local v2, prevUseHeadset:Z
    sget-boolean v1, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseBluetooth:Z

    .line 1108
    .local v1, prevUseBluetooth:Z
    sget-boolean v3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseUSBSoundCard:Z

    .line 1110
    .local v3, prevUseUSB:Z
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1112
    const-string v7, "state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_0

    move v5, v6

    :cond_0
    sput-boolean v5, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseHeadset:Z

    .line 1129
    :cond_1
    :goto_0
    const-string v5, "ViPER4Android"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Headset="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseHeadset:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Bluetooth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseBluetooth:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", USB="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseUSBSoundCard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    sget-boolean v5, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseHeadset:Z

    if-ne v2, v5, :cond_2

    sget-boolean v5, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseBluetooth:Z

    if-ne v1, v5, :cond_2

    sget-boolean v5, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseUSBSoundCard:Z

    if-eq v3, v5, :cond_3

    .line 1133
    :cond_2
    iget-object v5, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$13;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v5, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem(Z)V

    .line 1135
    :cond_3
    return-void

    .line 1114
    :cond_4
    const-string v7, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1116
    const-string v7, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1117
    .local v4, state:I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    move v5, v6

    :cond_5
    sput-boolean v5, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseBluetooth:Z

    goto :goto_0

    .line 1121
    .end local v4           #state:I
    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_1

    .line 1124
    const-string v7, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1125
    const-string v7, "state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_7

    move v5, v6

    :cond_7
    sput-boolean v5, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mUseUSBSoundCard:Z

    goto :goto_0
.end method
