.class Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$9;
.super Ljava/lang/Object;
.source "TextCandidates1LineViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;
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
    .line 353
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$9;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 355
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$9;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->playSoundAndVibration()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$400(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    .line 356
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$9;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$9;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    iget-object v1, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$800(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    .line 357
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$9;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->closeDialog()V

    .line 358
    return-void
.end method
