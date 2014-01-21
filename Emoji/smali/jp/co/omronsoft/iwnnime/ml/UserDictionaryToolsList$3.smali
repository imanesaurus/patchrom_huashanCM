.class Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;
.super Ljava/lang/Object;
.source "UserDictionaryToolsList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/16 v10, 0x1f4

    const/4 v7, 0x0

    .line 453
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "OpenWnn"

    const-string v9, "onClick() : start."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    const/4 v9, -0x1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I
    invoke-static {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$302(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;I)I

    .line 456
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    invoke-static {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$400(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    move-result-object v8

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 457
    .local v2, focusString:Ljava/lang/CharSequence;
    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-direct {v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>()V

    .line 459
    .local v6, wnnWordSearch:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    invoke-static {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$500(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    move-result-object v8

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 460
    .local v1, focusPairString:Ljava/lang/CharSequence;
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    invoke-static {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$400(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    move-result-object v8

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getId()I

    move-result v8

    if-le v8, v10, :cond_3

    .line 461
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    .line 462
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 467
    :goto_0
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    iget-object v8, v8, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    invoke-interface {v8, v6}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;->deleteWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v0

    .line 468
    .local v0, deleted:Z
    if-eqz v0, :cond_4

    .line 469
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0600bc

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 479
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    iget-object v9, v9, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    invoke-interface {v9}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;->getWords()Ljava/util/ArrayList;

    move-result-object v9

    #setter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;
    invoke-static {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$202(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 480
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;
    invoke-static {v9}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$200(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->sortList(Ljava/util/ArrayList;)V

    .line 481
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;
    invoke-static {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$200(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 482
    .local v5, size:I
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I
    invoke-static {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$000(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)I

    move-result v8

    if-gt v5, v8, :cond_1

    .line 483
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I
    invoke-static {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$000(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)I

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 484
    .local v4, newPos:I
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    if-ltz v4, :cond_5

    .end local v4           #newPos:I
    :goto_1
    #setter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I
    invoke-static {v8, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$002(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;I)I

    .line 486
    :cond_1
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    const/4 v8, 0x1

    #calls: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->updateWordList(Z)V
    invoke-static {v7, v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$100(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;Z)V

    .line 488
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    const v8, 0x7f080043

    invoke-virtual {v7, v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 489
    .local v3, leftText:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInitializedMenu:Z
    invoke-static {v7}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$600(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 492
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mMenu:Landroid/view/Menu;
    invoke-static {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$700(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Landroid/view/Menu;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 494
    .end local v3           #leftText:Landroid/widget/TextView;
    .end local v5           #size:I
    :cond_2
    :goto_2
    return-void

    .line 464
    .end local v0           #deleted:Z
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    .line 465
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    goto/16 :goto_0

    .line 473
    .restart local v0       #deleted:Z
    :cond_4
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0600be

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .restart local v4       #newPos:I
    .restart local v5       #size:I
    :cond_5
    move v4, v7

    .line 484
    goto :goto_1
.end method
