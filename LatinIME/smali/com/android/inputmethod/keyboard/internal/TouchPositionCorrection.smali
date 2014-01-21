.class public final Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;
.super Ljava/lang/Object;
.source "TouchPositionCorrection.java"


# instance fields
.field private mEnabled:Z

.field private mRadii:[F

.field private mXs:[F

.field private mYs:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRadius(I)F
    .locals 1
    .parameter "row"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mRadii:[F

    aget v0, v0, p1

    return v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mRadii:[F

    array-length v0, v0

    return v0
.end method

.method public getX(I)F
    .locals 1
    .parameter "row"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getY(I)F
    .locals 1
    .parameter "row"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mYs:[F

    aget v0, v0, p1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mEnabled:Z

    return v0
.end method

.method public load([Ljava/lang/String;)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 30
    array-length v0, p1

    .line 31
    .local v0, dataLength:I
    rem-int/lit8 v9, v0, 0x3

    if-eqz v9, :cond_0

    .line 32
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v7, :cond_4

    .line 33
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "the size of touch position correction data is invalid"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 39
    :cond_0
    div-int/lit8 v4, v0, 0x3

    .line 40
    .local v4, length:I
    new-array v9, v4, [F

    iput-object v9, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mXs:[F

    .line 41
    new-array v9, v4, [F

    iput-object v9, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mYs:[F

    .line 42
    new-array v9, v4, [F

    iput-object v9, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mRadii:[F

    .line 44
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 45
    :try_start_0
    rem-int/lit8 v5, v2, 0x3

    .line 46
    .local v5, type:I
    div-int/lit8 v3, v2, 0x3

    .line 47
    .local v3, index:I
    aget-object v9, p1, v2

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 48
    .local v6, value:F
    if-nez v5, :cond_1

    .line 49
    iget-object v9, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mXs:[F

    aput v6, v9, v3

    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_1
    if-ne v5, v7, :cond_2

    .line 51
    iget-object v9, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mYs:[F

    aput v6, v9, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    .end local v3           #index:I
    .end local v5           #type:I
    .end local v6           #value:F
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v7, :cond_6

    .line 59
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "the number format for touch position correction data is invalid"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 53
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #index:I
    .restart local v5       #type:I
    .restart local v6       #value:F
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mRadii:[F

    aput v6, v9, v3

    goto :goto_1

    .line 56
    .end local v3           #index:I
    .end local v5           #type:I
    .end local v6           #value:F
    :cond_3
    if-lez v0, :cond_5

    :goto_2
    iput-boolean v7, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mEnabled:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .end local v2           #i:I
    .end local v4           #length:I
    :cond_4
    :goto_3
    return-void

    .restart local v2       #i:I
    .restart local v4       #length:I
    :cond_5
    move v7, v8

    .line 56
    goto :goto_2

    .line 62
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    :cond_6
    iput-boolean v8, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mEnabled:Z

    .line 63
    iput-object v10, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mXs:[F

    .line 64
    iput-object v10, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mYs:[F

    .line 65
    iput-object v10, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mRadii:[F

    goto :goto_3
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->mEnabled:Z

    .line 72
    return-void
.end method
