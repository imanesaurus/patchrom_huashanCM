.class final Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;
.super Ljava/lang/Object;
.source "GesturePreviewTrail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;,
        Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;
    }
.end annotation


# instance fields
.field private mCurrentStrokeId:I

.field private mCurrentTimeBase:J

.field private final mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

.field private final mPath:Landroid/graphics/Path;

.field private mTrailStartIndex:I

.field private final mWorkingSet:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;

.field private final mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

.field private final mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 33
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 34
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mCurrentStrokeId:I

    .line 211
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mWorkingSet:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;

    .line 212
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method private static calculatePathPoints(Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;)Z
    .locals 21
    .parameter "w"

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    move/from16 v17, v0

    sub-float v10, v16, v17

    .line 154
    .local v10, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    move/from16 v17, v0

    sub-float v11, v16, v17

    .line 156
    .local v11, dy:F
    float-to-double v0, v10

    move-wide/from16 v16, v0

    float-to-double v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    .line 157
    .local v12, l:D
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v16

    if-nez v16, :cond_0

    .line 158
    const/16 v16, 0x0

    .line 190
    :goto_0
    return v16

    .line 161
    :cond_0
    float-to-double v0, v11

    move-wide/from16 v16, v0

    float-to-double v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 163
    .local v2, a:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r2:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r1:F

    move/from16 v17, v0

    sub-float v9, v16, v17

    .line 165
    .local v9, dr:F
    float-to-double v0, v9

    move-wide/from16 v16, v0

    div-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 167
    .local v5, ar:F
    const v16, 0x3fc90fdb

    add-float v16, v16, v5

    sub-float v3, v2, v16

    .line 169
    .local v3, aa:F
    const v16, 0x3fc90fdb

    add-float v16, v16, v5

    add-float v4, v2, v16

    .line 170
    .local v4, ab:F
    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v7, v0

    .line 171
    .local v7, cosa:F
    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v14, v0

    .line 172
    .local v14, sina:F
    float-to-double v0, v4

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v8, v0

    .line 173
    .local v8, cosb:F
    float-to-double v0, v4

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    .line 174
    .local v15, sinb:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r1:F

    move/from16 v17, v0

    mul-float v17, v17, v7

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1ax:F

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r1:F

    move/from16 v17, v0

    mul-float v17, v17, v14

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1ay:F

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r1:F

    move/from16 v17, v0

    mul-float v17, v17, v8

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1bx:F

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r1:F

    move/from16 v17, v0

    mul-float v17, v17, v15

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1by:F

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r2:F

    move/from16 v17, v0

    mul-float v17, v17, v7

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2ax:F

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r2:F

    move/from16 v17, v0

    mul-float v17, v17, v14

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2ay:F

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r2:F

    move/from16 v17, v0

    mul-float v17, v17, v8

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2bx:F

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r2:F

    move/from16 v17, v0

    mul-float v17, v17, v15

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2by:F

    .line 182
    const v16, 0x42652ee1

    mul-float v16, v16, v3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->aa:F

    .line 183
    const/high16 v16, 0x4000

    mul-float v16, v16, v5

    const v17, 0x42652ee1

    mul-float v6, v16, v17

    .line 184
    .local v6, ar2degree:F
    const/high16 v16, -0x3ccc

    add-float v16, v16, v6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->a1:F

    .line 185
    const/high16 v16, 0x4334

    add-float v16, v16, v6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->a2:F

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->arc1:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/RectF;->set(FFFF)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->arc1:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r1:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r1:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/RectF;->inset(FF)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->arc2:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2x:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2y:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2y:F

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/RectF;->set(FFFF)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->arc2:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r2:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r2:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/RectF;->inset(FF)V

    .line 190
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method private static createPath(Landroid/graphics/Path;Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;)V
    .locals 3
    .parameter "path"
    .parameter "w"

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    .line 196
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 197
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->arc1:Landroid/graphics/RectF;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->aa:F

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->a1:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 199
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2x:F

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2y:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 200
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->arc2:Landroid/graphics/RectF;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->aa:F

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->a2:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 202
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1ax:F

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1ay:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 203
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 204
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1bx:F

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1by:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 205
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2bx:F

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2by:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 206
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2x:F

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2y:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2ax:F

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2ay:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    .line 209
    return-void
