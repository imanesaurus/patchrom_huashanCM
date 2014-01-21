.class public final Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;
.super Ljava/lang/Object;
.source "KeyDrawParams.java"


# instance fields
.field public mAnimAlpha:I

.field public mHintLabelColor:I

.field public mHintLabelSize:I

.field public mHintLetterColor:I

.field public mHintLetterSize:I

.field public mLabelSize:I

.field public mLargeLabelSize:I

.field public mLargeLetterSize:I

.field public mLetterSize:I

.field public mPreviewTextColor:I

.field public mPreviewTextSize:I

.field public mShiftedLetterHintActivatedColor:I

.field public mShiftedLetterHintInactivatedColor:I

.field public mShiftedLetterHintSize:I

.field public mTextColor:I

.field public mTextInactivatedColor:I

.field public mTextShadowColor:I

.field public mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V
    .locals 1
    .parameter "copyFrom"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTypeface:Landroid/graphics/Typeface;

    .line 51
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLetterSize:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLetterSize:I

    .line 52
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLabelSize:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLabelSize:I

    .line 53
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLargeLetterSize:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLargeLetterSize:I

    .line 54
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLargeLabelSize:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLargeLabelSize:I

    .line 55
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterSize:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterSize:I

    .line 56
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintSize:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintSize:I

    .line 57
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelSize:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelSize:I

    .line 58
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mPreviewTextSize:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mPreviewTextSize:I

    .line 60
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextColor:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextColor:I

    .line 61
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextInactivatedColor:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextInactivatedColor:I

    .line 62
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextShadowColor:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextShadowColor:I

    .line 63
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterColor:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterColor:I

    .line 64
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelColor:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelColor:I

    .line 65
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintInactivatedColor:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintInactivatedColor:I

    .line 66
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintActivatedColor:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintActivatedColor:I

    .line 67
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mPreviewTextColor:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mPreviewTextColor:I

    .line 69
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mAnimAlpha:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mAnimAlpha:I

    .line 70
    return-void
.end method

.method private static final selectColor(II)I
    .locals 0
    .parameter "attrColor"
    .parameter "defaultColor"

    .prologue
    .line 135
    if-eqz p0, :cond_0

    .line 138
    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method private static final selectTextSize(IFI)I
    .locals 1
    .parameter "keyHeight"
    .parameter "ratio"
    .parameter "defaultSize"

    .prologue
    .line 128
    invoke-static {p1}, Lcom/android/inputmethod/latin/ResourceUtils;->isValidFraction(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    int-to-float v0, p0

    mul-float/2addr v0, p1

    float-to-int p2, v0

    .line 131
    .end local p2
    :cond_0
    return p2
.end method

.method private static final selectTextSizeFromDimensionOrRatio(IIFI)I
    .locals 1
    .parameter "keyHeight"
    .parameter "dimens"
    .parameter "ratio"
    .parameter "defaultDimens"

    .prologue
    .line 117
    invoke-static {p1}, Lcom/android/inputmethod/latin/ResourceUtils;->isValidDimensionPixelSize(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    .end local p1
    :goto_0
    return p1

    .line 120
    .restart local p1
    :cond_0
    invoke-static {p2}, Lcom/android/inputmethod/latin/ResourceUtils;->isValidFraction(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    int-to-float v0, p0

    mul-float/2addr v0, p2

    float-to-int p1, v0

    goto :goto_0

    :cond_1
    move p1, p3

    .line 123
    goto :goto_0
.end method


# virtual methods
.method public mayCloneAndUpdateParams(ILcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;)Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;
    .locals 1
    .parameter "keyHeight"
    .parameter "attr"

    .prologue
    .line 107
    if-nez p2, :cond_0

    .line 112
    .end local p0
    :goto_0
    return-object p0

    .line 110
    .restart local p0
    :cond_0
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V

    .line 111
    .local v0, newParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;
    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->updateParams(ILcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;)V

    move-object p0, v0

    .line 112
    goto :goto_0
.end method

.method public updateParams(ILcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;)V
    .locals 3
    .parameter "keyHeight"
    .parameter "attr"

    .prologue
    .line 73
    if-nez p2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTypeface:Landroid/graphics/Typeface;

    .line 81
    :cond_1
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLetterSize:I

    iget v1, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLetterRatio:F

    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLetterSize:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectTextSizeFromDimensionOrRatio(IIFI)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLetterSize:I

    .line 83
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLabelSize:I

    iget v1, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLabelRatio:F

    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLabelSize:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectTextSizeFromDimensionOrRatio(IIFI)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLabelSize:I

    .line 85
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLargeLabelRatio:F

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLargeLabelSize:I

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectTextSize(IFI)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLargeLabelSize:I

    .line 86
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLargeLetterRatio:F

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLargeLetterSize:I

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectTextSize(IFI)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLargeLetterSize:I

    .line 87
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mHintLetterRatio:F

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterSize:I

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectTextSize(IFI)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterSize:I

    .line 88
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mShiftedLetterHintRatio:F

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintSize:I

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectTextSize(IFI)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintSize:I

    .line 90
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mHintLabelRatio:F

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelSize:I

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectTextSize(IFI)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelSize:I

    .line 91
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mPreviewTextRatio:F

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mPreviewTextSize:I

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectTextSize(IFI)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mPreviewTextSize:I

    .line 93
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mTextColor:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextColor:I

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextColor:I

    .line 94
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mTextInactivatedColor:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextInactivatedColor:I

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextInactivatedColor:I

    .line 95
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mTextShadowColor:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextShadowColor:I

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextShadowColor:I

    .line 96
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mHintLetterColor:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterColor:I

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterColor:I

    .line 97
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mHintLabelColor:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelColor:I

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelColor:I

    .line 98
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mShiftedLetterHintInactivatedColor:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintInactivatedColor:I

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintInactivatedColor:I

    .line 100
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mShiftedLetterHintActivatedColor:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintActivatedColor:I

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintActivatedColor:I

    .line 102
    iget v0, p2, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mPreviewTextColor:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mPreviewTextColor:I

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->selectColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mPreviewTextColor:I

    goto/16 :goto_0
.end method
