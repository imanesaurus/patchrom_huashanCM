.class final Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;
.super Ljava/lang/Object;
.source "SuggestionStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuggestionStripViewParams"
.end annotation


# static fields
.field private static final BOLD_SPAN:Landroid/text/style/CharacterStyle;

.field private static final UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;


# instance fields
.field private final mAlphaObsoleted:F

.field private final mCenterSuggestionIndex:I

.field private final mCenterSuggestionWeight:F

.field private final mColorAutoCorrect:I

.field private final mColorSuggested:I

.field private final mColorTypedWord:I

.field private final mColorValidTypedWord:I

.field public final mDividerWidth:I

.field private final mDividers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHintToSaveView:Landroid/widget/TextView;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftwardsArrowView:Landroid/widget/TextView;

.field private mMaxMoreSuggestionsRow:I

.field public final mMinMoreSuggestionsWidth:F

.field public mMoreSuggestionsAvailable:Z

.field public final mMoreSuggestionsBottomGap:I

.field private final mMoreSuggestionsHint:Landroid/graphics/drawable/Drawable;

.field public final mMoreSuggestionsRowHeight:I

.field public final mPadding:I

.field private final mSuggestionStripOption:I

.field public final mSuggestionsCountInStrip:I

.field public final mSuggestionsStripHeight:I

.field private final mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWordToSaveView:Landroid/widget/TextView;

