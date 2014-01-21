.class public Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
.super Ljava/lang/Object;
.source "KeyboardParams.java"


# instance fields
.field public GRID_HEIGHT:I

.field public GRID_WIDTH:I

.field public final mAltCodeKeysWhileTyping:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public mBaseHeight:I

.field public mBaseWidth:I

.field public mBottomPadding:I

.field public final mCodesSet:Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;

.field public mDefaultKeyWidth:I

.field public mDefaultRowHeight:I

.field private final mHeightHistogram:Landroid/util/SparseIntArray;

.field public mHorizontalCenterPadding:I

.field public mHorizontalEdgesPadding:I

.field public mHorizontalGap:I

.field public final mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

.field public mId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field public final mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;

.field public mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

.field public final mKeys:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public mKeysCache:Lcom/android/inputmethod/keyboard/internal/KeysCache;

.field private mMaxHeightCount:I

.field public mMaxMoreKeysKeyboardColumn:I

.field private mMaxWidthCount:I

.field public mMoreKeysTemplate:I

.field public mMostCommonKeyHeight:I

.field public mMostCommonKeyWidth:I

.field public mOccupiedHeight:I

.field public mOccupiedWidth:I

.field public mProximityCharsCorrectionEnabled:Z

.field public final mShiftKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

.field public mThemeId:I

.field public mTopPadding:I

.field public final mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;

.field public mVerticalGap:I

.field private final mWidthHistogram:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/TreeSet;

    .line 62
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/ArrayList;

    .line 63
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mAltCodeKeysWhileTyping:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    .line 65
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mCodesSet:Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;

    .line 66
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

    .line 67
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;

    .line 71
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyHeight:I

    .line 72
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyWidth:I

    .line 76
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;

    .line 100
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxHeightCount:I

    .line 101
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxWidthCount:I

    .line 102
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHeightHistogram:Landroid/util/SparseIntArray;

    .line 103
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mWidthHistogram:Landroid/util/SparseIntArray;

    return-void
.end method

.method private clearHistogram()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyHeight:I

    .line 107
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxHeightCount:I

    .line 108
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHeightHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 110
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxWidthCount:I

    .line 111
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyWidth:I

    .line 112
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mWidthHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 113
    return-void
.end method

.method private updateHistogram(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 123
    iget v4, p1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    iget v5, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    add-int v0, v4, v5

    .line 124
    .local v0, height:I
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHeightHistogram:Landroid/util/SparseIntArray;

    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->updateHistogramCounter(Landroid/util/SparseIntArray;I)I

    move-result v1

    .line 125
    .local v1, heightCount:I
    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxHeightCount:I

    if-le v1, v4, :cond_0

    .line 126
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxHeightCount:I

    .line 127
    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyHeight:I

    .line 130
    :cond_0
    iget v4, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    iget v5, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalGap:I

    add-int v2, v4, v5

    .line 131
    .local v2, width:I
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mWidthHistogram:Landroid/util/SparseIntArray;

    invoke-static {v4, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->updateHistogramCounter(Landroid/util/SparseIntArray;I)I

    move-result v3

    .line 132
    .local v3, widthCount:I
    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxWidthCount:I

    if-le v3, v4, :cond_1

    .line 133
    iput v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxWidthCount:I

    .line 134
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyWidth:I

    .line 136
    :cond_1
    return-void
.end method

.method private static updateHistogramCounter(Landroid/util/SparseIntArray;I)I
    .locals 3
    .parameter "histogram"
    .parameter "key"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 117
    .local v1, index:I
    if-ltz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    :goto_0
    add-int/lit8 v0, v2, 0x1

    .line 118
    .local v0, count:I
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    return v0

    .line 117
    .end local v0           #count:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clearKeys()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 81
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->clearHistogram()V

    .line 83
    return-void
.end method

.method public onAddKey(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 4
    .parameter "newKey"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeysCache:Lcom/android/inputmethod/keyboard/internal/KeysCache;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeysCache:Lcom/android/inputmethod/keyboard/internal/KeysCache;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/keyboard/internal/KeysCache;->get(Lcom/android/inputmethod/keyboard/Key;)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 87
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    :goto_0
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 88
    .local v1, zeroWidthSpacer:Z
    :goto_1
    if-nez v1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->updateHistogram(Lcom/android/inputmethod/keyboard/Key;)V

    .line 92
    :cond_0
    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->altCodeWhileTyping()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mAltCodeKeysWhileTyping:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_2
    return-void

    .end local v0           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v1           #zeroWidthSpacer:Z
    :cond_3
    move-object v0, p1

    .line 86
    goto :goto_0

    .line 87
    .restart local v0       #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method
