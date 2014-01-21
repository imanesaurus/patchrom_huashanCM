.class public Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;
.super Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
.source "TextCandidates1LineViewManager.java"


# static fields
.field private static final CANDIDATE_DELAY_MILLIS:I = 0x1f4

.field private static final CANDIDATE_MINIMUM_WIDTH:I = 0x30

.field private static final DIRECTION_TO_END:I = -0x3e7

.field private static final DIRECTION_TO_HOME:I = 0x3e7

.field private static final FOCUS_NONE:I = -0x1

.field private static final IS_NEXTCANDIDATE_DELAY:I = 0x2

.field private static final IS_NEXTCANDIDATE_END:I = 0x3

.field private static final IS_NEXTCANDIDATE_NORMAL:I = 0x1

.field private static final MSG_FULL_SCROLL_RIGHT:I = 0x2

.field private static final MSG_SET_CANDIDATES:I = 0x1

.field private static final SCROLL_DISTANCE:F = 0.9f

.field private static final SET_CANDIDATE_DELAY:I = 0x32


# instance fields
.field private mAutoHideMode:Z

.field private mCandidateMaxWidth:I

.field private mCandidateMinimumHeight:I

.field private mCandidateMinimumWidth:I

.field private mCandidateOnClick:Landroid/view/View$OnClickListener;

.field private mCandidateOnLongClick:Landroid/view/View$OnLongClickListener;

.field private mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

.field private mCreateCandidateDone:Z

.field private mCurrentFocusIndex:I

.field private mDisplayLimit:I

.field private mEnableCandidateLongClick:Z

.field private mFocusedView:Landroid/view/View;

.field private mFocusedViewBackground:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mIsDisplayWebApi:Z

.field private mIsViewLayoutEnableWebAPI:Z

.field private mLeftMoreButton:Landroid/widget/ImageView;

.field private mLineLength:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mNoCandidateTextColor:I

.field private mRightMoreButton:Landroid/widget/ImageView;

.field private mSound:Landroid/media/AudioManager;

.field private mTextColor:I

.field private mTextViewArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrator:Landroid/os/Vibrator;

.field private mViewBody:Landroid/view/ViewGroup;

.field private mViewBodyScroll:Landroid/widget/HorizontalScrollView;

.field private mViewCandidateList:Landroid/widget/LinearLayout;

.field private mViewHeight:I

.field private mViewType:I

.field private mViewWidth:I

.field private mWebAPICandTextColor:I

.field private mWebAPIKeyTextColor:I

.field private mWebApiButton:Landroid/widget/TextView;

.field private mWnnWordArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end field