.field private final mWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->BOLD_SPAN:Landroid/text/style/CharacterStyle;

    .line 165
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p4, words:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .local p5, dividers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mTexts:Ljava/util/ArrayList;

    .line 182
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mWords:Ljava/util/ArrayList;

    .line 183
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mDividers:Ljava/util/ArrayList;

    .line 184
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mInfos:Ljava/util/ArrayList;

    .line 186
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 187
    .local v9, word:Landroid/widget/TextView;
    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 188
    .local v6, divider:Landroid/view/View;
    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mPadding:I

    .line 189
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v6, v10, v11}, Landroid/view/View;->measure(II)V

    .line 191
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mDividerWidth:I

    .line 193
    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 194
    .local v8, res:Landroid/content/res/Resources;
    const v10, 0x7f0c0012

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionsStripHeight:I

    .line 196
    sget-object v10, Lcom/android/inputmethod/latin/R$styleable;->SuggestionStripView:[I

    const v11, 0x7f0f000a

    invoke-virtual {p1, p2, v10, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 198
    .local v1, a:Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionStripOption:I

    .line 200
    const/4 v10, 0x5

    const/high16 v11, 0x3f80

    invoke-static {v1, v10, v11}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v5

    .line 202
    .local v5, alphaValidTypedWord:F
    const/4 v10, 0x6

    const/high16 v11, 0x3f80

    invoke-static {v1, v10, v11}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v4

    .line 204
    .local v4, alphaTypedWord:F
    const/4 v10, 0x7

    const/high16 v11, 0x3f80

    invoke-static {v1, v10, v11}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v2

    .line 206
    .local v2, alphaAutoCorrect:F
    const/16 v10, 0x8

    const/high16 v11, 0x3f80

    invoke-static {v1, v10, v11}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v3

    .line 208
    .local v3, alphaSuggested:F
    const/16 v10, 0x8

    const/high16 v11, 0x3f80

    invoke-static {v1, v10, v11}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mAlphaObsoleted:F

    .line 210
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-static {v10, v5}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->applyAlpha(IF)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorValidTypedWord:I

    .line 212
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-static {v10, v4}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->applyAlpha(IF)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorTypedWord:I

    .line 214
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-static {v10, v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->applyAlpha(IF)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorAutoCorrect:I

    .line 216
    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-static {v10, v3}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->applyAlpha(IF)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorSuggested:I

    .line 218
    const/16 v10, 0xa

    const/4 v11, 0x3

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionsCountInStrip:I

    .line 221
    const/16 v10, 0xb

    const v11, 0x3ecccccd

    invoke-static {v1, v10, v11}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionWeight:F

    .line 224
    const/16 v10, 0xc

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMaxMoreSuggestionsRow:I

    .line 227
    const/16 v10, 0xd

    const/high16 v11, 0x3f80

    invoke-static {v1, v10, v11}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMinMoreSuggestionsWidth:F

    .line 229
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    const v10, 0x7f0c001c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    iget v11, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorAutoCorrect:I

    invoke-static {v8, v10, v11}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getMoreSuggestionsHint(Landroid/content/res/Resources;FI)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsHint:Landroid/graphics/drawable/Drawable;

    .line 233
    iget v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionsCountInStrip:I

    div-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionIndex:I

    .line 234
    const v10, 0x7f0c0015

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsBottomGap:I

    .line 236
    const v10, 0x7f0c0014

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsRowHeight:I

    .line 239
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 240
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f04000e

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mWordToSaveView:Landroid/widget/TextView;

    .line 241
    const v10, 0x7f040001

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mLeftwardsArrowView:Landroid/widget/TextView;

    .line 242
    const v10, 0x7f040001

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mHintToSaveView:Landroid/widget/TextView;

    .line 243
    return-void
.end method

.method private static addDivider(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .parameter "stripView"
    .parameter "divider"

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 355
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 356
    return-void
.end method

.method private static applyAlpha(IF)I
    .locals 4
    .parameter "color"
    .parameter "alpha"

    .prologue
    .line 347
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 348
    .local v0, newAlpha:I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private static getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"
    .parameter "maxWidth"
    .parameter "paint"

    .prologue
    const v5, 0x3f333333

    .line 539
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 556
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 540
    .restart local p0
    :cond_1
    const/high16 v3, 0x3f80

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 541
    invoke-static {p0, p2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    .line 542
    .local v2, width:I
    if-le v2, p1, :cond_0

    .line 545
    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 546
    .local v1, scaleX:F
    cmpl-float v3, v1, v5

    if-ltz v3, :cond_2

    .line 547
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    goto :goto_0

    .line 553
    :cond_2
    int-to-float v3, p1

    div-float/2addr v3, v5

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 555
    .local v0, ellipsized:Ljava/lang/CharSequence;
    invoke-virtual {p2, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    move-object p0, v0

    .line 556
    goto :goto_0
.end method

.method private getMoreSuggestionsHeight()I
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMaxMoreSuggestionsRow:I

    iget v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsRowHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsBottomGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getMoreSuggestionsHint(Landroid/content/res/Resources;FI)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "res"
    .parameter "textSize"
    .parameter "color"

    .prologue
    const/high16 v9, 0x3f00

    .line 266
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 267
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 268
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 269
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 272
    .local v0, bounds:Landroid/graphics/Rect;
    const-string v6, "\u2026"

    const/4 v7, 0x0

    const-string v8, "\u2026"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 273
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 274
    .local v5, width:I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 275
    .local v3, height:I
    mul-int/lit8 v6, v3, 0x3

    div-int/lit8 v6, v6, 0x2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 277
    .local v1, buffer:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    .local v2, canvas:Landroid/graphics/Canvas;
    const-string v6, "\u2026"

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    int-to-float v8, v3

    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 279
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v6
.end method

.method private getStyledSuggestionWord(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;
    .locals 9
    .parameter "suggestedWords"
    .parameter "pos"

    .prologue
    const/16 v8, 0x11

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 283
    invoke-virtual {p1, p2}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, word:Ljava/lang/CharSequence;
    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->willAutoCorrect()Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v1

    .line 285
    .local v0, isAutoCorrect:Z
    :goto_0
    if-nez p2, :cond_1

    iget-boolean v7, p1, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v7, :cond_1

    .line 286
    .local v1, isTypedWordValid:Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 299
    .end local v5           #word:Ljava/lang/CharSequence;
    :goto_2
    return-object v5

    .end local v0           #isAutoCorrect:Z
    .end local v1           #isTypedWordValid:Z
    .restart local v5       #word:Ljava/lang/CharSequence;
    :cond_0
    move v0, v6

    .line 284
    goto :goto_0

    .restart local v0       #isAutoCorrect:Z
    :cond_1
    move v1, v6

    .line 285
    goto :goto_1

    .line 289
    .restart local v1       #isTypedWordValid:Z
    :cond_2
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 290
    .local v2, len:I
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 291
    .local v4, spannedWord:Landroid/text/Spannable;
    iget v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionStripOption:I

    .line 292
    .local v3, option:I
    if-eqz v0, :cond_3

    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_5

    .line 294
    :cond_4
    sget-object v7, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->BOLD_SPAN:Landroid/text/style/CharacterStyle;

    invoke-interface {v4, v7, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 296
    :cond_5
    if-eqz v0, :cond_6

    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_6

    .line 297
    sget-object v7, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;

    invoke-interface {v4, v7, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    move-object v5, v4

    .line 299
    goto :goto_2
.end method

.method private getSuggestionTextColor(ILcom/android/inputmethod/latin/SuggestedWords;I)I
    .locals 5
    .parameter "index"
    .parameter "suggestedWords"
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 317
    if-eqz p3, :cond_1

    move v1, v2

    .line 320
    .local v1, isSuggested:Z
    :goto_0
    iget v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v4, :cond_2

    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->willAutoCorrect()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorAutoCorrect:I

    .line 329
    .local v0, color:I
    :goto_1
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 332
    iget v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v4, :cond_5

    invoke-virtual {p2, v2}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/AutoCorrection;->shouldBlockAutoCorrectionBySafetyNet(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 335
    const/high16 v0, -0x1

    .line 342
    .end local v0           #color:I
    :cond_0
    :goto_2
    return v0

    .end local v1           #isSuggested:Z
    :cond_1
    move v1, v3

    .line 317
    goto :goto_0

    .line 322
    .restart local v1       #isSuggested:Z
    :cond_2
    iget v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v4, :cond_3

    iget-boolean v4, p2, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v4, :cond_3

    .line 323
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorValidTypedWord:I

    .restart local v0       #color:I
    goto :goto_1

    .line 324
    .end local v0           #color:I
    :cond_3
    if-eqz v1, :cond_4

    .line 325
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorSuggested:I

    .restart local v0       #color:I
    goto :goto_1

    .line 327
    .end local v0           #color:I
    :cond_4
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorTypedWord:I

    .restart local v0       #color:I
    goto :goto_1

    .line 339
    :cond_5
    iget-boolean v2, p2, Lcom/android/inputmethod/latin/SuggestedWords;->mIsObsoleteSuggestions:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 340
    iget v2, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mAlphaObsoleted:F

    invoke-static {v0, v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->applyAlpha(IF)I

    move-result v0

    goto :goto_2
.end method

.method private getSuggestionWeight(I)F
    .locals 2
    .parameter "index"

    .prologue
    .line 429
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v0, :cond_0

    .line 430
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionWeight:F

    .line 433
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionWeight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionsCountInStrip:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getSuggestionWidth(II)I
    .locals 5
    .parameter "index"
    .parameter "maxWidth"

    .prologue
    .line 422
    iget v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mPadding:I

    iget v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionsCountInStrip:I

    mul-int v2, v3, v4

    .line 423
    .local v2, paddings:I
    iget v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mDividerWidth:I

    iget v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionsCountInStrip:I

    add-int/lit8 v4, v4, -0x1

    mul-int v1, v3, v4

    .line 424
    .local v1, dividers:I
    sub-int v3, p2, v2

    sub-int v0, v3, v1

    .line 425
    .local v0, availableWidth:I
    int-to-float v3, v0

    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getSuggestionWeight(I)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method private static getTextScaleX(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F
    .locals 3
    .parameter "text"
    .parameter "maxWidth"
    .parameter "paint"

    .prologue
    const/high16 v1, 0x3f80

    .line 529
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 530
    invoke-static {p0, p2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v0

    .line 531
    .local v0, width:I
    if-gt v0, p1, :cond_0

    .line 534
    :goto_0
    return v1

    :cond_0
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private static getTextTypeface(Ljava/lang/CharSequence;)Landroid/graphics/Typeface;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 575
    instance-of v0, p0, Landroid/text/SpannableString;

    if-nez v0, :cond_0

    .line 576
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 586
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 578
    check-cast v0, Landroid/text/SpannableString;

    .line 579
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/StyleSpan;

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 580
    array-length v1, v0

    if-nez v1, :cond_1

    .line 581
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 583
    :cond_1
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 586
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 584
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I
    .locals 8
    .parameter "text"
    .parameter "paint"

    .prologue
    const/4 v4, 0x0

    .line 560
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 571
    :goto_0
    return v4

    .line 561
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 562
    .local v3, savedTypeface:Landroid/graphics/Typeface;
    invoke-static {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getTextTypeface(Ljava/lang/CharSequence;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 563
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 564
    .local v2, len:I
    new-array v5, v2, [F

    .line 565
    .local v5, widths:[F
    invoke-virtual {p1, p0, v4, v2, v5}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    move-result v0

    .line 566
    .local v0, count:I
    const/4 v4, 0x0

    .line 567
    .local v4, width:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 568
    aget v6, v5, v1

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v4, v6

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 570
    :cond_1
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private getWordPosition(ILcom/android/inputmethod/latin/SuggestedWords;)I
    .locals 2
    .parameter "index"
    .parameter "suggestedWords"

    .prologue
    .line 305
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->willAutoCorrect()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 306
    .local v0, centerPos:I
    :goto_0
    iget v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v1, :cond_1

    .line 311
    .end local v0           #centerPos:I
    :goto_1
    return v0

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    .restart local v0       #centerPos:I
    :cond_1
    if-ne p1, v0, :cond_2

    .line 309
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionIndex:I

    goto :goto_1

    :cond_2
    move v0, p1

    .line 311
    goto :goto_1
.end method

.method private layoutPunctuationSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Landroid/view/ViewGroup;)V
    .locals 8
    .parameter "suggestedWords"
    .parameter "stripView"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 452
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 453
    .local v0, countInStrip:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 454
    if-eqz v1, :cond_0

    .line 456
    iget-object v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mDividers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {p2, v4}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->addDivider(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 459
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 460
    .local v3, word:Landroid/widget/TextView;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 461
    iget v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorAutoCorrect:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, text:Ljava/lang/CharSequence;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 465
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 466
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 467
    iget v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionsStripHeight:I

    invoke-static {v3, v7, v4}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->setLayoutWeight(Landroid/view/View;FI)V

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v2           #text:Ljava/lang/CharSequence;
    .end local v3           #word:Landroid/widget/TextView;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsAvailable:Z

    .line 470
    return-void
.end method

.method private static setLayoutWeight(Landroid/view/View;FI)V
    .locals 3
    .parameter "v"
    .parameter "weight"
    .parameter "height"

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 520
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 521
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 522
    .local v0, llp:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 523
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 524
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 526
    .end local v0           #llp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private setupTexts(Lcom/android/inputmethod/latin/SuggestedWords;I)V
    .locals 5
    .parameter "suggestedWords"
    .parameter "countInStrip"

    .prologue
    .line 438
    iget-object v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 439
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 440
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, pos:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 441
    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getStyledSuggestionWord(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 442
    .local v2, styled:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v2           #styled:Ljava/lang/CharSequence;
    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 446
    iget-object v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mTexts:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 448
    :cond_1
    return-void
.end method


# virtual methods
.method public getAddToDictionaryWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mWordToSaveView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMaxMoreSuggestionsRow()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMaxMoreSuggestionsRow:I

    return v0
.end method

.method public isAddToDictionaryShowing(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mWordToSaveView:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mHintToSaveView:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mLeftwardsArrowView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layout(Lcom/android/inputmethod/latin/SuggestedWords;Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
    .locals 22
    .parameter "suggestedWords"
    .parameter "stripView"
    .parameter "placer"
    .parameter "stripWidth"

    .prologue
    .line 360
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsPunctuationSuggestions:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 361
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->layoutPunctuationSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Landroid/view/ViewGroup;)V

    .line 419
    :cond_0
    return-void

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionsCountInStrip:I

    .line 366
    .local v4, countInStrip:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->setupTexts(Lcom/android/inputmethod/latin/SuggestedWords;I)V

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v4, :cond_4

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsAvailable:Z

    .line 368
    const/16 v16, 0x0

    .line 369
    .local v16, x:I
    const/4 v7, 0x0

    .local v7, index:I
    :goto_1
    if-ge v7, v4, :cond_0

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getWordPosition(ILcom/android/inputmethod/latin/SuggestedWords;)I

    move-result v10

    .line 372
    .local v10, pos:I
    if-eqz v7, :cond_2

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mDividers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 375
    .local v6, divider:Landroid/view/View;
    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->addDivider(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 376
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    add-int v16, v16, v18

    .line 379
    .end local v6           #divider:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mTexts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 380
    .local v12, styled:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mWords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 381
    .local v15, word:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsAvailable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 383
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsHint:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsHint:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 392
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v10}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getSuggestionTextColor(ILcom/android/inputmethod/latin/SuggestedWords;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v7, v1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getSuggestionWidth(II)I

    move-result v14

    .line 395
    .local v14, width:I
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v12, v14, v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 396
    .local v13, text:Ljava/lang/CharSequence;
    invoke-virtual {v15}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v11

    .line 397
    .local v11, scaleX:F
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 399
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getSuggestionWeight(I)F

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->setLayoutWeight(Landroid/view/View;FI)V

    .line 402
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    add-int v16, v16, v18

    .line 404
    sget-boolean v18, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->DBG:Z

    if-eqz v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_3

    .line 405
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/inputmethod/latin/Utils;->getDebugInfo(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, debugInfo:Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mInfos:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 408
    .local v8, info:Landroid/widget/TextView;
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 410
    const/16 v18, -0x2

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 412
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    .line 413
    .local v9, infoWidth:I
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    .line 414
    .local v17, y:I
    sub-int v18, v16, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v9, v2}, Lcom/android/inputmethod/keyboard/ViewLayoutUtils;->placeViewAt(Landroid/view/View;IIII)V

    .line 369
    .end local v5           #debugInfo:Ljava/lang/CharSequence;
    .end local v8           #info:Landroid/widget/TextView;
    .end local v9           #infoWidth:I
    .end local v17           #y:I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 367
    .end local v7           #index:I
    .end local v10           #pos:I
    .end local v11           #scaleX:F
    .end local v12           #styled:Ljava/lang/CharSequence;
    .end local v13           #text:Ljava/lang/CharSequence;
    .end local v14           #width:I
    .end local v15           #word:Landroid/widget/TextView;
    .end local v16           #x:I
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 388
    .restart local v7       #index:I
    .restart local v10       #pos:I
    .restart local v12       #styled:Ljava/lang/CharSequence;
    .restart local v15       #word:Landroid/widget/TextView;
    .restart local v16       #x:I
    :cond_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 392
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_3
.end method

.method public layoutAddToDictionaryHint(Ljava/lang/CharSequence;Landroid/view/ViewGroup;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 12
    .parameter "word"
    .parameter "stripView"
    .parameter "stripWidth"
    .parameter "hintText"
    .parameter "listener"

    .prologue
    .line 474
    iget v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mDividerWidth:I

    sub-int v10, p3, v10

    iget v11, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mPadding:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v6, v10, v11

    .line 476
    .local v6, width:I
    iget-object v8, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mWordToSaveView:Landroid/widget/TextView;

    .line 477
    .local v8, wordView:Landroid/widget/TextView;
    iget v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorTypedWord:I

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 478
    int-to-float v10, v6

    iget v11, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionWeight:F

    mul-float/2addr v10, v11

    float-to-int v9, v10

    .line 479
    .local v9, wordWidth:I
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {p1, v9, v10}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 480
    .local v5, text:Ljava/lang/CharSequence;
    invoke-virtual {v8}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v7

    .line 481
    .local v7, wordScaleX:F
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 482
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 484
    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 485
    iget v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionWeight:F

    const/4 v11, -0x1

    invoke-static {v8, v10, v11}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->setLayoutWeight(Landroid/view/View;FI)V

    .line 487
    iget-object v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mDividers:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 489
    iget-object v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mLeftwardsArrowView:Landroid/widget/TextView;

    .line 490
    .local v4, leftArrowView:Landroid/widget/TextView;
    iget v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorAutoCorrect:I

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    const-string v10, "\u2190"

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 494
    iget-object v2, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mHintToSaveView:Landroid/widget/TextView;

    .line 495
    .local v2, hintView:Landroid/widget/TextView;
    const/16 v10, 0x13

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 496
    iget v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mColorAutoCorrect:I

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    sub-int v10, v6, v9

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v11

    sub-int v3, v10, v11

    .line 498
    .local v3, hintWidth:I
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-static {v0, v3, v10}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getTextScaleX(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F

    move-result v1

    .line 499
    .local v1, hintScaleX:F
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 501
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 502
    const/high16 v10, 0x3f80

    iget v11, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mCenterSuggestionWeight:F

    sub-float/2addr v10, v11

    const/4 v11, -0x1

    invoke-static {v2, v10, v11}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->setLayoutWeight(Landroid/view/View;FI)V

    .line 505
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    return-void
.end method

.method public setMoreSuggestionsHeight(I)I
    .locals 4
    .parameter "remainingHeight"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getMoreSuggestionsHeight()I

    move-result v0

    .line 255
    .local v0, currentHeight:I
    if-gt v0, p1, :cond_0

    .line 262
    .end local v0           #currentHeight:I
    :goto_0
    return v0

    .line 259
    .restart local v0       #currentHeight:I
    :cond_0
    iget v2, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsBottomGap:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsRowHeight:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMaxMoreSuggestionsRow:I

    .line 261
    invoke-direct {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getMoreSuggestionsHeight()I

    move-result v1

    .local v1, newHeight:I
    move v0, v1

    .line 262
    goto :goto_0
.end method
