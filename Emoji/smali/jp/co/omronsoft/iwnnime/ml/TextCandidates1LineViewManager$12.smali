.class Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$12;
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
    .line 384
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$12;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 386
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$12;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->playSoundAndVibration()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$400(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    .line 387
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$12;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->closeDialog()V

    .line 388
    return-void
.end method