.end method

.method private static getAlpha(ILcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;)I
    .locals 3
    .parameter "elapsedTime"
    .parameter "params"

    .prologue
    .line 106
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mFadeoutStartDelay:I

    if-ge p0, v1, :cond_0

    .line 107
    const/16 v1, 0xff

    .line 112
    :goto_0
    return v1

    .line 109
    :cond_0
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mFadeoutStartDelay:I

    sub-int v1, p0, v1

    mul-int/lit16 v1, v1, 0xff

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mFadeoutDuration:I

    div-int v0, v1, v2

    .line 112
    .local v0, decreasingAlpha:I
    rsub-int v1, v0, 0xff

    goto :goto_0
.end method

.method private static getWidth(ILcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;)F
    .locals 3
    .parameter "elapsedTime"
    .parameter "params"

    .prologue
    .line 116
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mTrailLingerDuration:I

    sub-int/2addr v0, p0

    int-to-float v0, v0

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mTrailStartWidth:F

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mTrailEndWidth:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mTrailLingerDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private static getXCoordValue(I)I
    .locals 1
    .parameter "xCoordOrMark"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->isDownEventXCoord(I)Z

    move-result v0

    if-eqz v0, :cond_0

    rsub-int/lit8 p0, p0, -0x80

    .end local p0
    :cond_0
    return p0
.end method

.method private static isDownEventXCoord(I)Z
    .locals 1
    .parameter "xCoordOrMark"

    .prologue
    .line 75
    const/16 v0, -0x80

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static markAsDownEvent(I)I
    .locals 1
    .parameter "xCoord"

    .prologue
    .line 71
    rsub-int/lit8 v0, p0, -0x80

    return v0
.end method


