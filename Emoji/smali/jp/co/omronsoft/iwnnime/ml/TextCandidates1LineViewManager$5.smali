.class Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$5;
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
    .line 305
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$5;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$5;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #calls: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->playSoundAndVibration()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$400(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    .line 311
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$5;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$300(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$5;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->access$300(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, -0x4099999a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0
.end method
