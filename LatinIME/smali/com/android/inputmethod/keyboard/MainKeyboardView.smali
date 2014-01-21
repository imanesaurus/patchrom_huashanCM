.class public final Lcom/android/inputmethod/keyboard/MainKeyboardView;
.super Lcom/android/inputmethod/keyboard/KeyboardView;
.source "MainKeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;
.implements Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;
    }
.end annotation


# static fields
.field private static final ENABLE_USABILITY_STUDY_LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAltCodeKeyWhileTypingAnimAlpha:I

.field private mAltCodeKeyWhileTypingFadeinAnimator:Landroid/animation/ObjectAnimator;

.field private mAltCodeKeyWhileTypingFadeoutAnimator:Landroid/animation/ObjectAnimator;

.field private final mAutoCorrectionSpacebarLedEnabled:Z

.field private final mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

.field private mAutoCorrectionSpacebarLedOn:Z

.field private final mConfigShowMoreKeysKeyboardAtTouchedPoint:Z

.field private mHasDistinctMultitouch:Z

.field private mHasMultipleEnabledIMEsOrSubtypes:Z

.field protected mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private final mKeyTimerHandler:Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;

.field private mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private mLanguageOnSpacebarAnimAlpha:I

.field private mLanguageOnSpacebarFadeoutAnimator:Landroid/animation/ObjectAnimator;

.field private final mLanguageOnSpacebarFinalAlpha:I

.field private mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

.field private final mMoreKeysPanelCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Lcom/android/inputmethod/keyboard/MoreKeysPanel;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreKeysPanelPointerTrackerId:I

.field private mMoreKeysWindow:Landroid/widget/PopupWindow;

.field private mNeedsToDisplayLanguage:Z

.field private mOldKey:Lcom/android/inputmethod/keyboard/Key;

.field private mOldPointerCount:I

.field private mSpaceIcon:Landroid/graphics/drawable/Drawable;

.field private mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

.field private final mSpacebarTextColor:I

.field private final mSpacebarTextRatio:F

.field private final mSpacebarTextShadowColor:I

.field private mSpacebarTextSize:F

