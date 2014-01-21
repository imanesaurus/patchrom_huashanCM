.class Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$11;
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
    .line 373
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 375
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->playSoundAndVibration()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$400(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    .line 376
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$000(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    iget-object v1, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-interface {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->deleteWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    .line 377
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffffe7

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 378
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$11;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->closeDialog()V

    .line 379
    return-void
.end method
