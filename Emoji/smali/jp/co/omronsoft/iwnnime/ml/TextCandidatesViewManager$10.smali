.class Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$10;
.super Ljava/lang/Object;
.source "TextCandidatesViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;
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
    .line 888
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 890
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->playSoundAndVibration()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1100(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    .line 891
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearFocusCandidate()V

    .line 892
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v1, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$500(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    .line 893
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->closeDialog()V

    .line 894
    return-void
.end method