.field private final mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->TAG:Ljava/lang/String;

    .line 102
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->ENABLE_USABILITY_STUDY_LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 353
    const v0, 0x7f010002

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 354
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 357
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    const/16 v8, 0xff

    iput v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mLanguageOnSpacebarAnimAlpha:I

    .line 131
    const/16 v8, 0xff

    iput v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingAnimAlpha:I

    .line 137
    new-instance v8, Ljava/util/WeakHashMap;

    invoke-direct {v8}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    .line 145
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mOldPointerCount:I

    .line 359
    new-instance v8, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, p0}, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;)V

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mHasDistinctMultitouch:Z

    .line 363
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 364
    .local v7, res:Landroid/content/res/Resources;
    const v8, 0x7f0e0012

    const-string v9, "false"

    invoke-static {v7, v8, v9}, Lcom/android/inputmethod/latin/ResourceUtils;->getDeviceOverrideValue(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 367
    .local v6, needsPhantomSuddenMoveEventHack:Z
    iget-boolean v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mHasDistinctMultitouch:Z

    invoke-static {v8, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->init(ZZ)V

    .line 369
    sget-object v8, Lcom/android/inputmethod/latin/R$styleable;->MainKeyboardView:[I

    const v9, 0x7f0f0005

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 371
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAutoCorrectionSpacebarLedEnabled:Z

    .line 373
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    .line 375
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v8

    iput v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpacebarTextRatio:F

    .line 377
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpacebarTextColor:I

    .line 378
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpacebarTextShadowColor:I

    .line 380
    const/4 v8, 0x5

    const/16 v9, 0xff

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mLanguageOnSpacebarFinalAlpha:I

    .line 383
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 385
    .local v5, languageOnSpacebarFadeoutAnimatorResId:I
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 387
    .local v2, altCodeKeyWhileTypingFadeoutAnimatorResId:I
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 390
    .local v1, altCodeKeyWhileTypingFadeinAnimatorResId:I
    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 392
    .local v3, keyHysteresisDistance:F
    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 394
    .local v4, keyHysteresisDistanceForSlidingModifier:F
    new-instance v8, Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-direct {v8, v3, v4}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>(FF)V

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 396
    new-instance v8, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;

    invoke-direct {v8, p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;-><init>(Lcom/android/inputmethod/keyboard/MainKeyboardView;Landroid/content/res/TypedArray;)V

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;

    .line 397
    const/16 v8, 0x13

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mConfigShowMoreKeysKeyboardAtTouchedPoint:Z

    .line 399
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setParameters(Landroid/content/res/TypedArray;)V

    .line 400
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 402
    invoke-direct {p0, v5, p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->loadObjectAnimator(ILjava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mLanguageOnSpacebarFadeoutAnimator:Landroid/animation/ObjectAnimator;

    .line 404
    invoke-direct {p0, v2, p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->loadObjectAnimator(ILjava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingFadeoutAnimator:Landroid/animation/ObjectAnimator;

    .line 406
    invoke-direct {p0, v1, p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->loadObjectAnimator(ILjava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingFadeinAnimator:Landroid/animation/ObjectAnimator;

    .line 408
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/keyboard/MainKeyboardView;Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->openMoreKeysKeyboardIfRequired(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/keyboard/MainKeyboardView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingFadeoutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/keyboard/MainKeyboardView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingFadeinAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private drawSpacebar(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16
    .parameter "key"
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 972
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    .line 973
    .local v14, width:I
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    .line 976
    .local v10, height:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mNeedsToDisplayLanguage:Z

    if-eqz v2, :cond_0

    .line 977
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 978
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 979
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpacebarTextSize:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v12, v2, Lcom/android/inputmethod/keyboard/KeyboardId;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 981
    .local v12, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v12, v14}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->layoutLanguageOnSpacebar(Landroid/graphics/Paint;Landroid/view/inputmethod/InputMethodSubtype;I)Ljava/lang/String;

    move-result-object v11

    .line 983
    .local v11, language:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->descent()F

    move-result v9

    .line 984
    .local v9, descent:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    neg-float v2, v2

    add-float v13, v2, v9

    .line 985
    .local v13, textHeight:F
    div-int/lit8 v2, v10, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v3, v13, v3

    add-float v8, v2, v3

    .line 986
    .local v8, baseline:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpacebarTextShadowColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 987
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mLanguageOnSpacebarAnimAlpha:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 988
    div-int/lit8 v2, v14, 0x2

    int-to-float v2, v2

    sub-float v3, v8, v9

    const/high16 v15, 0x3f80

    sub-float/2addr v3, v15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 989
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpacebarTextColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 990
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mLanguageOnSpacebarAnimAlpha:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 991
    div-int/lit8 v2, v14, 0x2

    int-to-float v2, v2

    sub-float v3, v8, v9

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 995
    .end local v8           #baseline:F
    .end local v9           #descent:F
    .end local v11           #language:Ljava/lang/String;
    .end local v12           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v13           #textHeight:F
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAutoCorrectionSpacebarLedOn:Z

    if-eqz v2, :cond_2

    .line 996
    mul-int/lit8 v2, v14, 0x50

    div-int/lit8 v6, v2, 0x64

    .line 997
    .local v6, iconWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 998
    .local v7, iconHeight:I
    sub-int v2, v14, v6

    div-int/lit8 v4, v2, 0x2

    .line 999
    .local v4, x:I
    sub-int v5, v10, v7

    .line 1000
    .local v5, y:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 1008
    .end local v4           #x:I
    .end local v5           #y:I
    .end local v6           #iconWidth:I
    .end local v7           #iconHeight:I
    :cond_1
    :goto_0
    return-void

    .line 1001
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1003
    .restart local v6       #iconWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 1004
    .restart local v7       #iconHeight:I
    sub-int v2, v14, v6

    div-int/lit8 v4, v2, 0x2

    .line 1005
    .restart local v4       #x:I
    sub-int v5, v10, v7

    .line 1006
    .restart local v5       #y:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0
.end method

.method private fitsTextIntoWidth(ILjava/lang/String;Landroid/graphics/Paint;)Z
    .locals 6
    .parameter "width"
    .parameter "text"
    .parameter "paint"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 938
    const/high16 v4, 0x3f80

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 939
    invoke-virtual {p0, p2, p3}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getLabelWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v1

    .line 940
    .local v1, textWidth:F
    int-to-float v4, p1

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 946
    :cond_0
    :goto_0
    return v2

    .line 942
    :cond_1
    int-to-float v4, p1

    div-float v0, v4, v1

    .line 943
    .local v0, scaleX:F
    const v4, 0x3f4ccccd

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 945
    :cond_2
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 946
    invoke-virtual {p0, p2, p3}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getLabelWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v4

    int-to-float v5, p1

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method static getFullDisplayName(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "subtype"
    .parameter "res"

    .prologue
    .line 1027
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->isNoLanguage(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetDisplayName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeDisplayName(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getMiddleDisplayName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;
    .locals 2
    .parameter "subtype"

    .prologue
    .line 1045
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->isNoLanguage(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetDisplayName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v1

    .line 1049
    :goto_0
    return-object v1

    .line 1048
    :cond_0
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;

    move-result-object v0

    .line 1049
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/inputmethod/latin/StringUtils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getShortDisplayName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;
    .locals 2
    .parameter "subtype"

    .prologue
    .line 1036
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->isNoLanguage(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    const-string v1, ""

    .line 1040
    :goto_0
    return-object v1

    .line 1039
    :cond_0
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;

    move-result-object v0

    .line 1040
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/inputmethod/latin/StringUtils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private invokeCodeInput(I)V
    .locals 2
    .parameter "primaryCode"

    .prologue
    const/4 v1, -0x1

    .line 619
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0, p1, v1, v1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(III)V

    .line 621
    return-void
.end method

.method private invokeCustomRequest(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCustomRequest(I)Z

    move-result v0

    return v0
.end method

.method private invokeReleaseKey(I)V
    .locals 2
    .parameter "primaryCode"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onReleaseKey(IZ)V

    .line 625
    return-void
.end method

.method private layoutLanguageOnSpacebar(Landroid/graphics/Paint;Landroid/view/inputmethod/InputMethodSubtype;I)Ljava/lang/String;
    .locals 2
    .parameter "paint"
    .parameter "subtype"
    .parameter "width"

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getFullDisplayName(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, text:Ljava/lang/String;
    invoke-direct {p0, p3, v0, p1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->fitsTextIntoWidth(ILjava/lang/String;Landroid/graphics/Paint;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 968
    :goto_0
    return-object v1

    .line 958
    :cond_0
    invoke-static {p2}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getMiddleDisplayName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-direct {p0, p3, v0, p1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->fitsTextIntoWidth(ILjava/lang/String;Landroid/graphics/Paint;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 960
    goto :goto_0

    .line 963
    :cond_1
    invoke-static {p2}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getShortDisplayName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v0

    .line 964
    invoke-direct {p0, p3, v0, p1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->fitsTextIntoWidth(ILjava/lang/String;Landroid/graphics/Paint;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 965
    goto :goto_0

    .line 968
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method private loadObjectAnimator(ILjava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 2
    .parameter "resId"
    .parameter "target"

    .prologue
    .line 411
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 417
    :cond_0
    :goto_0
    return-object v0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 414
    .local v0, animator:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private openMoreKeysKeyboardIfRequired(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 2
    .parameter "parentKey"
    .parameter "tracker"

    .prologue
    const/4 v0, 0x0

    .line 551
    iget v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysLayout:I

    if-nez v1, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-nez v1, :cond_0

    .line 558
    if-eqz p1, :cond_0

    .line 560
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->onLongPress(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v0

    goto :goto_0
.end method

.method private openMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 11
    .parameter "parentKey"
    .parameter "tracker"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 628
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    .line 629
    .local v0, moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    if-nez v0, :cond_1

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->onCreateMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;)Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-result-object v0

    .line 631
    if-nez v0, :cond_0

    .line 662
    :goto_0
    return v7

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 636
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    .line 637
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0f0029

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 640
    :cond_2
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    .line 641
    iget v1, p2, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    .line 643
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->isKeyPreviewPopupEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->noKeyPreview()Z

    move-result v1

    if-nez v1, :cond_3

    move v7, v10

    .line 647
    .local v7, keyPreviewEnabled:Z
    :cond_3
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mConfigShowMoreKeysKeyboardAtTouchedPoint:Z

    if-eqz v1, :cond_4

    if-nez v7, :cond_4

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v3

    .line 655
    .local v3, pointX:I
    :goto_1
    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;->mPreviewVisibleOffset:I

    add-int v4, v1, v2

    .line 656
    .local v4, pointY:I
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-object v1, p0

    move-object v2, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->showMoreKeysPanel(Landroid/view/View;Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 658
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v8

    .line 659
    .local v8, translatedX:I
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v9

    .line 660
    .local v9, translatedY:I
    invoke-virtual {p2, v8, v9, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onShowMoreKeysPanel(IILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 661
    invoke-virtual {p0, v10}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->dimEntireKeyboard(Z)V

    move v7, v10

    .line 662
    goto :goto_0

    .line 647
    .end local v3           #pointX:I
    .end local v4           #pointY:I
    .end local v8           #translatedX:I
    .end local v9           #translatedY:I
    :cond_4
    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    goto :goto_1
.end method

.method private updateAltCodeKeyWhileTyping()V
    .locals 5

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v3

    .line 882
    .local v3, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-nez v3, :cond_1

    .line 886
    :cond_0
    return-void

    .line 883
    :cond_1
    iget-object v0, v3, Lcom/android/inputmethod/keyboard/Keyboard;->mAltCodeKeysWhileTyping:[Lcom/android/inputmethod/keyboard/Key;

    .local v0, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 884
    .local v2, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->cancelAllMessages()V

    .line 545
    invoke-super {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 546
    return-void
.end method

.method public closing()V
    .locals 1

    .prologue
    .line 836
    invoke-super {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 837
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->dismissMoreKeysPanel()Z

    .line 838
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 839
    return-void
.end method

.method public dismissMoreKeysPanel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 843
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 845
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    .line 846
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    .line 847
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->dimEntireKeyboard(Z)V

    .line 848
    const/4 v0, 0x1

    .line 850
    :cond_0
    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 862
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    invoke-static {v1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 864
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->dispatchHoverEvent(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v1

    .line 868
    .end local v0           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 679
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 682
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAltCodeKeyWhileTypingAnimAlpha()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingAnimAlpha:I

    return v0
.end method

.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .locals 0

    .prologue
    .line 460
    return-object p0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getLanguageOnSpacebarAnimAlpha()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mLanguageOnSpacebarAnimAlpha:I

    return v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mOldPointerCount:I

    return v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;

    return-object v0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v0, :cond_0

    .line 667
    const/4 v0, 0x1

    .line 669
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->isAnyInSlidingKeyInput()Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 523
    invoke-super {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->onAttachedToWindow()V

    .line 530
    return-void
.end method

.method protected onCreateMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;)Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    .locals 6
    .parameter "parentKey"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x2

    .line 565
    iget-object v3, p1, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    if-nez v3, :cond_0

    .line 579
    :goto_0
    return-object v2

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysLayout:I

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 569
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_1

    .line 570
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 572
    :cond_1
    const v3, 0x7f080042

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;

    .line 574
    .local v2, moreKeysKeyboardView:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;
    new-instance v3, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;

    invoke-direct {v3, v0, p1, p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;-><init>(Landroid/view/View;Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/KeyboardView;)V

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;->build()Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;

    move-result-object v1

    .line 576
    .local v1, moreKeysKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v2, v1}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 577
    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 534
    invoke-super {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->onDetachedFromWindow()V

    .line 540
    return-void
.end method

.method protected onDrawKeyTopVisuals(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V
    .locals 2
    .parameter "key"
    .parameter "canvas"
    .parameter "paint"
    .parameter "params"

    .prologue
    .line 920
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->altCodeWhileTyping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingAnimAlpha:I

    iput v0, p4, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mAnimAlpha:I

    .line 923
    :cond_0
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 924
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->drawSpacebar(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 926
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isLongPressEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mHasMultipleEnabledIMEsOrSubtypes:Z

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->drawKeyPopupHint(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V

    .line 935
    :cond_1
    :goto_0
    return-void

    .line 929
    :cond_2
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_3

    .line 930
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/KeyboardView;->onDrawKeyTopVisuals(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V

    .line 931
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->drawKeyPopupHint(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V

    goto :goto_0

    .line 933
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/KeyboardView;->onDrawKeyTopVisuals(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V

    goto :goto_0
.end method

.method protected onLongPress(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 5
    .parameter "parentKey"
    .parameter "tracker"

    .prologue
    const/4 v2, 0x1

    .line 594
    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 595
    .local v1, primaryCode:I
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->hasEmbeddedMoreKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    iget-object v3, p1, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v0, v3, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mCode:I

    .line 597
    .local v0, embeddedCode:I
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 598
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->invokeCodeInput(I)V

    .line 599
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->invokeReleaseKey(I)V

    .line 600
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hapticAndAudioFeedback(I)V

    .line 611
    .end local v0           #embeddedCode:I
    :goto_0
    return v2

    .line 603
    :cond_0
    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    const/16 v3, -0xa

    if-ne v1, v3, :cond_2

    .line 605
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->invokeCustomRequest(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 606
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 607
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->invokeReleaseKey(I)V

    goto :goto_0

    .line 611
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->openMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "me"

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    if-nez v0, :cond_0

    .line 688
    const/4 v0, 0x0

    .line 690
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public processMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 37
    .parameter "me"

    .prologue
    .line 695
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mHasDistinctMultitouch:Z

    if-nez v7, :cond_0

    const/16 v29, 0x1

    .line 696
    .local v29, nonDistinctMultitouch:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 697
    .local v8, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v31

    .line 698
    .local v31, pointerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mOldPointerCount:I

    move/from16 v30, v0

    .line 699
    .local v30, oldPointerCount:I
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mOldPointerCount:I

    .line 704
    if-eqz v29, :cond_1

    const/4 v7, 0x1

    move/from16 v0, v31

    if-le v0, v7, :cond_1

    const/4 v7, 0x1

    move/from16 v0, v30

    if-le v0, v7, :cond_1

    .line 705
    const/4 v7, 0x1

    .line 831
    :goto_1
    return v7

    .line 695
    .end local v8           #action:I
    .end local v29           #nonDistinctMultitouch:Z
    .end local v30           #oldPointerCount:I
    .end local v31           #pointerCount:I
    :cond_0
    const/16 v29, 0x0

    goto :goto_0

    .line 708
    .restart local v8       #action:I
    .restart local v29       #nonDistinctMultitouch:Z
    .restart local v30       #oldPointerCount:I
    .restart local v31       #pointerCount:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 709
    .local v5, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v25

    .line 710
    .local v25, index:I
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    .line 712
    .local v24, id:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    move/from16 v0, v24

    if-ne v0, v7, :cond_5

    .line 713
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v3

    .line 714
    .local v3, x:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v4

    .line 719
    .local v4, y:I
    :goto_2
    sget-boolean v7, Lcom/android/inputmethod/keyboard/MainKeyboardView;->ENABLE_USABILITY_STUDY_LOG:Z

    if-eqz v7, :cond_2

    .line 721
    packed-switch v8, :pswitch_data_0

    .line 738
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Action"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 741
    .local v22, eventTag:Ljava/lang/String;
    :goto_3
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 742
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v36

    .line 743
    .local v36, size:F
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v35

    .line 744
    .local v35, pressure:F
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V

    .line 754
    .end local v22           #eventTag:Ljava/lang/String;
    .end local v35           #pressure:F
    .end local v36           #size:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->isInKeyRepeat()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 755
    move/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .line 758
    .local v2, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    const/4 v7, 0x1

    move/from16 v0, v31

    if-le v0, v7, :cond_3

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v7

    if-nez v7, :cond_3

    .line 759
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->cancelKeyRepeatTimer()V

    .line 767
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_3
    if-eqz v29, :cond_9

    .line 769
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v7, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .line 770
    .restart local v2       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    const/4 v7, 0x1

    move/from16 v0, v31

    if-ne v0, v7, :cond_6

    const/4 v7, 0x2

    move/from16 v0, v30

    if-ne v0, v7, :cond_6

    .line 774
    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyOn(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v28

    .line 775
    .local v28, newKey:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mOldKey:Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v0, v28

    if-eq v7, v0, :cond_4

    move-object/from16 v7, p0

    .line 776
    invoke-virtual/range {v2 .. v7}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 777
    const/4 v7, 0x1

    if-ne v8, v7, :cond_4

    .line 778
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 793
    .end local v28           #newKey:Lcom/android/inputmethod/keyboard/Key;
    :cond_4
    :goto_4
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 716
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v3, v7

    .line 717
    .restart local v3       #x:I
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v4, v7

    .restart local v4       #y:I
    goto/16 :goto_2

    .line 723
    :pswitch_1
    const-string v22, "[Up]"

    .line 724
    .restart local v22       #eventTag:Ljava/lang/String;
    goto/16 :goto_3

    .line 726
    .end local v22           #eventTag:Ljava/lang/String;
    :pswitch_2
    const-string v22, "[Down]"

    .line 727
    .restart local v22       #eventTag:Ljava/lang/String;
    goto/16 :goto_3

    .line 729
    .end local v22           #eventTag:Ljava/lang/String;
    :pswitch_3
    const-string v22, "[PointerUp]"

    .line 730
    .restart local v22       #eventTag:Ljava/lang/String;
    goto/16 :goto_3

    .line 732
    .end local v22           #eventTag:Ljava/lang/String;
    :pswitch_4
    const-string v22, "[PointerDown]"

    .line 733
    .restart local v22       #eventTag:Ljava/lang/String;
    goto/16 :goto_3

    .line 735
    .end local v22           #eventTag:Ljava/lang/String;
    :pswitch_5
    const-string v22, ""

    .line 736
    .restart local v22       #eventTag:Ljava/lang/String;
    goto/16 :goto_3

    .line 780
    .end local v22           #eventTag:Ljava/lang/String;
    .restart local v2       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_6
    const/4 v7, 0x2

    move/from16 v0, v31

    if-ne v0, v7, :cond_7

    const/4 v7, 0x1

    move/from16 v0, v30

    if-ne v0, v7, :cond_7

    .line 783
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v26

    .line 784
    .local v26, lastX:I
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v27

    .line 785
    .local v27, lastY:I
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyOn(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mOldKey:Lcom/android/inputmethod/keyboard/Key;

    .line 786
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1, v5, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_4

    .line 787
    .end local v26           #lastX:I
    .end local v27           #lastY:I
    :cond_7
    const/4 v7, 0x1

    move/from16 v0, v31

    if-ne v0, v7, :cond_8

    const/4 v7, 0x1

    move/from16 v0, v30

    if-ne v0, v7, :cond_8

    move-object v7, v2

    move v9, v3

    move v10, v4

    move-wide v11, v5

    move-object/from16 v13, p0

    .line 788
    invoke-virtual/range {v7 .. v13}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    goto :goto_4

    .line 790
    :cond_8
    sget-object v7, Lcom/android/inputmethod/keyboard/MainKeyboardView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown touch panel behavior: pointer count is "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " (old "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ")"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 796
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_9
    const/4 v7, 0x2

    if-ne v8, v7, :cond_c

    .line 797
    const/16 v23, 0x0

    .local v23, i:I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 798
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v32

    .line 799
    .local v32, pointerId:I
    move/from16 v0, v32

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .line 803
    .restart local v2       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v7, :cond_b

    iget v7, v2, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    if-ne v7, v9, :cond_b

    .line 805
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v10

    .line 806
    .local v10, px:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v11

    .line 807
    .local v11, py:I
    const/4 v14, 0x0

    .local v14, motionEvent:Landroid/view/MotionEvent;
    :goto_6
    move-object v9, v2

    move-wide v12, v5

    .line 813
    invoke-virtual/range {v9 .. v14}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveEvent(IIJLandroid/view/MotionEvent;)V

    .line 814
    sget-boolean v7, Lcom/android/inputmethod/keyboard/MainKeyboardView;->ENABLE_USABILITY_STUDY_LOG:Z

    if-eqz v7, :cond_a

    .line 815
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v34

    .line 816
    .local v34, pointerSize:F
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v33

    .line 817
    .local v33, pointerPressure:F
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Move]"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V

    .line 797
    .end local v33           #pointerPressure:F
    .end local v34           #pointerSize:F
    :cond_a
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_5

    .line 809
    .end local v10           #px:I
    .end local v11           #py:I
    .end local v14           #motionEvent:Landroid/view/MotionEvent;
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v10, v7

    .line 810
    .restart local v10       #px:I
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v11, v7

    .line 811
    .restart local v11       #py:I
    move-object/from16 v14, p1

    .restart local v14       #motionEvent:Landroid/view/MotionEvent;
    goto/16 :goto_6

    .line 827
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    .end local v10           #px:I
    .end local v11           #py:I
    .end local v14           #motionEvent:Landroid/view/MotionEvent;
    .end local v23           #i:I
    .end local v32           #pointerId:I
    :cond_c
    move/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .restart local v2       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    move-object v15, v2

    move/from16 v16, v8

    move/from16 v17, v3

    move/from16 v18, v4

    move-wide/from16 v19, v5

    move-object/from16 v21, p0

    .line 828
    invoke-virtual/range {v15 .. v21}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 831
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_d
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setAltCodeKeyWhileTypingAnimAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 435
    iput p1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAltCodeKeyWhileTypingAnimAlpha:I

    .line 436
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->updateAltCodeKeyWhileTyping()V

    .line 437
    return-void
.end method

.method public setDistinctMultitouch(Z)V
    .locals 0
    .parameter "hasDistinctMultitouch"

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mHasDistinctMultitouch:Z

    .line 519
    return-void
.end method

.method public setGestureHandlingEnabledByUser(Z)V
    .locals 0
    .parameter "gestureHandlingEnabledByUser"

    .prologue
    .line 506
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setGestureHandlingEnabledByUser(Z)V

    .line 507
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 5
    .parameter "keyboard"

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView$KeyTimerHandler;->cancelLongPressTimer()V

    .line 479
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 480
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mVerticalCorrection:F

    add-float/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 482
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetector(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 483
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 484
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 486
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lcom/android/inputmethod/keyboard/Keyboard;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    .line 487
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    const/16 v3, 0xff

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/keyboard/Key;->getIcon(Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 489
    iget v1, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    sub-int v0, v1, v2

    .line 490
    .local v0, keyHeight:I
    int-to-float v1, v0

    iget v2, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpacebarTextRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpacebarTextSize:F

    .line 497
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 498
    return-void

    .line 487
    .end local v0           #keyHeight:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 441
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 442
    return-void
.end method

.method public setLanguageOnSpacebarAnimAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 426
    iput p1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mLanguageOnSpacebarAnimAlpha:I

    .line 427
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 428
    return-void
.end method

.method public setMainDictionaryAvailability(Z)V
    .locals 0
    .parameter "mainDictionaryAvailable"

    .prologue
    .line 502
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setMainDictionaryAvailability(Z)V

    .line 503
    return-void
.end method

.method public startDisplayLanguageOnSpacebar(ZZZ)V
    .locals 2
    .parameter "subtypeChanged"
    .parameter "needsToDisplayLanguage"
    .parameter "hasMultipleEnabledIMEsOrSubtypes"

    .prologue
    .line 890
    iput-boolean p2, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mNeedsToDisplayLanguage:Z

    .line 891
    iput-boolean p3, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mHasMultipleEnabledIMEsOrSubtypes:Z

    .line 892
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mLanguageOnSpacebarFadeoutAnimator:Landroid/animation/ObjectAnimator;

    .line 893
    .local v0, animator:Landroid/animation/ObjectAnimator;
    if-nez v0, :cond_1

    .line 894
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mNeedsToDisplayLanguage:Z

    .line 908
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 909
    return-void

    .line 896
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 897
    const/16 v1, 0xff

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setLanguageOnSpacebarAnimAlpha(I)V

    .line 898
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 899
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 901
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 903
    :cond_3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 904
    iget v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mLanguageOnSpacebarFinalAlpha:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mLanguageOnSpacebarAnimAlpha:I

    goto :goto_0
.end method

.method public updateAutoCorrectionState(Z)V
    .locals 1
    .parameter "isAutoCorrection"

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAutoCorrectionSpacebarLedEnabled:Z

    if-nez v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_0
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mAutoCorrectionSpacebarLedOn:Z

    .line 914
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MainKeyboardView;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0
.end method

.method public updateShortcutKey(Z)V
    .locals 3
    .parameter "available"

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 873
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-nez v0, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    const/4 v2, -0x6

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/keyboard/Keyboard;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    .line 875
    .local v1, shortcutKey:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v1, :cond_0

    .line 876
    invoke-virtual {v1, p1}, Lcom/android/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 877
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0
.end method