.field private mWordCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 232
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;-><init>(I)V

    .line 233
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "displayLimit"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;-><init>()V

    .line 100
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mVibrator:Landroid/os/Vibrator;

    .line 102
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mSound:Landroid/media/AudioManager;

    .line 110
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mLineLength:I

    .line 112
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateMaxWidth:I

    .line 114
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCreateCandidateDone:Z

    .line 116
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mMetrics:Landroid/util/DisplayMetrics;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextViewArray:Ljava/util/ArrayList;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    .line 128
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mFocusedView:Landroid/view/View;

    .line 130
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mFocusedViewBackground:Landroid/graphics/drawable/Drawable;

    .line 132
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mEnableCandidateLongClick:Z

    .line 135
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebAPIKeyTextColor:I

    .line 138
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebAPICandTextColor:I

    .line 141
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mNoCandidateTextColor:I

    .line 144
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebApiButton:Landroid/widget/TextView;

    .line 147
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsDisplayWebApi:Z

    .line 153
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextColor:I

    .line 156
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$1;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateOnClick:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$3;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$3;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 241
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mDisplayLimit:I

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnnWordArray:Ljava/util/ArrayList;

    .line 243
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mAutoHideMode:Z

    .line 245
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 246
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    return-object v0
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->displayCandidatesDelay(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnnWordArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getAllCandidates()V

    return-void
.end method

.method static synthetic access$202(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCreateCandidateDone:Z

    return p1
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->playSoundAndVibration()V

    return-void
.end method

.method static synthetic access$500(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->clearFocusCandidate()V

    return-void
.end method

.method static synthetic access$600(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->selectWebApiButton()V

    return-void
.end method

.method static synthetic access$700(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->selectWebApiGetAgainButton()V

    return-void
.end method

.method static synthetic access$800(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    return-void
.end method

.method static synthetic access$900(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mEnableCandidateLongClick:Z

    return v0
.end method

.method private clearFocusCandidate()V
    .locals 4

    .prologue
    .line 826
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mFocusedView:Landroid/view/View;

    .line 827
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 828
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mFocusedViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mFocusedView:Landroid/view/View;

    .line 832
    :cond_0
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsViewLayoutEnableWebAPI:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    .line 834
    :cond_1
    if-eqz v0, :cond_2

    .line 835
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v3, -0xfffbfff

    invoke-direct {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 837
    :cond_2
    return-void
.end method

.method private clearNormalViewCandidate()V
    .locals 4

    .prologue
    .line 635
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewCandidateList:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 636
    .local v0, candidateNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 637
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewCandidateList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 638
    .local v2, v:Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private createNormalCandidateView()V
    .locals 7

    .prologue
    .line 419
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewCandidateList:Landroid/widget/LinearLayout;

    .line 421
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 422
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mDisplayLimit:I

    if-ge v1, v2, :cond_0

    .line 423
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewCandidateList:Landroid/widget/LinearLayout;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateMinimumHeight:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateMinimumWidth:I

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateMaxWidth:I

    invoke-direct {v3, v0, v4, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method private displayCandidatesDelay(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)I
    .locals 8
    .parameter "converter"

    .prologue
    const-wide/16 v6, 0x32

    const/4 v5, 0x1

    const/4 v2, 0x3

    .line 548
    const/4 v0, 0x2

    .line 550
    .local v0, isNextCandidate:I
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCreateCandidateDone:Z

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 586
    .end local v0           #isNextCandidate:I
    :goto_0
    return v0

    .line 555
    .restart local v0       #isNextCandidate:I
    :cond_1
    invoke-interface {p1}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v1

    .line 556
    .local v1, result:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-nez v1, :cond_2

    move v0, v2

    .line 557
    goto :goto_0

    .line 560
    :cond_2
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    .line 561
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060111

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 564
    :cond_3
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_4

    .line 565
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 568
    :cond_4
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_5

    .line 569
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060113

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 572
    :cond_5
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_6

    const-string v3, ""

    iget-object v4, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 574
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 578
    :cond_6
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    .line 580
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWordCount:I

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mDisplayLimit:I

    if-lt v3, v4, :cond_7

    move v0, v2

    .line 581
    goto :goto_0

    .line 584
    :cond_7
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private displayCandidatesNormal(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)I
    .locals 6
    .parameter "converter"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x3

    .line 491
    const/4 v0, 0x1

    .line 493
    .local v0, isNextCandidate:I
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCreateCandidateDone:Z

    if-eqz v3, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v2

    .line 498
    :cond_1
    invoke-interface {p1}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v1

    .line 499
    .local v1, result:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-eqz v1, :cond_0

    .line 503
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_2

    .line 504
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060111

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 507
    :cond_2
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_3

    .line 508
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 511
    :cond_3
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_4

    .line 512
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060113

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 515
    :cond_4
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_5

    const-string v3, ""

    iget-object v4, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v0

    .line 517
    goto :goto_0

    .line 520
    :cond_5
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    .line 521
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mLineLength:I

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateMinimumWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mLineLength:I

    .line 522
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mLineLength:I

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewWidth:I

    if-lt v3, v4, :cond_6

    .line 523
    const/4 v0, 0x2

    .line 526
    :cond_6
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWordCount:I

    if-ge v3, v5, :cond_7

    .line 527
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mAutoHideMode:Z

    if-eqz v3, :cond_7

    .line 528
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 533
    :cond_7
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWordCount:I

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mDisplayLimit:I

    if-ge v3, v4, :cond_0

    .line 537
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    if-nez v2, :cond_8

    .line 538
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    :cond_8
    move v2, v0

    .line 540
    goto/16 :goto_0
.end method

.method private getAllCandidates()V
    .locals 2

    .prologue
    .line 408
    const/4 v0, 0x1

    .line 409
    .local v0, isNextCandidate:I
    :goto_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 410
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->displayCandidatesNormal(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)I

    move-result v0

    goto :goto_0

    .line 412
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCreateCandidateDone:Z

    .line 413
    return-void
.end method

.method private getFocusedView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 867
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 868
    const/4 v0, 0x0

    .line 870
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextViewArray:Ljava/util/ArrayList;

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method private getViewLeftOnScreen(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 964
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 965
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 966
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method private moveFocus(I)V
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v3, 0x0

    .line 879
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    const/4 v1, 0x1

    .line 880
    .local v1, isStart:Z
    :goto_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextViewArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 881
    .local v2, size:I
    if-eqz v1, :cond_3

    move v0, v3

    .line 883
    .local v0, index:I
    :goto_1
    const/16 v3, 0x3e7

    if-ne p1, v3, :cond_4

    .line 884
    const/4 v0, 0x0

    .line 889
    :cond_0
    :goto_2
    if-ltz v0, :cond_1

    if-lt v0, v2, :cond_5

    .line 900
    :cond_1
    :goto_3
    return-void

    .end local v0           #index:I
    .end local v1           #isStart:Z
    .end local v2           #size:I
    :cond_2
    move v1, v3

    .line 879
    goto :goto_0

    .line 881
    .restart local v1       #isStart:Z
    .restart local v2       #size:I
    :cond_3
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    add-int v0, v3, p1

    goto :goto_1

    .line 885
    .restart local v0       #index:I
    :cond_4
    const/16 v3, -0x3e7

    if-ne p1, v3, :cond_0

    .line 886
    add-int/lit8 v0, v2, -0x1

    goto :goto_2

    .line 894
    :cond_5
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    .line 895
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setViewStatusOfFocusedCandidate()V

    .line 897
    if-eqz v1, :cond_1

    .line 898
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v5, -0xfffc000

    invoke-direct {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_3
.end method

.method private playSoundAndVibration()V
    .locals 5

    .prologue
    .line 722
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    .line 724
    :try_start_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 725
    .local v1, vibrateTime:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .end local v1           #vibrateTime:I
    :cond_0
    :goto_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mSound:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 732
    :try_start_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mSound:Landroid/media/AudioManager;

    const/4 v3, 0x5

    const/high16 v4, -0x4080

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->playSoundEffect(IF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 737
    :cond_1
    :goto_1
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "iwnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextCandidates1LineViewManager::selectCandidate Vibrator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 733
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 734
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v2, "iwnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextCandidates1LineViewManager::selectCandidate Sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 718
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xffffff5

    invoke-direct {v1, v2, p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILjp/co/omronsoft/iwnnime/ml/WnnWord;)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 719
    return-void
.end method

.method private selectWebApiButton()V
    .locals 3

    .prologue
    .line 945
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebApiButton:Landroid/widget/TextView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xffff000

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 947
    return-void
.end method

.method private selectWebApiGetAgainButton()V
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebApiButton:Landroid/widget/TextView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffeffa

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 955
    return-void
.end method

.method private setCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
    .locals 7
    .parameter "word"

    .prologue
    const v6, 0x7f020020

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 595
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewCandidateList:Landroid/widget/LinearLayout;

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWordCount:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;

    .line 598
    .local v0, candidateTextView:Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;
    const v1, 0x7f020017

    invoke-direct {p0, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 600
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWordCount:I

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateOnClick:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateOnLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, p1, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setCandidateTextView(Ljp/co/omronsoft/iwnnime/ml/WnnWord;ILandroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;

    .line 604
    iget v1, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_1

    .line 606
    :cond_0
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebAPIKeyTextColor:I

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setTextColor(I)V

    .line 607
    invoke-virtual {v0, v5}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 608
    invoke-direct {p0, v0, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 609
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebApiButton:Landroid/widget/TextView;

    .line 610
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsDisplayWebApi:Z

    .line 624
    :goto_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnnWordArray:Ljava/util/ArrayList;

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWordCount:I

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 625
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWordCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWordCount:I

    .line 626
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextViewArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getWidth()I

    move-result v1

    return v1

    .line 611
    :cond_1
    iget v1, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    .line 612
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebAPICandTextColor:I

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setTextColor(I)V

    .line 613
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsDisplayWebApi:Z

    goto :goto_0

    .line 614
    :cond_2
    iget v1, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    .line 615
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mNoCandidateTextColor:I

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setTextColor(I)V

    .line 616
    invoke-virtual {v0, v5}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 617
    invoke-virtual {v0, v5}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    invoke-direct {p0, v0, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 619
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsDisplayWebApi:Z

    goto :goto_0

    .line 621
    :cond_3
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextColor:I

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setCandidateBackGround(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "resourceId"

    .prologue
    .line 1005
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v1

    .line 1006
    .local v1, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    const/4 v0, 0x0

    .line 1007
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1008
    sparse-switch p2, :sswitch_data_0

    .line 1037
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 1038
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1042
    :goto_1
    return-void

    .line 1010
    :sswitch_0
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackgroundOneLine()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1011
    goto :goto_0

    .line 1014
    :sswitch_1
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackgroundWebApi()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1015
    goto :goto_0

    .line 1018
    :sswitch_2
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->isFocusCandidate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1019
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getFocusedWnnWord()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v2

    .line 1020
    .local v2, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-eqz v2, :cond_2

    iget v3, v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x800

    if-nez v3, :cond_1

    iget v3, v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_1

    iget v3, v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_2

    .line 1024
    :cond_1
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateFocusBackgroundWebApi()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1027
    .end local v2           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_2
    if-nez v0, :cond_0

    .line 1028
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateFocusBackgroundOneLine()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1040
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1008
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020017 -> :sswitch_0
        0x7f020019 -> :sswitch_2
        0x7f020020 -> :sswitch_1
    .end sparse-switch
.end method

.method private setViewStatusOfFocusedCandidate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 796
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mFocusedView:Landroid/view/View;

    .line 797
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 798
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mFocusedViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 801
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getFocusedView()Landroid/widget/TextView;

    move-result-object v2

    .line 802
    .local v2, v:Landroid/widget/TextView;
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mFocusedView:Landroid/view/View;

    .line 803
    if-eqz v2, :cond_1

    .line 804
    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mFocusedViewBackground:Landroid/graphics/drawable/Drawable;

    .line 805
    const v6, 0x7f020019

    invoke-direct {p0, v2, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 807
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getViewLeftOnScreen(Landroid/view/View;)I

    move-result v4

    .line 808
    .local v4, viewBodyLeft:I
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    add-int v5, v4, v6

    .line 809
    .local v5, viewBodyRight:I
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getViewLeftOnScreen(Landroid/view/View;)I

    move-result v0

    .line 810
    .local v0, focusedViewLeft:I
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    add-int v1, v0, v6

    .line 812
    .local v1, focusedViewRight:I
    if-le v1, v5, :cond_2

    .line 814
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;

    sub-int v7, v1, v5

    invoke-virtual {v6, v7, v8}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 820
    .end local v0           #focusedViewLeft:I
    .end local v1           #focusedViewRight:I
    .end local v4           #viewBodyLeft:I
    .end local v5           #viewBodyRight:I
    :cond_1
    :goto_0
    return-void

    .line 815
    .restart local v0       #focusedViewLeft:I
    .restart local v1       #focusedViewRight:I
    .restart local v4       #viewBodyLeft:I
    .restart local v5       #viewBodyRight:I
    :cond_2
    if-ge v0, v4, :cond_1

    .line 817
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;

    sub-int v7, v0, v4

    invoke-virtual {v6, v7, v8}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method


# virtual methods
.method public clearCandidates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 644
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->closeDialog()V

    .line 645
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->clearFocusCandidate()V

    .line 646
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->clearNormalViewCandidate()V

    .line 649
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsDisplayWebApi:Z

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffeffd

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 653
    :cond_0
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mLineLength:I

    .line 655
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWordCount:I

    .line 656
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCreateCandidateDone:Z

    .line 657
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnnWordArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 658
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebApiButton:Landroid/widget/TextView;

    .line 663
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mAutoHideMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    .line 666
    :cond_1
    return-void
.end method

.method public displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V
    .locals 4
    .parameter "converter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 459
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCreateCandidateDone:Z

    .line 462
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsDisplayWebApi:Z

    .line 464
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 466
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->clearCandidates()V

    .line 467
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    .line 469
    const/4 v0, 0x1

    .line 470
    .local v0, isNextCandidate:I
    :goto_0
    if-ne v0, v3, :cond_0

    .line 471
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->displayCandidatesNormal(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)I

    move-result v0

    goto :goto_0

    .line 474
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 475
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->displayCandidatesDelay(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)I

    move-result v0

    .line 480
    :cond_1
    :goto_1
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsViewLayoutEnableWebAPI:Z

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v2, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 483
    :cond_2
    return-void

    .line 476
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 477
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCreateCandidateDone:Z

    goto :goto_1
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getFocusedWnnWord()Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getWnnWord(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    return-object v0
.end method

.method public getTextViewArray1st()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextViewArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewType:I

    return v0
.end method

.method public getWnnWord(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 1
    .parameter "index"

    .prologue
    .line 980
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnnWordArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    return-object v0
.end method

.method public initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;
    .locals 10
    .parameter "parent"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f020017

    .line 262
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "OpenWnn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TextCandidatesView::initView() height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    .line 264
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewWidth:I

    .line 265
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewHeight:I

    .line 267
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 270
    .local v4, r:Landroid/content/res/Resources;
    const/high16 v5, 0x4240

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateMinimumWidth:I

    .line 272
    const v5, 0x7f0b001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateMinimumHeight:I

    .line 275
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v2

    .line 276
    .local v2, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v6, 0x7f0a0005

    invoke-virtual {v2, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebAPIKeyTextColor:I

    .line 277
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v6, 0x7f0a0019

    invoke-virtual {v2, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebAPICandTextColor:I

    .line 278
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v6, 0x7f0a0003

    invoke-virtual {v2, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextColor:I

    .line 279
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v6, 0x7f0a0006

    invoke-virtual {v2, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mNoCandidateTextColor:I

    .line 280
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsViewLayoutEnableWebAPI:Z

    .line 282
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 283
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030002

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    .line 284
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v6, 0x7f080028

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;

    .line 285
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;

    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$4;

    invoke-direct {v6, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$4;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 304
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v6, 0x7f080027

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mLeftMoreButton:Landroid/widget/ImageView;

    .line 305
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mLeftMoreButton:Landroid/widget/ImageView;

    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$5;

    invoke-direct {v6, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$5;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mLeftMoreButton:Landroid/widget/ImageView;

    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$6;

    invoke-direct {v6, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$6;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 325
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v6, 0x7f08002b

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mRightMoreButton:Landroid/widget/ImageView;

    .line 326
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mRightMoreButton:Landroid/widget/ImageView;

    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$7;

    invoke-direct {v6, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$7;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mRightMoreButton:Landroid/widget/ImageView;

    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$8;

    invoke-direct {v6, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$8;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 349
    const/high16 v5, 0x7f03

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewLongPressDialog:Landroid/view/View;

    .line 352
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewLongPressDialog:Landroid/view/View;

    const v6, 0x7f080013

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 353
    .local v3, longPressDialogButton:Landroid/widget/Button;
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$9;

    invoke-direct {v5, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$9;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewLongPressDialog:Landroid/view/View;

    const v6, 0x7f080014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #longPressDialogButton:Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 363
    .restart local v3       #longPressDialogButton:Landroid/widget/Button;
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$10;

    invoke-direct {v5, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$10;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewLongPressDialog:Landroid/view/View;

    const v6, 0x7f080015

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #longPressDialogButton:Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 373
    .restart local v3       #longPressDialogButton:Landroid/widget/Button;
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$11;

    invoke-direct {v5, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$11;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewLongPressDialog:Landroid/view/View;

    const v6, 0x7f080012

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #longPressDialogButton:Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 384
    .restart local v3       #longPressDialogButton:Landroid/widget/Button;
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$12;

    invoke-direct {v5, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager$12;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v6, 0x7f08002a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 392
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v6, 0x7f080026

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 394
    const v5, 0x7f0b0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 395
    .local v0, buttonWidth:I
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewWidth:I

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateMaxWidth:I

    .line 397
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->createNormalCandidateView()V

    .line 399
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setViewType(I)V

    .line 401
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    return-object v5
.end method

.method public isFocusCandidate()Z
    .locals 2

    .prologue
    .line 786
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 787
    const/4 v0, 0x1

    .line 789
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWebApiError(Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 935
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWebApiButton:Landroid/widget/TextView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    if-eqz p1, :cond_0

    .line 937
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 939
    :cond_0
    return-void
.end method

.method public processMoveKeyEvent(I)V
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 745
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 749
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 759
    :sswitch_0
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->moveFocus(I)V

    goto :goto_0

    .line 751
    :sswitch_1
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->moveFocus(I)V

    goto :goto_0

    .line 755
    :sswitch_2
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->moveFocus(I)V

    goto :goto_0

    .line 763
    :sswitch_3
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->moveFocus(I)V

    goto :goto_0

    .line 767
    :sswitch_4
    const/16 v0, 0x3e7

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->moveFocus(I)V

    goto :goto_0

    .line 771
    :sswitch_5
    const/16 v0, -0x3e7

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->moveFocus(I)V

    goto :goto_0

    .line 749
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method public remakeCandidatesWebApi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 672
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    .line 675
    .local v0, focus:I
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->initGijiList()V

    .line 676
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsViewLayoutEnableWebAPI:Z

    .line 677
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 678
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getAllCandidates()V

    .line 679
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mIsViewLayoutEnableWebAPI:Z

    .line 681
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    .line 682
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 683
    invoke-direct {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->moveFocus(I)V

    .line 686
    :cond_0
    return-void
.end method

.method public scrollPageAndUpdateFocus(Z)V
    .locals 8
    .parameter "scrollDown"

    .prologue
    const/4 v0, 0x1

    .line 906
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->isFocusCandidate()Z

    move-result v7

    if-nez v7, :cond_1

    .line 907
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->moveFocus(I)V

    .line 927
    :cond_0
    return-void

    .line 911
    :cond_1
    if-eqz p1, :cond_3

    .line 912
    .local v0, direction:I
    :goto_0
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBodyScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    .line 913
    .local v5, pageSize:I
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    .line 916
    .local v6, start:I
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mFocusedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 917
    .local v4, leftBeforeMove:I
    move v2, v6

    .local v2, index:I
    :goto_1
    if-ltz v2, :cond_2

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextViewArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 918
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mTextViewArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    .line 919
    .local v3, leftAfterMove:I
    sub-int v7, v3, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v5, :cond_4

    .line 920
    sub-int/2addr v2, v0

    .line 924
    .end local v3           #leftAfterMove:I
    :cond_2
    move v1, v6

    .local v1, i:I
    :goto_2
    if-eq v1, v2, :cond_0

    .line 925
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->moveFocus(I)V

    .line 924
    add-int/2addr v1, v0

    goto :goto_2

    .line 911
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v4           #leftBeforeMove:I
    .end local v5           #pageSize:I
    .end local v6           #start:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 917
    .restart local v0       #direction:I
    .restart local v2       #index:I
    .restart local v3       #leftAfterMove:I
    .restart local v4       #leftBeforeMove:I
    .restart local v5       #pageSize:I
    .restart local v6       #start:I
    :cond_4
    add-int/2addr v2, v0

    goto :goto_1
.end method

.method public selectFocusCandidate()V
    .locals 3

    .prologue
    .line 843
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCurrentFocusIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 846
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getFocusedWnnWord()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    .line 848
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1

    .line 861
    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_0
    :goto_0
    return-void

    .line 852
    .restart local v0       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_1
    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    .line 853
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->selectWebApiButton()V

    goto :goto_0

    .line 854
    :cond_2
    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_3

    .line 855
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->selectWebApiGetAgainButton()V

    goto :goto_0

    .line 857
    :cond_3
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto :goto_0
.end method

.method public setAutoHide(Z)V
    .locals 0
    .parameter "hide"

    .prologue
    .line 254
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mAutoHideMode:Z

    .line 255
    return-void
.end method

.method public setCandidateMsgRemove()V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 991
    return-void
.end method

.method public setEnableCandidateLongClick(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 985
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mEnableCandidateLongClick:Z

    .line 986
    return-void
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 692
    :try_start_0
    const-string v1, "key_vibration"

    const/4 v4, 0x1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 693
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const-string v4, "vibrator"

    invoke-virtual {v1, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mVibrator:Landroid/os/Vibrator;

    .line 694
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "iwnn"

    const-string v4, "VIBRATOR ON"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    :goto_0
    const-string v1, "key_sound"

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 699
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mSound:Landroid/media/AudioManager;

    .line 700
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "iwnn"

    const-string v4, "SOUND ON"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :cond_1
    :goto_1
    const-string v1, "opt_mushroom"

    const-string v4, "notuse"

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "notuse"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mEnableMushroom:Z

    .line 708
    return-void

    .line 696
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mVibrator:Landroid/os/Vibrator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "iwnn"

    const-string v4, "NO VIBRATOR"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 702
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mSound:Landroid/media/AudioManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_4
    move v1, v3

    .line 707
    goto :goto_2
.end method

.method public setViewType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 438
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewType:I

    .line 440
    if-nez p1, :cond_1

    .line 441
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewCandidateList:Landroid/widget/LinearLayout;

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mCandidateMinimumHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewCandidateList:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 444
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mViewBody:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method