# virtual methods
.method public addStroke(Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;J)V
    .locals 10
    .parameter "stroke"
    .parameter "downTime"

    .prologue
    .line 84
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v5

    .line 85
    .local v5, trailSize:I
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v9, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {p1, v7, v8, v9}, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->appendPreviewStroke(Lcom/android/inputmethod/latin/ResizableIntArray;Lcom/android/inputmethod/latin/ResizableIntArray;Lcom/android/inputmethod/latin/ResizableIntArray;)V

    .line 86
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/ResizableIntArray;->getPrimitiveArray()[I

    move-result-object v2

    .line 90
    .local v2, eventTimes:[I
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->getGestureStrokeId()I

    move-result v4

    .line 91
    .local v4, strokeId:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mCurrentStrokeId:I

    if-eq v4, v7, :cond_0

    .line 92
    iget-wide v7, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mCurrentTimeBase:J

    sub-long v7, p2, v7

    long-to-int v1, v7

    .line 93
    .local v1, elapsedTime:I
    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mTrailStartIndex:I

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 95
    aget v7, v2, v3

    sub-int/2addr v7, v1

    aput v7, v2, v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/ResizableIntArray;->getPrimitiveArray()[I

    move-result-object v6

    .line 98
    .local v6, xCoords:[I
    move v0, v5

    .line 99
    .local v0, downIndex:I
    aget v7, v6, v0

    invoke-static {v7}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->markAsDownEvent(I)I

    move-result v7

    aput v7, v6, v0

    .line 100
    aget v7, v2, v0

    int-to-long v7, v7

    sub-long v7, p2, v7

    iput-wide v7, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mCurrentTimeBase:J

    .line 101
    iput v4, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mCurrentStrokeId:I

    goto :goto_0
.end method

.method public drawGestureTrail(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;)Z
    .locals 25
    .parameter "canvas"
    .parameter "paint"
    .parameter "outBoundsRect"
    .parameter "params"

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v16

    .line 225
    .local v16, trailSize:I
    if-nez v16, :cond_0

    .line 226
    const/16 v21, 0x0

    .line 295
    :goto_0
    return v21

    .line 229
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/inputmethod/latin/ResizableIntArray;->getPrimitiveArray()[I

    move-result-object v7

    .line 230
    .local v7, eventTimes:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/inputmethod/latin/ResizableIntArray;->getPrimitiveArray()[I

    move-result-object v19

    .line 231
    .local v19, xCoords:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/inputmethod/latin/ResizableIntArray;->getPrimitiveArray()[I

    move-result-object v20

    .line 232
    .local v20, yCoords:[I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mCurrentTimeBase:J

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v14, v0

    .line 234
    .local v14, sinceDown:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mTrailStartIndex:I

    .local v15, startIndex:I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 235
    aget v21, v7, v15

    sub-int v6, v14, v21

    .line 237
    .local v6, elapsedTime:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mTrailLingerDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_4

    .line 241
    .end local v6           #elapsedTime:I
    :cond_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mTrailStartIndex:I

    .line 243
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 244
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mTrailColor:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mPath:Landroid/graphics/Path;

    .line 247
    .local v13, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mWorkingSet:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;

    move-object/from16 v17, v0

    .line 248
    .local v17, w:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;
    aget v21, v19, v15

    invoke-static/range {v21 .. v21}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->getXCoordValue(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    .line 249
    aget v21, v20, v15

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    .line 250
    aget v21, v7, v15

    sub-int v10, v14, v21

    .line 251
    .local v10, lastTime:I
    move-object/from16 v0, p4

    invoke-static {v10, v0}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->getWidth(ILcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;)F

    move-result v11

    .line 252
    .local v11, maxWidth:F
    const/high16 v21, 0x4000

    div-float v21, v11, v21

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r1:F

    .line 254
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 255
    add-int/lit8 v8, v15, 0x1

    .local v8, i:I
    :goto_2
    add-int/lit8 v21, v16, -0x1

    move/from16 v0, v21

    if-ge v8, v0, :cond_5

    .line 256
    aget v21, v7, v8

    sub-int v6, v14, v21

    .line 257
    .restart local v6       #elapsedTime:I
    aget v21, v19, v8

    invoke-static/range {v21 .. v21}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->getXCoordValue(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2x:F

    .line 258
    aget v21, v20, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2y:F

    .line 260
    aget v21, v19, v8

    invoke-static/range {v21 .. v21}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->isDownEventXCoord(I)Z

    move-result v21

    if-nez v21, :cond_3

    .line 261
    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->getAlpha(ILcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;)I

    move-result v5

    .line 262
    .local v5, alpha:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 263
    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->getWidth(ILcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;)F

    move-result v18

    .line 264
    .local v18, width:F
    const/high16 v21, 0x4000

    div-float v21, v18, v21

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r2:F

    .line 265
    invoke-static/range {v17 .. v17}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->calculatePathPoints(Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 266
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->createPath(Landroid/graphics/Path;Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;)V

    .line 267
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 268
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->union(II)V

    .line 271
    :cond_2
    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 273
    .end local v5           #alpha:I
    .end local v18           #width:F
    :cond_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2x:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1x:F

    .line 274
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p2y:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->p1y:F

    .line 275
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r2:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->r1:F

    .line 276
    move v10, v6

    .line 255
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 234
    .end local v8           #i:I
    .end local v10           #lastTime:I
    .end local v11           #maxWidth:F
    .end local v13           #path:Landroid/graphics/Path;
    .end local v17           #w:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 279
    .end local v6           #elapsedTime:I
    .restart local v8       #i:I
    .restart local v10       #lastTime:I
    .restart local v11       #maxWidth:F
    .restart local v13       #path:Landroid/graphics/Path;
    .restart local v17       #w:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;
    :cond_5
    float-to-int v0, v11

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    neg-int v9, v0

    .line 280
    .local v9, inset:I
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 283
    .end local v8           #i:I
    .end local v9           #inset:I
    .end local v10           #lastTime:I
    .end local v11           #maxWidth:F
    .end local v13           #path:Landroid/graphics/Path;
    .end local v17           #w:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;
    :cond_6
    sub-int v12, v16, v15

    .line 284
    .local v12, newSize:I
    if-ge v12, v15, :cond_8

    .line 285
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mTrailStartIndex:I

    .line 286
    if-lez v12, :cond_7

    .line 287
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v7, v15, v7, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v15, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v15, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/inputmethod/latin/ResizableIntArray;->setLength(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/inputmethod/latin/ResizableIntArray;->setLength(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/inputmethod/latin/ResizableIntArray;->setLength(I)V

    .line 295
    :cond_8
    if-lez v12, :cond_9

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_0
.end method
