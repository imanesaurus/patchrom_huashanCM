.class Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$7;
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
    .line 326
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$7;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 328
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$7;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->playSoundAndVibration()V
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$400(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    .line 332
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$7;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$300(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    .line 333
    .local v0, width:I
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$7;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$300(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    int-to-float v2, v0

    const v3, 0x3f666666

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0
.end method
