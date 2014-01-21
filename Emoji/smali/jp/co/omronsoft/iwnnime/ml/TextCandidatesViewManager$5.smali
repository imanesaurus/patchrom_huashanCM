.class Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$5;
.super Ljava/lang/Object;
.source "TextCandidatesViewManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 448
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$5;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 450
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$5;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$5;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1000(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->onLongClickCandidate(Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method
