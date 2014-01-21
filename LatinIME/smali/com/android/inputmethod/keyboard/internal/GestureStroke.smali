.class public Lcom/android/inputmethod/keyboard/internal/GestureStroke;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterFastTyping:Z

.field private mDetectFastMoveSpeedThreshold:I

.field private mDetectFastMoveTime:I

.field private mDetectFastMoveX:I

.field private mDetectFastMoveY:I

.field private final mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

.field private mGestureDynamicDistanceThresholdFrom:I

.field private mGestureDynamicDistanceThresholdTo:I

.field private mGestureRecognitionSpeedThreshold:I

.field private mGestureSamplingMinimumDistance:I

.field private mIncrementalRecognitionSize:I

.field private mKeyWidth:I

.field private mLastIncrementalBatchSize:I

.field private mLastMajorEventTime:J

.field private mLastMajorEventX:I

.field private mLastMajorEventY:I

.field private final mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

.field private final mPointerId:I

.field private final mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

.field private final mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;)V
    .locals 2
    .parameter "pointerId"
    .parameter "params"

    .prologue
    const/16 v1, 0x80

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 34
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 35
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 134
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mPointerId:I

    .line 135
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    .line 136
    return-void
.end method

.method private appendBatchPoints(Lcom/android/inputmethod/latin/InputPointers;I)V
    .locals 7
    .parameter "out"
    .parameter "size"

    .prologue
    .line 325
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastIncrementalBatchSize:I

    sub-int v6, p2, v0

    .line 326
    .local v6, length:I
    if-gtz v6, :cond_0

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mPointerId:I

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget v5, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastIncrementalBatchSize:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/inputmethod/latin/InputPointers;->append(ILcom/android/inputmethod/latin/ResizableIntArray;Lcom/android/inputmethod/latin/ResizableIntArray;Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    .line 331
    iput p2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastIncrementalBatchSize:I

    goto :goto_0
.end method

.method private appendPoint(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p3}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    .line 236
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    .line 237
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    .line 238
    return-void
.end method

.method private detectFastMove(III)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 251
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v7

    .line 252
    .local v7, size:I
    add-int/lit8 v1, v7, -0x1

    .line 253
    .local v1, lastIndex:I
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v8, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->get(I)I

    move-result v2

    .line 254
    .local v2, lastX:I
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v8, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->get(I)I

    move-result v3

    .line 255
    .local v3, lastY:I
    invoke-static {v2, v3, p1, p2}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->getDistance(IIII)I

    move-result v0

    .line 256
    .local v0, dist:I
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v8, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->get(I)I

    move-result v8

    sub-int v4, p3, v8

    .line 257
    .local v4, msecs:I
    if-lez v4, :cond_0

    .line 258
    invoke-static {v2, v3, p1, p2}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->getDistance(IIII)I

    move-result v5

    .line 259
    .local v5, pixels:I
    mul-int/lit16 v6, v5, 0x3e8

    .line 265
    .local v6, pixelsPerSec:I
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->hasDetectedFastMove()Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mDetectFastMoveSpeedThreshold:I

    mul-int/2addr v8, v4

    if-le v6, v8, :cond_0

    .line 272
    iput p3, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mDetectFastMoveTime:I

    .line 273
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mDetectFastMoveX:I

    .line 274
    iput p2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mDetectFastMoveY:I

    .line 277
    .end local v5           #pixels:I
    .end local v6           #pixelsPerSec:I
    :cond_0
    return v0
.end method

.method private static getDistance(IIII)I
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 335
    sub-int v0, p0, p2

    .line 336
    .local v0, dx:I
    sub-int v1, p1, p3

    .line 339
    .local v1, dy:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private getGestureDynamicDistanceThreshold(I)I
    .locals 3
    .parameter "deltaTime"

    .prologue
    .line 174
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mAfterFastTyping:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicThresholdDecayDuration:I

    if-lt p1, v1, :cond_1

    .line 175
    :cond_0
    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mGestureDynamicDistanceThresholdTo:I

    .line 180
    :goto_0
    return v1

    .line 177
    :cond_1
    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mGestureDynamicDistanceThresholdFrom:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mGestureDynamicDistanceThresholdTo:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicThresholdDecayDuration:I

    div-int v0, v1, v2

    .line 180
    .local v0, decayedThreshold:I
    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mGestureDynamicDistanceThresholdFrom:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method private getGestureDynamicTimeThreshold(I)I
    .locals 3
    .parameter "deltaTime"

    .prologue
    .line 184
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mAfterFastTyping:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicThresholdDecayDuration:I

    if-lt p1, v1, :cond_1

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicTimeThresholdTo:I

    .line 190
    :goto_0
    return v1

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicTimeThresholdFrom:I

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicTimeThresholdTo:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicThresholdDecayDuration:I

    div-int v0, v1, v2

    .line 190
    .local v0, decayedThreshold:I
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicTimeThresholdFrom:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method private final hasDetectedFastMove()Z
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mDetectFastMoveTime:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIncrementalRecognitionSize(III)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 299
    int-to-long v3, p3

    iget-wide v5, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastMajorEventTime:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 300
    .local v0, msecs:I
    if-gtz v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastMajorEventX:I

    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastMajorEventY:I

    invoke-static {v3, v4, p1, p2}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->getDistance(IIII)I

    move-result v1

    .line 304
    .local v1, pixels:I
    mul-int/lit16 v2, v1, 0x3e8

    .line 306
    .local v2, pixelsPerSec:I
    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mGestureRecognitionSpeedThreshold:I

    mul-int/2addr v3, v0

    if-ge v2, v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mIncrementalRecognitionSize:I

    goto :goto_0
.end method

.method private updateMajorEvent(III)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 241
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastMajorEventTime:J

    .line 242
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastMajorEventX:I

    .line 243
    iput p2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastMajorEventY:I

    .line 244
    return-void
.end method


# virtual methods
.method public addPoint(IIIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "isMajorEvent"

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v1

    .line 282
    .local v1, size:I
    if-gtz v1, :cond_2

    .line 284
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->appendPoint(III)V

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->updateMajorEvent(III)V

    .line 292
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->updateIncrementalRecognitionSize(III)V

    .line 294
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->updateMajorEvent(III)V

    .line 296
    :cond_1
    return-void

    .line 287
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->detectFastMove(III)I

    move-result v0

    .line 288
    .local v0, distance:I
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mGestureSamplingMinimumDistance:I

    if-le v0, v2, :cond_0

    .line 289
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->appendPoint(III)V

    goto :goto_0
.end method

.method public final appendAllBatchPoints(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->appendBatchPoints(Lcom/android/inputmethod/latin/InputPointers;I)V

    .line 318
    return-void
.end method

.method public final appendIncrementalBatchPoints(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 321
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mIncrementalRecognitionSize:I

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->appendBatchPoints(Lcom/android/inputmethod/latin/InputPointers;I)V

    .line 322
    return-void
.end method

.method public final hasRecognitionTimePast(JJ)Z
    .locals 2
    .parameter "currentTime"
    .parameter "lastRecognitionTime"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mRecognitionMinimumTime:I

    int-to-long v0, v0

    add-long/2addr v0, p3

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStartOfAGesture()Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 194
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->hasDetectedFastMove()Z

    move-result v7

    if-nez v7, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v3

    .line 197
    :cond_1
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v5

    .line 198
    .local v5, size:I
    if-lez v5, :cond_0

    .line 201
    add-int/lit8 v4, v5, -0x1

    .line 202
    .local v4, lastIndex:I
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v7, v4}, Lcom/android/inputmethod/latin/ResizableIntArray;->get(I)I

    move-result v7

    iget v8, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mDetectFastMoveTime:I

    sub-int v1, v7, v8

    .line 203
    .local v1, deltaTime:I
    if-ltz v1, :cond_0

    .line 206
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v7, v4}, Lcom/android/inputmethod/latin/ResizableIntArray;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v8, v4}, Lcom/android/inputmethod/latin/ResizableIntArray;->get(I)I

    move-result v8

    iget v9, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mDetectFastMoveX:I

    iget v10, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mDetectFastMoveY:I

    invoke-static {v7, v8, v9, v10}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->getDistance(IIII)I

    move-result v0

    .line 209
    .local v0, deltaDistance:I
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->getGestureDynamicDistanceThreshold(I)I

    move-result v2

    .line 210
    .local v2, distanceThreshold:I
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->getGestureDynamicTimeThreshold(I)I

    move-result v6

    .line 211
    .local v6, timeThreshold:I
    if-lt v1, v6, :cond_2

    if-lt v0, v2, :cond_2

    const/4 v3, 0x1

    .line 220
    .local v3, isStartOfAGesture:Z
    :cond_2
    goto :goto_0
.end method

.method public onDownEvent(IIJJJ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "downTime"
    .parameter "gestureFirstDownTime"
    .parameter "lastTypingTime"

    .prologue
    const/4 v5, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->reset()V

    .line 161
    sub-long v0, p3, p7

    .line 162
    .local v0, elapsedTimeAfterTyping:J
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v3, v3, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mStaticTimeThresholdAfterFastTyping:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 163
    iput-boolean v5, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mAfterFastTyping:Z

    .line 169
    :cond_0
    sub-long v3, p3, p5

    long-to-int v2, v3

    .line 170
    .local v2, elapsedTimeFromFirstDown:I
    invoke-virtual {p0, p1, p2, v2, v5}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->addPoint(IIIZ)V

    .line 171
    return-void
.end method

.method protected reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mIncrementalRecognitionSize:I

    .line 225
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastIncrementalBatchSize:I

    .line 226
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/ResizableIntArray;->setLength(I)V

    .line 227
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/ResizableIntArray;->setLength(I)V

    .line 228
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/ResizableIntArray;->setLength(I)V

    .line 229
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mLastMajorEventTime:J

    .line 230
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mDetectFastMoveTime:I

    .line 231
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mAfterFastTyping:Z

    .line 232
    return-void
.end method

.method public setKeyboardGeometry(I)V
    .locals 2
    .parameter "keyWidth"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mKeyWidth:I

    .line 141
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDetectFastMoveSpeedThreshold:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mDetectFastMoveSpeedThreshold:I

    .line 142
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicDistanceThresholdFrom:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mGestureDynamicDistanceThresholdFrom:I

    .line 144
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicDistanceThresholdTo:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mGestureDynamicDistanceThresholdTo:I

    .line 145
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mSamplingMinimumDistance:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mGestureSamplingMinimumDistance:I

    .line 146
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mRecognitionSpeedThreshold:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->mGestureRecognitionSpeedThreshold:I

    .line 156
    return-void
.end method
