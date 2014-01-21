.class Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;
.super Landroid/os/Handler;
.source "TextCandidatesViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 396
    :pswitch_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v4, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->moveFocus(IZ)Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 400
    :pswitch_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewType:I
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$000(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$100(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v3

    const/4 v4, 0x2

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V
    invoke-static {v1, v3, v2, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$300(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V

    goto :goto_0

    .line 406
    :pswitch_2
    const/4 v0, 0x0

    .line 407
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :goto_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordSelectedList:Ljava/util/LinkedList;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$400(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .restart local v0       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-eqz v0, :cond_0

    .line 408
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    invoke-static {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$500(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto :goto_2

    .line 413
    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :pswitch_3
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$600(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$700(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v3

    const/4 v4, -0x1

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V
    invoke-static {v1, v3, v2, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$300(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V

    .line 416
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$700(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
