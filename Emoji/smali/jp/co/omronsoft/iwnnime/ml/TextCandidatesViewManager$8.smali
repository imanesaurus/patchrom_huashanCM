.class Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;
.super Ljava/lang/Object;
.source "TextCandidatesViewManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 820
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 822
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    if-eqz v3, :cond_0

    .line 823
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->isPopupKeyboard()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 824
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->closePopupKeyboard()V

    .line 825
    const/4 v3, 0x1

    .line 860
    :goto_0
    return v3

    .line 828
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v1

    .line 829
    .local v1, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    const/4 v2, 0x0

    .line 830
    .local v2, resid:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 849
    :goto_1
    if-eqz v2, :cond_2

    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, button:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 852
    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 854
    :cond_1
    if-eqz v0, :cond_5

    .line 855
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1400(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 860
    .end local v0           #button:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    .line 832
    :pswitch_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$600(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 833
    const v2, 0x7f020028

    goto :goto_1

    .line 835
    :cond_3
    const v2, 0x7f020022

    .line 837
    goto :goto_1

    .line 839
    :pswitch_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$600(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 840
    const v2, 0x7f020027

    goto :goto_1

    .line 842
    :cond_4
    const v2, 0x7f020021

    .line 844
    goto :goto_1

    .line 857
    .restart local v0       #button:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;->this$0:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->access$1400(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
