.class Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine$1;
.super Landroid/os/Handler;
.source "WebAPIWnnEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->onDoneGettingCandidates()V

    .line 80
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffeffc

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
