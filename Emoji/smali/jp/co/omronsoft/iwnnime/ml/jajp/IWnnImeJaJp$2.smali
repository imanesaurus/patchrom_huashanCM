.class Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;
.super Landroid/os/Handler;
.source "IWnnImeJaJp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 712
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 766
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 714
    :pswitch_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    #calls: Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updatePrediction()V
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->access$100(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)V

    goto :goto_0

    .line 718
    :pswitch_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->access$200(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->access$200(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->close()V

    .line 719
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->access$300(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->access$300(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->close()V

    goto :goto_0

    .line 723
    :pswitch_3
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    iget v1, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    and-int/lit8 v1, v1, -0x11

    if-ne v1, v2, :cond_0

    .line 724
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    const/16 v2, 0x103

    iput v2, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 725
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->access$400(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)I

    move-result v2

    #calls: Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V
    invoke-static {v1, v2, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->access$500(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;IZZ)V

    goto :goto_0

    .line 731
    :pswitch_4
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->access$200(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->access$200(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->writeoutDictionary(II)Z

    .line 734
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->access$200(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->writeoutDictionary(II)Z

    goto :goto_0

    .line 741
    :pswitch_5
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->executeOperation()Z

    move-result v0

    .line 742
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 743
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    iget-object v1, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 750
    .end local v0           #result:Z
    :pswitch_6
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 751
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto/16 :goto_0

    .line 755
    :pswitch_7
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v1

    invoke-interface {v1}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 756
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->switchToDefaultIME()V

    goto/16 :goto_0

    .line 759
    :cond_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    iget-object v1, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
