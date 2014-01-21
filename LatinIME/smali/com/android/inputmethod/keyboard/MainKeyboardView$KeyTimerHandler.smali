.class final Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "MainKeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/MainKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyTimerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/keyboard/MainKeyboardView;",
        ">;",
        "Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;"
    }
.end annotation


# instance fields
.field private final mIgnoreAltCodeKeyTimeout:I

.field private final mKeyRepeatInterval:I

.field private final mKeyRepeatStartTimeout:I

.field private final mLongPressKeyTimeout:I

.field private final mLongPressShiftKeyTimeout:I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/MainKeyboardView;Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter "outerInstance"
    .parameter "mainKeyboardViewAttr"

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 167
    const/16 v0, 0xe

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mKeyRepeatStartTimeout:I

    .line 169
    const/16 v0, 0xf

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mKeyRepeatInterval:I

    .line 171
    const/16 v0, 0x10

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mLongPressKeyTimeout:I

    .line 173
    const/16 v0, 0x11

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mLongPressShiftKeyTimeout:I

    .line 175
    const/16 v0, 0x12

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mIgnoreAltCodeKeyTimeout:I

    .line 177
    return-void
.end method

.method private static cancelAndStartAnimators(Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 5
    .parameter "animatorToCancel"
    .parameter "animatorToStart"

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, startFraction:F
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 278
    const/high16 v3, 0x3f80

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v4

    sub-float v0, v3, v4

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-long v1, v3

    .line 281
    .local v1, startTime:J
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 282
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 283
    return-void
.end method

.method private startKeyRepeatTimer(Lcom/android/inputmethod/keyboard/PointerTracker;J)V
    .locals 4
    .parameter "tracker"
    .parameter "delay"

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey()Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 206
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private static startWhileTypingFadeinAnimation(Lcom/android/inputmethod/keyboard/MainKeyboardView;)V
    .locals 2
    .parameter "keyboardView"

    .prologue
    .line 286
    #getter for: Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingFadeoutAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->access$100(Lcom/android/inputmethod/keyboard/MainKeyboardView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    #getter for: Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingFadeinAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->access$200(Lcom/android/inputmethod/keyboard/MainKeyboardView;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->cancelAndStartAnimators(Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    .line 288
    return-void
.end method

.method private static startWhileTypingFadeoutAnimation(Lcom/android/inputmethod/keyboard/MainKeyboardView;)V
    .locals 2
    .parameter "keyboardView"

    .prologue
    .line 291
    #getter for: Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingFadeinAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->access$200(Lcom/android/inputmethod/keyboard/MainKeyboardView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    #getter for: Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingFadeoutAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->access$100(Lcom/android/inputmethod/keyboard/MainKeyboardView;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->cancelAndStartAnimators(Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    .line 293
    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->cancelKeyTimers()V

    .line 349
    return-void
.end method

.method public cancelDoubleTapTimer()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 334
    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 217
    return-void
.end method

.method public cancelKeyTimers()V
    .locals 0

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->cancelKeyRepeatTimer()V

    .line 344
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->cancelLongPressTimer()V

    .line 345
    return-void
.end method

.method public cancelLongPressTimer()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 271
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/MainKeyboardView;

    .line 182
    .local v1, keyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 183
    .local v2, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 185
    :pswitch_0
    invoke-static {v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->startWhileTypingFadeinAnimation(Lcom/android/inputmethod/keyboard/MainKeyboardView;)V

    goto :goto_0

    .line 188
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey()Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 189
    .local v0, currentKey:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_0

    .line 190
    invoke-virtual {v2, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onRegisterKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 191
    iget v3, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mKeyRepeatInterval:I

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->startKeyRepeatTimer(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    goto :goto_0

    .line 195
    .end local v0           #currentKey:Lcom/android/inputmethod/keyboard/Key;
    :pswitch_2
    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey()Lcom/android/inputmethod/keyboard/Key;

    move-result-object v3

    #calls: Lcom/android/inputmethod/keyboard/MainKeyboardView;->openMoreKeysKeyboardIfRequired(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    invoke-static {v1, v3, v2}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MainKeyboardView;Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onLongPressTimeout(I)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isInDoubleTapTimeout()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isInKeyRepeat()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isTypingState()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public startDoubleTapTimer()V
    .locals 3

    .prologue
    .line 327
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 329
    return-void
.end method

.method public startKeyRepeatTimer(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 212
    iget v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mKeyRepeatStartTimeout:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->startKeyRepeatTimer(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    .line 213
    return-void
.end method

.method public startLongPressTimer(I)V
    .locals 4
    .parameter "code"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->cancelLongPressTimer()V

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 233
    const/4 v0, 0x0

    .line 236
    .local v0, delay:I
    :goto_0
    if-lez v0, :cond_0

    .line 237
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 239
    :cond_0
    return-void

    .line 230
    .end local v0           #delay:I
    :pswitch_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mLongPressShiftKeyTimeout:I

    .line 231
    .restart local v0       #delay:I
    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startLongPressTimer(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 5
    .parameter "tracker"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->cancelLongPressTimer()V

    .line 244
    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey()Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    .line 249
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    iget v2, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    packed-switch v2, :pswitch_data_0

    .line 254
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInMomentarySwitchState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    iget v2, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mLongPressKeyTimeout:I

    mul-int/lit8 v0, v2, 0x3

    .line 263
    .local v0, delay:I
    :goto_1
    if-lez v0, :cond_0

    .line 264
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 251
    .end local v0           #delay:I
    :pswitch_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mLongPressShiftKeyTimeout:I

    .line 252
    .restart local v0       #delay:I
    goto :goto_1

    .line 259
    .end local v0           #delay:I
    :cond_2
    iget v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mLongPressKeyTimeout:I

    .restart local v0       #delay:I
    goto :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startTypingStateTimer(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 6
    .parameter "typedKey"

    .prologue
    const/4 v4, 0x0

    .line 297
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isModifier()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->altCodeWhileTyping()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->isTypingState()Z

    move-result v0

    .line 302
    .local v0, isTyping:Z
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 303
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/MainKeyboardView;

    .line 306
    .local v1, keyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 307
    .local v2, typedCode:I
    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 308
    :cond_2
    invoke-static {v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->startWhileTypingFadeinAnimation(Lcom/android/inputmethod/keyboard/MainKeyboardView;)V

    goto :goto_0

    .line 312
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->mIgnoreAltCodeKeyTimeout:I

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 314
    if-nez v0, :cond_0

    .line 317
    invoke-static {v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->startWhileTypingFadeoutAnimation(Lcom/android/inputmethod/keyboard/MainKeyboardView;)V

    goto :goto_0
.end method
