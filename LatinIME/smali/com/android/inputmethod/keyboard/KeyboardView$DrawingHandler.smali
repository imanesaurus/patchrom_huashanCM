.class public Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawingHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/keyboard/KeyboardView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V
    .locals 0
    .parameter "outerInstance"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method private cancelAllDismissKeyPreviews()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(I)V

    .line 230
    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllDismissKeyPreviews()V

    .line 234
    return-void
.end method

.method public cancelDismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(ILjava/lang/Object;)V

    .line 226
    return-void
.end method

.method public dismissKeyPreview(JLcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 1
    .parameter "delay"
    .parameter "tracker"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 222
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 208
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 210
    .local v2, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    #getter for: Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewTexts:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$000(Lcom/android/inputmethod/keyboard/KeyboardView;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, v2, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    .local v1, previewText:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 214
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
