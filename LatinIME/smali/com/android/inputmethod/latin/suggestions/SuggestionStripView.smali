.class public final Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;
.super Landroid/widget/RelativeLayout;
.source "SuggestionStripView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;,
        Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;,
        Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
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

.field private final mHandler:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;

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

.field private mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;

.field private final mMoreSuggestionsBuilder:Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;

.field private final mMoreSuggestionsContainer:Landroid/view/View;

.field private final mMoreSuggestionsController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mMoreSuggestionsListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private final mMoreSuggestionsModalTolerance:I

.field private mMoreSuggestionsMode:I

.field private final mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

.field private final mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mMoreSuggestionsView:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

.field private final mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

.field private mOriginX:I

.field private mOriginY:I

.field private final mParams:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private final mPreviewText:Landroid/widget/TextView;

.field private mSuggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;

.field private final mSuggestionsStrip:Landroid/view/ViewGroup;

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
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 597
    const v0, 0x7f010007

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 598
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 601
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mWords:Ljava/util/ArrayList;

    .line 94
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mInfos:Ljava/util/ArrayList;

    .line 95
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mDividers:Ljava/util/ArrayList;

    .line 101
    sget-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 106
    new-instance v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;-><init>(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mHandler:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;

    .line 715
    new-instance v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$2;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$2;-><init>(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 732
    new-instance v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$3;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$3;-><init>(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsMode:I

    .line 797
    new-instance v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$4;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$4;-><init>(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 603
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 604
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f04000f

    invoke-virtual {v8, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 606
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 607
    const v0, 0x7f04000d

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mPreviewText:Landroid/widget/TextView;

    .line 608
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 610
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 611
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    .line 614
    const/4 v10, 0x0

    .local v10, pos:I
    :goto_0
    const/16 v0, 0x12

    if-ge v10, v0, :cond_0

    .line 615
    const v0, 0x7f04000e

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 616
    .local v12, word:Landroid/widget/TextView;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 617
    invoke-virtual {v12, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    invoke-virtual {v12, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 619
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    const v0, 0x7f04000b

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 621
    .local v7, divider:Landroid/view/View;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 622
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mDividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mInfos:Ljava/util/ArrayList;

    const v0, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 627
    .end local v7           #divider:Landroid/view/View;
    .end local v12           #word:Landroid/widget/TextView;
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;

    iget-object v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mWords:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mDividers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mInfos:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mParams:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;

    .line 630
    const v0, 0x7f040006

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsContainer:Landroid/view/View;

    .line 631
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsContainer:Landroid/view/View;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    .line 633
    new-instance v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;-><init>(Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsBuilder:Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;

    .line 635
    new-instance v9, Landroid/widget/PopupWindow;

    invoke-direct {v9, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 636
    .local v9, moreWindow:Landroid/widget/PopupWindow;
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-virtual {v9, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 638
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 640
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 641
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 642
    new-instance v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$1;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$1;-><init>(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)V

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 648
    iput-object v9, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    .line 650
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 651
    .local v11, res:Landroid/content/res/Resources;
    const v0, 0x7f0c0016

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsModalTolerance:I

    .line 653
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

    .line 655
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->hidePreview()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Lcom/android/inputmethod/keyboard/KeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mListener:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->dismissMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->showMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method private dismissMoreSuggestions()Z
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 743
    const/4 v0, 0x1

    .line 745
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hidePreview()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 713
    return-void
.end method

.method private showMoreSuggestions()Z
    .locals 15

    .prologue
    .line 754
    iget-object v13, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mParams:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;

    .line 755
    .local v13, params:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;
    iget-boolean v1, v13, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsAvailable:Z

    if-eqz v1, :cond_1

    .line 756
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getWidth()I

    move-result v14

    .line 757
    .local v14, stripWidth:I
    iget-object v11, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsContainer:Landroid/view/View;

    .line 758
    .local v11, container:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, v14, v1

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v3, v1, v2

    .line 760
    .local v3, maxWidth:I
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsBuilder:Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;

    .line 761
    .local v0, builder:Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;

    iget v2, v13, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionsCountInStrip:I

    int-to-float v5, v3

    iget v6, v13, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMinMoreSuggestionsWidth:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    invoke-virtual {v13}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getMaxMoreSuggestionsRow()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->layout(Lcom/android/inputmethod/latin/SuggestedWords;IIII)Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;

    .line 764
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;->build()Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 765
    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v11, v1, v2}, Landroid/view/View;->measure(II)V

    .line 768
    iget-object v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    .line 769
    .local v4, moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    div-int/lit8 v7, v14, 0x2

    .line 770
    .local v7, pointX:I
    iget v1, v13, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mMoreSuggestionsBottomGap:I

    neg-int v8, v1

    .line 771
    .local v8, pointY:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    iget-object v9, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-object v5, p0

    invoke-interface/range {v4 .. v10}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->showMoreKeysPanel(Landroid/view/View;Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 774
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsMode:I

    .line 775
    iget v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mLastX:I

    iput v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mOriginX:I

    .line 776
    iget v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mLastY:I

    iput v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mOriginY:I

    .line 777
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->dimEntireKeyboard(Z)V

    .line 778
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    iget v1, v13, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->mSuggestionsCountInStrip:I

    if-ge v12, v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 778
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 781
    :cond_0
    const/4 v1, 0x1

    .line 783
    .end local v0           #builder:Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;
    .end local v3           #maxWidth:I
    .end local v4           #moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    .end local v7           #pointX:I
    .end local v8           #pointY:I
    .end local v11           #container:Landroid/view/View;
    .end local v12           #i:I
    .end local v14           #stripWidth:I
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 706
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->removeAllViews()V

    .line 707
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->addView(Landroid/view/View;)V

    .line 708
    invoke-direct {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->dismissMoreSuggestions()Z

    .line 709
    return-void
.end method

.method public dismissAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->isShowingAddToDictionaryHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->clear()V

    .line 695
    const/4 v0, 0x1

    .line 697
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    const/4 v11, 0x1

    .line 811
    iget-object v12, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsMode:I

    if-nez v12, :cond_3

    .line 813
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    iput v12, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mLastX:I

    .line 814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    iput v12, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mLastY:I

    .line 815
    iget-object v12, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

    invoke-virtual {v12, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 848
    :cond_1
    :goto_0
    return v11

    .line 818
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    goto :goto_0

    .line 821
    :cond_3
    iget-object v6, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    .line 822
    .local v6, moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 823
    .local v1, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 824
    .local v4, eventTime:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 825
    .local v8, index:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 826
    .local v7, id:I
    invoke-static {v7, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 827
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    float-to-int v9, v12

    .line 828
    .local v9, x:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    float-to-int v10, v12

    .line 829
    .local v10, y:I
    invoke-interface {v6, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v2

    .line 830
    .local v2, translatedX:I
    invoke-interface {v6, v10}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v3

    .line 832
    .local v3, translatedY:I
    iget v12, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsMode:I

    if-ne v12, v11, :cond_7

    .line 833
    iget v12, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mOriginX:I

    sub-int v12, v9, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsModalTolerance:I

    if-ge v12, v13, :cond_4

    iget v12, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mOriginY:I

    sub-int/2addr v12, v10

    iget v13, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsModalTolerance:I

    if-lt v12, v13, :cond_5

    .line 837
    :cond_4
    const/4 v12, 0x2

    iput v12, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsMode:I

    .line 838
    invoke-virtual {v0, v2, v3, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onShowMoreKeysPanel(IILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    goto :goto_0

    .line 839
    :cond_5
    if-eq v1, v11, :cond_6

    const/4 v12, 0x6

    if-ne v1, v12, :cond_1

    .line 841
    :cond_6
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mMoreSuggestionsMode:I

    goto :goto_0

    .line 847
    :cond_7
    invoke-virtual/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    goto :goto_0
.end method

.method public getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;

    return-object v0
.end method

.method public isShowingAddToDictionaryHint()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 683
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mParams:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;

    iget-object v2, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->isAddToDictionaryShowing(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 853
    iget-object v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mParams:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->isAddToDictionaryShowing(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 854
    iget-object v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mListener:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;

    iget-object v4, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mParams:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->getAddToDictionaryWord()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;->addWordToUserDictionary(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->clear()V

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 860
    .local v1, tag:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 862
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 863
    .local v0, index:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 866
    iget-object v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, word:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mListener:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;

    invoke-interface {v3, v0, v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 872
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 873
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mHandler:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;->cancelAllMessages()V

    .line 874
    invoke-direct {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->hidePreview()V

    .line 875
    invoke-direct {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->dismissMoreSuggestions()Z

    .line 876
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->showMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;Landroid/view/View;)V
    .locals 1
    .parameter "listener"
    .parameter "inputView"

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mListener:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;

    .line 663
    const v0, 0x7f080041

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 664
    return-void
.end method

.method public setMoreSuggestionsHeight(I)I
    .locals 1
    .parameter "remainingHeight"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mParams:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->setMoreSuggestionsHeight(I)I

    move-result v0

    return v0
.end method

.method public setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V
    .locals 4
    .parameter "suggestedWords"

    .prologue
    .line 667
    if-nez p1, :cond_0

    .line 676
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->clear()V

    .line 671
    iput-object p1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 672
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mParams:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;

    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v2, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getWidth()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->layout(Lcom/android/inputmethod/latin/SuggestedWords;Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V

    goto :goto_0
.end method

.method public showAddToDictionaryHint(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "word"
    .parameter "hintText"

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->clear()V

    .line 689
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mParams:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;

    iget-object v2, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getWidth()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$SuggestionStripViewParams;->layoutAddToDictionaryHint(Ljava/lang/CharSequence;Landroid/view/ViewGroup;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 690
    return-void
.end method
