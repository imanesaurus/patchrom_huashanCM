.class public final Lcom/android/inputmethod/keyboard/internal/KeyboardRow;
.super Ljava/lang/Object;
.source "KeyboardRow.java"


# instance fields
.field private mCurrentX:F

.field private final mCurrentY:I

.field private mDefaultBackgroundType:I

.field private mDefaultKeyLabelFlags:I

.field private mDefaultKeyWidth:F

.field private final mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

.field public final mRowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 6
    .parameter "res"
    .parameter "params"
    .parameter "parser"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    .line 57
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    .local v1, keyboardAttr:Landroid/content/res/TypedArray;
    const/16 v2, 0x8

    iget v3, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    iget v4, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultRowHeight:I

    int-to-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mRowHeight:I

    .line 62
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, keyAttr:Landroid/content/res/TypedArray;
    const/16 v2, 0x11

    iget v3, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    iget v4, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultKeyWidth:I

    int-to-float v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mDefaultKeyWidth:F

    .line 68
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mDefaultBackgroundType:I

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    iput v5, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mDefaultKeyLabelFlags:I

    .line 74
    iput p4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mCurrentY:I

    .line 75
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mCurrentX:F

    .line 76
    return-void
.end method


# virtual methods
.method public advanceXPos(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mCurrentX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mCurrentX:F

    .line 108
    return-void
.end method

.method public getDefaultBackgroundType()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mDefaultBackgroundType:I

    return v0
.end method

.method public getDefaultKeyLabelFlags()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mDefaultKeyLabelFlags:I

    return v0
.end method

.method public getDefaultKeyWidth()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mDefaultKeyWidth:F

    return v0
.end method

.method public getKeyWidth(Landroid/content/res/TypedArray;)F
    .locals 1
    .parameter "keyAttr"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mCurrentX:F

    invoke-virtual {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getKeyWidth(Landroid/content/res/TypedArray;F)F

    move-result v0

    return v0
.end method

.method public getKeyWidth(Landroid/content/res/TypedArray;F)F
    .locals 5
    .parameter "keyAttr"
    .parameter "keyXPos"

    .prologue
    const/16 v4, 0x11

    .line 139
    const/4 v2, 0x0

    invoke-static {p1, v4, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getEnumValue(Landroid/content/res/TypedArray;II)I

    move-result v1

    .line 141
    .local v1, widthType:I
    packed-switch v1, :pswitch_data_0

    .line 149
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mDefaultKeyWidth:F

    invoke-static {p1, v4, v2, v3}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v2

    :goto_0
    return v2

    .line 143
    :pswitch_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v3, v3, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    sub-int v0, v2, v3

    .line 147
    .local v0, keyboardRightEdge:I
    int-to-float v2, v0

    sub-float/2addr v2, p2

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyX(Landroid/content/res/TypedArray;)F
    .locals 6
    .parameter "keyAttr"

    .prologue
    const/16 v5, 0x12

    const/4 v4, 0x0

    .line 115
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v3, v3, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    sub-int v1, v2, v3

    .line 117
    .local v1, keyboardRightEdge:I
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    invoke-static {p1, v5, v2, v4}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v0

    .line 120
    .local v0, keyXPos:F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    .line 126
    int-to-float v2, v1

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mCurrentX:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 131
    .end local v0           #keyXPos:F
    :goto_0
    return v2

    .line 128
    .restart local v0       #keyXPos:F
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    goto :goto_0

    .line 131
    .end local v0           #keyXPos:F
    :cond_1
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mCurrentX:F

    goto :goto_0
.end method

.method public getKeyY()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mCurrentY:I

    return v0
.end method

.method public setDefaultBackgroundType(I)V
    .locals 0
    .parameter "backgroundType"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mDefaultBackgroundType:I

    .line 100
    return-void
.end method

.method public setDefaultKeyLabelFlags(I)V
    .locals 0
    .parameter "keyLabelFlags"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mDefaultKeyLabelFlags:I

    .line 92
    return-void
.end method

.method public setDefaultKeyWidth(F)V
    .locals 0
    .parameter "defaultKeyWidth"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mDefaultKeyWidth:F

    .line 84
    return-void
.end method

.method public setXPos(F)V
    .locals 0
    .parameter "keyXPos"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mCurrentX:F

    .line 104
    return-void
.end method
