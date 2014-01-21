.class Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$11;
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
    .line 899
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 901
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->playSoundAndVibration()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1100(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    .line 902
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffe000

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-direct {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILjp/co/omronsoft/iwnnime/ml/WnnWord;)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 903
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->closeDialog()V

    .line 904
    return-void
.end method
