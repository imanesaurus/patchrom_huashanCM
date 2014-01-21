.class Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$1;
.super Landroid/os/Handler;
.source "TextCandidates1LineViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$000(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v1

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->displayCandidatesDelay(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)I
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$100(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    const/4 v1, 0x1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCreateCandidateDone:Z
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$202(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;Z)Z

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$300(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
