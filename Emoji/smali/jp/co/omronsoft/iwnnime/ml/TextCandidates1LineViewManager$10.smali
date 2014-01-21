.class Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$10;
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
    .line 363
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 365
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->playSoundAndVibration()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$400(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    .line 366
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffe000

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-direct {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILjp/co/omronsoft/iwnnime/ml/WnnWord;)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 367
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$10;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->closeDialog()V

    .line 368
    return-void
.end method
