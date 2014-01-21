.class public Ljp/co/omronsoft/iwnnime/ml/ListPreferenceSpan;
.super Landroid/text/style/ImageSpan;
.source "ListPreferenceSpan.java"


# instance fields
.field private mImageGap:I

.field private mRigthGap:I

.field private mStringGap:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "d"
    .parameter "verticalAlignment"
    .parameter "stringGap"
    .parameter "imageGap"
    .parameter "rightGap"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 39
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/ListPreferenceSpan;->mStringGap:I

    .line 40
    iput p4, p0, Ljp/co/omronsoft/iwnnime/ml/ListPreferenceSpan;->mImageGap:I

    .line 41
    iput p5, p0, Ljp/co/omronsoft/iwnnime/ml/ListPreferenceSpan;->mRigthGap:I

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 10
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 58
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/ListPreferenceSpan;->mImageGap:I

    add-int v8, p8, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/text/style/ImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 59
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 47
    .local v0, result:I
    if-eqz p5, :cond_0

    .line 48
    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/ListPreferenceSpan;->mStringGap:I

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 49
    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 51
    :cond_0
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/ListPreferenceSpan;->mRigthGap:I

    add-int/2addr v1, v0

    return v1
.end method
