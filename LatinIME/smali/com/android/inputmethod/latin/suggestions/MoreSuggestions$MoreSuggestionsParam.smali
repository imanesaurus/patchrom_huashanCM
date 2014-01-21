.class final Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MoreSuggestionsParam"
.end annotation


# static fields
.field private static final COLUMN_ORDER_TO_NUMBER:[[I


# instance fields
.field private final mColumnOrders:[I

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerWidth:I

.field private final mNumColumnsInRow:[I

.field private mNumRows:I

.field private final mRowNumbers:[I

.field private final mWidths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-array v0, v5, [[I

    new-array v1, v3, [I

    aput v2, v1, v2

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->COLUMN_ORDER_TO_NUMBER:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 51
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;-><init>()V

    .line 41
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mWidths:[I

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mRowNumbers:[I

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mColumnOrders:[I

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumColumnsInRow:[I

    .line 52
    return-void
.end method

.method private calcurateMaxRowWidth(II)I
    .locals 8
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, maxRowWidth:I
    move v3, p1

    .line 107
    .local v3, pos:I
    const/4 v4, 0x0

    .local v4, row:I
    :goto_0
    iget v5, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumRows:I

    if-ge v4, v5, :cond_1

    .line 108
    iget-object v5, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumColumnsInRow:[I

    aget v2, v5, v4

    .line 109
    .local v2, numColumnInRow:I
    const/4 v0, 0x0

    .line 110
    .local v0, maxKeyWidth:I
    :goto_1
    if-ge v3, p2, :cond_0

    iget-object v5, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mRowNumbers:[I

    aget v5, v5, v3

    if-ne v5, v4, :cond_0

    .line 111
    iget-object v5, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mWidths:[I

    aget v5, v5, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    :cond_0
    mul-int v5, v0, v2

    iget v6, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDividerWidth:I

    add-int/lit8 v7, v2, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v0           #maxKeyWidth:I
    .end local v2           #numColumnInRow:I
    :cond_1
    return v1
.end method

.method private fitInWidth(III)Z
    .locals 2
    .parameter "startPos"
    .parameter "endPos"
    .parameter "width"

    .prologue
    .line 97
    move v0, p1

    .local v0, pos:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mWidths:[I

    aget v1, v1, v0

    if-le v1, p3, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 101
    :goto_1
    return v1

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getColumnNumber(I)I
    .locals 4
    .parameter "pos"

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mColumnOrders:[I

    aget v0, v2, p1

    .line 132
    .local v0, columnOrder:I
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->getNumColumnInRow(I)I

    move-result v1

    .line 133
    .local v1, numColumn:I
    sget-object v2, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->COLUMN_ORDER_TO_NUMBER:[[I

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget v2, v2, v0

    return v2
.end method

.method public getNumColumnInRow(I)I
    .locals 2
    .parameter "pos"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumColumnsInRow:[I

    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mRowNumbers:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getWidth(I)I
    .locals 4
    .parameter "pos"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->getNumColumnInRow(I)I

    move-result v0

    .line 148
    .local v0, numColumnInRow:I
    iget v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mOccupiedWidth:I

    iget v2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDividerWidth:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    return v1
.end method

.method public getX(I)I
    .locals 3
    .parameter "pos"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->getColumnNumber(I)I

    move-result v0

    .line 138
    .local v0, columnNumber:I
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->getWidth(I)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDividerWidth:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    return v1
.end method

.method public getY(I)I
    .locals 3
    .parameter "pos"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mRowNumbers:[I

    aget v0, v1, p1

    .line 143
    .local v0, row:I
    iget v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumRows:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDefaultRowHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mTopPadding:I

    add-int/2addr v1, v2

    return v1
.end method

.method public layout(Lcom/android/inputmethod/latin/SuggestedWords;IIIILcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;)I
    .locals 13
    .parameter "suggestions"
    .parameter "fromPos"
    .parameter "maxWidth"
    .parameter "minWidth"
    .parameter "maxRow"
    .parameter "view"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->clearKeys()V

    .line 58
    invoke-virtual/range {p6 .. p6}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 59
    .local v6, res:Landroid/content/res/Resources;
    const v11, 0x7f02003f

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iput v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDividerWidth:I

    .line 61
    const v11, 0x7f0c0013

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v3, v11

    .line 63
    .local v3, padding:I
    invoke-virtual/range {p6 .. p6}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->newDefaultLabelPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 65
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v7, 0x0

    .line 66
    .local v7, row:I
    move v5, p2

    .local v5, pos:I
    move v8, p2

    .line 67
    .local v8, rowStartPos:I
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v11

    const/16 v12, 0x12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 68
    .local v9, size:I
    :goto_0
    if-ge v5, v9, :cond_1

    .line 69
    invoke-virtual {p1, v5}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    .line 71
    .local v10, word:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mWidths:[I

    move-object/from16 v0, p6

    invoke-virtual {v0, v10, v4}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getLabelWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v12

    float-to-int v12, v12

    add-int/2addr v12, v3

    aput v12, v11, v5

    .line 72
    sub-int v11, v5, v8

    add-int/lit8 v2, v11, 0x1

    .line 73
    .local v2, numColumn:I
    iget v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDividerWidth:I

    add-int/lit8 v12, v2, -0x1

    mul-int/2addr v11, v12

    sub-int v11, p3, v11

    div-int v1, v11, v2

    .line 75
    .local v1, columnWidth:I
    const/4 v11, 0x3

    if-gt v2, v11, :cond_0

    add-int/lit8 v11, v5, 0x1

    invoke-direct {p0, v8, v11, v1}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->fitInWidth(III)Z

    move-result v11

    if-nez v11, :cond_3

    .line 77
    :cond_0
    add-int/lit8 v11, v7, 0x1

    move/from16 v0, p5

    if-lt v11, v0, :cond_2

    .line 88
    .end local v1           #columnWidth:I
    .end local v2           #numColumn:I
    .end local v10           #word:Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumColumnsInRow:[I

    sub-int v12, v5, v8

    aput v12, v11, v7

    .line 89
    add-int/lit8 v11, v7, 0x1

    iput v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumRows:I

    .line 90
    invoke-direct {p0, p2, v5}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->calcurateMaxRowWidth(II)I

    move-result v11

    move/from16 v0, p4

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mOccupiedWidth:I

    iput v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mBaseWidth:I

    .line 92
    iget v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumRows:I

    iget v12, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mDefaultRowHeight:I

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mVerticalGap:I

    add-int/2addr v11, v12

    iput v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mOccupiedHeight:I

    iput v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mBaseHeight:I

    .line 93
    sub-int v11, v5, p2

    return v11

    .line 80
    .restart local v1       #columnWidth:I
    .restart local v2       #numColumn:I
    .restart local v10       #word:Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumColumnsInRow:[I

    sub-int v12, v5, v8

    aput v12, v11, v7

    .line 81
    move v8, v5

    .line 82
    add-int/lit8 v7, v7, 0x1

    .line 84
    :cond_3
    iget-object v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mColumnOrders:[I

    sub-int v12, v5, v8

    aput v12, v11, v5

    .line 85
    iget-object v11, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mRowNumbers:[I

    aput v7, v11, v5

    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 87
    goto :goto_0
.end method

.method public markAsEdgeKey(Lcom/android/inputmethod/keyboard/Key;I)V
    .locals 4
    .parameter "key"
    .parameter "pos"

    .prologue
    .line 152
    iget-object v3, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mRowNumbers:[I

    aget v2, v3, p2

    .line 153
    .local v2, row:I
    if-nez v2, :cond_0

    .line 154
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsBottomEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 155
    :cond_0
    iget v3, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 156
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->mNumColumnsInRow:[I

    aget v1, v3, v2

    .line 159
    .local v1, numColumnInRow:I
    invoke-virtual {p0, p2}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;->getColumnNumber(I)I

    move-result v0

    .line 160
    .local v0, column:I
    if-nez v0, :cond_2

    .line 161
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsLeftEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 162
    :cond_2
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_3

    .line 163
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsRightEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 164
    :cond_3
    return-void
.end method
