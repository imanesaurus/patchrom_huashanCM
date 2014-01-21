.class public Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;
.super Ljp/co/omronsoft/iwnnime/ml/KeyboardView;
.source "FlickKeyboardView.java"


# static fields
.field private static final COUNT_SLIDE_MODE_3:I = 0x3

.field private static final COUNT_SLIDE_MODE_4:I = 0x4

.field private static final FLICK_DUMMY_POPUP_RESID:I = 0x1

.field private static final FLICK_LONG_PRESSABLE_STATE_SET:[I = null

.field private static final FLICK_PREVIEWTEXT_GRAYOUT_ALPHA:I = 0x40

.field private static final OFFSET_DISPLAY_CANDIDADTE_VIEW:I = 0x37

.field private static final PREVIEW_BACKGROUND_CHANGE_WIDTH:I = 0x78


# instance fields
.field private mDiffThres:F

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mEnableMushroom:Z

.field private mFlickCenterArea:Landroid/graphics/RectF;

.field private mFlickDetectMode:Z

.field private mFlickIgnoreAreaAroundTap:Landroid/graphics/RectF;

.field private mFlickIgnoreAreaReverseFlick:Landroid/graphics/Region;

.field private mFlickKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;

.field private mFlickSensitivity:F

.field private mFlickedKey:I

.field private mHasMoved:Z

.field private mIsInputTypeNull:Z

.field private mKeyProportion:F

.field private mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field private mKeyboardBackground:Landroid/graphics/drawable/Drawable;

.field private mMenuItem:[I

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMinimumMoveEventDistance:F

.field private mModeCycleCount:I

.field private mOffsetInWindow:[I

.field private mPaddingBottom:I

.field private mPopupParent:Landroid/view/View;

.field private mPressX:I

.field private mPressY:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextDefaultColor:Landroid/content/res/ColorStateList;

.field private mPreviewTextGrayOut:Z

.field private mPreviewTextSizeLarge:I

.field private mQwertyToggleKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

.field private mShowPreview:Z

.field private mSlideModeStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101023c

    aput v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->FLICK_LONG_PRESSABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mShowPreview:Z

    .line 73
    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 100
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickDetectMode:Z

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickedKey:I

    .line 127
    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboardBackground:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mIsInputTypeNull:Z

    .line 139
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mEnableMushroom:Z

    .line 151
    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mQwertyToggleKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 161
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mHasMoved:Z

    .line 175
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickDetectMode:Z

    .line 176
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mSlideModeStart:Z

    .line 177
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewTextGrayOut:Z

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 179
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDisplayWidth:I

    .line 180
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDisplayHeight:I

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickSensitivity:F

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mMinimumMoveEventDistance:F

    .line 183
    return-void
.end method

.method private showFlickPopup(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V
    .locals 28
    .parameter "label"
    .parameter "image"
    .parameter "flickable"

    .prologue
    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v16

    .line 660
    .local v16, keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickedKey:I

    if-ltz v3, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickedKey:I

    if-gt v3, v4, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 665
    .local v2, previewPopup:Landroid/widget/PopupWindow;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    .line 666
    .local v21, previewText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickedKey:I

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 668
    .local v14, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    move-object/from16 v0, p0

    iget v6, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewHeight:I

    .line 670
    .local v6, popupHeight:I
    const/4 v3, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 672
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 673
    .local v22, res:Landroid/content/res/Resources;
    const v3, 0x7f02023b

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 675
    const/4 v15, 0x0

    .line 676
    .local v15, keyprev:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v17

    .line 677
    .local v17, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 678
    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 679
    if-eqz v15, :cond_2

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 684
    :cond_2
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v8

    .line 685
    .local v8, bottom:I
    const/4 v13, 0x0

    .line 686
    .local v13, isBackSquare:Z
    if-nez p1, :cond_f

    .line 688
    if-eqz p2, :cond_9

    .line 689
    move-object/from16 v12, p2

    .line 696
    .local v12, i:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-nez v12, :cond_c

    if-nez p3, :cond_c

    .line 698
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v4, v7, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 699
    iget-object v3, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    const/4 v3, 0x1

    iget-object v4, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    const/high16 v11, 0x4000

    .line 701
    .local v11, div:F
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v3, v3

    div-float v23, v3, v11

    .line 702
    .local v23, setSize:F
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 703
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 734
    .end local v11           #div:F
    .end local v12           #i:Landroid/graphics/drawable/Drawable;
    .end local v23           #setSize:F
    :cond_3
    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 736
    iget v3, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    const v4, 0x7f0b0023

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 737
    .local v10, defualtWidth:I
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v10

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 739
    .local v5, popupWidth:I
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .line 740
    .local v18, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v18, :cond_4

    .line 741
    move-object/from16 v0, v18

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 742
    move-object/from16 v0, v18

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 744
    :cond_4
    iget v3, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v4, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v5, 0x2

    sub-int v19, v3, v4

    .line 745
    .local v19, popupPreviewX:I
    iget v3, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewOffset:I

    add-int v20, v3, v4

    .line 746
    .local v20, popupPreviewY:I
    add-int/lit8 v20, v20, 0x14

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mOffsetInWindow:[I

    if-nez v3, :cond_5

    .line 748
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mOffsetInWindow:[I

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mOffsetInWindow:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getLocationInWindow([I)V

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mOffsetInWindow:[I

    const/4 v4, 0x0

    aget v7, v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mMiniKeyboardOffsetX:I

    move/from16 v26, v0

    add-int v7, v7, v26

    aput v7, v3, v4

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mOffsetInWindow:[I

    const/4 v4, 0x1

    aget v7, v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mMiniKeyboardOffsetY:I

    move/from16 v26, v0

    add-int v7, v7, v26

    aput v7, v3, v4

    .line 757
    :cond_5
    if-nez v13, :cond_7

    .line 758
    const/4 v15, 0x0

    .line 759
    const v3, 0x7f0c0003

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/2addr v3, v5

    div-int/lit8 v9, v3, 0x64

    .line 760
    .local v9, correctionWidth:I
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v17

    .line 761
    if-gez v19, :cond_10

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v9, :cond_10

    .line 762
    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreviewLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 763
    if-nez v15, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_6

    .line 764
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    const v4, 0x7f02023d

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    .line 773
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    .end local v9           #correctionWidth:I
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 778
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewTextGrayOut:Z

    if-eqz v3, :cond_11

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    const/16 v7, 0x40

    invoke-virtual {v4, v7}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 785
    :goto_5
    iget v3, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mSlideModeStart:Z

    if-eqz v3, :cond_12

    .line 786
    :cond_8
    sget-object v25, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->EMPTY_STATE_SET:[I

    .line 790
    .local v25, state:[I
    :goto_6
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 792
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 793
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mOffsetInWindow:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int v3, v3, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mOffsetInWindow:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    add-int v4, v4, v20

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .line 690
    .end local v5           #popupWidth:I
    .end local v10           #defualtWidth:I
    .end local v18           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v19           #popupPreviewX:I
    .end local v20           #popupPreviewY:I
    .end local v25           #state:[I
    :cond_9
    iget-object v3, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    .line 691
    iget-object v12, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .restart local v12       #i:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 693
    .end local v12           #i:Landroid/graphics/drawable/Drawable;
    :cond_a
    iget-object v12, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .restart local v12       #i:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 700
    :cond_b
    const/high16 v11, 0x3f80

    goto/16 :goto_2

    .line 705
    :cond_c
    if-eqz v12, :cond_3

    .line 706
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v7, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 707
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 709
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0x4

    if-lt v3, v4, :cond_e

    .line 710
    const v3, 0x7f020244

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 711
    .local v24, square:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 714
    const v3, 0x7f020244

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 715
    if-eqz v24, :cond_d

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 719
    :cond_d
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    const v4, 0x7f0b002a

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v8, v3, v4

    .line 720
    const/4 v13, 0x1

    .line 721
    goto/16 :goto_3

    .line 722
    .end local v24           #square:Landroid/graphics/drawable/Drawable;
    :cond_e
    const v3, 0x7f0b0029

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v8, v3

    goto/16 :goto_3

    .line 727
    .end local v12           #i:Landroid/graphics/drawable/Drawable;
    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v4, v7, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 728
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v4, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 730
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 731
    const v3, 0x7f0b002b

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v8, v3

    goto/16 :goto_3

    .line 766
    .restart local v5       #popupWidth:I
    .restart local v9       #correctionWidth:I
    .restart local v10       #defualtWidth:I
    .restart local v18       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v19       #popupPreviewX:I
    .restart local v20       #popupPreviewY:I
    :cond_10
    add-int v3, v19, v5

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v3, v9, :cond_6

    .line 767
    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreviewRight()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 768
    if-nez v15, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_6

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    const v4, 0x7f020241

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 781
    .end local v9           #correctionWidth:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewTextDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_5

    .line 788
    :cond_12
    sget-object v25, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->FLICK_LONG_PRESSABLE_STATE_SET:[I

    .restart local v25       #state:[I
    goto/16 :goto_6

    .line 798
    :cond_13
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 799
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPopupParent:Landroid/view/View;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mOffsetInWindow:[I

    const/16 v26, 0x0

    aget v7, v7, v26

    add-int v7, v7, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mOffsetInWindow:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    add-int v26, v26, v20

    move/from16 v0, v26

    invoke-virtual {v2, v3, v4, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearFlickedKeyTop()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 848
    return-void
.end method

.method public clearWindowInfo()V
    .locals 1

    .prologue
    .line 904
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->clearWindowInfo()V

    .line 905
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mOffsetInWindow:[I

    .line 906
    return-void
.end method

.method public closing()V
    .locals 1

    .prologue
    .line 837
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->closing()V

    .line 838
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 841
    :cond_0
    return-void
.end method

.method public flick(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 601
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickedKey:I

    invoke-interface {v0, v1, p1}, Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;->onFlick(II)V

    .line 602
    return-void
.end method

.method public getKey(II)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .locals 10
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 882
    const/4 v7, 0x0

    .line 883
    .local v7, positionKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getPaddingLeft()I

    move-result v8

    sub-int v4, p1, v8

    .line 884
    .local v4, keyboardX:I
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mVerticalCorrection:I

    add-int/2addr v8, p2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getPaddingTop()I

    move-result v9

    sub-int v5, v8, v9

    .line 885
    .local v5, keyboardY:I
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v8, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getNearestKeys(II)[I

    move-result-object v3

    .line 886
    .local v3, keyIndices:[I
    array-length v2, v3

    .line 888
    .local v2, keyCount:I
    if-lez v2, :cond_0

    .line 889
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v6

    .line 891
    .local v6, keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 892
    aget v8, v3, v0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 893
    .local v1, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    invoke-virtual {v1, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isInside(II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 894
    move-object v7, v1

    .line 899
    .end local v0           #i:I
    .end local v1           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v6           #keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    :cond_0
    return-object v7

    .line 891
    .restart local v0       #i:I
    .restart local v1       #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .restart local v6       #keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initPopupView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V
    .locals 7
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 191
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 192
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 194
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 196
    .local v1, inflate:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 197
    const v4, 0x7f030009

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 198
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewTextSizeLarge:I

    .line 199
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v2

    .line 200
    .local v2, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyPreviewColor()I

    move-result v0

    .line 202
    .local v0, color:I
    if-eqz v0, :cond_0

    .line 203
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    .end local v0           #color:I
    :cond_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewTextDefaultColor:Landroid/content/res/ColorStateList;

    .line 207
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 208
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPaddingBottom:I

    .line 211
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 212
    iput-object p0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPopupParent:Landroid/view/View;

    .line 213
    return-void
.end method

.method protected onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 813
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mSlideModeStart:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mIsInputTypeNull:Z

    if-eqz v1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return v0

    .line 817
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;

    invoke-interface {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;->onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 818
    invoke-virtual {p0, v0, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickDetectMode(ZI)V

    .line 819
    const/4 v0, 0x1

    goto :goto_0

    .line 821
    :cond_2
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 36
    .parameter "ev"

    .prologue
    .line 341
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v30

    if-nez v30, :cond_0

    .line 342
    const/16 v30, 0x1

    .line 591
    :goto_0
    return v30

    .line 344
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    packed-switch v30, :pswitch_data_0

    .line 591
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v30

    goto :goto_0

    .line 346
    :pswitch_0
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mHasMoved:Z

    .line 347
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mMiniKeyboardOnScreen:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 348
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->dismissPopupKeyboard()V

    .line 349
    const/16 v30, 0x1

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPressX:I

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPressY:I

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPressX:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPressY:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getKey(II)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-result-object v28

    .line 354
    .local v28, touchKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    if-eqz v28, :cond_1

    .line 355
    move-object/from16 v0, v28

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v27, v30, v31

    .line 356
    .local v27, touchCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;->onPress(I)V

    .line 357
    const/16 v30, -0xde

    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    const/16 v30, -0x6a

    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    const/16 v30, -0x131

    move/from16 v0, v27

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 360
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mEnableMushroom:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    .line 361
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    .line 370
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickDetectMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    .line 372
    .local v23, pressX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    .line 373
    .local v24, pressY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickedKey:I

    move/from16 v31, v0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 374
    .local v11, flickedKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getPaddingLeft()I

    move-result v31

    add-int v12, v30, v31

    .line 375
    .local v12, flickedKeyXpos:I
    iget v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getPaddingTop()I

    move-result v31

    add-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mVerticalCorrection:I

    move/from16 v31, v0

    sub-int v13, v30, v31

    .line 376
    .local v13, flickedKeyYpos:I
    iget v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x4000

    div-float v20, v30, v31

    .line 377
    .local v20, keyHeightHalf:F
    iget v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x4000

    div-float v21, v30, v31

    .line 378
    .local v21, keyWidthHalf:F
    int-to-float v0, v12

    move/from16 v30, v0

    add-float v18, v30, v21

    .line 379
    .local v18, keyCenterX:F
    int-to-float v0, v13

    move/from16 v30, v0

    add-float v19, v30, v20

    .line 381
    .local v19, keyCenterY:F
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickSensitivity:F

    move/from16 v30, v0

    mul-float v30, v30, v20

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDiffThres:F

    .line 382
    iget v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyProportion:F

    .line 383
    new-instance v30, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickSensitivity:F

    move/from16 v31, v0

    mul-float v31, v31, v21

    sub-float v31, v18, v31

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDiffThres:F

    move/from16 v32, v0

    sub-float v32, v19, v32

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickSensitivity:F

    move/from16 v33, v0

    mul-float v33, v33, v21

    add-float v33, v33, v18

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDiffThres:F

    move/from16 v34, v0

    add-float v34, v34, v19

    invoke-direct/range {v30 .. v34}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickCenterArea:Landroid/graphics/RectF;

    .line 385
    new-instance v30, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mMinimumMoveEventDistance:F

    move/from16 v31, v0

    sub-float v31, v23, v31

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mMinimumMoveEventDistance:F

    move/from16 v32, v0

    sub-float v32, v24, v32

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mMinimumMoveEventDistance:F

    move/from16 v33, v0

    add-float v33, v33, v23

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mMinimumMoveEventDistance:F

    move/from16 v34, v0

    add-float v34, v34, v24

    invoke-direct/range {v30 .. v34}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickIgnoreAreaAroundTap:Landroid/graphics/RectF;

    .line 388
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickIgnoreAreaReverseFlick:Landroid/graphics/Region;

    .line 391
    const/4 v10, 0x0

    .line 392
    .local v10, flickIgnoreAreaRF:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickSensitivity:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    cmpg-float v30, v30, v31

    if-gez v30, :cond_1

    .line 393
    sub-float v8, v23, v18

    .line 394
    .local v8, diffX:F
    sub-float v9, v24, v19

    .line 395
    .local v9, diffY:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 396
    .local v3, absX:F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 398
    .local v4, absY:F
    new-instance v10, Landroid/graphics/Path;

    .end local v10           #flickIgnoreAreaRF:Landroid/graphics/Path;
    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 399
    .restart local v10       #flickIgnoreAreaRF:Landroid/graphics/Path;
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyProportion:F

    move/from16 v30, v0

    mul-float v30, v30, v4

    cmpl-float v30, v3, v30

    if-lez v30, :cond_8

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyProportion:F

    move/from16 v30, v0

    div-float v30, v3, v30

    const/high16 v31, 0x3f80

    add-float v6, v30, v31

    .line 403
    .local v6, adjustY:F
    const/4 v5, 0x1

    .line 404
    .local v5, adjustX:I
    const/16 v30, 0x0

    cmpg-float v30, v8, v30

    if-gez v30, :cond_5

    .line 405
    const/4 v5, -0x1

    .line 407
    :cond_5
    const/high16 v30, 0x3f80

    sub-float v30, v19, v30

    move/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    int-to-float v0, v5

    move/from16 v30, v0

    add-float v30, v30, v23

    sub-float v31, v19, v6

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 409
    int-to-float v0, v5

    move/from16 v30, v0

    add-float v30, v30, v23

    add-float v31, v19, v6

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    const/high16 v30, 0x3f80

    add-float v30, v30, v19

    move/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 423
    .end local v5           #adjustX:I
    .end local v6           #adjustY:F
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 425
    new-instance v30, Landroid/graphics/Region;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Region;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickIgnoreAreaReverseFlick:Landroid/graphics/Region;

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickIgnoreAreaReverseFlick:Landroid/graphics/Region;

    move-object/from16 v30, v0

    new-instance v31, Landroid/graphics/Region;

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getWidth()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getHeight()I

    move-result v35

    invoke-direct/range {v31 .. v35}, Landroid/graphics/Region;-><init>(IIII)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    goto/16 :goto_1

    .line 363
    .end local v3           #absX:F
    .end local v4           #absY:F
    .end local v8           #diffX:F
    .end local v9           #diffY:F
    .end local v10           #flickIgnoreAreaRF:Landroid/graphics/Path;
    .end local v11           #flickedKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v12           #flickedKeyXpos:I
    .end local v13           #flickedKeyYpos:I
    .end local v18           #keyCenterX:F
    .end local v19           #keyCenterY:F
    .end local v20           #keyHeightHalf:F
    .end local v21           #keyWidthHalf:F
    .end local v23           #pressX:F
    .end local v24           #pressY:F
    :cond_6
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    goto/16 :goto_2

    .line 365
    :cond_7
    const/16 v30, -0x19c

    move/from16 v0, v27

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 366
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    goto/16 :goto_2

    .line 413
    .restart local v3       #absX:F
    .restart local v4       #absY:F
    .restart local v8       #diffX:F
    .restart local v9       #diffY:F
    .restart local v10       #flickIgnoreAreaRF:Landroid/graphics/Path;
    .restart local v11       #flickedKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .restart local v12       #flickedKeyXpos:I
    .restart local v13       #flickedKeyYpos:I
    .restart local v18       #keyCenterX:F
    .restart local v19       #keyCenterY:F
    .restart local v20       #keyHeightHalf:F
    .restart local v21       #keyWidthHalf:F
    .restart local v23       #pressX:F
    .restart local v24       #pressY:F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyProportion:F

    move/from16 v30, v0

    mul-float v30, v30, v4

    const/high16 v31, 0x3f80

    add-float v5, v30, v31

    .line 414
    .local v5, adjustX:F
    const/4 v6, 0x1

    .line 415
    .local v6, adjustY:I
    const/16 v30, 0x0

    cmpg-float v30, v9, v30

    if-gez v30, :cond_9

    .line 416
    const/4 v6, -0x1

    .line 418
    :cond_9
    const/high16 v30, 0x3f80

    sub-float v30, v18, v30

    move/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 419
    sub-float v30, v18, v5

    int-to-float v0, v6

    move/from16 v31, v0

    add-float v31, v31, v24

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 420
    add-float v30, v18, v5

    int-to-float v0, v6

    move/from16 v31, v0

    add-float v31, v31, v24

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 421
    const/high16 v30, 0x3f80

    add-float v30, v30, v18

    move/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3

    .line 466
    .end local v3           #absX:F
    .end local v4           #absY:F
    .end local v5           #adjustX:F
    .end local v6           #adjustY:I
    .end local v8           #diffX:F
    .end local v9           #diffY:F
    .end local v10           #flickIgnoreAreaRF:Landroid/graphics/Path;
    .end local v11           #flickedKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v12           #flickedKeyXpos:I
    .end local v13           #flickedKeyYpos:I
    .end local v18           #keyCenterX:F
    .end local v19           #keyCenterY:F
    .end local v20           #keyHeightHalf:F
    .end local v21           #keyWidthHalf:F
    .end local v23           #pressX:F
    .end local v24           #pressY:F
    .end local v27           #touchCode:I
    .end local v28           #touchKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickDetectMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 467
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mHasMoved:Z

    move/from16 v30, v0

    if-nez v30, :cond_c

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickIgnoreAreaAroundTap:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickIgnoreAreaAroundTap:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    invoke-virtual/range {v30 .. v32}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 470
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 472
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickIgnoreAreaReverseFlick:Landroid/graphics/Region;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickIgnoreAreaReverseFlick:Landroid/graphics/Region;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/graphics/Region;->contains(II)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickCenterArea:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickCenterArea:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    invoke-virtual/range {v30 .. v32}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v30

    if-nez v30, :cond_b

    .line 475
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 478
    :cond_b
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mHasMoved:Z

    .line 491
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickedKey:I

    move/from16 v31, v0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 492
    .local v14, flickedkey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget v0, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getPaddingLeft()I

    move-result v31

    add-int v12, v30, v31

    .line 493
    .restart local v12       #flickedKeyXpos:I
    iget v0, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getPaddingTop()I

    move-result v31

    add-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mVerticalCorrection:I

    move/from16 v31, v0

    sub-int v13, v30, v31

    .line 494
    .restart local v13       #flickedKeyYpos:I
    int-to-float v0, v12

    move/from16 v30, v0

    iget v0, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x4000

    div-float v31, v31, v32

    add-float v18, v30, v31

    .line 495
    .restart local v18       #keyCenterX:F
    int-to-float v0, v13

    move/from16 v30, v0

    iget v0, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x4000

    div-float v31, v31, v32

    add-float v19, v30, v31

    .line 496
    .restart local v19       #keyCenterY:F
    iget-object v0, v14, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v7, v30, v31

    .line 497
    .local v7, code:I
    const/16 v30, -0xe6

    move/from16 v0, v30

    if-eq v7, v0, :cond_d

    const/16 v30, -0x72

    move/from16 v0, v30

    if-ne v7, v0, :cond_19

    .line 500
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 501
    .local v15, getX:F
    sub-float v8, v15, v18

    .line 502
    .restart local v8       #diffX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mQwertyToggleKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-object/from16 v30, v0

    if-nez v30, :cond_11

    .line 503
    new-instance v25, Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f050036

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 504
    .local v25, qwertyKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    invoke-virtual/range {v25 .. v25}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v22

    .line 505
    .local v22, keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    const/16 v16, 0x0

    .local v16, index:I
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_f

    .line 506
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 507
    .local v17, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    move-object/from16 v0, v17

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    const/16 v31, -0xe6

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    move-object/from16 v0, v17

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    const/16 v31, -0x72

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    .line 509
    :cond_e
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mQwertyToggleKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 513
    .end local v17           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mQwertyToggleKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-object/from16 v30, v0

    if-nez v30, :cond_11

    .line 514
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 505
    .restart local v17       #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 517
    .end local v16           #index:I
    .end local v17           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v22           #keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    .end local v25           #qwertyKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mQwertyToggleKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getPaddingLeft()I

    move-result v31

    add-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mQwertyToggleKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move/from16 v31, v0

    add-int v26, v30, v31

    .line 518
    .local v26, rightx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mQwertyToggleKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    move/from16 v29, v0

    .line 520
    .local v29, width:I
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getWidth()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v15, v30

    if-ltz v30, :cond_12

    .line 545
    :goto_5
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 522
    :cond_12
    mul-int/lit8 v30, v29, 0x3

    add-int v30, v30, v26

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v15, v30

    if-lez v30, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mModeCycleCount:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_13

    .line 524
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mSlideModeStart:Z

    .line 525
    const/16 v30, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto :goto_5

    .line 526
    :cond_13
    mul-int/lit8 v30, v29, 0x2

    add-int v30, v30, v26

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v15, v30

    if-lez v30, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mModeCycleCount:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_14

    .line 528
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mSlideModeStart:Z

    .line 529
    const/16 v30, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto :goto_5

    .line 530
    :cond_14
    add-int v30, v29, v26

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v15, v30

    if-lez v30, :cond_15

    .line 532
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mSlideModeStart:Z

    .line 533
    const/16 v30, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto :goto_5

    .line 534
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDiffThres:F

    move/from16 v30, v0

    cmpl-float v30, v8, v30

    if-gtz v30, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mSlideModeStart:Z

    move/from16 v30, v0

    if-eqz v30, :cond_17

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v30, v30, v15

    if-gez v30, :cond_17

    .line 536
    :cond_16
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mSlideModeStart:Z

    .line 537
    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto/16 :goto_5

    .line 538
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mSlideModeStart:Z

    move/from16 v30, v0

    if-eqz v30, :cond_18

    .line 540
    const/16 v30, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto/16 :goto_5

    .line 543
    :cond_18
    const/16 v30, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto/16 :goto_5

    .line 548
    .end local v8           #diffX:F
    .end local v15           #getX:F
    .end local v26           #rightx:I
    .end local v29           #width:I
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    sub-float v8, v30, v18

    .line 549
    .restart local v8       #diffX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    sub-float v9, v30, v19

    .line 550
    .restart local v9       #diffY:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 551
    .restart local v3       #absX:F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 553
    .restart local v4       #absY:F
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyProportion:F

    move/from16 v30, v0

    mul-float v30, v30, v4

    cmpl-float v30, v3, v30

    if-lez v30, :cond_1c

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDiffThres:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyProportion:F

    move/from16 v31, v0

    mul-float v30, v30, v31

    cmpl-float v30, v8, v30

    if-lez v30, :cond_1a

    .line 556
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    .line 576
    :goto_6
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 557
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDiffThres:F

    move/from16 v30, v0

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyProportion:F

    move/from16 v31, v0

    mul-float v30, v30, v31

    cmpg-float v30, v8, v30

    if-gez v30, :cond_1b

    .line 559
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto :goto_6

    .line 562
    :cond_1b
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto :goto_6

    .line 565
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDiffThres:F

    move/from16 v30, v0

    cmpl-float v30, v9, v30

    if-lez v30, :cond_1d

    .line 567
    const/16 v30, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto :goto_6

    .line 568
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mDiffThres:F

    move/from16 v30, v0

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    cmpg-float v30, v9, v30

    if-gez v30, :cond_1e

    .line 570
    const/16 v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto :goto_6

    .line 573
    :cond_1e
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    goto :goto_6

    .line 585
    .end local v3           #absX:F
    .end local v4           #absY:F
    .end local v7           #code:I
    .end local v8           #diffX:F
    .end local v9           #diffY:F
    .end local v12           #flickedKeyXpos:I
    .end local v13           #flickedKeyYpos:I
    .end local v14           #flickedkey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v18           #keyCenterX:F
    .end local v19           #keyCenterY:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnableMushroom(Z)V
    .locals 0
    .parameter "enableMushroom"

    .prologue
    .line 872
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mEnableMushroom:Z

    .line 873
    return-void
.end method

.method public setFlickDetectMode(ZI)V
    .locals 12
    .parameter "flick"
    .parameter "keycode"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 292
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickDetectMode:Z

    .line 293
    const/4 v7, -0x1

    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickedKey:I

    .line 294
    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mSlideModeStart:Z

    .line 296
    if-eqz p1, :cond_7

    .line 297
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPressX:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getPaddingLeft()I

    move-result v8

    sub-int v5, v7, v8

    .line 298
    .local v5, x:I
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPressY:I

    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mVerticalCorrection:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getPaddingTop()I

    move-result v8

    sub-int v6, v7, v8

    .line 299
    .local v6, y:I
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v7, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getNearestKeys(II)[I

    move-result-object v3

    .line 301
    .local v3, keyidx:[I
    array-length v7, v3

    if-lez v7, :cond_6

    .line 302
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v7}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    .line 303
    .local v4, keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    array-length v2, v3

    .line 305
    .local v2, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 306
    aget v7, v3, v0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 307
    .local v1, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget-object v7, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    aget v7, v7, v9

    if-ne v7, p2, :cond_5

    .line 311
    .end local v1           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_0
    if-lt v0, v2, :cond_1

    .line 312
    const/4 v0, 0x0

    .line 314
    :cond_1
    aget v7, v3, v0

    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickedKey:I

    .line 316
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->isPreviewEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 317
    iput-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mShowPreview:Z

    .line 318
    invoke-super {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setPreviewEnabled(Z)V

    .line 320
    :cond_2
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 321
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    :cond_3
    invoke-virtual {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->flick(I)V

    .line 333
    .end local v0           #i:I
    .end local v2           #keyCount:I
    .end local v3           #keyidx:[I
    .end local v4           #keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_4
    :goto_1
    return-void

    .line 305
    .restart local v0       #i:I
    .restart local v1       #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .restart local v2       #keyCount:I
    .restart local v3       #keyidx:[I
    .restart local v4       #keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0           #i:I
    .end local v1           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v2           #keyCount:I
    .end local v4           #keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    :cond_6
    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickDetectMode:Z

    goto :goto_1

    .line 328
    .end local v3           #keyidx:[I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_7
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mShowPreview:Z

    if-eqz v7, :cond_4

    .line 330
    invoke-super {p0, v10}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_1
.end method

.method public setFlickSensitivity(I)V
    .locals 2
    .parameter "thres"

    .prologue
    .line 830
    int-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickSensitivity:F

    .line 831
    return-void
.end method

.method public setFlickedGrayoutKeyTop(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "label"
    .parameter "flickable"

    .prologue
    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewTextGrayOut:Z

    .line 638
    invoke-virtual {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedKeyTop(Ljava/lang/CharSequence;Z)V

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewTextGrayOut:Z

    .line 640
    return-void
.end method

.method public setFlickedKeyGuide(Z)V
    .locals 2
    .parameter "flickable"

    .prologue
    const/4 v1, 0x0

    .line 646
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mShowPreview:Z

    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-direct {p0, v1, v1, p1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->showFlickPopup(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public setFlickedKeyTop(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "label"
    .parameter "flickable"

    .prologue
    .line 625
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mShowPreview:Z

    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 628
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->showFlickPopup(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public setFlickedPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "preview"

    .prologue
    const/4 v2, 0x0

    .line 610
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mShowPreview:Z

    if-nez v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 613
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 616
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v2}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->showFlickPopup(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public setIsInputTypeNull(Z)V
    .locals 0
    .parameter "isInputTypeNull"

    .prologue
    .line 863
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mIsInputTypeNull:Z

    .line 864
    return-void
.end method

.method public setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    .locals 5
    .parameter "keyboard"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f05002f

    .line 221
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 223
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getXmlLayoutResId()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 224
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getXmlLayoutResId()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 225
    :cond_0
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboardBackground:Landroid/graphics/drawable/Drawable;

    .line 226
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->clearWindowInfo()V

    .line 228
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v1

    .line 229
    .local v1, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getKeyboardBg1Line()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 231
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboardBackground:Landroid/graphics/drawable/Drawable;

    .line 233
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    :cond_1
    :goto_0
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 247
    return-void

    .line 238
    :cond_2
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getXmlLayoutResId()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 239
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->clearWindowInfo()V

    .line 241
    :cond_3
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboardBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboardBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mKeyboardBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setModeCycleCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 854
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mModeCycleCount:I

    .line 855
    return-void
.end method

.method public setOnKeyboardActionListener(Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 280
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setOnKeyboardActionListener(Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;)V

    .line 281
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mFlickKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;

    .line 282
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 266
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setPopupOffset(II)V

    .line 267
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mMiniKeyboardOffsetX:I

    .line 268
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mMiniKeyboardOffsetY:I

    .line 269
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 272
    :cond_0
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .parameter "previewEnabled"

    .prologue
    .line 255
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setPreviewEnabled(Z)V

    .line 256
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->mShowPreview:Z

    .line 257
    return-void
.end method
