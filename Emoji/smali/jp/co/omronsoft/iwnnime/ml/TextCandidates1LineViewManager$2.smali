.class Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;
.super Ljava/lang/Object;
.source "TextCandidates1LineViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 177
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->playSoundAndVibration()V
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$400(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    .line 184
    instance-of v3, p1, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 185
    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;

    .line 186
    .local v0, text:Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getId()I

    move-result v2

    .line 187
    .local v2, wordcount:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-virtual {v3, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getWnnWord(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v1

    .line 190
    .local v1, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->clearFocusCandidate()V
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$500(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    .line 192
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->selectWebApiButton()V
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$600(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    goto :goto_0

    .line 195
    :cond_2
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_3

    .line 196
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->clearFocusCandidate()V
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$500(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    .line 197
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->selectWebApiGetAgainButton()V
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$700(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->clearFocusCandidate()V
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$500(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    .line 202
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    invoke-static {v3, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$800(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto :goto_0
.end method
