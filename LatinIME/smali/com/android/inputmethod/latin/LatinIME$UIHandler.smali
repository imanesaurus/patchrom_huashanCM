.class public final Lcom/android/inputmethod/latin/LatinIME$UIHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/latin/LatinIME;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mDelayUpdateShiftState:I

.field private mDelayUpdateSuggestions:I

.field private mDoubleSpaceTimerStart:J

.field private mDoubleSpacesTurnIntoPeriodTimeout:J

.field private mHasPendingFinishInput:Z

.field private mHasPendingFinishInputView:Z

.field private mHasPendingStartInput:Z

.field private mIsOrientationChanging:Z

.field private mPendingSuccessiveImsCallback:Z


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "outerInstance"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method private executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "latinIme"
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    if-eqz v0, :cond_0

    .line 303
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V
    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->access$200(Lcom/android/inputmethod/latin/LatinIME;Z)V

    .line 304
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    if-eqz v0, :cond_1

    .line 305
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinIME;->access$300(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 306
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    if-eqz v0, :cond_2

    .line 307
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {p1, p2, p3}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 308
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 309
    return-void
.end method

.method private resetPendingImsCallback()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    .line 296
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    .line 297
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    .line 298
    return-void
.end method


# virtual methods
.method public cancelDoubleSpacesTimer()V
    .locals 2

    .prologue
    .line 268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpaceTimerStart:J

    .line 269
    return-void
.end method

.method public cancelUpdateSuggestionStrip()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 239
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 217
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 218
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    iget-object v1, v0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 219
    .local v1, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 231
    :goto_0
    :pswitch_0
    return-void

    .line 221
    :pswitch_1
    #calls: Lcom/android/inputmethod/latin/LatinIME;->updateSuggestionStrip()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$000(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0

    .line 224
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_0

    .line 227
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/inputmethod/latin/SuggestedWords;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_0

    :goto_1
    #calls: Lcom/android/inputmethod/latin/LatinIME;->showGesturePreviewAndSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->access$100(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public hasPendingUpdateSuggestions()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isAcceptingDoubleSpaces()Z
    .locals 4

    .prologue
    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpaceTimerStart:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpacesTurnIntoPeriodTimeout:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateSuggestions:I

    .line 209
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateShiftState:I

    .line 211
    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpacesTurnIntoPeriodTimeout:J

    .line 213
    return-void
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 359
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    .line 367
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 364
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 365
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$300(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0
.end method

.method public onFinishInputView(Z)V
    .locals 3
    .parameter "finishingInput"

    .prologue
    const/4 v2, 0x1

    .line 348
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    .line 356
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 353
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/LatinIME;->access$200(Lcom/android/inputmethod/latin/LatinIME;Z)V

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v2, 0x1

    .line 312
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    .line 325
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 318
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    .line 319
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccessiveImsCallback:Z

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 322
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 323
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v2, 0x1

    .line 328
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {p1, v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equivalentEditorInfoForKeyboard(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 345
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccessiveImsCallback:Z

    if-eqz v1, :cond_1

    .line 335
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccessiveImsCallback:Z

    .line 336
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 337
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 341
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 342
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->access$500(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 343
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

    goto :goto_0
.end method

.method public postUpdateShiftState()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateShiftState:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    return-void
.end method

.method public postUpdateSuggestionStrip()V
    .locals 3

    .prologue
    .line 234
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateSuggestions:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 235
    return-void
.end method

.method public showGesturePreviewAndSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    .locals 3
    .parameter "suggestedWords"
    .parameter "dismissGestureFloatingPreviewText"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 257
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 259
    .local v0, arg1:I
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void

    .end local v0           #arg1:I
    :cond_0
    move v0, v1

    .line 257
    goto :goto_0
.end method

.method public startDoubleSpacesTimer()V
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpaceTimerStart:J

    .line 265
    return-void
.end method

.method public startOrientationChanging()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 285
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 286
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 287
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    .line 288
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 289
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, v0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->saveKeyboardState()V

    .line 292
    :cond_0
    return-void
.end method
