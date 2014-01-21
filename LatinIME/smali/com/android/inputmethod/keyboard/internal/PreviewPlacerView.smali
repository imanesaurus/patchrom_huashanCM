.class public final Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;
.super Landroid/widget/RelativeLayout;
.source "PreviewPlacerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;
    }
.end annotation


# static fields
.field private static final TEXT_HEIGHT_REFERENCE_CHAR:[C


# instance fields
.field private final mDrawingHandler:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;

.field private mDrawsGestureFloatingPreviewText:Z

.field private mDrawsGesturePreviewTrail:Z

.field private final mGestureFloatingPreviewColor:I

.field private final mGestureFloatingPreviewHorizontalPadding:F

.field private final mGestureFloatingPreviewRectangle:Landroid/graphics/RectF;

.field private final mGestureFloatingPreviewRoundRadius:F

.field private mGestureFloatingPreviewText:Ljava/lang/String;

.field private final mGestureFloatingPreviewTextColor:I

.field private final mGestureFloatingPreviewTextHeight:I

.field private final mGestureFloatingPreviewTextOffset:I

.field private final mGestureFloatingPreviewVerticalPadding:F

.field private final mGesturePaint:Landroid/graphics/Paint;

.field private final mGesturePreviewTrailBoundsRect:Landroid/graphics/Rect;

.field private final mGesturePreviewTrailParams:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;

.field private final mGesturePreviewTrails:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardViewOriginX:I

.field private mKeyboardViewOriginY:I

.field private mLastPointerX:I

.field private mLastPointerY:I

.field private mOffscreenBuffer:Landroid/graphics/Bitmap;

.field private final mOffscreenCanvas:Landroid/graphics/Canvas;

.field private final mOffscreenDirtyRect:Landroid/graphics/Rect;

.field private mOffscreenHeight:I

.field private mOffscreenOffsetY:I

.field private mOffscreenWidth:I

.field private final mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->TEXT_HEIGHT_REFERENCE_CHAR:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 125
    const v0, 0x7f010001

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrails:Landroid/util/SparseArray;

    .line 66
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    iput-object v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    .line 67
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenDirtyRect:Landroid/graphics/Rect;

    .line 68
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrailBoundsRect:Landroid/graphics/Rect;

    .line 74
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewRectangle:Landroid/graphics/RectF;

    .line 130
    invoke-virtual {p0, v9}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->setWillNotDraw(Z)V

    .line 132
    sget-object v7, Lcom/android/inputmethod/latin/R$styleable;->KeyboardView:[I

    const v8, 0x7f0f0004

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 134
    .local v3, keyboardViewAttr:Landroid/content/res/TypedArray;
    const/16 v7, 0x10

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 136
    .local v1, gestureFloatingPreviewTextSize:I
    const/16 v7, 0x11

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewTextColor:I

    .line 138
    const/16 v7, 0x12

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewTextOffset:I

    .line 140
    const/16 v7, 0x13

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewColor:I

    .line 142
    const/16 v7, 0x14

    invoke-virtual {v3, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewHorizontalPadding:F

    .line 144
    const/16 v7, 0x15

    invoke-virtual {v3, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewVerticalPadding:F

    .line 146
    const/16 v7, 0x16

    invoke-virtual {v3, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewRoundRadius:F

    .line 148
    const/16 v7, 0x17

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 150
    .local v0, gestureFloatingPreviewTextLingerTimeout:I
    new-instance v7, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;

    invoke-direct {v7, v3}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;-><init>(Landroid/content/res/TypedArray;)V

    iput-object v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrailParams:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;

    .line 151
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    new-instance v7, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;

    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrailParams:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;

    invoke-direct {v7, p0, v8, v0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;-><init>(Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;I)V

    iput-object v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;

    .line 156
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 157
    .local v2, gesturePaint:Landroid/graphics/Paint;
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 159
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePaint:Landroid/graphics/Paint;

    .line 161
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 162
    .local v5, textPaint:Landroid/graphics/Paint;
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 164
    int-to-float v7, v1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 165
    iput-object v5, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mTextPaint:Landroid/graphics/Paint;

    .line 166
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 167
    .local v6, textRect:Landroid/graphics/Rect;
    sget-object v7, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->TEXT_HEIGHT_REFERENCE_CHAR:[C

    invoke-virtual {v5, v7, v9, v11, v6}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 168
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewTextHeight:I

    .line 170
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 171
    .local v4, layerPaint:Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 172
    const/4 v7, 0x2

    invoke-virtual {p0, v7, v4}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 173
    return-void
.end method

.method private static clipRect(Landroid/graphics/Rect;IIII)V
    .locals 4
    .parameter "out"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 302
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 304
    return-void
.end method

.method private drawGestureFloatingPreviewText(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 18
    .parameter "canvas"
    .parameter "gestureFloatingPreviewText"

    .prologue
    .line 318
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 347
    :goto_0
    return-void

    .line 322
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mTextPaint:Landroid/graphics/Paint;

    .line 323
    .local v4, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewRectangle:Landroid/graphics/RectF;

    .line 328
    .local v9, rectangle:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewTextHeight:I

    .line 329
    .local v11, textHeight:I
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 330
    .local v12, textWidth:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewHorizontalPadding:F

    .line 331
    .local v3, hPad:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewVerticalPadding:F

    .line 332
    .local v15, vPad:F
    const/high16 v16, 0x4000

    mul-float v16, v16, v3

    add-float v6, v12, v16

    .line 333
    .local v6, rectWidth:F
    int-to-float v0, v11

    move/from16 v16, v0

    const/high16 v17, 0x4000

    mul-float v17, v17, v15

    add-float v5, v16, v17

    .line 334
    .local v5, rectHeight:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 335
    .local v2, canvasWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mLastPointerX:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v17, v6, v17

    sub-float v16, v16, v17

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    int-to-float v0, v2

    move/from16 v17, v0

    sub-float v17, v17, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 337
    .local v7, rectX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mLastPointerY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewTextOffset:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v8, v16, v5

    .line 338
    .local v8, rectY:F
    add-float v16, v7, v6

    add-float v17, v8, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v7, v8, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 339
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewRoundRadius:F

    .line 340
    .local v10, round:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewColor:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v10, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewTextColor:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    add-float v16, v7, v3

    const/high16 v17, 0x4000

    div-float v17, v12, v17

    add-float v13, v16, v17

    .line 345
    .local v13, textX:F
    add-float v16, v8, v15

    int-to-float v0, v11

    move/from16 v17, v0

    add-float v14, v16, v17

    .line 346
    .local v14, textY:F
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13, v14, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawGestureTrails(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;)Z
    .locals 9
    .parameter "offscreenCanvas"
    .parameter "paint"
    .parameter "dirtyRect"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 270
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 271
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 275
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 278
    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenOffsetY:I

    int-to-float v4, v4

    invoke-virtual {p1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, needsUpdatingGesturePreviewTrail:Z
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrails:Landroid/util/SparseArray;

    monitor-enter v5

    .line 282
    :try_start_0
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrails:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 283
    .local v3, trailsCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 284
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrails:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;

    .line 285
    .local v2, trail:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrailBoundsRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrailParams:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;

    invoke-virtual {v2, p1, p2, v4, v6}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->drawGestureTrail(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 289
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrailBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v2           #trail:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenOffsetY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 295
    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenOffsetY:I

    invoke-virtual {p3, v7, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 296
    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenWidth:I

    iget v5, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenHeight:I

    invoke-static {p3, v7, v7, v4, v5}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->clipRect(Landroid/graphics/Rect;IIII)V

    .line 297
    return v1

    .line 291
    .end local v0           #index:I
    .end local v3           #trailsCount:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private freeOffscreenBuffer()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    .line 225
    :cond_0
    return-void
.end method

.method private mayAllocateOffscreenBuffer()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenWidth:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenHeight:I

    if-ne v0, v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->freeOffscreenBuffer()V

    .line 233
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenWidth:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    .line 235
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public dismissGestureFloatingPreviewText()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->dismissGestureFloatingPreviewText()V

    .line 314
    return-void
.end method

.method public invalidatePointer(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V
    .locals 5
    .parameter "tracker"
    .parameter "isOldestTracker"

    .prologue
    .line 190
    if-eqz p2, :cond_5

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawsGestureFloatingPreviewText:Z

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    .line 192
    .local v0, needsToUpdateLastPointer:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mLastPointerX:I

    .line 194
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mLastPointerY:I

    .line 197
    :cond_0
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawsGesturePreviewTrail:Z

    if-eqz v2, :cond_2

    .line 199
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrails:Landroid/util/SparseArray;

    monitor-enter v3

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrails:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;

    .line 201
    .local v1, trail:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;
    if-nez v1, :cond_1

    .line 202
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;

    .end local v1           #trail:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;
    invoke-direct {v1}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;-><init>()V

    .line 203
    .restart local v1       #trail:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePreviewTrails:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getGestureStrokeWithPreviewPoints()Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;->addStroke(Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;J)V

    .line 210
    .end local v1           #trail:Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;
    :cond_2
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawsGesturePreviewTrail:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->invalidate()V

    .line 213
    :cond_4
    return-void

    .line 190
    .end local v0           #needsToUpdateLastPointer:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    .restart local v0       #needsToUpdateLastPointer:Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->freeOffscreenBuffer()V

    .line 218
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 241
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawsGesturePreviewTrail:Z

    if-eqz v2, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mayAllocateOffscreenBuffer()V

    .line 244
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenDirtyRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->drawGestureTrails(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;)Z

    move-result v0

    .line 247
    .local v0, needsUpdatingGesturePreviewTrail:Z
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mKeyboardViewOriginY:I

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenOffsetY:I

    sub-int v1, v2, v3

    .line 249
    .local v1, offsetY:I
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mKeyboardViewOriginX:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 250
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenDirtyRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenDirtyRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 252
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mKeyboardViewOriginX:I

    neg-int v2, v2

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    .end local v1           #offsetY:I
    :cond_0
    if-eqz v0, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView$DrawingHandler;->postUpdateGestureTrailPreview()V

    .line 260
    .end local v0           #needsUpdatingGesturePreviewTrail:Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawsGestureFloatingPreviewText:Z

    if-eqz v2, :cond_2

    .line 261
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mKeyboardViewOriginX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mKeyboardViewOriginY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewText:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->drawGestureFloatingPreviewText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 263
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mKeyboardViewOriginX:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mKeyboardViewOriginY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    :cond_2
    return-void
.end method

.method public setGestureFloatingPreviewText(Ljava/lang/String;)V
    .locals 1
    .parameter "gestureFloatingPreviewText"

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawsGestureFloatingPreviewText:Z

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mGestureFloatingPreviewText:Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->invalidate()V

    goto :goto_0
.end method

.method public setGesturePreviewMode(ZZ)V
    .locals 0
    .parameter "drawsGesturePreviewTrail"
    .parameter "drawsGestureFloatingPreviewText"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawsGesturePreviewTrail:Z

    .line 186
    iput-boolean p2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mDrawsGestureFloatingPreviewText:Z

    .line 187
    return-void
.end method

.method public setKeyboardViewGeometry(IIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 176
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mKeyboardViewOriginX:I

    .line 177
    iput p2, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mKeyboardViewOriginY:I

    .line 178
    int-to-float v0, p4

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenOffsetY:I

    .line 179
    iput p3, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenWidth:I

    .line 180
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenOffsetY:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->mOffscreenHeight:I

    .line 181
    return-void
.end method
