.class public final Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;
.super Ljava/lang/Object;
.source "KeyVisualAttributes.java"


# static fields
.field private static final VISUAL_ATTRIBUTE_IDS:[I

.field private static final sVisualAttributeIds:Landroid/util/SparseIntArray;


# instance fields
.field public final mHintLabelColor:I

.field public final mHintLabelRatio:F

.field public final mHintLetterColor:I

.field public final mHintLetterRatio:F

.field public final mLabelRatio:F

.field public final mLabelSize:I

.field public final mLargeLabelRatio:F

.field public final mLargeLetterRatio:F

.field public final mLetterRatio:F

.field public final mLetterSize:I

.field public final mPreviewTextColor:I

.field public final mPreviewTextRatio:F

.field public final mShiftedLetterHintActivatedColor:I

.field public final mShiftedLetterHintInactivatedColor:I

.field public final mShiftedLetterHintRatio:F

.field public final mTextColor:I

.field public final mTextInactivatedColor:I

.field public final mTextShadowColor:I

.field public final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 49
    const/16 v4, 0x11

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->VISUAL_ATTRIBUTE_IDS:[I

    .line 68
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->sVisualAttributeIds:Landroid/util/SparseIntArray;

    .line 72
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->VISUAL_ATTRIBUTE_IDS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 73
    .local v1, attrId:I
    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->sVisualAttributeIds:Landroid/util/SparseIntArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v1           #attrId:I
    :cond_0
    return-void

    .line 49
    :array_0
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 5
    .parameter "keyAttr"

    .prologue
    const/16 v4, 0x15

    const/16 v3, 0x14

    const/16 v2, 0x13

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mTypeface:Landroid/graphics/Typeface;

    .line 97
    :goto_0
    invoke-static {p1, v3}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLetterRatio:F

    .line 99
    invoke-static {p1, v3}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionPixelSize(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLetterSize:I

    .line 101
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLabelRatio:F

    .line 103
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionPixelSize(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLabelSize:I

    .line 105
    const/16 v0, 0x16

    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLargeLetterRatio:F

    .line 107
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mLargeLabelRatio:F

    .line 109
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mHintLetterRatio:F

    .line 111
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mShiftedLetterHintRatio:F

    .line 113
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mHintLabelRatio:F

    .line 115
    const/16 v0, 0x23

    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mPreviewTextRatio:F

    .line 118
    const/16 v0, 0x1b

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mTextColor:I

    .line 119
    const/16 v0, 0x1d

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mTextInactivatedColor:I

    .line 121
    const/16 v0, 0x1c

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mTextShadowColor:I

    .line 122
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mHintLetterColor:I

    .line 123
    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mHintLabelColor:I

    .line 124
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mShiftedLetterHintInactivatedColor:I

    .line 126
    const/16 v0, 0x21

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mShiftedLetterHintActivatedColor:I

    .line 128
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mPreviewTextColor:I

    .line 129
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->mTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_0
.end method

.method public static newInstance(Landroid/content/res/TypedArray;)Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;
    .locals 5
    .parameter "keyAttr"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 79
    .local v2, indexCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 80
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 81
    .local v0, attrId:I
    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->sVisualAttributeIds:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-nez v3, :cond_0

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;-><init>(Landroid/content/res/TypedArray;)V

    .line 86
    .end local v0           #attrId:I
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
