.class public final Lcom/android/inputmethod/keyboard/ProximityInfo;
.super Ljava/lang/Object;
.source "ProximityInfo.java"


# static fields
.field private static final EMPTY_KEY_ARRAY:[Lcom/android/inputmethod/keyboard/Key;

.field private static SEARCH_DISTANCE:F


# instance fields
.field private final mCellHeight:I

.field private final mCellWidth:I

.field private final mGridHeight:I

.field private final mGridNeighbors:[[Lcom/android/inputmethod/keyboard/Key;

.field private final mGridSize:I

.field private final mGridWidth:I

.field private final mKeyboardHeight:I

.field private final mKeyboardMinWidth:I

.field private final mKeys:[Lcom/android/inputmethod/keyboard/Key;

.field private final mLocaleStr:Ljava/lang/String;

.field private final mMostCommonKeyHeight:I

.field private final mMostCommonKeyWidth:I

.field private mNativeProximityInfo:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x3f99999a

    sput v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->SEARCH_DISTANCE:F

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/inputmethod/keyboard/Key;

    sput-object v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->EMPTY_KEY_ARRAY:[Lcom/android/inputmethod/keyboard/Key;

    .line 95
    invoke-static {}, Lcom/android/inputmethod/latin/JniUtils;->loadNativeLibrary()V

    .line 96
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIIII[Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;)V
    .locals 2
    .parameter "localeStr"
    .parameter "gridWidth"
    .parameter "gridHeight"
    .parameter "minWidth"
    .parameter "height"
    .parameter "mostCommonKeyWidth"
    .parameter "mostCommonKeyHeight"
    .parameter "keys"
    .parameter "touchPositionCorrection"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mLocaleStr:Ljava/lang/String;

    .line 60
    :goto_0
    iput p2, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    .line 61
    iput p3, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    .line 62
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    .line 63
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    .line 64
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    add-int/2addr v0, p5

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    .line 65
    iput p4, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    .line 66
    iput p5, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    .line 67
    iput p7, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyHeight:I

    .line 68
    iput p6, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyWidth:I

    .line 69
    iput-object p8, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 70
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    new-array v0, v0, [[Lcom/android/inputmethod/keyboard/Key;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/android/inputmethod/keyboard/Key;

    .line 71
    if-eqz p4, :cond_0

    if-nez p5, :cond_2

    .line 77
    :cond_0
    :goto_1
    return-void

    .line 58
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mLocaleStr:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/ProximityInfo;->computeNearestNeighbors()V

    .line 76
    invoke-direct {p0, p9}, Lcom/android/inputmethod/keyboard/ProximityInfo;->createNativeProximityInfo(Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    goto :goto_1
.end method

.method private computeNearestNeighbors()V
    .locals 21

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyWidth:I

    .line 193
    .local v6, defaultWidth:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 194
    .local v11, keys:[Lcom/android/inputmethod/keyboard/Key;
    int-to-float v0, v6

    move/from16 v18, v0

    sget v19, Lcom/android/inputmethod/keyboard/ProximityInfo;->SEARCH_DISTANCE:F

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v15, v0

    .line 195
    .local v15, thresholdBase:I
    mul-int v14, v15, v15

    .line 197
    .local v14, threshold:I
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v13, v0, [Lcom/android/inputmethod/keyboard/Key;

    .line 198
    .local v13, neighborKeys:[Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    move/from16 v19, v0

    mul-int v8, v18, v19

    .line 199
    .local v8, gridWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    move/from16 v19, v0

    mul-int v7, v18, v19

    .line 200
    .local v7, gridHeight:I
    const/16 v16, 0x0

    .local v16, x:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v8, :cond_3

    .line 201
    const/16 v17, 0x0

    .local v17, y:I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v7, :cond_2

    .line 202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v2, v16, v18

    .line 203
    .local v2, centerX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v3, v17, v18

    .line 204
    .local v3, centerY:I
    const/4 v4, 0x0

    .line 205
    .local v4, count:I
    move-object v1, v11

    .local v1, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v12, v1

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v5, v4

    .end local v4           #count:I
    .local v5, count:I
    :goto_2
    if-ge v9, v12, :cond_1

    aget-object v10, v1, v9

    .line 206
    .local v10, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v10}, Lcom/android/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v18

    if-eqz v18, :cond_0

    move v4, v5

    .line 205
    .end local v5           #count:I
    .restart local v4       #count:I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4           #count:I
    .restart local v5       #count:I
    goto :goto_2

    .line 207
    :cond_0
    invoke-virtual {v10, v2, v3}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v14, :cond_4

    .line 208
    add-int/lit8 v4, v5, 0x1

    .end local v5           #count:I
    .restart local v4       #count:I
    aput-object v10, v13, v5

    goto :goto_3

    .line 211
    .end local v4           #count:I
    .end local v10           #key:Lcom/android/inputmethod/keyboard/Key;
    .restart local v5       #count:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    move/from16 v18, v0

    div-int v18, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    move/from16 v20, v0

    mul-int v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    move/from16 v20, v0

    div-int v20, v16, v20

    add-int v20, v20, v18

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v0, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/android/inputmethod/keyboard/Key;

    aput-object v18, v19, v20

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    goto :goto_1

    .line 200
    .end local v1           #arr$:[Lcom/android/inputmethod/keyboard/Key;
    .end local v2           #centerX:I
    .end local v3           #centerY:I
    .end local v5           #count:I
    .end local v9           #i$:I
    .end local v12           #len$:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    move/from16 v18, v0

    add-int v16, v16, v18

    goto :goto_0

    .line 215
    .end local v17           #y:I
    :cond_3
    return-void

    .restart local v1       #arr$:[Lcom/android/inputmethod/keyboard/Key;
    .restart local v2       #centerX:I
    .restart local v3       #centerY:I
    .restart local v5       #count:I
    .restart local v9       #i$:I
    .restart local v10       #key:Lcom/android/inputmethod/keyboard/Key;
    .restart local v12       #len$:I
    .restart local v17       #y:I
    :cond_4
    move v4, v5

    .end local v5           #count:I
    .restart local v4       #count:I
    goto :goto_3
.end method

.method public static createDummyProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 80
    new-instance v0, Lcom/android/inputmethod/keyboard/ProximityInfo;

    const-string v1, ""

    sget-object v8, Lcom/android/inputmethod/keyboard/ProximityInfo;->EMPTY_KEY_ARRAY:[Lcom/android/inputmethod/keyboard/Key;

    const/4 v9, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v9}, Lcom/android/inputmethod/keyboard/ProximityInfo;-><init>(Ljava/lang/String;IIIIII[Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;)V

    return-object v0
.end method

.method private final createNativeProximityInfo(Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;)J
    .locals 32
    .parameter "touchPositionCorrection"

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v21, v0

    .line 111
    .local v21, gridNeighborKeys:[[Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    .line 112
    .local v5, keyboardWidth:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    .line 113
    .local v6, keyboardHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v29, v0

    .line 114
    .local v29, keys:[Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    mul-int/lit8 v2, v2, 0x10

    new-array v10, v2, [I

    .line 115
    .local v10, proximityCharsArray:[I
    const/4 v2, -0x1

    invoke-static {v10, v2}, Ljava/util/Arrays;->fill([II)V

    .line 116
    const/16 v26, 0x0

    .local v26, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    move/from16 v0, v26

    if-ge v0, v2, :cond_1

    .line 117
    aget-object v2, v21, v26

    array-length v0, v2

    move/from16 v30, v0

    .line 118
    .local v30, proximityCharsLength:I
    const/16 v27, 0x0

    .local v27, j:I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 119
    mul-int/lit8 v2, v26, 0x10

    add-int v2, v2, v27

    aget-object v3, v21, v26

    aget-object v3, v3, v27

    iget v3, v3, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    aput v3, v10, v2

    .line 118
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 123
    .end local v27           #j:I
    .end local v30           #proximityCharsLength:I
    :cond_1
    move-object/from16 v0, v29

    array-length v11, v0

    .line 124
    .local v11, keyCount:I
    new-array v12, v11, [I

    .line 125
    .local v12, keyXCoordinates:[I
    new-array v13, v11, [I

    .line 126
    .local v13, keyYCoordinates:[I
    new-array v14, v11, [I

    .line 127
    .local v14, keyWidths:[I
    new-array v15, v11, [I

    .line 128
    .local v15, keyHeights:[I
    new-array v0, v11, [I

    move-object/from16 v16, v0

    .line 133
    .local v16, keyCharCodes:[I
    const/16 v26, 0x0

    :goto_2
    move/from16 v0, v26

    if-ge v0, v11, :cond_2

    .line 134
    aget-object v28, v29, v26

    .line 135
    .local v28, key:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    aput v2, v12, v26

    .line 136
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    aput v2, v13, v26

    .line 137
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    aput v2, v14, v26

    .line 138
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    aput v2, v15, v26

    .line 139
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    aput v2, v16, v26

    .line 133
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 142
    .end local v28           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    new-array v0, v11, [F

    move-object/from16 v17, v0

    .line 144
    .local v17, sweetSpotCenterXs:[F
    new-array v0, v11, [F

    move-object/from16 v18, v0

    .line 145
    .local v18, sweetSpotCenterYs:[F
    new-array v0, v11, [F

    move-object/from16 v19, v0

    .line 146
    .local v19, sweetSpotRadii:[F
    const v2, 0x3e19999a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyWidth:I

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyHeight:I

    int-to-double v7, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v20, v2, v3

    .line 148
    .local v20, defaultRadius:F
    const/16 v26, 0x0

    :goto_3
    move/from16 v0, v26

    if-ge v0, v11, :cond_5

    .line 149
    aget-object v28, v29, v26

    .line 150
    .restart local v28       #key:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    .line 151
    .local v22, hitBox:Landroid/graphics/Rect;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    aput v2, v17, v26

    .line 152
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    aput v2, v18, v26

    .line 153
    aput v20, v19, v26

    .line 154
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyHeight:I

    div-int v31, v2, v3

    .line 155
    .local v31, row:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->getRows()I

    move-result v2

    move/from16 v0, v31

    if-ge v0, v2, :cond_3

    .line 156
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v25

    .line 157
    .local v25, hitBoxWidth:I
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    .line 158
    .local v24, hitBoxHeight:I
    move/from16 v0, v25

    int-to-double v2, v0

    move/from16 v0, v24

    int-to-double v7, v0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v23, v0

    .line 159
    .local v23, hitBoxDiagonal:F
    aget v2, v17, v26

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->getX(I)F

    move-result v3

    move/from16 v0, v25

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v17, v26

    .line 160
    aget v2, v18, v26

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->getY(I)F

    move-result v3

    move/from16 v0, v24

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v18, v26

    .line 161
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->getRadius(I)F

    move-result v2

    mul-float v2, v2, v23

    aput v2, v19, v26

    .line 148
    .end local v23           #hitBoxDiagonal:F
    .end local v24           #hitBoxHeight:I
    .end local v25           #hitBoxWidth:I
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 165
    .end local v17           #sweetSpotCenterXs:[F
    .end local v18           #sweetSpotCenterYs:[F
    .end local v19           #sweetSpotRadii:[F
    .end local v20           #defaultRadius:F
    .end local v22           #hitBox:Landroid/graphics/Rect;
    .end local v28           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v31           #row:I
    :cond_4
    const/16 v19, 0x0

    .restart local v19       #sweetSpotRadii:[F
    move-object/from16 v18, v19

    .local v18, sweetSpotCenterYs:Ljava/lang/Object;
    move-object/from16 v17, v19

    .line 168
    .end local v18           #sweetSpotCenterYs:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mLocaleStr:Ljava/lang/String;

    const/16 v4, 0x10

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyWidth:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v19}, Lcom/android/inputmethod/keyboard/ProximityInfo;->setProximityInfoNative(Ljava/lang/String;IIIIII[II[I[I[I[I[I[F[F[F)J

    move-result-wide v2

    return-wide v2
.end method

.method public static createSpellCheckerProximityInfo([IIII)Lcom/android/inputmethod/keyboard/ProximityInfo;
    .locals 18
    .parameter "proximity"
    .parameter "rowSize"
    .parameter "gridWidth"
    .parameter "gridHeight"

    .prologue
    .line 85
    invoke-static {}, Lcom/android/inputmethod/keyboard/ProximityInfo;->createDummyProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v0

    .line 86
    .local v0, spellCheckerProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;
    const-string v1, ""

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p0

    invoke-direct/range {v0 .. v17}, Lcom/android/inputmethod/keyboard/ProximityInfo;->setProximityInfoNative(Ljava/lang/String;IIIIII[II[I[I[I[I[I[F[F[F)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    .line 90
    return-object v0
.end method

.method private native releaseProximityInfoNative(J)V
.end method

.method private native setProximityInfoNative(Ljava/lang/String;IIIIII[II[I[I[I[I[I[F[F[F)J
.end method


# virtual methods
.method public fillArrayWithNearestKeyCodes(III[I)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "primaryKeyCode"
    .parameter "dest"

    .prologue
    const/16 v10, 0x20

    .line 219
    array-length v2, p4

    .line 220
    .local v2, destLength:I
    const/4 v9, 0x1

    if-ge v2, v9, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const/4 v4, 0x0

    .line 224
    .local v4, index:I
    if-le p3, v10, :cond_2

    .line 225
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aput p3, p4, v4

    move v4, v5

    .line 227
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/keyboard/ProximityInfo;->getNearestKeys(II)[Lcom/android/inputmethod/keyboard/Key;

    move-result-object v8

    .line 228
    .local v8, nearestKeys:[Lcom/android/inputmethod/keyboard/Key;
    move-object v0, v8

    .local v0, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    :goto_1
    if-ge v3, v7, :cond_3

    aget-object v6, v0, v3

    .line 229
    .local v6, key:Lcom/android/inputmethod/keyboard/Key;
    if-lt v5, v2, :cond_4

    .line 238
    .end local v6           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_3
    if-ge v5, v2, :cond_0

    .line 239
    const/4 v9, -0x1

    aput v9, p4, v5

    goto :goto_0

    .line 232
    .restart local v6       #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_4
    iget v1, v6, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 233
    .local v1, code:I
    if-le v1, v10, :cond_3

    .line 236
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aput v1, p4, v5

    .line 228
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 182
    :try_start_0
    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 183
    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/ProximityInfo;->releaseProximityInfoNative(J)V

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 189
    return-void

    .line 187
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getNativeProximityInfo()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    return-wide v0
.end method

.method public getNearestKeys(II)[Lcom/android/inputmethod/keyboard/Key;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/android/inputmethod/keyboard/Key;

    if-nez v1, :cond_0

    .line 245
    sget-object v1, Lcom/android/inputmethod/keyboard/ProximityInfo;->EMPTY_KEY_ARRAY:[Lcom/android/inputmethod/keyboard/Key;

    .line 253
    :goto_0
    return-object v1

    .line 247
    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    if-ge p2, v1, :cond_1

    .line 248
    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    div-int v1, p2, v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 249
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    if-ge v0, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/android/inputmethod/keyboard/Key;

    aget-object v1, v1, v0

    goto :goto_0

    .line 253
    .end local v0           #index:I
    :cond_1
    sget-object v1, Lcom/android/inputmethod/keyboard/ProximityInfo;->EMPTY_KEY_ARRAY:[Lcom/android/inputmethod/keyboard/Key;

    goto :goto_0
.end method
