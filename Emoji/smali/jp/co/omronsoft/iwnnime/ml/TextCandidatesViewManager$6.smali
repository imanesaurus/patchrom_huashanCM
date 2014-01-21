.class Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;
.super Ljava/lang/Object;
.source "TextCandidatesViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 455
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, -0xffffff1

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 463
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->playSoundAndVibration()V
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1100(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    .line 465
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 466
    check-cast v3, Landroid/widget/TextView;

    .line 467
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 506
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    .line 507
    .local v2, symbolEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAddSymbolTabList:Ljava/util/ArrayList;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1300(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 508
    .local v1, index:I
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getAdditionalSymbolIndex()I

    move-result v0

    .line 509
    .local v0, current:I
    if-ltz v1, :cond_0

    if-ne v1, v0, :cond_2

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    .line 511
    :cond_2
    invoke-virtual {v2, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setAdditionalSymbolIndex(I)V

    .line 512
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v6, 0x6f

    invoke-direct {v5, v7, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 469
    .end local v0           #current:I
    .end local v1           #index:I
    .end local v2           #symbolEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;
    :pswitch_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 471
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v6, 0x6c

    invoke-direct {v5, v7, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 479
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v6, 0x6d

    invoke-direct {v5, v7, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_0

    .line 485
    :pswitch_2
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    .line 486
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v6, 0x6e

    invoke-direct {v5, v7, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_0

    .line 492
    :pswitch_3
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 493
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v6, 0x6b

    invoke-direct {v5, v7, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_0

    .line 499
    :pswitch_4
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 500
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v6, 0x70

    invoke-direct {v5, v7, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x7f08001a
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
