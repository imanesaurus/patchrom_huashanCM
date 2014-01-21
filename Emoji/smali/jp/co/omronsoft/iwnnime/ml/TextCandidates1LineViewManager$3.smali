.class Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$3;
.super Ljava/lang/Object;
.source "TextCandidates1LineViewManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 208
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 224
    :goto_0
    return v1

    .line 214
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mEnableCandidateLongClick:Z
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$900(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    const/4 v1, 0x0

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->clearFocusCandidate()V
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$500(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    move-object v1, p1

    .line 220
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v0

    .line 221
    .local v0, wordcount:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$1000(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iput-object v1, v3, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 223
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-virtual {v1, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->displayDialog(Landroid/view/View;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    move v1, v2

    .line 224
    goto :goto_0
.end method
