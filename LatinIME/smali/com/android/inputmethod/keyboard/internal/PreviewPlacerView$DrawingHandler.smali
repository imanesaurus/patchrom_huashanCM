.class final Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "PreviewPlacerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DrawingHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGestureFloatingPreviewTextLingerTimeout:I

.field private final mGesturePreviewTrailParams:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;I)V
    .locals 0
    .parameter "outerInstance"
    .parameter "gesturePreviewTrailParams"
    .parameter "getstureFloatinPreviewTextLinerTimeout"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 93
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->mGesturePreviewTrailParams:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;

    .line 94
    iput p3, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->mGestureFloatingPreviewTextLingerTimeout:I

    .line 95
    return-void
.end method


# virtual methods
.method public dismissGestureFloatingPreviewText()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->removeMessages(I)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->mGestureFloatingPreviewTextLingerTimeout:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 115
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    .line 100
    .local v0, placerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;
    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->setGestureFloatingPreviewText(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->invalidate()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postUpdateGestureTrailPreview()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->removeMessages(I)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->mGesturePreviewTrailParams:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mUpdateInterval:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    return-void
.end method
