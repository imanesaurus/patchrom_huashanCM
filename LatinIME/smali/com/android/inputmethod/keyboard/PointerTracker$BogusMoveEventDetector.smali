.class final Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BogusMoveEventDetector"
.end annotation


# instance fields
.field mAccumulatedDistanceFromDownKey:I

.field private mAccumulatedDistanceThreshold:I

.field private mActualDownX:I

.field private mActualDownY:I

.field private mRadiusThreshold:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getDistanceFromDownEvent(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 224
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mActualDownX:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mActualDownY:I

    invoke-static {p1, p2, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getDistance(IIII)I

    move-result v0

    return v0
.end method

.method public hasTraveledLongDistance(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 216
    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mActualDownX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 217
    .local v0, dx:I
    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mActualDownY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 220
    .local v1, dy:I
    if-lt v0, v1, :cond_0

    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mAccumulatedDistanceFromDownKey:I

    iget v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mAccumulatedDistanceThreshold:I

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCloseToActualDownEvent(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->getDistanceFromDownEvent(II)I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mRadiusThreshold:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActualDownEvent(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 203
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mActualDownX:I

    .line 204
    iput p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mActualDownY:I

    .line 205
    return-void
.end method

.method public onDownKey()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mAccumulatedDistanceFromDownKey:I

    .line 209
    return-void
.end method

.method public onMoveKey(I)V
    .locals 1
    .parameter "distance"

    .prologue
    .line 212
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mAccumulatedDistanceFromDownKey:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mAccumulatedDistanceFromDownKey:I

    .line 213
    return-void
.end method

.method public setKeyboardGeometry(II)V
    .locals 5
    .parameter "keyWidth"
    .parameter "keyHeight"

    .prologue
    .line 196
    int-to-double v1, p1

    int-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v0, v1

    .line 197
    .local v0, keyDiagonal:F
    const v1, 0x3f07ae14

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mAccumulatedDistanceThreshold:I

    .line 199
    const v1, 0x3f91eb85

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mRadiusThreshold:I

    .line 200
    return-void
.end method
