.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$2;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$2;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 428
    check-cast p2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$LocalBinder;->getService()Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v0

    .line 429
    .local v0, service:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$2;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #setter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v1, v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    .line 430
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 435
    const-string v0, "ViPER4Android"

    const-string v1, "ViPER4Android service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void
.end method
