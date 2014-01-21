.class public Ljp/co/omronsoft/iwnnime/ml/CandidateViewButton;
.super Landroid/widget/Button;
.source "CandidateViewButton.java"


# instance fields
.field private mUpState:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "me"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 42
    .local v1, ret:Z
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidateViewButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 51
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateViewButton;->mUpState:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 55
    :goto_0
    return v1

    .line 46
    :pswitch_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateViewButton;->mUpState:[I

    .line 47
    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
