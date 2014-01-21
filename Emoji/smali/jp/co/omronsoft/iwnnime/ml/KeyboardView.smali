.class public Ljp/co/omronsoft/iwnnime/ml/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;,
        Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DEBOUNCE_TIME:I = 0x46

.field protected static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x46

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final KEY_DELETE:[I = null

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESSABLE_STATE_SET:[I = null

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mAbortKey:Z

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyMode:I

.field private mCurrentKeyTime:J

.field protected mDebugFlickArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mEnableHalfAlphabet:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mInMultiTap:Z

.field private mInvalidatedKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyBackground2nd:Landroid/graphics/drawable/Drawable;

.field private mKeyBackground3rd:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextColor2nd:I

.field private mKeyTextSize:I

.field private mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field private mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field protected mMiniKeyboardOnScreen:Z

.field private mOffsetInWindow:[I

.field private mOldEventTime:J

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field protected mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field protected mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowColor2nd:I

.field private mShadowRadius:F

.field private mShadowRadius2nd:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mToggleModeKeyTopHalfNumDisableHalfAlpha:Landroid/graphics/drawable/Drawable;

.field private mToggleModeKeyTopHiraDisableHalfAlpha:Landroid/graphics/drawable/Drawable;

.field private mUsedVelocity:Z

.field protected mVerticalCorrection:I

.field private mWindowOffset:[I

.field private mWindowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-array v0, v3, [I

    const/4 v1, -0x5

    aput v1, v0, v2

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->KEY_DELETE:[I

    .line 136
    new-array v0, v3, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 239
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->LONGPRESS_TIMEOUT:I

    .line 241
    const/16 v0, 0xc

    sput v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 25
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 310
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyIndex:I

    .line 188
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewCentered:Z

    .line 189
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShowPreview:Z

    .line 190
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShowTouchPoints:Z

    .line 210
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    .line 211
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDownKey:I

    .line 214
    const/16 v20, 0xc

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyIndices:[I

    .line 218
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    .line 222
    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 224
    new-instance v20, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;-><init>(Ljp/co/omronsoft/iwnnime/ml/KeyboardView$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeTracker:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;

    .line 229
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOldPointerCount:I

    .line 242
    sget v20, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->MAX_NEARBY_KEYS:I

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDistances:[I

    .line 250
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 255
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 264
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mEnableHalfAlphabet:Z

    .line 270
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mToggleModeKeyTopHiraDisableHalfAlpha:Landroid/graphics/drawable/Drawable;

    .line 272
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mToggleModeKeyTopHalfNumDisableHalfAlpha:Landroid/graphics/drawable/Drawable;

    .line 275
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDebugFlickArea:Ljava/util/ArrayList;

    .line 277
    new-instance v20, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 312
    sget-object v20, Ljp/co/omronsoft/iwnnime/ml/R$styleable;->WnnKeyboardView:[I

    const/high16 v21, 0x7f0e

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, p3

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 319
    .local v5, a:Landroid/content/res/TypedArray;
    const-string v20, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 323
    .local v9, inflate:Landroid/view/LayoutInflater;
    const/16 v17, 0x0

    .line 324
    .local v17, previewLayout:I
    const/4 v10, 0x0

    .line 326
    .local v10, keyTextSize:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v16

    .line 328
    .local v16, n:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v8, v0, :cond_0

    .line 329
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 331
    .local v6, attr:I
    packed-switch v6, :pswitch_data_0

    .line 328
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 333
    :pswitch_0
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 336
    :pswitch_1
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mVerticalCorrection:I

    goto :goto_1

    .line 339
    :pswitch_2
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 340
    goto :goto_1

    .line 342
    :pswitch_3
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewOffset:I

    goto :goto_1

    .line 345
    :pswitch_4
    const/16 v20, 0x50

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewHeight:I

    goto :goto_1

    .line 348
    :pswitch_5
    const/16 v20, 0x12

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyTextSize:I

    goto :goto_1

    .line 351
    :pswitch_6
    const/high16 v20, -0x100

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyTextColor:I

    goto :goto_1

    .line 354
    :pswitch_7
    const/16 v20, 0xe

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLabelTextSize:I

    goto :goto_1

    .line 357
    :pswitch_8
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupLayout:I

    goto :goto_1

    .line 360
    :pswitch_9
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowColor:I

    goto/16 :goto_1

    .line 363
    :pswitch_a
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowRadius:F

    goto/16 :goto_1

    .line 368
    .end local v6           #attr:I
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 369
    sget-object v20, Ljp/co/omronsoft/iwnnime/ml/R$styleable;->WnnKeyboardView:[I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 370
    const/16 v20, 0x1d

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground2nd:Landroid/graphics/drawable/Drawable;

    .line 371
    const/16 v20, 0x1e

    const/high16 v21, -0x100

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyTextColor2nd:I

    .line 372
    const/16 v20, 0x1f

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowColor:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowColor2nd:I

    .line 373
    const/16 v20, 0x20

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowRadius:F

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowRadius2nd:F

    .line 375
    const/16 v20, 0x25

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground3rd:Landroid/graphics/drawable/Drawable;

    .line 377
    const/16 v20, 0x1c

    const/high16 v21, 0x3f00

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBackgroundDimAmount:F

    .line 379
    new-instance v20, Landroid/widget/PopupWindow;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 380
    if-eqz v17, :cond_b

    .line 381
    const/16 v20, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTextSize()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewTextSizeLarge:I

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 391
    new-instance v20, Landroid/widget/PopupWindow;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 398
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xff

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 404
    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 405
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 408
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 409
    .local v19, res:Landroid/content/res/Resources;
    const/high16 v20, 0x43fa

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeThreshold:I

    .line 416
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDisambiguateSwipe:Z

    .line 419
    const v20, 0x7f0201ad

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mToggleModeKeyTopHiraDisableHalfAlpha:Landroid/graphics/drawable/Drawable;

    .line 420
    const v20, 0x7f0201ab

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mToggleModeKeyTopHalfNumDisableHalfAlpha:Landroid/graphics/drawable/Drawable;

    .line 422
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->resetMultiTap()V

    .line 423
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->initGestureDetector()V

    .line 424
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 426
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getId()I

    move-result v20

    const v21, 0x7f080036

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 427
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v15

    .line 428
    .local v15, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 429
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyboardBg()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 430
    .local v14, keyboardbg:Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_1

    .line 431
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_1
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyBg()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 435
    .local v11, keybg:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_2

    .line 436
    move-object/from16 v0, p0

    iput-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 437
    move-object/from16 v0, p0

    iput-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground2nd:Landroid/graphics/drawable/Drawable;

    .line 440
    :cond_2
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyBg2nd()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 441
    .local v12, keybg2nd:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_3

    .line 442
    move-object/from16 v0, p0

    iput-object v12, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground2nd:Landroid/graphics/drawable/Drawable;

    .line 445
    :cond_3
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyBg3rd()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 446
    .local v13, keybg3rd:Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_4

    .line 447
    move-object/from16 v0, p0

    iput-object v13, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground3rd:Landroid/graphics/drawable/Drawable;

    .line 450
    :cond_4
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyTextColor()I

    move-result v7

    .line 451
    .local v7, color:I
    if-eqz v7, :cond_5

    .line 452
    move-object/from16 v0, p0

    iput v7, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyTextColor:I

    .line 455
    :cond_5
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyTextColor2nd()I

    move-result v7

    .line 456
    if-eqz v7, :cond_6

    .line 457
    move-object/from16 v0, p0

    iput v7, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyTextColor2nd:I

    .line 460
    :cond_6
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getShadowColor()I

    move-result v7

    .line 461
    if-eqz v7, :cond_7

    .line 462
    move-object/from16 v0, p0

    iput v7, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowColor:I

    .line 465
    :cond_7
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getShadowColor2nd()I

    move-result v7

    .line 466
    if-eqz v7, :cond_8

    .line 467
    move-object/from16 v0, p0

    iput v7, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowColor2nd:I

    .line 470
    :cond_8
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getShadowRadius()F

    move-result v18

    .line 471
    .local v18, radius:F
    const/16 v20, 0x0

    cmpl-float v20, v18, v20

    if-ltz v20, :cond_9

    .line 472
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowRadius:F

    .line 475
    :cond_9
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getShadowRadius2nd()F

    move-result v18

    .line 476
    const/16 v20, 0x0

    cmpl-float v20, v18, v20

    if-ltz v20, :cond_a

    .line 477
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowRadius2nd:F

    .line 481
    .end local v7           #color:I
    .end local v11           #keybg:Landroid/graphics/drawable/Drawable;
    .end local v12           #keybg2nd:Landroid/graphics/drawable/Drawable;
    .end local v13           #keybg3rd:Landroid/graphics/drawable/Drawable;
    .end local v14           #keyboardbg:Landroid/graphics/drawable/Drawable;
    .end local v15           #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .end local v18           #radius:F
    :cond_a
    return-void

    .line 386
    .end local v19           #res:Landroid/content/res/Resources;
    :cond_b
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShowPreview:Z

    goto/16 :goto_2

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->showKey(I)V

    return-void
.end method

.method static synthetic access$1000(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mStartX:I

    return v0
.end method

.method static synthetic access$1100(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mStartY:I

    return v0
.end method

.method static synthetic access$1200(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;IIIJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static synthetic access$1300(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPossiblePoly:Z

    return v0
.end method

.method static synthetic access$600(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeTracker:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;

    return-object v0
.end method

.method static synthetic access$700(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$800(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$900(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDownKey:I

    return v0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "label"

    .prologue
    .line 723
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 727
    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 6
    .parameter "eventTime"
    .parameter "keyIndex"

    .prologue
    const-wide/16 v4, 0x320

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 1646
    if-ne p3, v3, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return-void

    .line 1647
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    aget-object v0, v1, p3

    .line 1648
    .local v0, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-le v1, v2, :cond_3

    .line 1649
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mInMultiTap:Z

    .line 1650
    iget-wide v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastSentIndex:I

    if-ne p3, v1, :cond_2

    .line 1652
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mTapCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mTapCount:I

    goto :goto_0

    .line 1655
    :cond_2
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mTapCount:I

    goto :goto_0

    .line 1659
    :cond_3
    iget-wide v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastSentIndex:I

    if-eq p3, v1, :cond_0

    .line 1660
    :cond_4
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->resetMultiTap()V

    goto :goto_0
.end method

.method private computeProximityThreshold(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    .locals 7
    .parameter "keyboard"

    .prologue
    .line 754
    if-nez p1, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 756
    .local v3, keys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 757
    array-length v4, v3

    .line 758
    .local v4, length:I
    const/4 v0, 0x0

    .line 759
    .local v0, dimensionSum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 760
    aget-object v2, v3, v1

    .line 761
    .local v2, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget v5, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    iget v6, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 763
    .end local v2           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_2
    if-ltz v0, :cond_0

    if-eqz v4, :cond_0

    .line 764
    int-to-float v5, v0

    const v6, 0x3fb33333

    mul-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mProximityThreshold:I

    .line 765
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mProximityThreshold:I

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mProximityThreshold:I

    mul-int/2addr v5, v6

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mProximityThreshold:I

    goto :goto_0
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 6
    .parameter "index"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 1014
    if-eq p1, v5, :cond_0

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 1015
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    aget-object v2, v3, p1

    .line 1016
    .local v2, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget-object v3, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 1017
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    iget-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1018
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v5}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 1037
    :goto_0
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastSentIndex:I

    .line 1038
    iput-wide p4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastTapTime:J

    .line 1040
    .end local v2           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_0
    return-void

    .line 1020
    .restart local v2       #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_1
    iget-object v3, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    aget v0, v3, v4

    .line 1022
    .local v0, code:I
    sget v3, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v1, v3, [I

    .line 1023
    .local v1, codes:[I
    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 1024
    invoke-direct {p0, p2, p3, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyIndices(II[I)I

    .line 1026
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mInMultiTap:Z

    if-eqz v3, :cond_2

    .line 1027
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mTapCount:I

    if-eq v3, v5, :cond_3

    .line 1028
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    const/4 v4, -0x5

    sget-object v5, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->KEY_DELETE:[I

    invoke-interface {v3, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1032
    :goto_1
    iget-object v3, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mTapCount:I

    aget v0, v3, v4

    .line 1034
    :cond_2
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1035
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_0

    .line 1030
    :cond_3
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mTapCount:I

    goto :goto_1
.end method

.method private getKeyIndices(II[I)I
    .locals 21
    .parameter "x"
    .parameter "y"
    .parameter "allKeys"

    .prologue
    .line 963
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 964
    .local v13, keys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    const/16 v16, -0x1

    .line 965
    .local v16, primaryIndex:I
    const/4 v5, -0x1

    .line 966
    .local v5, closestKey:I
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mProximityThreshold:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, 0x1

    .line 967
    .local v6, closestKeyDist:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    const v18, 0x7fffffff

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getNearestKeys(II)[I

    move-result-object v15

    .line 969
    .local v15, nearestKeyIndices:[I
    array-length v12, v15

    .line 970
    .local v12, keyCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v12, :cond_7

    .line 971
    aget v17, v15, v8

    aget-object v11, v13, v17

    .line 972
    .local v11, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    const/4 v7, 0x0

    .line 973
    .local v7, dist:I
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isInside(II)Z

    move-result v9

    .line 974
    .local v9, isInside:Z
    if-eqz v9, :cond_0

    .line 975
    aget v16, v15, v8

    .line 978
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mProximityCorrectOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mProximityThreshold:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    :cond_1
    if-eqz v9, :cond_4

    :cond_2
    iget-object v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 983
    iget-object v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 984
    .local v14, nCodes:I
    if-ge v7, v6, :cond_3

    .line 985
    move v6, v7

    .line 986
    aget v5, v15, v8

    .line 989
    :cond_3
    if-nez p3, :cond_5

    .line 970
    .end local v14           #nCodes:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 991
    .restart local v14       #nCodes:I
    :cond_5
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    aget v17, v17, v10

    move/from16 v0, v17

    if-le v0, v7, :cond_6

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDistances:[I

    move-object/from16 v18, v0

    add-int v19, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDistances:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v20, v20, v10

    sub-int v20, v20, v14

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 996
    add-int v17, v10, v14

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v10

    sub-int v18, v18, v14

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 998
    const/4 v4, 0x0

    .local v4, c:I
    :goto_2
    if-ge v4, v14, :cond_4

    .line 999
    add-int v17, v10, v4

    iget-object v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    aput v18, p3, v17

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    add-int v18, v10, v4

    aput v7, v17, v18

    .line 998
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 991
    .end local v4           #c:I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1007
    .end local v7           #dist:I
    .end local v9           #isInside:Z
    .end local v10           #j:I
    .end local v11           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v14           #nCodes:I
    :cond_7
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 1008
    move/from16 v16, v5

    .line 1010
    :cond_8
    return v16
.end method

.method private getPreviewText(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 1046
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mInMultiTap:Z

    if-eqz v1, :cond_1

    .line 1048
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1049
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v2, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mTapCount:I

    if-gez v3, :cond_0

    :goto_0
    aget v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1050
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1056
    :goto_1
    return-object v0

    .line 1049
    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mTapCount:I

    goto :goto_0

    .line 1053
    :cond_1
    iget-object v0, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1054
    iget-object v0, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->keyPreviewLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1056
    :cond_2
    iget-object v0, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 484
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;

    invoke-direct {v2, p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 536
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 537
    return-void
.end method

.method private onBufferDraw()V
    .locals 30

    .prologue
    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    const/16 v16, 0x1

    .line 786
    .local v16, isBufferNull:Z
    :goto_0
    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardChanged:Z

    if-eqz v2, :cond_3

    .line 787
    :cond_0
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardChanged:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 790
    :cond_1
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 791
    .local v29, width:I
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 792
    .local v13, height:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v29

    invoke-static {v0, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 793
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 795
    .end local v13           #height:I
    .end local v29           #width:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateAllKeys()V

    .line 796
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardChanged:Z

    .line 798
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 799
    .local v1, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-nez v2, :cond_5

    .line 960
    :goto_1
    return-void

    .line 785
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v16           #isBufferNull:Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    .line 803
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v16       #isBufferNull:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 804
    .local v6, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 805
    .local v8, clipRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    .line 806
    .local v25, padding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v17

    .line 807
    .local v17, kbdPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingTop()I

    move-result v18

    .line 808
    .local v18, kbdPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-object/from16 v23, v0

    .line 809
    .local v23, keys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mInvalidatedKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 811
    .local v15, invalidKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    const/4 v9, 0x0

    .line 813
    .local v9, drawSingleKey:Z
    if-eqz v15, :cond_6

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 815
    iget v2, v15, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    add-int v2, v2, v17

    add-int/lit8 v2, v2, -0x1

    iget v3, v8, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_6

    iget v2, v15, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    add-int v2, v2, v18

    add-int/lit8 v2, v2, -0x1

    iget v3, v8, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_6

    iget v2, v15, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v3, v15, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    add-int v2, v2, v17

    add-int/lit8 v2, v2, 0x1

    iget v3, v8, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_6

    iget v2, v15, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    iget v3, v15, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    add-int/2addr v2, v3

    add-int v2, v2, v18

    add-int/lit8 v2, v2, 0x1

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_6

    .line 819
    const/4 v9, 0x1

    .line 822
    :cond_6
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 823
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v21, v0

    .line 824
    .local v21, keyCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move/from16 v0, v21

    if-ge v14, v0, :cond_1b

    .line 825
    aget-object v19, v23, v14

    .line 826
    .local v19, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    if-eqz v9, :cond_7

    move-object/from16 v0, v19

    if-eq v15, v0, :cond_7

    .line 824
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 830
    :cond_7
    move-object/from16 v0, v19

    iget-boolean v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isSecondKey:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyTextColor2nd:I

    :goto_4
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 831
    const/16 v20, 0x0

    .line 832
    .local v20, keyBackground:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isActionKey:Z

    if-eqz v2, :cond_c

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground3rd:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    .line 838
    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v10

    .line 839
    .local v10, drawableState:[I
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 841
    move-object/from16 v0, v19

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v2, :cond_e

    const/16 v24, 0x0

    .line 843
    .local v24, label:Ljava/lang/String;
    :goto_6
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 844
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_9

    .line 846
    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move-object/from16 v0, v19

    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 848
    :cond_9
    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    add-int v2, v2, v17

    int-to-float v2, v2

    move-object/from16 v0, v19

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    add-int v3, v3, v18

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 849
    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 851
    if-eqz v24, :cond_16

    .line 853
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_12

    move-object/from16 v0, v19

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    array-length v2, v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_12

    .line 854
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 855
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLabelTextSize:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 872
    :goto_7
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 878
    :goto_8
    move-object/from16 v0, v19

    iget-boolean v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isSecondKey:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowRadius2nd:F

    :goto_9
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    iget-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isSecondKey:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowColor2nd:I

    :goto_a
    invoke-virtual {v6, v2, v4, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 881
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 882
    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, v19

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x7

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, v24

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 897
    :goto_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 935
    :cond_a
    :goto_c
    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    neg-int v2, v2

    sub-int v2, v2, v17

    int-to-float v2, v2

    move-object/from16 v0, v19

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    neg-int v3, v3

    sub-int v3, v3, v18

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3

    .line 830
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v10           #drawableState:[I
    .end local v20           #keyBackground:Landroid/graphics/drawable/Drawable;
    .end local v24           #label:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyTextColor:I

    goto/16 :goto_4

    .line 835
    .restart local v20       #keyBackground:Landroid/graphics/drawable/Drawable;
    :cond_c
    move-object/from16 v0, v19

    iget-boolean v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isSecondKey:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground2nd:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    :goto_d
    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    goto :goto_d

    .line 841
    .restart local v10       #drawableState:[I
    :cond_e
    move-object/from16 v0, v19

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_6

    .line 858
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v24       #label:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLabelTextSize:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v0, v2

    move/from16 v27, v0

    .line 859
    .local v27, textSize:F
    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 860
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v28

    .line 861
    .local v28, textWidth:F
    :goto_e
    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move-object/from16 v0, v19

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->gap:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, v28

    if-gez v2, :cond_10

    .line 862
    const/high16 v2, 0x4100

    cmpl-float v2, v2, v27

    if-ltz v2, :cond_11

    .line 863
    const/high16 v27, 0x4100

    .line 870
    :cond_10
    const/high16 v2, 0x3f80

    sub-float v2, v27, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_7

    .line 866
    :cond_11
    const/high16 v2, 0x3f80

    sub-float v27, v27, v2

    .line 867
    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 868
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v28

    goto :goto_e

    .line 874
    .end local v27           #textSize:F
    .end local v28           #textWidth:F
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyTextSize:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 875
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_8

    .line 878
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowRadius:F

    goto/16 :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShadowColor:I

    goto/16 :goto_a

    .line 889
    :cond_15
    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, v19

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, v24

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 898
    :cond_16
    move-object/from16 v0, v19

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    .line 899
    move-object/from16 v0, v19

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 900
    .local v26, tempKeyIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v19

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v22, v2, v3

    .line 901
    .local v22, keycode:I
    const/16 v2, -0xe6

    move/from16 v0, v22

    if-eq v0, v2, :cond_17

    const/16 v2, -0x72

    move/from16 v0, v22

    if-ne v0, v2, :cond_18

    .line 903
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mEnableHalfAlphabet:Z

    if-nez v2, :cond_18

    .line 904
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyMode:I

    if-nez v2, :cond_19

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mToggleModeKeyTopHiraDisableHalfAlpha:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 912
    :cond_18
    :goto_f
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 913
    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xc

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v11, v2, v3

    .line 915
    .local v11, drawableX:I
    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x9

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v12, v2, v3

    .line 917
    .local v12, drawableY:I
    int-to-float v2, v11

    int-to-float v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 918
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 920
    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 921
    neg-int v2, v11

    int-to-float v2, v2

    neg-int v3, v12

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_c

    .line 906
    .end local v11           #drawableX:I
    .end local v12           #drawableY:I
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_18

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mToggleModeKeyTopHalfNumDisableHalfAlpha:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    goto :goto_f

    .line 923
    :cond_1a
    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v11, v2, v3

    .line 925
    .restart local v11       #drawableX:I
    move-object/from16 v0, v19

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v12, v2, v3

    .line 927
    .restart local v12       #drawableY:I
    int-to-float v2, v11

    int-to-float v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 928
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 930
    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 931
    neg-int v2, v11

    int-to-float v2, v2

    neg-int v3, v12

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_c

    .line 937
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v10           #drawableState:[I
    .end local v11           #drawableX:I
    .end local v12           #drawableY:I
    .end local v19           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v20           #keyBackground:Landroid/graphics/drawable/Drawable;
    .end local v22           #keycode:I
    .end local v24           #label:Ljava/lang/String;
    .end local v26           #tempKeyIcon:Landroid/graphics/drawable/Drawable;
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mInvalidatedKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 939
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_1c

    .line 940
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 941
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 958
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDrawPending:Z

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12
    .parameter "me"
    .parameter "possiblePoly"

    .prologue
    .line 1431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v1

    sub-int v2, v0, v1

    .line 1432
    .local v2, touchX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mVerticalCorrection:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingTop()I

    move-result v1

    sub-int v3, v0, v1

    .line 1433
    .local v3, touchY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1434
    .local v6, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1435
    .local v4, eventTime:J
    iput-wide v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOldEventTime:J

    .line 1436
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyIndices(II[I)I

    move-result v8

    .line 1437
    .local v8, keyIndex:I
    iput-boolean p2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPossiblePoly:Z

    .line 1440
    if-nez v6, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeTracker:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;->clear()V

    .line 1441
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeTracker:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1444
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mAbortKey:Z

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    .line 1446
    const/4 v0, 0x1

    .line 1569
    :goto_0
    return v0

    .line 1449
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1450
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->showPreview(I)V

    .line 1451
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1452
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1453
    const/4 v0, 0x1

    goto :goto_0

    .line 1458
    :cond_2
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-eq v6, v0, :cond_3

    .line 1459
    const/4 v0, 0x1

    goto :goto_0

    .line 1462
    :cond_3
    packed-switch v6, :pswitch_data_0

    .line 1567
    :goto_1
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastX:I

    .line 1568
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastY:I

    .line 1569
    const/4 v0, 0x1

    goto :goto_0

    .line 1464
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mAbortKey:Z

    .line 1465
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mStartX:I

    .line 1466
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mStartY:I

    .line 1467
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastCodeX:I

    .line 1468
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastCodeY:I

    .line 1469
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastKeyTime:J

    .line 1470
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    .line 1471
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastKey:I

    .line 1472
    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    .line 1473
    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDownKey:I

    .line 1474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDownTime:J

    .line 1475
    iget-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDownTime:J

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastMoveTime:J

    .line 1476
    invoke-direct {p0, v4, v5, v8}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->checkMultiTap(JI)V

    .line 1477
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->repeatable:Z

    if-eqz v0, :cond_4

    .line 1478
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    .line 1479
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1480
    .local v9, msg:Landroid/os/Message;
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x190

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1481
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->repeatKey()Z

    .line 1483
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mAbortKey:Z

    if-eqz v0, :cond_5

    .line 1484
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_1

    .line 1488
    .end local v9           #msg:Landroid/os/Message;
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    .line 1490
    :cond_5
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1491
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1492
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1493
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v10, v1

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1495
    .end local v9           #msg:Landroid/os/Message;
    :cond_6
    invoke-direct {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->showPreview(I)V

    goto :goto_1

    .line 1499
    :pswitch_1
    const/4 v7, 0x0

    .line 1500
    .local v7, continueLongPress:Z
    const/4 v0, -0x1

    if-eq v8, v0, :cond_7

    .line 1501
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1502
    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    .line 1503
    iget-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDownTime:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    .line 1520
    :cond_7
    :goto_2
    if-nez v7, :cond_8

    .line 1522
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1524
    const/4 v0, -0x1

    if-eq v8, v0, :cond_8

    .line 1525
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1526
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v10, v1

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1529
    .end local v9           #msg:Landroid/os/Message;
    :cond_8
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->showPreview(I)V

    .line 1530
    iput-wide v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastMoveTime:J

    goto/16 :goto_1

    .line 1505
    :cond_9
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_a

    .line 1506
    iget-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v0, v10

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    .line 1507
    const/4 v7, 0x1

    goto :goto_2

    .line 1508
    :cond_a
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 1509
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->resetMultiTap()V

    .line 1510
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastKey:I

    .line 1511
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastX:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastCodeX:I

    .line 1512
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastY:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastCodeY:I

    .line 1513
    iget-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v10, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v0, v10

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastKeyTime:J

    .line 1515
    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    .line 1516
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    goto :goto_2

    .line 1534
    .end local v7           #continueLongPress:Z
    :pswitch_2
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->removeMessages()V

    .line 1535
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_d

    .line 1536
    iget-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v0, v10

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    .line 1544
    :goto_3
    iget-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastKeyTime:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_b

    iget-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    const-wide/16 v10, 0x46

    cmp-long v0, v0, v10

    if-gez v0, :cond_b

    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 1546
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastKey:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    .line 1547
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastCodeX:I

    .line 1548
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastCodeY:I

    .line 1550
    :cond_b
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->showPreview(I)V

    .line 1551
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyIndices:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1553
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_c

    .line 1554
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1556
    :cond_c
    invoke-virtual {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateKey(I)V

    .line 1557
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    goto/16 :goto_1

    .line 1538
    :cond_d
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->resetMultiTap()V

    .line 1539
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastKey:I

    .line 1540
    iget-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v10, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v0, v10

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastKeyTime:J

    .line 1541
    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    .line 1542
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyTime:J

    goto :goto_3

    .line 1560
    :pswitch_3
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->removeMessages()V

    .line 1561
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->dismissPopupKeyboard()V

    .line 1562
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mAbortKey:Z

    .line 1563
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->showPreview(I)V

    .line 1564
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_1

    .line 1462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "me"

    .prologue
    const/4 v1, 0x0

    .line 1283
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupLayout:I

    if-nez v2, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return v1

    .line 1286
    :cond_1
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    if-ltz v2, :cond_0

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1290
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 1291
    .local v0, popupKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z

    move-result v1

    .line 1292
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 1293
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mAbortKey:Z

    .line 1294
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->showPreview(I)V

    goto :goto_0
.end method

.method private removeMessages()V
    .locals 2

    .prologue
    .line 1607
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1608
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1609
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1610
    return-void
.end method

.method private repeatKey()Z
    .locals 7

    .prologue
    .line 1573
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    aget-object v6, v0, v1

    .line 1574
    .local v6, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKey:I

    iget v2, v6, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v3, v6, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    iget-wide v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastTapTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1575
    const/4 v0, 0x1

    return v0
.end method

.method private resetMultiTap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1639
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastSentIndex:I

    .line 1640
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mTapCount:I

    .line 1641
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mLastTapTime:J

    .line 1642
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mInMultiTap:Z

    .line 1643
    return-void
.end method

.method private showKey(I)V
    .locals 25
    .parameter "keyIndex"

    .prologue
    .line 1103
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 1104
    .local v2, previewPopup:Landroid/widget/PopupWindow;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-object/from16 v16, v0

    .line 1105
    .local v16, keys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    array-length v3, v3

    move/from16 v0, p1

    if-lt v0, v3, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    aget-object v13, v16, p1

    .line 1108
    .local v13, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isTabletMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1109
    iget-object v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x3000

    if-eq v3, v4, :cond_0

    iget-object v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 1113
    :cond_2
    iget-object v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x258

    if-eq v3, v4, :cond_0

    .line 1117
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 1118
    .local v20, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const v4, 0x7f02023b

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1120
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v17

    .line 1121
    .local v17, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    const/4 v15, 0x0

    .line 1122
    .local v15, keyprev:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v12

    .line 1123
    .local v12, isKeySkin:Z
    if-eqz v12, :cond_4

    .line 1124
    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1125
    if-eqz v15, :cond_3

    .line 1126
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1128
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreviewColor()I

    move-result v9

    .line 1129
    .local v9, color:I
    if-eqz v9, :cond_4

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1134
    .end local v9           #color:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v8

    .line 1135
    .local v8, bottom:I
    iget-object v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_b

    iget-object v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->keyPreviewLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_b

    .line 1136
    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    iget-object v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v7, v0, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    const v3, 0x7f0b0026

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v8, v3

    .line 1155
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v7, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->measure(II)V

    .line 1157
    iget v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    const v4, 0x7f0b0023

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1158
    .local v11, defualtWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1160
    .local v5, popupWidth:I
    move-object/from16 v0, p0

    iget v6, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewHeight:I

    .line 1161
    .local v6, popupHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .line 1162
    .local v18, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v18, :cond_5

    .line 1163
    move-object/from16 v0, v18

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1164
    move-object/from16 v0, v18

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1166
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewCentered:Z

    if-nez v3, :cond_d

    .line 1167
    iget v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v4, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v5, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    .line 1168
    iget v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewOffset:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    .line 1174
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    add-int/lit8 v3, v3, 0x14

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    .line 1175
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOffsetInWindow:[I

    if-nez v3, :cond_6

    .line 1177
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOffsetInWindow:[I

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getLocationInWindow([I)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOffsetInWindow:[I

    const/4 v4, 0x0

    aget v7, v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOffsetX:I

    move/from16 v21, v0

    add-int v7, v7, v21

    aput v7, v3, v4

    .line 1180
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOffsetInWindow:[I

    const/4 v4, 0x1

    aget v7, v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOffsetY:I

    move/from16 v21, v0

    add-int v7, v7, v21

    aput v7, v3, v4

    .line 1181
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 1182
    .local v19, mWindowLocation:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getLocationOnScreen([I)V

    .line 1183
    const/4 v3, 0x1

    aget v3, v19, v3

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mWindowY:I

    .line 1186
    .end local v19           #mWindowLocation:[I
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOffsetInWindow:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    .line 1187
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOffsetInWindow:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    .line 1190
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mWindowY:I

    add-int/2addr v3, v4

    if-gez v3, :cond_7

    .line 1193
    iget v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v4, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_e

    .line 1194
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    iget v4, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    int-to-double v0, v4

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4004

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    .line 1198
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    .line 1204
    :cond_7
    const/4 v15, 0x0

    .line 1205
    const v3, 0x7f0c0003

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/2addr v3, v5

    div-int/lit8 v10, v3, 0x64

    .line 1206
    .local v10, correctionWidth:I
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    if-gez v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v10, :cond_f

    .line 1207
    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreviewLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1208
    if-nez v15, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_8

    .line 1209
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const v4, 0x7f02023d

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1210
    iget v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    if-eqz v3, :cond_8

    .line 1211
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const v4, 0x7f02023f

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1224
    :cond_8
    :goto_5
    if-eqz v15, :cond_9

    .line 1225
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1227
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v3, v4, v7, v0, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1230
    iget v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    if-nez v3, :cond_10

    .line 1231
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->EMPTY_STATE_SET:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1236
    :goto_6
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1237
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1245
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1136
    .end local v5           #popupWidth:I
    .end local v6           #popupHeight:I
    .end local v10           #correctionWidth:I
    .end local v11           #defualtWidth:I
    .end local v18           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    iget-object v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1141
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v4, v7, v0, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1143
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPreviewText(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1144
    .local v14, keyText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    iget-object v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    array-length v3, v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_c

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyTextSize:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1148
    const v3, 0x7f0b0027

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v8, v3

    goto/16 :goto_2

    .line 1150
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1152
    const v3, 0x7f0b0028

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v8, v3

    goto/16 :goto_2

    .line 1171
    .end local v14           #keyText:Ljava/lang/CharSequence;
    .restart local v5       #popupWidth:I
    .restart local v6       #popupHeight:I
    .restart local v11       #defualtWidth:I
    .restart local v18       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rsub-int v3, v3, 0xa0

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    goto/16 :goto_3

    .line 1196
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    iget v4, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    int-to-double v0, v4

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4004

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    goto/16 :goto_4

    .line 1214
    .restart local v10       #correctionWidth:I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v3, v10, :cond_8

    .line 1215
    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreviewRight()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1216
    if-nez v15, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_8

    .line 1217
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const v4, 0x7f020241

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1218
    iget v3, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    if-eqz v3, :cond_8

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const v4, 0x7f020243

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 1233
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_6

    .line 1240
    :cond_11
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1241
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupParent:Landroid/view/View;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewX:I

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupPreviewY:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v2, v3, v4, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_7
.end method

.method private showPreview(I)V
    .locals 10
    .parameter "keyIndex"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, -0x1

    .line 1062
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyIndex:I

    .line 1063
    .local v1, oldKeyIndex:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 1065
    .local v2, previewPopup:Landroid/widget/PopupWindow;
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyIndex:I

    .line 1067
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 1068
    .local v0, keys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyIndex:I

    if-eq v1, v3, :cond_1

    .line 1069
    if-eq v1, v9, :cond_0

    array-length v3, v0

    if-le v3, v1, :cond_0

    .line 1070
    aget-object v6, v0, v1

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyIndex:I

    if-ne v3, v9, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->onReleased(Z)V

    .line 1071
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateKey(I)V

    .line 1073
    :cond_0
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyIndex:I

    if-eq v3, v9, :cond_1

    array-length v3, v0

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyIndex:I

    if-le v3, v6, :cond_1

    .line 1074
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyIndex:I

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->onPressed()V

    .line 1075
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateKey(I)V

    .line 1080
    :cond_1
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyIndex:I

    if-eq v1, v3, :cond_3

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShowPreview:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->isParentPreviewEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1081
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1083
    if-ne p1, v9, :cond_2

    .line 1084
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x46

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1089
    :cond_2
    if-eq p1, v9, :cond_3

    .line 1090
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 1092
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->showKey(I)V

    .line 1100
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v3, v5

    .line 1070
    goto :goto_0

    .line 1094
    :cond_5
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method


# virtual methods
.method public clearWindowInfo()V
    .locals 1

    .prologue
    .line 1778
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOffsetInWindow:[I

    .line 1779
    return-void
.end method

.method public closing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1595
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1598
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->removeMessages()V

    .line 1600
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->dismissPopupKeyboard()V

    .line 1601
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1602
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1603
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1604
    return-void
.end method

.method public dismissPopupKeyboard()V
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1620
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1621
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1622
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateAllKeys()V

    .line 1624
    :cond_0
    return-void
.end method

.method public getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->dismissPopupKeyboard()V

    .line 1633
    const/4 v0, 0x1

    .line 1635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1255
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1256
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDrawPending:Z

    .line 1257
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidate()V

    .line 1258
    return-void
.end method

.method public invalidateKey(I)V
    .locals 7
    .parameter "keyIndex"

    .prologue
    .line 1268
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    if-nez v1, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1272
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    aget-object v0, v1, p1

    .line 1273
    .local v0, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mInvalidatedKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 1274
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    iget v6, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1276
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onBufferDraw()V

    .line 1277
    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isMiniKeyboardOnScreen()Z
    .locals 1

    .prologue
    .line 1627
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOnScreen:Z

    return v0
.end method

.method public isParentPreviewEnabled()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupParent:Landroid/view/View;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupParent:Landroid/view/View;

    instance-of v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupParent:Landroid/view/View;

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->isParentPreviewEnabled()Z

    move-result v0

    .line 669
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShowPreview:Z

    goto :goto_0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->isShifted()Z

    move-result v0

    .line 637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 719
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->dismissPopupKeyboard()V

    .line 720
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1614
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1615
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->closing()V

    .line 1616
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 777
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 778
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 779
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onBufferDraw()V

    .line 781
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 782
    return-void
.end method

.method protected onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z
    .locals 13
    .parameter "popupKey"

    .prologue
    const v4, 0x7f080036

    const/high16 v12, -0x8000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1307
    iget v2, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    .line 1309
    .local v2, popupKeyboardId:I
    if-eqz v2, :cond_0

    .line 1310
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1311
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v1, :cond_2

    .line 1312
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 1314
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupLayout:I

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1315
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboard:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    .line 1316
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboard:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$3;

    invoke-direct {v3, p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$3;-><init>(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)V

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setOnKeyboardActionListener(Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;)V

    .line 1340
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1341
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingRight()I

    move-result v11

    add-int/2addr v5, v11

    invoke-direct/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1346
    .local v0, keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    :goto_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboard:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 1347
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboard:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1348
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getWidth()I

    move-result v3

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1352
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    .end local v0           #keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mWindowOffset:[I

    .line 1358
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mWindowOffset:[I

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getLocationInWindow([I)V

    .line 1360
    iget v1, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupX:I

    .line 1361
    iget v1, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupY:I

    .line 1362
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupX:I

    iget v3, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupX:I

    .line 1363
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupY:I

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupY:I

    .line 1364
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupX:I

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mWindowOffset:[I

    aget v3, v3, v9

    add-int v7, v1, v3

    .line 1365
    .local v7, x:I
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupY:I

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mWindowOffset:[I

    aget v3, v3, v10

    add-int/2addr v1, v3

    add-int/lit8 v8, v1, -0xf

    .line 1367
    .local v8, y:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboard:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-gez v7, :cond_3

    move v1, v9

    :goto_2
    invoke-virtual {v3, v1, v8}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setPopupOffset(II)V

    .line 1368
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboard:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setShifted(Z)Z

    .line 1369
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1370
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1371
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1372
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1373
    iput-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1375
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateAllKeys()V

    move v9, v10

    .line 1378
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_0
    return v9

    .line 1344
    .restart local v6       #inflater:Landroid/view/LayoutInflater;
    :cond_1
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;-><init>(Landroid/content/Context;I)V

    .restart local v0       #keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    goto/16 :goto_0

    .line 1354
    .end local v0           #keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboard:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    goto/16 :goto_1

    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_3
    move v1, v7

    .line 1367
    goto :goto_2
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 733
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-nez v1, :cond_0

    .line 734
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setMeasuredDimension(II)V

    .line 745
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDisplayWidth()I

    move-result v1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 737
    .local v0, width:I
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getMiniKeyboardWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 738
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getMiniKeyboardWidth()I

    move-result v1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 740
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_2

    .line 741
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 743
    :cond_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 770
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 773
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    .line 1386
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1387
    const/4 v12, 0x1

    .line 1427
    :goto_0
    return v12

    .line 1391
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 1392
    .local v11, pointerCount:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1393
    .local v8, action:I
    const/4 v12, 0x0

    .line 1394
    .local v12, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 1395
    .local v0, now:J
    const/4 v2, 0x1

    if-ne v11, v2, :cond_2

    const/4 v10, 0x1

    .line 1397
    .local v10, isPointerCountOne:Z
    :goto_1
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOldPointerCount:I

    if-eq v11, v2, :cond_4

    .line 1398
    if-eqz v10, :cond_3

    .line 1400
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1402
    .local v9, down:Landroid/view/MotionEvent;
    const/4 v2, 0x0

    invoke-direct {p0, v9, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v12

    .line 1403
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1405
    const/4 v2, 0x1

    if-ne v8, v2, :cond_1

    .line 1406
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v12

    .line 1425
    .end local v9           #down:Landroid/view/MotionEvent;
    :cond_1
    :goto_2
    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOldPointerCount:I

    goto :goto_0

    .line 1395
    .end local v10           #isPointerCountOne:Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1410
    .restart local v10       #isPointerCountOne:Z
    :cond_3
    const/4 v4, 0x1

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOldPointerX:F

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOldPointerY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 1412
    .local v13, up:Landroid/view/MotionEvent;
    const/4 v2, 0x1

    invoke-direct {p0, v13, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v12

    .line 1413
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    .line 1416
    .end local v13           #up:Landroid/view/MotionEvent;
    :cond_4
    if-eqz v10, :cond_5

    .line 1417
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v12

    .line 1418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOldPointerX:F

    .line 1419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mOldPointerY:F

    goto :goto_2

    .line 1422
    :cond_5
    const/4 v12, 0x1

    goto :goto_2
.end method

.method public setEnableHalfAlphabet(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1786
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mEnableHalfAlphabet:Z

    .line 1787
    return-void
.end method

.method public setKeyMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1797
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mCurrentKeyMode:I

    .line 1798
    return-void
.end method

.method public setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    .locals 9
    .parameter "keyboard"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 563
    const/4 v3, -0x1

    .line 564
    .local v3, oldRepeatKeyCode:I
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v4, :cond_0

    .line 565
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->showPreview(I)V

    .line 567
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 568
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    aget-object v4, v4, v5

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    aget v3, v4, v8

    .line 572
    :cond_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 575
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 576
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 577
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->requestLayout()V

    .line 579
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardChanged:Z

    .line 580
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateAllKeys()V

    .line 581
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->computeProximityThreshold(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 582
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 585
    const/4 v0, 0x1

    .line 586
    .local v0, abort:Z
    if-eq v3, v7, :cond_1

    .line 587
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mStartX:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mStartY:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyIndices(II[I)I

    move-result v1

    .line 588
    .local v1, keyIndex:I
    if-eq v1, v7, :cond_1

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeys:[Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    aget-object v4, v4, v1

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    aget v4, v4, v8

    if-ne v3, v4, :cond_1

    .line 591
    const/4 v0, 0x0

    .line 592
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mRepeatKeyIndex:I

    .line 595
    .end local v1           #keyIndex:I
    :cond_1
    if-eqz v0, :cond_2

    .line 596
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    :cond_2
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mAbortKey:Z

    .line 599
    return-void
.end method

.method public setOnKeyboardActionListener(Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 544
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    .line 545
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 691
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 692
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 693
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 696
    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 682
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 683
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .parameter "previewEnabled"

    .prologue
    .line 647
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mShowPreview:Z

    .line 648
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 705
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mProximityCorrectOn:Z

    .line 706
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .parameter "shifted"

    .prologue
    .line 617
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateAllKeys()V

    .line 621
    const/4 v0, 0x1

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVerticalCorrection(I)V
    .locals 0
    .parameter "verticalOffset"

    .prologue
    .line 675
    return-void
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 1592
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 1584
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 1580
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 1588
    return-void
.end method
