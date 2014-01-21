.class Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;
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
    .line 503
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v3, 0x0

    .line 506
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "onClick() : start."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    const/4 v2, -0x1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$302(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;I)I

    .line 509
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    iget-object v1, v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    invoke-interface {v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;->initializeDictionary()V

    .line 512
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 514
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$202(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 515
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #setter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I
    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$002(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;I)I

    .line 516
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    const/4 v2, 0x1

    #calls: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->updateWordList(Z)V
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$100(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;Z)V

    .line 517
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 518
    .local v0, leftText:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$200(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInitializedMenu:Z
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$600(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->access$700(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 523
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OpenWnn"

    const-string v2, "onClick() : end."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_2
    return-void
.end method
