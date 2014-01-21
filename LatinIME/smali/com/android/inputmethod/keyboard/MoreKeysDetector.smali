.class public final Lcom/android/inputmethod/keyboard/MoreKeysDetector;
.super Lcom/android/inputmethod/keyboard/KeyDetector;
.source "MoreKeysDetector.java"


# instance fields
.field private final mSlideAllowanceSquare:I

.field private final mSlideAllowanceSquareTop:I


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .parameter "slideAllowance"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>(F)V

    .line 25
    mul-float v0, p1, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->mSlideAllowanceSquare:I

    .line 27
    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->mSlideAllowanceSquare:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->mSlideAllowanceSquareTop:I

    .line 28
    return-void
.end method


# virtual methods
.method public alwaysAllowsSlidingInput()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public detectHitKey(II)Lcom/android/inputmethod/keyboard/Key;
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->getTouchX(I)I

    move-result v7

    .line 38
    .local v7, touchX:I
    invoke-virtual {p0, p2}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->getTouchY(I)I

    move-result v8

    .line 40
    .local v8, touchY:I
    const/4 v6, 0x0

    .line 41
    .local v6, nearestKey:Lcom/android/inputmethod/keyboard/Key;
    if-gez p2, :cond_1

    iget v5, p0, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->mSlideAllowanceSquareTop:I

    .line 42
    .local v5, nearestDist:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v9

    iget-object v0, v9, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .local v0, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 43
    .local v3, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v3, v7, v8}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v1

    .line 44
    .local v1, dist:I
    if-ge v1, v5, :cond_0

    .line 45
    move-object v6, v3

    .line 46
    move v5, v1

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    .end local v0           #arr$:[Lcom/android/inputmethod/keyboard/Key;
    .end local v1           #dist:I
    .end local v2           #i$:I
    .end local v3           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v4           #len$:I
    .end local v5           #nearestDist:I
    :cond_1
    iget v5, p0, Lcom/android/inputmethod/keyboard/MoreKeysDetector;->mSlideAllowanceSquare:I

    goto :goto_0

    .line 49
    .restart local v0       #arr$:[Lcom/android/inputmethod/keyboard/Key;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #nearestDist:I
    :cond_2
    return-object v6
.end method
