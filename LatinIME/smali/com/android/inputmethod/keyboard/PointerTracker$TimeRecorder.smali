.class final Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeRecorder"
.end annotation


# instance fields
.field private mLastBatchInputTime:J

.field private mLastLetterTypingTime:J

.field private mLastTypingTime:J

.field private final mStaticTimeThresholdAfterFastTyping:I

.field private final mSuppressKeyPreviewAfterBatchInputDuration:I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;)V
    .locals 1
    .parameter "pointerTrackerParams"
    .parameter "gestureStrokeParams"

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iget v0, p1, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mSuppressKeyPreviewAfterBatchInputDuration:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mSuppressKeyPreviewAfterBatchInputDuration:I

    .line 243
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mStaticTimeThresholdAfterFastTyping:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mStaticTimeThresholdAfterFastTyping:I

    .line 245
    return-void
.end method

.method private wasLastInputTyping()Z
    .locals 4

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastTypingTime:J

    iget-wide v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastBatchInputTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLastLetterTypingTime()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastLetterTypingTime:J

    return-wide v0
.end method

.method public isInFastTyping(J)Z
    .locals 4
    .parameter "eventTime"

    .prologue
    .line 248
    iget-wide v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastLetterTypingTime:J

    sub-long v0, p1, v2

    .line 249
    .local v0, elapsedTimeSinceLastLetterTyping:J
    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mStaticTimeThresholdAfterFastTyping:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public needsToSuppressKeyPreviewPopup(J)Z
    .locals 4
    .parameter "eventTime"

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->wasLastInputTyping()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastBatchInputTime:J

    sub-long v0, p1, v0

    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mSuppressKeyPreviewAfterBatchInputDuration:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCodeInput(IJ)V
    .locals 4
    .parameter "code"
    .parameter "eventTime"

    .prologue
    .line 262
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->wasLastInputTyping()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastTypingTime:J

    sub-long v0, p2, v0

    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mStaticTimeThresholdAfterFastTyping:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 265
    :cond_0
    iput-wide p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastLetterTypingTime:J

    .line 273
    :cond_1
    :goto_0
    iput-wide p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastTypingTime:J

    .line 274
    return-void

    .line 268
    :cond_2
    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastLetterTypingTime:J

    sub-long v0, p2, v0

    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mStaticTimeThresholdAfterFastTyping:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 270
    iput-wide p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastLetterTypingTime:J

    goto :goto_0
.end method

.method public onEndBatchInput(J)V
    .locals 0
    .parameter "eventTime"

    .prologue
    .line 277
    iput-wide p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->mLastBatchInputTime:J

    .line 278
    return-void
.end method
