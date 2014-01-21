.class Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$1;
.super Landroid/os/Handler;
.source "IWnnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 185
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 187
    :pswitch_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->executeOperation()Z

    move-result v0

    .line 188
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    iget-object v1, v1, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
