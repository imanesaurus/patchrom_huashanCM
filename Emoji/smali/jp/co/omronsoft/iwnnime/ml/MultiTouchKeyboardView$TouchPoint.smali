.class Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
.super Ljava/lang/Object;
.source "MultiTouchKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchPoint"
.end annotation


# instance fields
.field public mId:I

.field public mMetaState:I

.field public mX:F

.field public mY:F

.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;


# direct methods
.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;IFFI)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 69
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->this$0:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mId:I

    .line 71
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mX:F

    .line 72
    iput p4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mY:F

    .line 73
    iput p5, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mMetaState:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;ILandroid/view/MotionEvent;)V
    .locals 1
    .parameter
    .parameter "index"
    .parameter "event"

    .prologue
    .line 77
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->this$0:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mId:I

    .line 79
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mX:F

    .line 80
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mY:F

    .line 81
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mMetaState:I

    .line 82
    return-void
.end method
