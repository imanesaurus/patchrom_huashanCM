.class Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
.source "MoreKeysKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MoreKeysKeyboardParams"
.end annotation


# instance fields
.field public mColumnWidth:I

.field public mDividerWidth:I

.field public mIsFixedOrder:Z

.field public mLeftKeys:I

.field public mNumColumns:I

.field public mNumRows:I

.field public mRightKeys:I

.field public mTopKeys:I

.field mTopRowAdjustment:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;-><init>()V

    .line 56
    return-void
.end method

.method private getAutoOrderTopRowAdjustment()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 141
    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumRows:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopKeys:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumColumns:I

    rem-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopKeys:I

    rem-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mLeftKeys:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mRightKeys:I

    if-ne v0, v2, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getAutomaticColumnPos(I)I
    .locals 8
    .parameter "n"

    .prologue
    .line 174
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumColumns:I

    rem-int v0, p1, v7

    .line 175
    .local v0, col:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumColumns:I

    div-int v6, p1, v7

    .line 176
    .local v6, row:I
    iget v3, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mLeftKeys:I

    .line 177
    .local v3, leftKeys:I
    invoke-direct {p0, v6}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->isTopRow(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 178
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopRowAdjustment:I

    add-int/2addr v3, v7

    .line 180
    :cond_0
    if-nez v0, :cond_2

    .line 182
    const/4 v4, 0x0

    .line 207
    :cond_1
    :goto_0
    return v4

    .line 185
    :cond_2
    const/4 v4, 0x0

    .line 186
    .local v4, pos:I
    const/4 v5, 0x1

    .line 187
    .local v5, right:I
    const/4 v2, 0x0

    .line 188
    .local v2, left:I
    const/4 v1, 0x0

    .line 191
    .local v1, i:I
    :cond_3
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mRightKeys:I

    if-ge v5, v7, :cond_4

    .line 192
    move v4, v5

    .line 193
    add-int/lit8 v5, v5, 0x1

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 196
    :cond_4
    if-ge v1, v0, :cond_1

    .line 199
    if-ge v2, v3, :cond_5

    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 201
    neg-int v4, v2

    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 204
    :cond_5
    if-lt v1, v0, :cond_3

    goto :goto_0
.end method

.method private getFixedOrderColumnPos(I)I
    .locals 9
    .parameter "n"

    .prologue
    .line 154
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumColumns:I

    rem-int v0, p1, v7

    .line 155
    .local v0, col:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumColumns:I

    div-int v6, p1, v7

    .line 156
    .local v6, row:I
    invoke-direct {p0, v6}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->isTopRow(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 157
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mLeftKeys:I

    sub-int v4, v0, v7

    .line 169
    :cond_0
    :goto_0
    return v4

    .line 159
    :cond_1
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopKeys:I

    div-int/lit8 v5, v7, 0x2

    .line 160
    .local v5, rightSideKeys:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopKeys:I

    add-int/lit8 v8, v5, 0x1

    sub-int v1, v7, v8

    .line 161
    .local v1, leftSideKeys:I
    sub-int v4, v0, v1

    .line 162
    .local v4, pos:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mLeftKeys:I

    iget v8, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopRowAdjustment:I

    add-int v2, v7, v8

    .line 163
    .local v2, numLeftKeys:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mRightKeys:I

    add-int/lit8 v3, v7, -0x1

    .line 164
    .local v3, numRightKeys:I
    if-lt v3, v5, :cond_2

    if-ge v2, v1, :cond_0

    .line 166
    :cond_2
    if-ge v3, v5, :cond_3

    .line 167
    sub-int v7, v5, v3

    sub-int/2addr v4, v7

    goto :goto_0

    .line 169
    :cond_3
    sub-int v7, v1, v2

    add-int/2addr v4, v7

    goto :goto_0
.end method

.method private getFixedOrderTopRowAdjustment()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumRows:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopKeys:I

    rem-int/lit8 v0, v0, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopKeys:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumColumns:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mLeftKeys:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mRightKeys:I

    if-ne v0, v2, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getOptimizedColumns(II)I
    .locals 3
    .parameter "numKeys"
    .parameter "maxColumns"

    .prologue
    .line 216
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 217
    .local v0, numColumns:I
    :goto_0
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getTopRowEmptySlots(II)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumRows:I

    if-lt v1, v2, :cond_0

    .line 218
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 220
    :cond_0
    return v0
.end method

.method private static getTopRowEmptySlots(II)I
    .locals 2
    .parameter "numKeys"
    .parameter "numColumns"

    .prologue
    .line 211
    rem-int v0, p0, p1

    .line 212
    .local v0, remainings:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    sub-int v1, p1, v0

    goto :goto_0
.end method

.method private isTopRow(I)Z
    .locals 2
    .parameter "rowCount"

    .prologue
    const/4 v0, 0x1

    .line 247
    iget v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumRows:I

    if-le v1, v0, :cond_0

    iget v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumRows:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getColumnPos(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mIsFixedOrder:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getFixedOrderColumnPos(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getAutomaticColumnPos(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultKeyCoordX()I
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mLeftKeys:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mColumnWidth:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getX(II)I
    .locals 3
    .parameter "n"
    .parameter "row"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getColumnPos(I)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mColumnWidth:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getDefaultKeyCoordX()I

    move-result v2

    add-int v0, v1, v2

    .line 229
    .local v0, x:I
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->isTopRow(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopRowAdjustment:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mColumnWidth:I

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 232
    .end local v0           #x:I
    :cond_0
    return v0
.end method

.method public getY(I)I
    .locals 2
    .parameter "row"

    .prologue
    .line 236
    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDefaultRowHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public markAsEdgeKey(Lcom/android/inputmethod/keyboard/Key;I)V
    .locals 1
    .parameter "key"
    .parameter "row"

    .prologue
    .line 240
    if-nez p2, :cond_0

    .line 241
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 242
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->isTopRow(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsBottomEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 244
    :cond_1
    return-void
.end method

.method public setParameters(IIIIIIZI)V
    .locals 13
    .parameter "numKeys"
    .parameter "maxColumns"
    .parameter "keyWidth"
    .parameter "rowHeight"
    .parameter "coordXInParent"
    .parameter "parentKeyboardWidth"
    .parameter "isFixedColumnOrder"
    .parameter "dividerWidth"

    .prologue
    .line 73
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mIsFixedOrder:Z

    .line 74
    div-int v10, p6, p3

    if-ge v10, p2, :cond_0

    .line 75
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Keyboard is too small to hold more keys keyboard: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 79
    :cond_0
    move/from16 v0, p3

    iput v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDefaultKeyWidth:I

    .line 80
    move/from16 v0, p4

    iput v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDefaultRowHeight:I

    .line 82
    add-int v10, p1, p2

    add-int/lit8 v10, v10, -0x1

    div-int v7, v10, p2

    .line 83
    .local v7, numRows:I
    iput v7, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumRows:I

    .line 84
    iget-boolean v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mIsFixedOrder:Z

    if-eqz v10, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 86
    .local v4, numColumns:I
    :goto_0
    iput v4, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumColumns:I

    .line 87
    rem-int v9, p1, v4

    .line 88
    .local v9, topKeys:I
    if-nez v9, :cond_1

    move v9, v4

    .end local v9           #topKeys:I
    :cond_1
    iput v9, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopKeys:I

    .line 90
    add-int/lit8 v10, v4, -0x1

    div-int/lit8 v5, v10, 0x2

    .line 91
    .local v5, numLeftKeys:I
    sub-int v6, v4, v5

    .line 93
    .local v6, numRightKeys:I
    div-int v2, p5, p3

    .line 94
    .local v2, maxLeftKeys:I
    sub-int v10, p6, p5

    div-int v3, v10, p3

    .line 96
    .local v3, maxRightKeys:I
    if-le v5, v2, :cond_5

    .line 97
    move v1, v2

    .line 98
    .local v1, leftKeys:I
    sub-int v8, v4, v1

    .line 108
    .local v8, rightKeys:I
    :goto_1
    if-ne v2, v1, :cond_2

    if-lez v1, :cond_2

    .line 109
    add-int/lit8 v1, v1, -0x1

    .line 110
    add-int/lit8 v8, v8, 0x1

    .line 114
    :cond_2
    add-int/lit8 v10, v8, -0x1

    if-ne v3, v10, :cond_3

    const/4 v10, 0x1

    if-le v8, v10, :cond_3

    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 116
    add-int/lit8 v8, v8, -0x1

    .line 118
    :cond_3
    iput v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mLeftKeys:I

    .line 119
    iput v8, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mRightKeys:I

    .line 122
    iget-boolean v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mIsFixedOrder:Z

    if-eqz v10, :cond_7

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getFixedOrderTopRowAdjustment()I

    move-result v10

    :goto_2
    iput v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopRowAdjustment:I

    .line 124
    move/from16 v0, p8

    iput v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDividerWidth:I

    .line 125
    iget v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDefaultKeyWidth:I

    iget v11, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDividerWidth:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mColumnWidth:I

    .line 126
    iget v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumColumns:I

    iget v11, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mColumnWidth:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDividerWidth:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mOccupiedWidth:I

    iput v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mBaseWidth:I

    .line 128
    iget v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumRows:I

    iget v11, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDefaultRowHeight:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mVerticalGap:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mTopPadding:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mBottomPadding:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mOccupiedHeight:I

    iput v10, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mBaseHeight:I

    .line 130
    return-void

    .line 84
    .end local v1           #leftKeys:I
    .end local v2           #maxLeftKeys:I
    .end local v3           #maxRightKeys:I
    .end local v4           #numColumns:I
    .end local v5           #numLeftKeys:I
    .end local v6           #numRightKeys:I
    .end local v8           #rightKeys:I
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getOptimizedColumns(II)I

    move-result v4

    goto :goto_0

    .line 99
    .restart local v2       #maxLeftKeys:I
    .restart local v3       #maxRightKeys:I
    .restart local v4       #numColumns:I
    .restart local v5       #numLeftKeys:I
    .restart local v6       #numRightKeys:I
    :cond_5
    add-int/lit8 v10, v3, 0x1

    if-le v6, v10, :cond_6

    .line 100
    add-int/lit8 v8, v3, 0x1

    .line 101
    .restart local v8       #rightKeys:I
    sub-int v1, v4, v8

    .restart local v1       #leftKeys:I
    goto :goto_1

    .line 103
    .end local v1           #leftKeys:I
    .end local v8           #rightKeys:I
    :cond_6
    move v1, v5

    .line 104
    .restart local v1       #leftKeys:I
    move v8, v6

    .restart local v8       #rightKeys:I
    goto :goto_1

    .line 122
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getAutoOrderTopRowAdjustment()I

    move-result v10

    goto :goto_2
.end method
