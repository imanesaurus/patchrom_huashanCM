.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;
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
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 855
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 860
    const-string v2, "ViPER4Android"

    const-string v3, "m3rdAPI_TAKEOVER_EFFECT_Receiver::onReceive()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vipercn.viper4android_v2.TAKEOVER_EFFECT_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .local v0, itResult:Landroid/content/Intent;
    const-string v2, "token"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 865
    const-string v2, "ViPER4Android"

    const-string v3, "m3rdAPI_TAKEOVER_EFFECT_Receiver, no token found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v2, "granted"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 867
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v2, v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->sendBroadcast(Landroid/content/Intent;)V

    .line 886
    :goto_0
    return-void

    .line 872
    :cond_0
    const-string v2, "token"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 873
    .local v1, nToken:I
    if-nez v1, :cond_1

    .line 875
    const-string v2, "ViPER4Android"

    const-string v3, "m3rdAPI_TAKEOVER_EFFECT_Receiver, invalid token found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string v2, "granted"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 877
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v2, v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 882
    :cond_1
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #setter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mWorkingWith3rd:Z
    invoke-static {v2, v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$3(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Z)V

    .line 883
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "m3rdAPI_TAKEOVER_EFFECT_Receiver, token = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-string v2, "granted"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 885
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$4;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v2, v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
