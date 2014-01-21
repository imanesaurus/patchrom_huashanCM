.class public Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;
.super Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
.source "TextCandidatesViewManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final BUNDLE_CATEGORY_KEY:Ljava/lang/String; = "category"

.field private static final DEFAULT_VALUE_KEYLINE:I = 0x4

.field private static final DIRECTION_TO_END:I = -0x3e7

.field private static final DIRECTION_TO_HOME:I = 0x3e7

.field private static final DISPLAY_LINE_MAX_COUNT:I = 0x1f4

.field private static final FOCUS_NONE:I = -0x1

.field private static final FULL_VIEW_DECOEMOJI_DIV_PORT:I = 0x4

.field private static final FULL_VIEW_DIV:I = 0x6

.field private static final FULL_VIEW_EMOJI_DIV_LAND:I = 0x8

.field private static final FULL_VIEW_EMOJI_DIV_PORT:I = 0x5

.field private static final FULL_VIEW_SYMBOL_DIV_LAND:I = 0xa

.field private static final FULL_VIEW_SYMBOL_DIV_PORT:I = 0x6

.field private static final INIT_CONSTANT_FIRST_INDEX_CATEGORY_CNT:I = -0x1

.field private static final INIT_CONSTANT_LINE_LAST_INDEX:I = -0x1

.field private static final KEY_GAP_LANDSCAPE_KEY:Ljava/lang/String; = "key_gap_landscape"

.field private static final KEY_GAP_PORTRAIT_KEY:Ljava/lang/String; = "key_gap_portrait"

.field private static final KEY_HEIGHT_LANDSCAPE_KEY:Ljava/lang/String; = "key_height_landscape"

.field private static final KEY_HEIGHT_LANDSCAPE_SYMBOL_KEY:Ljava/lang/String; = "key_height_landscape_symbol"

.field private static final KEY_HEIGHT_PORTRAIT_KEY:Ljava/lang/String; = "key_height_portrait"

.field private static final KEY_HEIGHT_PORTRAIT_SYMBOL_KEY:Ljava/lang/String; = "key_height_portrait_symbol"

.field public static final LINE_NUM_HISTORY:I = 0x2

.field public static final LINE_NUM_LANDSCAPE:I = 0x1

.field public static final LINE_NUM_PORTRAIT:I = 0x2

.field private static final MORE_DISPLAY_CANDIDATE_DELAY:I = 0x3e8

.field private static final MSG_MORE_DISPLAY_CANDIDATES:I = 0x3

.field private static final MSG_MOVE_FOCUS:I = 0x0

.field private static final MSG_SELECT_CANDIDATES:I = 0x2

.field private static final MSG_SET_CANDIDATES:I = 0x1

.field private static final SETTING_NUMBER_OF_LINEMAX:I = 0x5

.field private static final SET_CANDIDATE_DELAY:I = 0x64

.field private static final SET_CANDIDATE_DELAY_LINE_COUNT:I = 0x2

.field private static final SET_CANDIDATE_FIRST_LINE_COUNT:I = 0x5


# instance fields
.field private m1st:Z

.field private m1stIndexCategoryNo:I

.field private m1stView1stLineLastIndex:I

.field private m2ndView1stLineLastIndex:I

.field private mAddSymbolTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoHideMode:Z

.field private mCanReadMore:Z

.field private mCandCategoryTextSize:F

.field private mCandEmojiTextSize:F

.field private mCandNormalTextSize:F

.field private mCandidateBackColor:I

.field private mCandidateCategoryMinimumHeight:I

.field private mCandidateLeftAlignThreshold:I

.field private mCandidateMinimumHeight:I

.field private mCandidateMinimumWidth:I

.field private mCandidateOnClick1st:Landroid/view/View$OnClickListener;

.field private mCandidateOnClick2nd:Landroid/view/View$OnClickListener;

.field private mCandidateOnLongClick1st:Landroid/view/View$OnLongClickListener;

.field private mCandidateOnLongClick2nd:Landroid/view/View$OnLongClickListener;

.field private mCandidateOneLineMinimumHeight:I

.field private mCandidateSymbolMinimumHeight:I

.field private mCategoryId:I

.field private mCategoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryYposArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

.field private mCreateCandidateDone:Z

.field private mCreatting2ndView1stLine:Z

.field private mCurrentFocusIndex:I

.field mCurrentX:F

.field mCurrentY:F

.field private mDisplayEndOffset:I

.field private mDisplayLimit:I

.field private mEnableCandidateLongClick:Z

.field private mEnableDecoEmoji:Z

.field private mEnableEmoji:Z

.field private mEnableEmojiUNI6:Z

.field private mEnableEmoticon:Z

.field private mFocusAxisX:I

.field private mFocusedView:Landroid/view/View;

.field private mFocusedViewBackground:Landroid/graphics/drawable/Drawable;

.field private mFullViewOccupyCount:I

.field private mFullViewPrevLineTopId:I

.field private mFullViewPrevParams:Landroid/view/ViewGroup$LayoutParams;

.field private mFullViewPrevView:Landroid/widget/TextView;

.field private mFullViewWordCount:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardHidden:Z

.field private mHasFocusedArray1st:Z

.field private mIsDisplayWebApi:Z

.field private mIsFullView:Z

.field private mIsSymbolMode:Z

.field private mIsSymbolSelected:Z

.field private mIsViewLayoutEnableWebAPI:Z

.field private mKeyboardGap:I

.field private mKeyboardHeight:I

.field private mLandscapeNumberOfLine:I

.field mLastTouchX:F

.field mLastTouchY:F

.field private mLineCount:I

.field private mLineLength:I

.field private mLineY:I

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mNoCandidateTextColor:I

.field private mNormalViewWordCountOfLine:I

.field private mPortrait:Z

.field private mPortraitNumberOfLine:I

.field private mReadMoreButton:Landroid/widget/ImageView;

.field private mSound:Landroid/media/AudioManager;

.field private mSymbolHistoryLine:I

.field private mSymbolKeyboardHeight:I

.field private mSymbolKeyboardTabHeight:I

.field private mSymbolMode:I

.field private mTabOnClick:Landroid/view/View$OnClickListener;

.field private mTabTextPaddingLeft:I

.field private mTabTextPaddingRight:I

.field private mTextColor:I

.field private mTextColorSymbol:I

.field private mTextViewArray1st:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTextViewArray2nd:Ljava/util/ArrayList;
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

.field private mViewBodyScroll:Landroid/widget/ScrollView;

.field private mViewCandidateBase:Landroid/view/ViewGroup;

.field private mViewCandidateList1st:Landroid/widget/LinearLayout;

.field private mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

.field private mViewCandidateListTab:Landroid/widget/LinearLayout;

.field private mViewCandidateMain:Landroid/view/ViewGroup;

.field private mViewCandidateNothing:Landroid/view/View;

.field private mViewCandidateTemplate:Landroid/widget/TextView;

.field private mViewHeight:I

.field private mViewTabBase:Landroid/view/ViewGroup;

.field private mViewTabDecoEmoji:Landroid/widget/TextView;

.field private mViewTabEmoticon:Landroid/widget/TextView;

.field private mViewTabPictgram:Landroid/widget/TextView;

.field private mViewTabPictgram_uni6:Landroid/widget/TextView;

.field private mViewTabScroll:Landroid/widget/HorizontalScrollView;

.field private mViewTabSymbol:Landroid/widget/TextView;

.field private mViewType:I

.field private mViewWidth:I

.field private mWebAPICandTextColor:I

.field private mWebAPIKeyTextColor:I

.field private mWebApiButton:Landroid/widget/TextView;

.field private mWnnWordArray1st:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end field

.field private mWnnWordArray2nd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end field

.field private mWnnWordSelectedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end field

.field private mWordCount1st:I

.field private mWordCount2nd:I

.field private mWordCount2ndNotCategory:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 526
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;-><init>(I)V

    .line 527
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "displayLimit"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 534
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;-><init>()V

    .line 135
    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    .line 203
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    .line 206
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    .line 209
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoticon:Z

    .line 212
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    .line 215
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAutoHideMode:Z

    .line 222
    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mVibrator:Landroid/os/Vibrator;

    .line 224
    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSound:Landroid/media/AudioManager;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray1st:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordSelectedList:Ljava/util/LinkedList;

    .line 241
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    .line 243
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    .line 246
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 249
    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mMotionEvent:Landroid/view/MotionEvent;

    .line 252
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mDisplayEndOffset:I

    .line 254
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCanReadMore:Z

    .line 256
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextColor:I

    .line 258
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextColorSymbol:I

    .line 260
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateBackColor:I

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray2nd:Ljava/util/ArrayList;

    .line 283
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    .line 285
    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusedView:Landroid/view/View;

    .line 287
    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusedViewBackground:Landroid/graphics/drawable/Drawable;

    .line 289
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusAxisX:I

    .line 291
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortraitNumberOfLine:I

    .line 296
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLandscapeNumberOfLine:I

    .line 302
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebAPIKeyTextColor:I

    .line 305
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebAPICandTextColor:I

    .line 308
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mNoCandidateTextColor:I

    .line 311
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    .line 314
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolSelected:Z

    .line 317
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    .line 320
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    .line 332
    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebApiButton:Landroid/widget/TextView;

    .line 335
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsDisplayWebApi:Z

    .line 338
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHardKeyboardHidden:Z

    .line 344
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableCandidateLongClick:Z

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAddSymbolTabList:Ljava/util/ArrayList;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    .line 359
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    .line 366
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stView1stLineLastIndex:I

    .line 369
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m2ndView1stLineLastIndex:I

    .line 371
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stIndexCategoryNo:I

    .line 373
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2ndNotCategory:I

    .line 375
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCreatting2ndView1stLine:Z

    .line 384
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLastTouchX:F

    .line 385
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLastTouchY:F

    .line 388
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1st:Z

    .line 392
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    .line 427
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$2;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOnClick1st:Landroid/view/View$OnClickListener;

    .line 434
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$3;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$3;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOnClick2nd:Landroid/view/View$OnClickListener;

    .line 441
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$4;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$4;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOnLongClick1st:Landroid/view/View$OnLongClickListener;

    .line 448
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$5;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$5;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOnLongClick2nd:Landroid/view/View$OnLongClickListener;

    .line 455
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$6;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabOnClick:Landroid/view/View$OnClickListener;

    .line 535
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mDisplayLimit:I

    .line 536
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewType:I

    return v0
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    return v0
.end method

.method static synthetic access$1000(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->playSoundAndVibration()V

    return-void
.end method

.method static synthetic access$1200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    return v0
.end method

.method static synthetic access$1300(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAddSymbolTabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    return-object v0
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V

    return-void
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordSelectedList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    return-void
.end method

.method static synthetic access$600(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    return v0
.end method

.method static synthetic access$602(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    return p1
.end method

.method static synthetic access$700(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Landroid/widget/AbsoluteLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method static synthetic access$800(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray1st:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->onClickCandidate(Landroid/view/View;Ljava/util/ArrayList;)V

    return-void
.end method

.method private buildLayoutParams(Landroid/widget/AbsoluteLayout;II)Landroid/view/ViewGroup$LayoutParams;
    .locals 6
    .parameter "layout"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1676
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateViewDivison()I

    move-result v2

    .line 1677
    .local v2, viewDivison:I
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewWidth:I

    div-int v0, v5, v2

    .line 1678
    .local v0, indentWidth:I
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewOccupyCount:I

    mul-int v3, v0, v5

    .line 1679
    .local v3, x:I
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    .line 1680
    .local v4, y:I
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p2, p3, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1683
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    return-object v1
.end method

.method private buildLayoutParams(Landroid/widget/RelativeLayout;II)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .parameter "layout"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1696
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1698
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevLineTopId:I

    if-nez v1, :cond_0

    .line 1699
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1704
    :goto_0
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewOccupyCount:I

    if-nez v1, :cond_1

    .line 1705
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1710
    :goto_1
    return-object v0

    .line 1701
    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevLineTopId:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 1707
    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2nd:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private clearNormalViewCandidate()V
    .locals 8

    .prologue
    .line 1782
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList1st:Landroid/widget/LinearLayout;

    .line 1783
    .local v0, candidateList:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 1784
    .local v3, lineNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1786
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1787
    .local v4, lineView:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 1788
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 1789
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1790
    .local v6, v:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1788
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1784
    .end local v6           #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1793
    .end local v2           #j:I
    .end local v4           #lineView:Landroid/widget/LinearLayout;
    .end local v5           #size:I
    :cond_1
    return-void
.end method

.method private createAdditionalTab()V
    .locals 8

    .prologue
    .line 1174
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAddSymbolTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1175
    .local v3, tab:Landroid/widget/TextView;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabBase:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1178
    .end local v3           #tab:Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAddSymbolTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1180
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    check-cast v6, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getAdditionalSymbolTabNames()[Ljava/lang/String;

    move-result-object v5

    .line 1181
    .local v5, tabNames:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1182
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1183
    .local v4, tabName:Ljava/lang/String;
    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createTab(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 1184
    .restart local v3       #tab:Landroid/widget/TextView;
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabBase:Landroid/view/ViewGroup;

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabSymbol:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAddSymbolTabList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1188
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #tab:Landroid/widget/TextView;
    .end local v4           #tabName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private createCandidateView()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 1719
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;-><init>(Landroid/content/Context;)V

    .line 1720
    .local v0, text:Landroid/widget/TextView;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandNormalTextSize:F

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1721
    const v1, 0x7f020016

    invoke-direct {p0, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 1722
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1723
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1724
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1725
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1726
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1729
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1730
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1731
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 1733
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->addView(Landroid/widget/TextView;)V

    move-object v1, v0

    .line 1735
    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setmWnn(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    .line 1736
    return-object v0
.end method

.method private createCategoryList(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;[Ljava/lang/String;)V
    .locals 5
    .parameter "converter"
    .parameter "category"

    .prologue
    .line 3254
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3255
    .local v1, child:I
    if-nez v1, :cond_2

    .line 3256
    array-length v0, p2

    .line 3257
    .local v0, catesize:I
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->isHistoryExists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3258
    const/4 v3, 0x0

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    .line 3262
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 3263
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryList:Ljava/util/ArrayList;

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3262
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3260
    .end local v2           #i:I
    :cond_0
    const/4 v3, 0x1

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    goto :goto_0

    .line 3265
    .restart local v2       #i:I
    :cond_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setCategory(Ljava/util/ArrayList;)V

    .line 3266
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setSelectedCategory(I)V

    .line 3268
    .end local v0           #catesize:I
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method private createNextLine(Z)V
    .locals 4
    .parameter "isCategory"

    .prologue
    const/4 v3, 0x0

    .line 2221
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isFirstListOver(ZILjp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2223
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewOccupyCount:I

    .line 2224
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2225
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevLineTopId:I

    .line 2227
    :cond_0
    if-eqz p1, :cond_2

    .line 2228
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateCategoryMinimumHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    .line 2232
    :goto_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    .line 2233
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2ndNotCategory:I

    if-lez v0, :cond_1

    .line 2234
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCreatting2ndView1stLine:Z

    .line 2239
    :cond_1
    :goto_1
    return-void

    .line 2230
    :cond_2
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    goto :goto_0

    .line 2237
    :cond_3
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createNextLineFor1st()V

    goto :goto_1
.end method

.method private createNextLineFor1st()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 2245
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList1st:Landroid/widget/LinearLayout;

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2246
    .local v2, lineView:Landroid/widget/LinearLayout;
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateLeftAlignThreshold:I

    if-ge v5, v6, :cond_0

    .line 2247
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2248
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateTemplate:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2252
    :cond_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f80

    invoke-direct {v3, v8, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2257
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 2258
    .local v0, child:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2259
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2261
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateTemplate:Landroid/widget/TextView;

    if-eq v4, v5, :cond_1

    .line 2262
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2263
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 2258
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2267
    .end local v4           #view:Landroid/view/View;
    :cond_2
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    .line 2268
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mNormalViewWordCountOfLine:I

    .line 2269
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    .line 2270
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 2271
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    .line 2273
    :cond_3
    return-void
.end method

.method private createNormalCandidateView()V
    .locals 15

    .prologue
    const/4 v14, -0x2

    .line 937
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v13, 0x7f080021

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList1st:Landroid/widget/LinearLayout;

    .line 938
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList1st:Landroid/widget/LinearLayout;

    iget-object v13, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOnClick1st:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v13, 0x7f080017

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateListTab:Landroid/widget/LinearLayout;

    .line 941
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram:Landroid/widget/TextView;

    .line 942
    .local v7, tPictgram:Landroid/widget/TextView;
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram_uni6:Landroid/widget/TextView;

    .line 944
    .local v8, tPictgram_uni6:Landroid/widget/TextView;
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabSymbol:Landroid/widget/TextView;

    .line 946
    .local v9, tSymbol:Landroid/widget/TextView;
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabEmoticon:Landroid/widget/TextView;

    .line 948
    .local v6, tEmoticon:Landroid/widget/TextView;
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabDecoEmoji:Landroid/widget/TextView;

    .line 951
    .local v5, tDecoEmoji:Landroid/widget/TextView;
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    const/4 v3, 0x5

    .line 954
    .local v3, line:I
    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewWidth:I

    .line 955
    .local v11, width:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 956
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v12}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 957
    .local v4, lineView:Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 958
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v2, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 961
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumWidth()I

    move-result v12

    div-int v12, v11, v12

    if-ge v1, v12, :cond_0

    .line 963
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createCandidateView()Landroid/widget/TextView;

    move-result-object v10

    .line 964
    .local v10, tv:Landroid/widget/TextView;
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 962
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 967
    .end local v10           #tv:Landroid/widget/TextView;
    :cond_0
    if-nez v0, :cond_1

    .line 969
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createCandidateView()Landroid/widget/TextView;

    move-result-object v10

    .line 970
    .restart local v10       #tv:Landroid/widget/TextView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 972
    .restart local v2       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x0

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 973
    const/4 v12, 0x5

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 974
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 976
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 977
    iput-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateTemplate:Landroid/widget/TextView;

    .line 979
    .end local v10           #tv:Landroid/widget/TextView;
    :cond_1
    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList1st:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    .end local v1           #j:I
    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #lineView:Landroid/widget/LinearLayout;
    :cond_2
    return-void
.end method

.method private createTab(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 3169
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3170
    .local v0, tab:Landroid/widget/TextView;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3172
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3173
    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3174
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3175
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 3176
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3179
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 3180
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3181
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3182
    return-object v0
.end method

.method private displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V
    .locals 12
    .parameter "converter"
    .parameter "dispFirst"
    .parameter "maxLine"

    .prologue
    .line 1215
    if-nez p1, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mDisplayLimit:I

    .line 1222
    .local v1, displayLimit:I
    const/4 v4, 0x0

    .line 1223
    .local v4, isDelay:Z
    const/4 v5, 0x0

    .line 1224
    .local v5, isHistorySequence:Z
    const/4 v3, 0x0

    .line 1226
    .local v3, isBreak:Z
    instance-of v8, p1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    if-eqz v8, :cond_3

    .line 1227
    if-nez p2, :cond_2

    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCreateCandidateDone:Z

    if-nez v8, :cond_2

    .line 1228
    const/4 v8, -0x1

    if-ne p3, v8, :cond_9

    .line 1229
    const/4 v4, 0x1

    .line 1230
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    add-int/lit8 p3, v8, 0x5

    .line 1232
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1241
    :cond_2
    :goto_1
    const/4 v1, -0x1

    .line 1245
    :cond_3
    const/4 v7, 0x0

    .line 1246
    .local v7, result:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    const/4 v6, 0x0

    .line 1247
    .local v6, prevCandidate:Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v8, -0x1

    if-eq v1, v8, :cond_5

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getWordCount()I

    move-result v8

    if-ge v8, v1, :cond_7

    .line 1248
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    const/16 v8, 0x1f4

    if-ge v2, v8, :cond_6

    .line 1249
    invoke-interface {p1}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v7

    .line 1250
    if-nez v7, :cond_a

    .line 1263
    :cond_6
    if-nez v7, :cond_b

    .line 1324
    .end local v2           #i:I
    :cond_7
    :goto_4
    if-nez v3, :cond_8

    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCreateCandidateDone:Z

    if-nez v8, :cond_8

    .line 1326
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createNextLine(Z)V

    .line 1327
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCreateCandidateDone:Z

    .line 1328
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1331
    :cond_8
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getWordCount()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_16

    .line 1332
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAutoHideMode:Z

    if-eqz v8, :cond_15

    .line 1333
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-nez v8, :cond_16

    .line 1334
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 1234
    .end local v6           #prevCandidate:Ljava/lang/String;
    .end local v7           #result:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_9
    const/4 v8, 0x2

    if-ne p3, v8, :cond_2

    .line 1235
    const/4 v4, 0x1

    .line 1236
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    add-int/lit8 p3, v8, 0x2

    .line 1238
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1254
    .restart local v2       #i:I
    .restart local v6       #prevCandidate:Ljava/lang/String;
    .restart local v7       #result:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_a
    iget v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v8, v8, 0x10

    if-nez v8, :cond_6

    .line 1258
    if-eqz v6, :cond_6

    iget-object v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1248
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1266
    :cond_b
    iget-object v6, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 1270
    iget v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_c

    .line 1272
    iget v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_12

    .line 1273
    const/4 v5, 0x1

    .line 1294
    :cond_c
    :goto_5
    iget v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_d

    .line 1295
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060111

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 1298
    :cond_d
    iget v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_e

    .line 1299
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060112

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 1302
    :cond_e
    iget v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_f

    .line 1303
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060113

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 1306
    :cond_f
    iget v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_10

    const-string v8, ""

    iget-object v9, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1311
    :cond_10
    invoke-static {v7}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getSpannedCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1312
    .local v0, candidate:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 1315
    const/4 v8, 0x0

    invoke-direct {p0, v8, v7}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidate(ZLjp/co/omronsoft/iwnnime/ml/WnnWord;)V

    .line 1317
    if-nez p2, :cond_11

    if-eqz v4, :cond_4

    :cond_11
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    if-ge p3, v8, :cond_4

    .line 1318
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCanReadMore:Z

    .line 1319
    const/4 v3, 0x1

    .line 1320
    goto/16 :goto_4

    .line 1276
    .end local v0           #candidate:Ljava/lang/CharSequence;
    :cond_12
    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isCategory(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1277
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getWordCount()I

    move-result v8

    if-eqz v8, :cond_13

    .line 1278
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createNextLine(Z)V

    .line 1280
    :cond_13
    iget-object v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    const/4 v9, 0x1

    iget-object v10, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 1281
    const/4 v8, 0x1

    invoke-direct {p0, v8, v7}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidate(ZLjp/co/omronsoft/iwnnime/ml/WnnWord;)V

    .line 1282
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createNextLine(Z)V

    .line 1283
    const/4 v5, 0x0

    .line 1284
    goto/16 :goto_2

    .line 1286
    :cond_14
    if-eqz v5, :cond_c

    .line 1287
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createNextLine(Z)V

    .line 1288
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1338
    .end local v2           #i:I
    :cond_15
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCanReadMore:Z

    .line 1339
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 1341
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setViewLayout(I)Z

    .line 1345
    :cond_16
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2nd:I

    if-nez v8, :cond_17

    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    if-eqz v8, :cond_17

    .line 1346
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1347
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateNothing:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    :cond_17
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setReadMore()V

    .line 1352
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->isShown()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1353
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    goto/16 :goto_0
.end method

.method private displaySymbolHistory(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V
    .locals 2
    .parameter "converter"

    .prologue
    .line 1364
    const/4 v0, 0x0

    .line 1366
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :goto_0
    invoke-interface {p1}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isSymbolHistory(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1368
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidate(ZLjp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto :goto_0

    .line 1373
    :cond_0
    return-void
.end method

.method private getCandidateMinimumHeight()I
    .locals 1

    .prologue
    .line 2299
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-eqz v0, :cond_0

    .line 2300
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateSymbolMinimumHeight:I

    .line 2302
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateMinimumHeight:I

    goto :goto_0
.end method

.method private getCandidateMinimumWidth()I
    .locals 1

    .prologue
    .line 2290
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateMinimumWidth:I

    return v0
.end method

.method private getCandidateSpaceWidth(Z)I
    .locals 3
    .parameter "isEmojiSymbol"

    .prologue
    const v2, 0x7f0b000a

    .line 2577
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2578
    .local v0, r:Landroid/content/res/Resources;
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 2579
    if-eqz p1, :cond_0

    .line 2580
    const/4 v1, 0x0

    .line 2588
    :goto_0
    return v1

    .line 2582
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 2585
    :cond_1
    if-eqz p1, :cond_2

    .line 2586
    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 2588
    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private getCandidateViewDivison()I
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 2484
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-eqz v2, :cond_3

    .line 2485
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    .line 2486
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 2502
    const/4 v1, 0x6

    .line 2508
    .end local v0           #mode:I
    .local v1, viewDivison:I
    :goto_0
    return v1

    .line 2489
    .end local v1           #viewDivison:I
    .restart local v0       #mode:I
    :pswitch_0
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortrait:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    .line 2490
    .restart local v1       #viewDivison:I
    :cond_0
    goto :goto_0

    .line 2492
    .end local v1           #viewDivison:I
    :pswitch_1
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortrait:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    .line 2493
    .restart local v1       #viewDivison:I
    :cond_1
    goto :goto_0

    .line 2499
    .end local v1           #viewDivison:I
    :pswitch_2
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortrait:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    .line 2500
    .restart local v1       #viewDivison:I
    :goto_1
    goto :goto_0

    .line 2499
    .end local v1           #viewDivison:I
    :cond_2
    const/16 v1, 0xa

    goto :goto_1

    .line 2506
    .end local v0           #mode:I
    :cond_3
    const/4 v1, 0x6

    .restart local v1       #viewDivison:I
    goto :goto_0

    .line 2486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getCandidateViewHeight()I
    .locals 13

    .prologue
    const v12, 0x7f0b003c

    const/high16 v11, 0x7f0b

    const/4 v10, 0x0

    .line 2311
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2312
    .local v6, pref:Landroid/content/SharedPreferences;
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortrait:Z

    if-nez v8, :cond_0

    .line 2313
    const-string v8, "key_height_landscape"

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardHeight:I

    .line 2316
    const-string v8, "key_height_landscape_symbol"

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolKeyboardHeight:I

    .line 2318
    const-string v8, "key_gap_landscape"

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardGap:I

    .line 2332
    :goto_0
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardHeight:I

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardGap:I

    add-int/2addr v8, v9

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardGap:I

    div-int/lit8 v9, v9, 0x4

    mul-int/lit8 v9, v9, 0x4

    sub-int/2addr v8, v9

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardHeight:I

    .line 2334
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolKeyboardHeight:I

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardGap:I

    div-int/lit8 v9, v9, 0x4

    sub-int/2addr v8, v9

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolKeyboardHeight:I

    .line 2336
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2337
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardHeight:I

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOneLineMinimumHeight:I

    add-int/2addr v8, v9

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolKeyboardHeight:I

    sub-int/2addr v8, v9

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolKeyboardTabHeight:I

    sub-int/2addr v8, v9

    .line 2355
    :goto_1
    return v8

    .line 2322
    :cond_0
    const-string v8, "key_height_portrait"

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardHeight:I

    .line 2325
    const-string v8, "key_height_portrait_symbol"

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolKeyboardHeight:I

    .line 2327
    const-string v8, "key_gap_portrait"

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardGap:I

    goto :goto_0

    .line 2340
    :cond_1
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortrait:Z

    if-eqz v8, :cond_2

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortraitNumberOfLine:I

    .line 2341
    .local v5, numberOfLine:I
    :goto_2
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2342
    .local v7, resource:Landroid/content/res/Resources;
    const v8, 0x7f02023a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2343
    .local v1, keyboardBackground:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2344
    .local v2, keyboardPadding:Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2345
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int v3, v8, v9

    .line 2346
    .local v3, keyboardTotalPadding:I
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-eqz v8, :cond_3

    .line 2347
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardHeight:I

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateMinimumHeight:I

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolKeyboardHeight:I

    sub-int/2addr v8, v9

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolKeyboardTabHeight:I

    sub-int/2addr v8, v9

    goto :goto_1

    .line 2340
    .end local v1           #keyboardBackground:Landroid/graphics/drawable/Drawable;
    .end local v2           #keyboardPadding:Landroid/graphics/Rect;
    .end local v3           #keyboardTotalPadding:I
    .end local v5           #numberOfLine:I
    .end local v7           #resource:Landroid/content/res/Resources;
    :cond_2
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLandscapeNumberOfLine:I

    goto :goto_2

    .line 2349
    .restart local v1       #keyboardBackground:Landroid/graphics/drawable/Drawable;
    .restart local v2       #keyboardPadding:Landroid/graphics/Rect;
    .restart local v3       #keyboardTotalPadding:I
    .restart local v5       #numberOfLine:I
    .restart local v7       #resource:Landroid/content/res/Resources;
    :cond_3
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHardKeyboardHidden:Z

    if-nez v8, :cond_4

    .line 2350
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mKeyboardHeight:I

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolKeyboardHeight:I

    sub-int/2addr v8, v9

    goto :goto_1

    .line 2353
    :cond_4
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v8, v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getKeyboardView()Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-result-object v4

    .line 2354
    .local v4, keyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;
    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getHeight()I

    move-result v0

    .line 2355
    .local v0, KeyboardViewHeight:I
    add-int v8, v0, v3

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    goto/16 :goto_1
.end method

.method private getMaxLine()I
    .locals 2

    .prologue
    .line 1199
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortrait:Z

    if-eqz v1, :cond_0

    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortraitNumberOfLine:I

    .line 1200
    .local v0, maxLine:I
    :goto_0
    return v0

    .line 1199
    .end local v0           #maxLine:I
    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLandscapeNumberOfLine:I

    goto :goto_0
.end method

.method private getWordCount()I
    .locals 2

    .prologue
    .line 2515
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2nd:I

    add-int/2addr v0, v1

    return v0
.end method

.method private isFirstListOver(ZILjp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 3
    .parameter "isFullView"
    .parameter "lineCount"
    .parameter "word"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2536
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-eqz v2, :cond_2

    .line 2537
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    packed-switch v2, :pswitch_data_0

    .line 2552
    if-nez p1, :cond_0

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getMaxLine()I

    move-result v2

    if-ge v2, p2, :cond_1

    :cond_0
    move v0, v1

    .line 2555
    :cond_1
    :goto_0
    return v0

    .line 2546
    :pswitch_0
    invoke-static {p3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isSymbolHistory(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 2549
    goto :goto_0

    .line 2555
    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getMaxLine()I

    move-result v2

    if-ge v2, p2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 2537
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isSymbolHistory(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 2
    .parameter "word"

    .prologue
    const/4 v0, 0x0

    .line 2563
    if-nez p0, :cond_1

    .line 2570
    :cond_0
    :goto_0
    return v0

    .line 2566
    :cond_1
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2568
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onClickCandidate(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/WnnWord;>;"
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 551
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->isPopupKeyboard()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->closePopupKeyboard()V

    goto :goto_0

    .line 556
    :cond_2
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->playSoundAndVibration()V

    .line 558
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 559
    check-cast v0, Landroid/widget/TextView;

    .line 560
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v2

    .line 561
    .local v2, wordcount:I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 562
    .local v1, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    .line 563
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearFocusCandidate()V

    .line 564
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectWebApiButton()V

    goto :goto_0

    .line 567
    :cond_3
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_4

    .line 568
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearFocusCandidate()V

    .line 569
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectWebApiGetAgainButton()V

    goto :goto_0

    .line 572
    :cond_4
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearFocusCandidate()V

    .line 573
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto :goto_0
.end method

.method private playSoundAndVibration()V
    .locals 5

    .prologue
    .line 2094
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    .line 2096
    :try_start_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2097
    .local v1, vibrateTime:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    .end local v1           #vibrateTime:I
    :cond_0
    :goto_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSound:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 2104
    :try_start_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSound:Landroid/media/AudioManager;

    const/4 v3, 0x5

    const/high16 v4, -0x4080

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->playSoundEffect(IF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2109
    :cond_1
    :goto_1
    return-void

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "iwnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextCandidatesViewManager::playSoundAndVibration Vibrator "

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

    .line 2105
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2106
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v2, "iwnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextCandidatesViewManager::playSoundAndVibration Sound "

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

.method private removeAllViewRecursive(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "viewGroup"

    .prologue
    .line 3087
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3088
    .local v0, conut:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3089
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3090
    .local v2, view:Landroid/view/View;
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->unbindView(Landroid/view/View;)V

    .line 3091
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 3092
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->removeAllViewRecursive(Landroid/view/ViewGroup;)V

    .line 3088
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3095
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3096
    return-void
.end method

.method private selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    .locals 7
    .parameter "word"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2061
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-nez v4, :cond_0

    .line 2062
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 2063
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v6, -0xffffffd

    invoke-direct {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 2066
    :cond_0
    iget v4, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    const/high16 v5, 0x200

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    move v1, v2

    .line 2067
    .local v1, isPrevButton:Z
    :goto_0
    iget v4, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    const/high16 v5, 0x400

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    move v0, v2

    .line 2069
    .local v0, isNextButton:Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_6

    .line 2070
    :cond_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    instance-of v2, v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    if-eqz v2, :cond_2

    .line 2071
    if-eqz v1, :cond_5

    .line 2072
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->pagePrev()V

    .line 2076
    :goto_2
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 2085
    :cond_2
    :goto_3
    return-void

    .end local v0           #isNextButton:Z
    .end local v1           #isPrevButton:Z
    :cond_3
    move v1, v3

    .line 2066
    goto :goto_0

    .restart local v1       #isPrevButton:Z
    :cond_4
    move v0, v3

    .line 2067
    goto :goto_1

    .line 2074
    .restart local v0       #isNextButton:Z
    :cond_5
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->pageNext()V

    goto :goto_2

    .line 2079
    :cond_6
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    instance-of v2, v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    if-eqz v2, :cond_7

    .line 2080
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->saveCurrentIndex()V

    .line 2082
    :cond_7
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolSelected:Z

    .line 2083
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v4, -0xffffff5

    invoke-direct {v3, v4, p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILjp/co/omronsoft/iwnnime/ml/WnnWord;)V

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_3
.end method

.method private selectWebApiButton()V
    .locals 3

    .prologue
    .line 3024
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebApiButton:Landroid/widget/TextView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3025
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xffff000

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 3026
    return-void
.end method

.method private selectWebApiGetAgainButton()V
    .locals 3

    .prologue
    .line 3032
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebApiButton:Landroid/widget/TextView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3033
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffeffa

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 3034
    return-void
.end method

.method private setCandidate(ZLjp/co/omronsoft/iwnnime/ml/WnnWord;)V
    .locals 37
    .parameter "isCategory"
    .parameter "word"

    .prologue
    .line 1382
    invoke-static/range {p2 .. p2}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getSpannedCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1383
    .local v8, candidate:Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .line 1384
    .local v15, isEmojiSymbol:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v33

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    .line 1385
    const/4 v15, 0x1

    .line 1387
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateViewDivison()I

    move-result v31

    .line 1388
    .local v31, viewDivison:I
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewWidth:I

    move/from16 v33, v0

    div-int v12, v33, v31

    .line 1389
    .local v12, indentWidth:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateSpaceWidth(Z)I

    move-result v25

    .line 1390
    .local v25, spaceWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateTemplate:Landroid/widget/TextView;

    move-object/from16 v28, v0

    .line 1391
    .local v28, template:Landroid/widget/TextView;
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_16

    const/16 v29, 0x0

    .line 1392
    .local v29, textLength:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewWidth:I

    move/from16 v18, v0

    .line 1393
    .local v18, maxWidth:I
    const/16 v30, 0x0

    .line 1394
    .local v30, textView:Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 1396
    .local v14, isButton:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isFirstListOver(ZILjp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v13

    .line 1397
    .local v13, is2nd:Z
    if-eqz v13, :cond_1a

    .line 1399
    add-int v33, v29, v12

    add-int v33, v33, v25

    div-int v33, v33, v12

    move/from16 v0, v33

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 1401
    .local v20, occupyCount:I
    const/high16 v7, 0x600

    .line 1404
    .local v7, buttonAttribute:I
    move-object/from16 v0, p2

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    move/from16 v33, v0

    and-int v33, v33, v7

    if-eqz v33, :cond_17

    const/4 v14, 0x1

    .line 1405
    :goto_1
    if-nez p1, :cond_1

    if-eqz v14, :cond_3

    .line 1406
    :cond_1
    if-eqz v14, :cond_2

    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getWordCount()I

    move-result v33

    if-eqz v33, :cond_2

    .line 1407
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createNextLine(Z)V

    .line 1409
    :cond_2
    move/from16 v20, v31

    .line 1412
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewOccupyCount:I

    move/from16 v33, v0

    add-int v33, v33, v20

    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_6

    .line 1413
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewOccupyCount:I

    move/from16 v33, v0

    move/from16 v0, v31

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewOccupyCount:I

    move/from16 v35, v0

    sub-int v35, v31, v35

    mul-int v35, v35, v12

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevView:Landroid/widget/TextView;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Landroid/widget/AbsoluteLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1419
    :cond_4
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewOccupyCount:I

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevView:Landroid/widget/TextView;

    move-object/from16 v33, v0

    if-eqz v33, :cond_5

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevView:Landroid/widget/TextView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getId()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevLineTopId:I

    .line 1423
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    .line 1424
    if-eqz p1, :cond_18

    .line 1425
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateCategoryMinimumHeight:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    .line 1431
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewWordCount:I

    move/from16 v33, v0

    if-nez v33, :cond_7

    .line 1432
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    .line 1435
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCreatting2ndView1stLine:Z

    move/from16 v33, v0

    if-eqz v33, :cond_8

    .line 1436
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2nd:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m2ndView1stLineLastIndex:I

    .line 1439
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    move-object/from16 v16, v0

    .line 1441
    .local v16, layout:Landroid/view/ViewGroup;
    mul-int v32, v12, v20

    .line 1442
    .local v32, width:I
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v11

    .line 1443
    .local v11, height:I
    if-eqz p1, :cond_9

    .line 1444
    move-object/from16 v0, p0

    iget v11, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateCategoryMinimumHeight:I

    .line 1447
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v11}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->buildLayoutParams(Landroid/widget/AbsoluteLayout;II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 1449
    .local v21, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewWordCount:I

    move/from16 v33, v0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #textView:Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 1450
    .restart local v30       #textView:Landroid/widget/TextView;
    if-eqz v30, :cond_c

    .line 1451
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getTextSize()F

    move-result v24

    .line 1452
    .local v24, size:F
    move-object/from16 v0, p0

    iget v10, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandNormalTextSize:F

    .line 1453
    .local v10, checkSize:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    move/from16 v33, v0

    const/16 v34, 0x8

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    .line 1454
    :cond_a
    move-object/from16 v0, p0

    iget v10, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandEmojiTextSize:F

    .line 1456
    :cond_b
    cmpl-float v33, v10, v24

    if-eqz v33, :cond_c

    .line 1457
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1458
    const/16 v30, 0x0

    .line 1461
    .end local v10           #checkSize:F
    .end local v24           #size:F
    :cond_c
    if-nez v30, :cond_19

    .line 1462
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createCandidateView()Landroid/widget/TextView;

    move-result-object v30

    .line 1463
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewWordCount:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;I)V

    .line 1470
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewOccupyCount:I

    move/from16 v33, v0

    add-int v33, v33, v20

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewOccupyCount:I

    .line 1471
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewWordCount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewWordCount:I

    .line 1472
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevView:Landroid/widget/TextView;

    .line 1473
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevParams:Landroid/view/ViewGroup$LayoutParams;

    .line 1530
    .end local v7           #buttonAttribute:I
    .end local v11           #height:I
    .end local v16           #layout:Landroid/view/ViewGroup;
    .end local v20           #occupyCount:I
    .end local v21           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v32           #width:I
    :goto_4
    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    if-eqz v13, :cond_23

    .line 1533
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2nd:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1537
    :goto_5
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1538
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1539
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 1542
    .local v23, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_24

    .line 1543
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "      "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p2

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1545
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandCategoryTextSize:F

    move/from16 v34, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1546
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1547
    const/16 v33, 0x50

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1548
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateCategoryMinimumHeight:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1549
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateCategoryMinimumHeight:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1551
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1552
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1553
    const v33, 0x7f0a0017

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1554
    const v33, 0x7f020018

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1555
    const/16 v33, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v6

    .line 1556
    .local v6, bundle:Landroid/os/Bundle;
    const-string v33, "category"

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1602
    .end local v6           #bundle:Landroid/os/Bundle;
    :goto_6
    const/16 v22, 0x0

    .line 1603
    .local v22, pos:Ljava/lang/Integer;
    if-nez v13, :cond_e

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-nez v33, :cond_d

    .line 1605
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    :cond_d
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stIndexCategoryNo:I

    .line 1611
    :cond_e
    if-nez v14, :cond_f

    if-eqz p1, :cond_10

    .line 1613
    :cond_f
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    move/from16 v34, v0

    mul-int v5, v33, v34

    .line 1614
    .local v5, addHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    move/from16 v33, v0

    add-int v33, v33, v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    .end local v5           #addHeight:I
    :cond_10
    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_2d

    .line 1619
    sget-object v33, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1624
    :goto_7
    const/16 v26, 0x0

    .line 1625
    .local v26, span:Landroid/text/style/ImageSpan;
    move-object/from16 v0, p2

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_11

    move-object/from16 v0, p2

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "\u2005"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2e

    .line 1627
    :cond_11
    new-instance v26, Landroid/text/style/ImageSpan;

    .end local v26           #span:Landroid/text/style/ImageSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v33, v0

    const v34, 0x7f020251

    const/16 v35, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 1638
    .restart local v26       #span:Landroid/text/style/ImageSpan;
    :cond_12
    :goto_8
    if-eqz v26, :cond_13

    .line 1639
    new-instance v27, Landroid/text/SpannableString;

    const-string v33, "   "

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1640
    .local v27, spannable:Landroid/text/SpannableString;
    const/16 v33, 0x1

    const/16 v34, 0x2

    const/16 v35, 0x21

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1641
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1642
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandNormalTextSize:F

    move/from16 v34, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1644
    .end local v27           #spannable:Landroid/text/SpannableString;
    :cond_13
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1646
    if-eqz v13, :cond_31

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2nd:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1648
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2nd:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2nd:I

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray2nd:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1650
    if-nez p1, :cond_14

    .line 1651
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2ndNotCategory:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2ndNotCategory:I

    .line 1655
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1656
    .local v9, categoryYposArrayListSize:I
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stIndexCategoryNo:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2ndNotCategory:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_15

    if-lez v9, :cond_15

    .line 1657
    add-int/lit8 v33, v9, -0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stIndexCategoryNo:I

    .line 1664
    .end local v9           #categoryYposArrayListSize:I
    .end local v22           #pos:Ljava/lang/Integer;
    .end local v23           #r:Landroid/content/res/Resources;
    .end local v26           #span:Landroid/text/style/ImageSpan;
    :cond_15
    :goto_9
    return-void

    .line 1391
    .end local v13           #is2nd:Z
    .end local v14           #isButton:Z
    .end local v18           #maxWidth:I
    .end local v29           #textLength:I
    .end local v30           #textView:Landroid/widget/TextView;
    :cond_16
    const/16 v33, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v8, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->measureText(Ljava/lang/CharSequence;II)I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v34

    add-int v33, v33, v34

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v34

    add-int v29, v33, v34

    goto/16 :goto_0

    .line 1404
    .restart local v7       #buttonAttribute:I
    .restart local v13       #is2nd:Z
    .restart local v14       #isButton:Z
    .restart local v18       #maxWidth:I
    .restart local v20       #occupyCount:I
    .restart local v29       #textLength:I
    .restart local v30       #textView:Landroid/widget/TextView;
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1427
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    move/from16 v33, v0

    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v34

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    .line 1428
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCreatting2ndView1stLine:Z

    goto/16 :goto_2

    .line 1467
    .restart local v11       #height:I
    .restart local v16       #layout:Landroid/view/ViewGroup;
    .restart local v21       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v32       #width:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsoluteLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 1476
    .end local v7           #buttonAttribute:I
    .end local v11           #height:I
    .end local v16           #layout:Landroid/view/ViewGroup;
    .end local v20           #occupyCount:I
    .end local v21           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v32           #width:I
    :cond_1a
    sub-int v33, v12, v25

    move/from16 v0, v29

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 1479
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    move/from16 v33, v0

    add-int v33, v33, v29

    add-int v19, v33, v25

    .line 1481
    .local v19, nextEnd:I
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    move/from16 v33, v0

    if-nez v33, :cond_1b

    .line 1482
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumWidth()I

    move-result v33

    sub-int v18, v18, v33

    .line 1485
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    move/from16 v33, v0

    if-nez v33, :cond_1c

    .line 1486
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    .line 1489
    :cond_1c
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_21

    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getWordCount()I

    move-result v33

    if-eqz v33, :cond_21

    .line 1492
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p2

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x1

    if-nez v33, :cond_15

    .line 1496
    :cond_1d
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createNextLineFor1st()V

    .line 1497
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getMaxLine()I

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_1e

    .line 1498
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    .line 1500
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolSelected:Z

    move/from16 v33, v0

    if-nez v33, :cond_15

    .line 1501
    invoke-direct/range {p0 .. p2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidate(ZLjp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto/16 :goto_9

    .line 1506
    :cond_1e
    add-int v33, v29, v25

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    .line 1511
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1f

    .line 1512
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stView1stLineLastIndex:I

    .line 1515
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList1st:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    invoke-virtual/range {v33 .. v34}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1516
    .local v17, lineView:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mNormalViewWordCountOfLine:I

    move/from16 v33, v0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #textView:Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 1518
    .restart local v30       #textView:Landroid/widget/TextView;
    if-eqz p1, :cond_22

    .line 1519
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_20

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateTemplate:Landroid/widget/TextView;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1522
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateLeftAlignThreshold:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    .line 1527
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mNormalViewWordCountOfLine:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mNormalViewWordCountOfLine:I

    goto/16 :goto_4

    .line 1508
    .end local v17           #lineView:Landroid/widget/LinearLayout;
    :cond_21
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    goto/16 :goto_a

    .line 1524
    .restart local v17       #lineView:Landroid/widget/LinearLayout;
    :cond_22
    add-int v33, v29, v25

    goto :goto_b

    .line 1535
    .end local v17           #lineView:Landroid/widget/LinearLayout;
    .end local v19           #nextEnd:I
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    goto/16 :goto_5

    .line 1558
    .restart local v23       #r:Landroid/content/res/Resources;
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    move/from16 v33, v0

    const/16 v34, 0x8

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_27

    .line 1559
    :cond_25
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandEmojiTextSize:F

    move/from16 v34, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1563
    :goto_c
    const/16 v33, 0x11

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1564
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v33

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1565
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v33

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1567
    if-eqz v13, :cond_28

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOnClick2nd:Landroid/view/View$OnClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOnLongClick2nd:Landroid/view/View$OnLongClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1575
    :goto_d
    const v33, 0x7f020016

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 1577
    move-object/from16 v0, p2

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    move/from16 v33, v0

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0x200

    move/from16 v33, v0

    if-nez v33, :cond_26

    move-object/from16 v0, p2

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    move/from16 v33, v0

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0x4000

    move/from16 v33, v0

    if-eqz v33, :cond_29

    .line 1579
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebAPIKeyTextColor:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1580
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1581
    const v33, 0x7f020020

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 1582
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebApiButton:Landroid/widget/TextView;

    .line 1583
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsDisplayWebApi:Z

    goto/16 :goto_6

    .line 1561
    :cond_27
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandNormalTextSize:F

    move/from16 v34, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_c

    .line 1571
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOnClick1st:Landroid/view/View$OnClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOnLongClick1st:Landroid/view/View$OnLongClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_d

    .line 1584
    :cond_29
    move-object/from16 v0, p2

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    move/from16 v33, v0

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0x400

    move/from16 v33, v0

    if-eqz v33, :cond_2a

    .line 1585
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebAPICandTextColor:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1586
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsDisplayWebApi:Z

    goto/16 :goto_6

    .line 1587
    :cond_2a
    move-object/from16 v0, p2

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    move/from16 v33, v0

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0x800

    move/from16 v33, v0

    if-eqz v33, :cond_2b

    .line 1588
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mNoCandidateTextColor:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1589
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1590
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1591
    const v33, 0x7f020020

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 1592
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsDisplayWebApi:Z

    goto/16 :goto_6

    .line 1594
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2c

    .line 1595
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextColorSymbol:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 1597
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextColor:I

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 1621
    .restart local v22       #pos:Ljava/lang/Integer;
    :cond_2d
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_7

    .line 1629
    .restart local v26       #span:Landroid/text/style/ImageSpan;
    :cond_2e
    move-object/from16 v0, p2

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "\u3000"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2f

    move-object/from16 v0, p2

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "\u2003"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_30

    .line 1631
    :cond_2f
    new-instance v26, Landroid/text/style/ImageSpan;

    .end local v26           #span:Landroid/text/style/ImageSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v33, v0

    const v34, 0x7f02024f

    const/16 v35, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .restart local v26       #span:Landroid/text/style/ImageSpan;
    goto/16 :goto_8

    .line 1633
    :cond_30
    move-object/from16 v0, p2

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "\u2002"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 1634
    new-instance v26, Landroid/text/style/ImageSpan;

    .end local v26           #span:Landroid/text/style/ImageSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v33, v0

    const v34, 0x7f020250

    const/16 v35, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .restart local v26       #span:Landroid/text/style/ImageSpan;
    goto/16 :goto_8

    .line 1660
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray1st:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1661
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9
.end method

.method private setCandidateBackGround(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "resourceId"

    .prologue
    .line 3124
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v1

    .line 3125
    .local v1, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    const/4 v0, 0x0

    .line 3126
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3127
    sparse-switch p2, :sswitch_data_0

    .line 3156
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 3157
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3161
    :goto_1
    return-void

    .line 3129
    :sswitch_0
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3130
    goto :goto_0

    .line 3133
    :sswitch_1
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackgroundWebApi()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3134
    goto :goto_0

    .line 3137
    :sswitch_2
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isFocusCandidate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3138
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getFocusedWnnWord()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v2

    .line 3139
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

    .line 3143
    :cond_1
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateFocusBackgroundWebApi()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3146
    .end local v2           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_2
    if-nez v0, :cond_0

    .line 3147
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateFocusBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 3159
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 3127
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020016 -> :sswitch_0
        0x7f020019 -> :sswitch_2
        0x7f020020 -> :sswitch_1
    .end sparse-switch
.end method

.method private setCandidateDisplayArea()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2763
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2764
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "setting_portrait"

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortraitNumberOfLine:I

    .line 2765
    const-string v2, "setting_landscape"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLandscapeNumberOfLine:I

    .line 2766
    const-string v2, "candidate_area"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAutoHideMode:Z

    .line 2767
    return-void
.end method

.method private setCategoryItemValue()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 3317
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->loadItem(I)V

    .line 3318
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setSelectedCategory(I)V

    .line 3319
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 3321
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 3323
    .local v0, animation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 3324
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3325
    return-void
.end method

.method private setCategoryList(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V
    .locals 2
    .parameter "converter"

    .prologue
    .line 3217
    const/4 v0, 0x0

    .line 3218
    .local v0, category:[Ljava/lang/String;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    packed-switch v1, :pswitch_data_0

    .line 3244
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createCategoryList(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;[Ljava/lang/String;)V

    .line 3245
    return-void

    :pswitch_1
    move-object v1, p1

    .line 3220
    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getSymbolCategoryList()[Ljava/lang/String;

    move-result-object v0

    .line 3221
    goto :goto_0

    :pswitch_2
    move-object v1, p1

    .line 3226
    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getKaomojiCategoryList()[Ljava/lang/String;

    move-result-object v0

    .line 3227
    goto :goto_0

    :pswitch_3
    move-object v1, p1

    .line 3238
    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getEmojiCategoryList()[Ljava/lang/String;

    move-result-object v0

    .line 3239
    goto :goto_0

    .line 3218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setReadMore()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1743
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-eqz v3, :cond_1

    .line 1744
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1745
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateTemplate:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1776
    :cond_0
    :goto_0
    return-void

    .line 1749
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v1

    .line 1750
    .local v1, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    const/4 v2, 0x0

    .line 1752
    .local v2, resid:I
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    if-eqz v3, :cond_3

    .line 1753
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1754
    const v2, 0x7f020027

    .line 1765
    :goto_1
    if-eqz v2, :cond_0

    .line 1766
    const/4 v0, 0x0

    .line 1767
    .local v0, button:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1768
    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1770
    :cond_2
    if-eqz v0, :cond_5

    .line 1771
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1756
    .end local v0           #button:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCanReadMore:Z

    if-eqz v3, :cond_4

    .line 1757
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1758
    const v2, 0x7f020021

    goto :goto_1

    .line 1760
    :cond_4
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1761
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateTemplate:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1773
    .restart local v0       #button:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setViewLayout(I)Z
    .locals 7
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 1022
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsViewLayoutEnableWebAPI:Z

    if-nez v4, :cond_0

    .line 1077
    :goto_0
    return v2

    .line 1027
    :cond_0
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortrait:Z

    if-eqz v4, :cond_2

    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortraitNumberOfLine:I

    .line 1029
    .local v0, line:I
    :goto_1
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewType:I

    if-ne v4, v3, :cond_1

    if-nez p1, :cond_1

    .line 1031
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearFocusCandidate()V

    .line 1034
    :cond_1
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewType:I

    .line 1036
    packed-switch p1, :pswitch_data_0

    .line 1066
    :pswitch_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateViewHeight()I

    move-result v4

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1068
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-eqz v4, :cond_4

    .line 1070
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateSymbolType()V

    .line 1071
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateListTab:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1075
    :goto_2
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v4, v2}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1076
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateBase:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    move v2, v3

    .line 1077
    goto :goto_0

    .line 1027
    .end local v0           #line:I
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLandscapeNumberOfLine:I

    goto :goto_1

    .line 1038
    .restart local v0       #line:I
    :pswitch_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v4

    mul-int/2addr v4, v0

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1040
    .restart local v1       #params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateListTab:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1042
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateBase:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1043
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1047
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :pswitch_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1049
    .restart local v1       #params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1051
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateListTab:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1052
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList1st:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1054
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 1055
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3, v2}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1060
    :goto_3
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateNothing:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateBase:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    goto/16 :goto_0

    .line 1057
    :cond_3
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3, v6}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    goto :goto_3

    .line 1073
    :cond_4
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateListTab:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1036
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unbindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 3105
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3106
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3107
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3110
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3111
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 3112
    check-cast v0, Landroid/widget/ImageView;

    .line 3113
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3115
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private updateAdditionalSymbolTabStatus()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 3189
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getAdditionalSymbolIndex()I

    move-result v0

    .line 3190
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAddSymbolTabList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3191
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_0

    if-ne v1, v0, :cond_0

    move v2, v4

    .line 3193
    .local v2, selected:Z
    :goto_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAddSymbolTabList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3, v4, v4, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 3190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3191
    .end local v2           #selected:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 3195
    :cond_1
    return-void
.end method

.method private updateSymbolType()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2365
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    packed-switch v1, :pswitch_data_0

    .line 2415
    :pswitch_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    invoke-direct {p0, v1, v2, v3, v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2416
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram_uni6:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2417
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabSymbol:Landroid/widget/TextView;

    invoke-direct {p0, v1, v5, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2418
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabEmoticon:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoticon:Z

    invoke-direct {p0, v1, v2, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2419
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabDecoEmoji:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2422
    :goto_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateAdditionalSymbolTabStatus()V

    .line 2423
    return-void

    .line 2368
    :pswitch_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2369
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram_uni6:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2370
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabSymbol:Landroid/widget/TextView;

    invoke-direct {p0, v1, v5, v5, v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2371
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabEmoticon:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoticon:Z

    invoke-direct {p0, v1, v2, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2372
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabDecoEmoji:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 2377
    :pswitch_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2378
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram_uni6:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2379
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabSymbol:Landroid/widget/TextView;

    invoke-direct {p0, v1, v5, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2380
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabEmoticon:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoticon:Z

    invoke-direct {p0, v1, v2, v5, v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2381
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabDecoEmoji:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 2385
    :pswitch_3
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2386
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram_uni6:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2387
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabSymbol:Landroid/widget/TextView;

    invoke-direct {p0, v1, v5, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2388
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabEmoticon:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoticon:Z

    invoke-direct {p0, v1, v2, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2389
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabDecoEmoji:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    invoke-direct {p0, v1, v2, v3, v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 2393
    :pswitch_4
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2394
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram_uni6:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2395
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabSymbol:Landroid/widget/TextView;

    invoke-direct {p0, v1, v5, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2396
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabEmoticon:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoticon:Z

    invoke-direct {p0, v1, v2, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2397
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabDecoEmoji:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_0

    .line 2401
    :pswitch_5
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2402
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram_uni6:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    invoke-direct {p0, v1, v2, v3, v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2403
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    .line 2404
    .local v0, ime:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isSubtypeExtraEmojiInput()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2405
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabSymbol:Landroid/widget/TextView;

    invoke-direct {p0, v1, v4, v4, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2406
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabEmoticon:Landroid/widget/TextView;

    invoke-direct {p0, v1, v4, v4, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2411
    :goto_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabDecoEmoji:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    invoke-direct {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_0

    .line 2408
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabSymbol:Landroid/widget/TextView;

    invoke-direct {p0, v1, v5, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    .line 2409
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabEmoticon:Landroid/widget/TextView;

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoticon:Z

    invoke-direct {p0, v1, v2, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->updateTabStatus(Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 2365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateTabStatus(Landroid/widget/TextView;ZZZ)V
    .locals 8
    .parameter "tab"
    .parameter "enabled"
    .parameter "visibled"
    .parameter "selected"

    .prologue
    const/4 v7, 0x0

    .line 2434
    if-eqz p3, :cond_5

    .line 2435
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2436
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2437
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v3

    .line 2438
    .local v3, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    const/4 v0, 0x0

    .line 2439
    .local v0, background:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 2440
    .local v1, backgroundId:I
    const/4 v2, 0x0

    .line 2441
    .local v2, colorId:I
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v4

    .line 2442
    .local v4, valid:Z
    if-eqz p2, :cond_3

    .line 2443
    if-eqz p4, :cond_2

    .line 2444
    const v1, 0x7f020025

    .line 2445
    const v2, 0x7f0a0008

    .line 2446
    if-eqz v4, :cond_0

    .line 2447
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getTab()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2449
    :cond_0
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabScroll:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabBase:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, p1}, Landroid/widget/HorizontalScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2464
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 2465
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2470
    :goto_1
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3, v5, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2474
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundId:I
    .end local v2           #colorId:I
    .end local v3           #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .end local v4           #valid:Z
    :goto_2
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabTextPaddingLeft:I

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabTextPaddingRight:I

    invoke-virtual {p1, v5, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2475
    return-void

    .line 2451
    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    .restart local v1       #backgroundId:I
    .restart local v2       #colorId:I
    .restart local v3       #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .restart local v4       #valid:Z
    :cond_2
    const v1, 0x7f020026

    .line 2452
    const v2, 0x7f0a0009

    .line 2453
    if-eqz v4, :cond_1

    .line 2454
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getTabNoSelect()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2458
    :cond_3
    const v1, 0x7f020026

    .line 2459
    const v2, 0x7f0a000a

    .line 2460
    if-eqz v4, :cond_1

    .line 2461
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getTabNoSelect()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2467
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 2472
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundId:I
    .end local v2           #colorId:I
    .end local v3           #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .end local v4           #valid:Z
    :cond_5
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public cancelLastSetCandiateEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3201
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    instance-of v1, v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    if-eqz v1, :cond_0

    .line 3202
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->isIsLastNextButton()Z

    move-result v0

    .line 3203
    .local v0, isLastNextButton:Z
    if-eqz v0, :cond_0

    .line 3204
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createNextLine(Z)V

    .line 3205
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCreateCandidateDone:Z

    .line 3206
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3209
    .end local v0           #isLastNextButton:Z
    :cond_0
    return-void
.end method

.method public clearCandidates()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1797
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1799
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->closeDialog()V

    .line 1800
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearFocusCandidate()V

    .line 1801
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsDisplayWebApi:Z

    if-eqz v4, :cond_0

    .line 1802
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v6, -0xfffeffd

    invoke-direct {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1805
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearNormalViewCandidate()V

    .line 1807
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    .line 1808
    .local v1, layout:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1809
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1810
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1811
    .local v3, v:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1814
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    .line 1815
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    .line 1816
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2nd:I

    .line 1817
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray1st:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1818
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1819
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1820
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray2nd:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1821
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    .line 1822
    const/4 v4, 0x0

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebApiButton:Landroid/widget/TextView;

    .line 1824
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineY:I

    .line 1825
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1826
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    .line 1827
    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stView1stLineLastIndex:I

    .line 1828
    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m2ndView1stLineLastIndex:I

    .line 1829
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount2ndNotCategory:I

    .line 1830
    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stIndexCategoryNo:I

    .line 1831
    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCreatting2ndView1stLine:Z

    .line 1832
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 1834
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v6, -0xffffffd

    invoke-direct {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1835
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAutoHideMode:Z

    if-eqz v4, :cond_2

    .line 1836
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setViewLayout(I)Z

    .line 1839
    :cond_2
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAutoHideMode:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1840
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4, v7}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    .line 1846
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    .line 1847
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4, v7}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    .line 1849
    :cond_3
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCanReadMore:Z

    .line 1850
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setReadMore()V

    .line 1851
    return-void
.end method

.method public clearFocusCandidate()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2689
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusedView:Landroid/view/View;

    .line 2690
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2691
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusedViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2692
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 2693
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusedView:Landroid/view/View;

    .line 2696
    :cond_0
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusAxisX:I

    .line 2697
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 2698
    const/4 v1, -0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    .line 2699
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2701
    if-eqz v0, :cond_1

    .line 2702
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v3, -0xfffbfff

    invoke-direct {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 2704
    :cond_1
    return-void
.end method

.method public displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V
    .locals 13
    .parameter "converter"

    .prologue
    .line 1089
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1091
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolSelected:Z

    if-eqz v9, :cond_8

    .line 1092
    const/4 v9, 0x0

    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolSelected:Z

    .line 1093
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1

    .line 1168
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1097
    .restart local p1
    :cond_1
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    .line 1098
    .local v6, prevLineCount:I
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    .line 1099
    .local v7, prevWordCount1st:I
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearNormalViewCandidate()V

    .line 1100
    const/4 v9, 0x0

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    .line 1101
    const/4 v9, 0x1

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineCount:I

    .line 1102
    const/4 v9, 0x0

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mLineLength:I

    .line 1103
    const/4 v9, 0x0

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mNormalViewWordCountOfLine:I

    .line 1104
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray1st:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1105
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1106
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displaySymbolHistory(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 1107
    if-nez v7, :cond_2

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    :cond_2
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolHistoryLine:I

    if-ge v6, v9, :cond_6

    .line 1109
    :cond_3
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v0

    .line 1112
    .local v0, addHeight:I
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1113
    .local v8, tempCategoryYposArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1114
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1115
    .local v4, preIndexCnt:I
    const/4 v1, 0x0

    .line 1116
    .local v1, index:I
    if-nez v7, :cond_4

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWordCount1st:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_5

    .line 1117
    :cond_4
    const/4 v1, 0x1

    .line 1120
    :cond_5
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1121
    .local v3, pos:Ljava/lang/Integer;
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    :goto_1
    if-ge v1, v4, :cond_6

    .line 1123
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1124
    .local v5, preY:I
    add-int v9, v5, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1125
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1128
    .end local v0           #addHeight:I
    .end local v1           #index:I
    .end local v3           #pos:Ljava/lang/Integer;
    .end local v4           #preIndexCnt:I
    .end local v5           #preY:I
    .end local v8           #tempCategoryYposArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isFocusCandidate()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    if-eqz v9, :cond_7

    .line 1129
    const/4 v9, 0x0

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    .line 1130
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1131
    .local v2, m:Landroid/os/Message;
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1133
    .end local v2           #m:Landroid/os/Message;
    :cond_7
    instance-of v9, p1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    if-eqz v9, :cond_0

    .line 1134
    check-cast p1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    .end local p1
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->restoreCurrentIndex()V

    goto/16 :goto_0

    .line 1139
    .end local v6           #prevLineCount:I
    .end local v7           #prevWordCount1st:I
    .restart local p1
    :cond_8
    const/4 v9, 0x0

    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCanReadMore:Z

    .line 1140
    const/4 v9, 0x0

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mDisplayEndOffset:I

    .line 1141
    const/4 v9, 0x0

    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 1142
    const/4 v9, 0x0

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewWordCount:I

    .line 1143
    const/4 v9, 0x0

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewOccupyCount:I

    .line 1144
    const/4 v9, 0x0

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevLineTopId:I

    .line 1145
    const/4 v9, 0x0

    iput-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFullViewPrevView:Landroid/widget/TextView;

    .line 1146
    const/4 v9, 0x0

    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCreateCandidateDone:Z

    .line 1147
    const/4 v9, 0x0

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mNormalViewWordCountOfLine:I

    .line 1148
    const/4 v9, 0x0

    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsDisplayWebApi:Z

    .line 1150
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearCandidates()V

    .line 1151
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    .line 1152
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v10, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v11, -0xffffffd

    invoke-direct {v10, v11}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v9, v10}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1154
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateTemplate:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1155
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateTemplate:Landroid/widget/TextView;

    const v10, 0x7f020016

    invoke-direct {p0, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 1157
    const/4 v9, 0x1

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getMaxLine()I

    move-result v10

    invoke-direct {p0, p1, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V

    .line 1159
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-eqz v9, :cond_9

    .line 1160
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createAdditionalTab()V

    .line 1161
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList1st:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1162
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCategoryList(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 1163
    const/4 v9, 0x1

    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 1164
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v10, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v11, -0xffffffc

    invoke-direct {v10, v11}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v9, v10}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_0

    .line 1166
    :cond_9
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public getAutoHide()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAutoHideMode:Z

    return v0
.end method

.method public getCanReadMore()Z
    .locals 1

    .prologue
    .line 3063
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCanReadMore:Z

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getFocusedView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 2801
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2802
    const/4 v0, 0x0

    .line 2810
    :goto_0
    return-object v0

    .line 2805
    :cond_0
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    if-eqz v1, :cond_1

    .line 2806
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, t:Landroid/widget/TextView;
    goto :goto_0

    .line 2808
    .end local v0           #t:Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray2nd:Ljava/util/ArrayList;

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #t:Landroid/widget/TextView;
    goto :goto_0
.end method

.method public getFocusedWnnWord()Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 1

    .prologue
    .line 2728
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getWnnWord(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;

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
    .line 3078
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewTopOnScreen(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 3052
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 3053
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3054
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewType:I

    return v0
.end method

.method public getWnnWord(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 2737
    const/4 v1, 0x0

    .line 2738
    .local v1, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-gez p1, :cond_1

    .line 2739
    const/4 p1, 0x0

    .line 2740
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2741
    const-string v2, "iwnn"

    const-string v3, "TextCandidatesViewManager::getWnnWord  index < 0 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :cond_0
    :goto_0
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    if-eqz v2, :cond_3

    .line 2752
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray1st:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 2756
    .restart local v1       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :goto_1
    return-object v1

    .line 2743
    :cond_1
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray1st:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2744
    .local v0, size:I
    :goto_2
    if-lt p1, v0, :cond_0

    .line 2745
    add-int/lit8 p1, v0, -0x1

    .line 2746
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2747
    const-string v2, "iwnn"

    const-string v3, "TextCandidatesViewManager::getWnnWord  index > candidate max "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2743
    .end local v0           #size:I
    :cond_2
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_2

    .line 2754
    :cond_3
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .restart local v1       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    goto :goto_1
.end method

.method public initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;
    .locals 14
    .parameter "parent"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 653
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "OpenWnn"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TextCandidatesView::initView() height="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", width="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v1

    .line 655
    .local v1, assist:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    invoke-virtual {v1}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->clearView()V

    .line 656
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryList:Ljava/util/ArrayList;

    .line 657
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getExtractEditText()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v3

    .line 658
    .local v3, extractEditText:Landroid/inputmethodservice/ExtractEditText;
    if-eqz v3, :cond_1

    .line 659
    invoke-virtual {v3}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 660
    .local v10, text:Ljava/lang/CharSequence;
    invoke-static {v10}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    .line 661
    .local v9, selStart:I
    invoke-static {v10}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 663
    .local v8, selEnd:I
    invoke-virtual {v1, v3}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->addView(Landroid/widget/TextView;)V

    .line 665
    if-ltz v9, :cond_1

    if-ltz v8, :cond_1

    .line 666
    invoke-virtual {v3}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-static {v11, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 670
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    .end local v10           #text:Ljava/lang/CharSequence;
    :cond_1
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    .line 671
    const/4 v11, 0x1

    iput-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsViewLayoutEnableWebAPI:Z

    .line 672
    move/from16 v0, p2

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewWidth:I

    .line 673
    move/from16 v0, p3

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewHeight:I

    .line 674
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v11}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 675
    .local v7, r:Landroid/content/res/Resources;
    const v11, 0x7f0b0007

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateMinimumWidth:I

    .line 676
    const v11, 0x7f0b0008

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateMinimumHeight:I

    .line 677
    const v11, 0x7f0b0009

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateSymbolMinimumHeight:I

    .line 678
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 679
    const v11, 0x7f0b001a

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateOneLineMinimumHeight:I

    .line 681
    :cond_2
    const v11, 0x7f0b000c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateCategoryMinimumHeight:I

    .line 682
    const v11, 0x7f0b000d

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateLeftAlignThreshold:I

    .line 685
    const v11, 0x7f02024b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 686
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolKeyboardTabHeight:I

    .line 688
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mPortrait:Z

    .line 691
    const v11, 0x7f0b0004

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandNormalTextSize:F

    .line 692
    const v11, 0x7f0b0006

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandCategoryTextSize:F

    .line 693
    const v11, 0x7f0b0005

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandEmojiTextSize:F

    .line 695
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    if-eqz v11, :cond_3

    .line 696
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    invoke-direct {p0, v11}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->removeAllViewRecursive(Landroid/view/ViewGroup;)V

    .line 699
    :cond_3
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 700
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f030001

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    .line 702
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f080016

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateMain:Landroid/view/ViewGroup;

    .line 704
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f080018

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/HorizontalScrollView;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabScroll:Landroid/widget/HorizontalScrollView;

    .line 706
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f080019

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabBase:Landroid/view/ViewGroup;

    .line 708
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f08001a

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram:Landroid/widget/TextView;

    .line 709
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f08001b

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabPictgram_uni6:Landroid/widget/TextView;

    .line 710
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f08001c

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabSymbol:Landroid/widget/TextView;

    .line 711
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f08001d

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabEmoticon:Landroid/widget/TextView;

    .line 713
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f08001e

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewTabDecoEmoji:Landroid/widget/TextView;

    .line 715
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f08001f

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ScrollView;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    .line 716
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    new-instance v12, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$7;

    invoke-direct {v12, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$7;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    invoke-virtual {v11, v12}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 794
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f080020

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateBase:Landroid/view/ViewGroup;

    .line 796
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidateDisplayArea()V

    .line 797
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->createNormalCandidateView()V

    .line 800
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f080022

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/AbsoluteLayout;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    .line 802
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f080023

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateNothing:Landroid/view/View;

    .line 804
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v5

    .line 805
    .local v5, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v12, 0x7f0a0015

    invoke-virtual {v5, v11, v12}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextColor:I

    .line 806
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v12, 0x7f0a0016

    invoke-virtual {v5, v11, v12}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextColorSymbol:I

    .line 807
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v12, 0x7f0a0018

    invoke-virtual {v5, v11, v12}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateBackColor:I

    .line 809
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateMain:Landroid/view/ViewGroup;

    iget v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateBackColor:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 810
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    iget v12, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCandidateBackColor:I

    invoke-virtual {v11, v12}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 812
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v12, 0x7f0a0005

    invoke-virtual {v5, v11, v12}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebAPIKeyTextColor:I

    .line 813
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v12, 0x7f0a0019

    invoke-virtual {v5, v11, v12}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebAPICandTextColor:I

    .line 814
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v12, 0x7f0a0006

    invoke-virtual {v5, v11, v12}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mNoCandidateTextColor:I

    .line 816
    const v11, 0x7f0b0024

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabTextPaddingLeft:I

    .line 817
    const v11, 0x7f0b0025

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTabTextPaddingRight:I

    .line 819
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    const v12, 0x7f080025

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;

    .line 820
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;

    new-instance v12, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;

    invoke-direct {v12, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$8;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 863
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mReadMoreButton:Landroid/widget/ImageView;

    new-instance v12, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$9;

    invoke-direct {v12, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$9;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setViewType(I)V

    .line 882
    new-instance v11, Landroid/view/GestureDetector;

    invoke-direct {v11, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mGestureDetector:Landroid/view/GestureDetector;

    .line 884
    const/high16 v11, 0x7f03

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    .line 887
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    const v12, 0x7f080013

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 888
    .local v6, longPressDialogButton:Landroid/widget/Button;
    new-instance v11, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$10;

    invoke-direct {v11, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$10;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 898
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    const v12, 0x7f080014

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #longPressDialogButton:Landroid/widget/Button;
    check-cast v6, Landroid/widget/Button;

    .line 899
    .restart local v6       #longPressDialogButton:Landroid/widget/Button;
    new-instance v11, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$11;

    invoke-direct {v11, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$11;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    const v12, 0x7f080015

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #longPressDialogButton:Landroid/widget/Button;
    check-cast v6, Landroid/widget/Button;

    .line 909
    .restart local v6       #longPressDialogButton:Landroid/widget/Button;
    new-instance v11, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$12;

    invoke-direct {v11, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$12;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    const v12, 0x7f080012

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #longPressDialogButton:Landroid/widget/Button;
    check-cast v6, Landroid/widget/Button;

    .line 921
    .restart local v6       #longPressDialogButton:Landroid/widget/Button;
    new-instance v11, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$13;

    invoke-direct {v11, p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager$13;-><init>(Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    return-object v11

    .line 688
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .end local v6           #longPressDialogButton:Landroid/widget/Button;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public isCandidateExists()Z
    .locals 2

    .prologue
    .line 2524
    const/4 v0, 0x0

    .line 2525
    .local v0, ret:Z
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getWordCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2526
    const/4 v0, 0x1

    .line 2528
    :cond_0
    return v0
.end method

.method isCategory(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 2281
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->isCategory(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v0

    return v0
.end method

.method public isFocusCandidate()Z
    .locals 2

    .prologue
    .line 2639
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2640
    const/4 v0, 0x1

    .line 2642
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureText(Ljava/lang/CharSequence;II)I
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2213
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateTemplate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 2214
    .local v0, paint:Landroid/text/TextPaint;
    invoke-static {p1, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getTextWidths(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v1

    return v1
.end method

.method public moveFocus(IZ)Z
    .locals 22
    .parameter "direction"
    .parameter "updown"

    .prologue
    .line 2820
    const/4 v6, 0x0

    .line 2821
    .local v6, hasReversed:Z
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/4 v9, 0x1

    .line 2822
    .local v9, isStart:Z
    :goto_0
    if-nez p1, :cond_0

    .line 2823
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setViewStatusOfFocusedCandidate()V

    .line 2826
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2827
    .local v14, size1st:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    if-nez v14, :cond_1

    .line 2828
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 2830
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    .line 2831
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2832
    .local v13, size:I
    const/4 v8, -0x1

    .line 2833
    .local v8, index:I
    const/4 v5, 0x0

    .line 2834
    .local v5, hasChangedLine:Z
    const/16 v18, 0x3e7

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    const/16 v18, -0x3e7

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 2835
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/4 v15, 0x0

    .line 2838
    .local v15, start:I
    :goto_2
    move v7, v15

    .local v7, i:I
    :goto_3
    if-ltz v7, :cond_2

    if-ge v7, v13, :cond_2

    .line 2839
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 2840
    .local v17, view:Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->isShown()Z

    move-result v18

    if-nez v18, :cond_c

    .line 2889
    .end local v7           #i:I
    .end local v15           #start:I
    .end local v17           #view:Landroid/widget/TextView;
    :cond_2
    :goto_4
    if-gez v8, :cond_3

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    if-lez p1, :cond_3

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray2nd:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    .line 2893
    :cond_3
    if-ltz v8, :cond_16

    .line 2895
    move-object/from16 v0, p0

    iput v8, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    .line 2896
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setViewStatusOfFocusedCandidate()V

    .line 2897
    if-nez p2, :cond_4

    .line 2898
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getFocusedView()Landroid/widget/TextView;

    move-result-object v16

    .line 2899
    .local v16, tv:Landroid/widget/TextView;
    if-eqz v16, :cond_4

    .line 2900
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLeft()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusAxisX:I

    .line 2937
    .end local v16           #tv:Landroid/widget/TextView;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 2941
    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m2ndView1stLineLastIndex:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stView1stLineLastIndex:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    .line 2943
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stIndexCategoryNo:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stIndexCategoryNo:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2949
    :cond_7
    if-eqz v9, :cond_8

    .line 2950
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v18, v0

    new-instance v19, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v20, -0xfffc000

    invoke-direct/range {v19 .. v20}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 2952
    :cond_8
    return v6

    .line 2821
    .end local v5           #hasChangedLine:Z
    .end local v8           #index:I
    .end local v9           #isStart:Z
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .end local v13           #size:I
    .end local v14           #size1st:I
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2830
    .restart local v9       #isStart:Z
    .restart local v14       #size1st:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray2nd:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 2835
    .restart local v5       #hasChangedLine:Z
    .restart local v8       #index:I
    .restart local v11       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .restart local v13       #size:I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    move/from16 v18, v0

    add-int v15, v18, p1

    goto/16 :goto_2

    .line 2844
    .restart local v7       #i:I
    .restart local v15       #start:I
    .restart local v17       #view:Landroid/widget/TextView;
    :cond_c
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    .line 2845
    .local v4, bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_e

    .line 2846
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    const-string v18, "category"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 2838
    :cond_d
    :goto_6
    add-int v7, v7, p1

    goto/16 :goto_3

    .line 2851
    :cond_e
    if-eqz p2, :cond_10

    .line 2852
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLeft()I

    move-result v10

    .line 2853
    .local v10, left:I
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusAxisX:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v10, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusAxisX:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getRight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 2855
    move v8, v7

    .line 2856
    goto/16 :goto_4

    .line 2859
    :cond_f
    if-nez v10, :cond_d

    .line 2860
    const/4 v5, 0x1

    goto :goto_6

    .line 2863
    .end local v10           #left:I
    :cond_10
    move v8, v7

    .line 2864
    goto/16 :goto_4

    .line 2867
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v7           #i:I
    .end local v15           #start:I
    .end local v17           #view:Landroid/widget/TextView;
    :cond_11
    const/16 v18, 0x3e7

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 2868
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    if-nez v18, :cond_12

    .line 2869
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 2871
    :cond_12
    if-nez v14, :cond_13

    .line 2872
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 2873
    const/4 v8, 0x1

    .line 2877
    :goto_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusAxisX:I

    goto/16 :goto_4

    .line 2875
    :cond_13
    const/4 v8, 0x0

    goto :goto_7

    .line 2878
    :cond_14
    const/16 v18, -0x3e7

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2879
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 2880
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 2882
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray2nd:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    .line 2883
    if-gez v8, :cond_2

    .line 2884
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    .line 2885
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    goto/16 :goto_4

    .line 2905
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCanReadMore:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1a

    if-lez v14, :cond_1a

    .line 2908
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    if-ltz p1, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    if-nez v18, :cond_19

    if-lez p1, :cond_19

    .line 2910
    :cond_18
    const/16 p2, 0x0

    .line 2911
    const/4 v6, 0x1

    .line 2914
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    if-nez v18, :cond_1c

    const/16 v18, 0x1

    :goto_8
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 2917
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    if-nez v18, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    move/from16 v18, v0

    if-nez v18, :cond_1a

    .line 2918
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V

    .line 2919
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewCandidateList2nd:Landroid/widget/AbsoluteLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 2923
    :cond_1a
    if-nez v14, :cond_1b

    .line 2924
    const/16 p2, 0x0

    .line 2925
    const/4 v6, 0x1

    .line 2928
    :cond_1b
    if-lez p1, :cond_1d

    .line 2929
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    .line 2933
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    if-eqz p2, :cond_1f

    const/16 v18, 0x1

    :goto_a
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 2934
    .local v12, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 2914
    .end local v12           #m:Landroid/os/Message;
    :cond_1c
    const/16 v18, 0x0

    goto :goto_8

    .line 2931
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    move/from16 v18, v14

    :goto_b
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    goto :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray2nd:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    goto :goto_b

    .line 2933
    :cond_1f
    const/16 v18, 0x0

    goto :goto_a
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2117
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2127
    const/4 v0, 0x0

    .line 2129
    .local v0, consumed:Z
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 2130
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewType:I

    if-nez v3, :cond_1

    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCanReadMore:Z

    if-eqz v3, :cond_1

    .line 2131
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_0

    .line 2133
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2134
    .local v2, vibrateTime:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2139
    .end local v2           #vibrateTime:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 2140
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v5, -0xffffffc

    invoke-direct {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 2141
    const/4 v0, 0x1

    .line 2159
    :cond_1
    :goto_1
    return v0

    .line 2135
    :catch_0
    move-exception v1

    .line 2136
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "iwnn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TextCandidatesViewManager::onFling Vibrator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2144
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    if-nez v3, :cond_1

    .line 2145
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_3

    .line 2147
    :try_start_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2148
    .restart local v2       #vibrateTime:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2153
    .end local v2           #vibrateTime:I
    :cond_3
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 2154
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v5, -0xffffffd

    invoke-direct {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 2155
    const/4 v0, 0x1

    goto :goto_1

    .line 2149
    :catch_1
    move-exception v1

    .line 2150
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v3, "iwnn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TextCandidatesViewManager::onFling Sound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onLongClickCandidate(Landroid/view/View;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/WnnWord;>;"
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 583
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v4}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->isPopupKeyboard()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 584
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v4}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->closePopupKeyboard()V

    .line 627
    :cond_0
    :goto_0
    return v1

    .line 587
    :cond_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewLongPressDialog:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 591
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-eqz v4, :cond_2

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_0

    .line 595
    :cond_2
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableCandidateLongClick:Z

    if-eqz v4, :cond_0

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v5

    .line 600
    goto :goto_0

    .line 603
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 604
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 606
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_4

    move v1, v5

    .line 607
    goto :goto_0

    :cond_4
    move-object v4, p1

    .line 611
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v3

    .line 613
    .local v3, wordcount:I
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    instance-of v4, v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    if-eqz v4, :cond_5

    .line 614
    const/4 v1, 0x0

    .line 615
    .local v1, ret:Z
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 616
    .local v2, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v4, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->startLongPressActionAdditionalSymbol(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v1

    .line 617
    goto :goto_0

    .line 620
    .end local v1           #ret:Z
    .end local v2           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_5
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 621
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearFocusCandidate()V

    .line 622
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsDisplayWebApi:Z

    if-eqz v4, :cond_6

    .line 623
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v7, -0xfffeffd

    invoke-direct {v6, v7}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v4, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 625
    :cond_6
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-virtual {p0, p1, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayDialog(Landroid/view/View;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    move v1, v5

    .line 627
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2169
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2179
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2188
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2196
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchSync()Z
    .locals 2

    .prologue
    .line 2050
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWebApiError(Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 3014
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWebApiButton:Landroid/widget/TextView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3015
    if-eqz p1, :cond_0

    .line 3016
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3018
    :cond_0
    return-void
.end method

.method public processMoveKeyEvent(I)V
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2599
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBody:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2631
    :goto_0
    return-void

    .line 2603
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2605
    :sswitch_0
    invoke-virtual {p0, v3, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->moveFocus(IZ)Z

    goto :goto_0

    .line 2609
    :sswitch_1
    invoke-virtual {p0, v1, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->moveFocus(IZ)Z

    goto :goto_0

    .line 2613
    :sswitch_2
    invoke-virtual {p0, v3, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->moveFocus(IZ)Z

    goto :goto_0

    .line 2617
    :sswitch_3
    invoke-virtual {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->moveFocus(IZ)Z

    goto :goto_0

    .line 2621
    :sswitch_4
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->moveFocus(IZ)Z

    goto :goto_0

    .line 2625
    :sswitch_5
    const/16 v0, -0x3e7

    invoke-virtual {p0, v0, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->moveFocus(IZ)Z

    goto :goto_0

    .line 2603
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method public remakeCandidatesWebApi()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1858
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    .line 1859
    .local v0, focus:I
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 1861
    .local v1, is1st:Z
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->initGijiList()V

    .line 1862
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsViewLayoutEnableWebAPI:Z

    .line 1863
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 1864
    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsViewLayoutEnableWebAPI:Z

    .line 1865
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewType:I

    if-ne v4, v8, :cond_2

    .line 1866
    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 1867
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v6, -0xffffffc

    invoke-direct {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1872
    :goto_0
    if-eq v0, v9, :cond_1

    .line 1873
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    .line 1874
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 1875
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    if-eqz v4, :cond_3

    .line 1876
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1877
    .local v3, size:I
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    if-lt v4, v3, :cond_0

    .line 1878
    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    .line 1886
    .end local v3           #size:I
    :cond_0
    :goto_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1887
    .local v2, m:Landroid/os/Message;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1889
    .end local v2           #m:Landroid/os/Message;
    :cond_1
    return-void

    .line 1869
    :cond_2
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-direct {p0, v4, v7, v9}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V

    goto :goto_0

    .line 1881
    :cond_3
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray2nd:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1882
    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 1883
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    goto :goto_1
.end method

.method public scrollPageAndUpdateFocus(Z)V
    .locals 12
    .parameter "scrollDown"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 2959
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isFocusCandidate()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2960
    invoke-virtual {p0, v8, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->moveFocus(IZ)Z

    .line 3006
    :cond_0
    :goto_0
    return-void

    .line 2964
    :cond_1
    if-eqz p1, :cond_7

    move v0, v8

    .line 2965
    .local v0, direction:I
    :goto_1
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 2966
    .local v4, pageSize:I
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCandidateMinimumHeight()I

    move-result v1

    .line 2967
    .local v1, height:I
    div-int v3, v4, v1

    .line 2968
    .local v3, moveCnt:I
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 2969
    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusAxisX:I

    .line 2970
    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getFocusedView()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v10

    if-eqz v10, :cond_2

    .line 2971
    add-int/lit8 v3, v3, 0x1

    .line 2973
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 2974
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 2975
    .local v6, preHasFocusedArray1st:Z
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    .line 2976
    .local v5, preFocusIndex:I
    invoke-virtual {p0, v0, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->moveFocus(IZ)Z

    move-result v7

    .line 2977
    .local v7, reverse:Z
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2978
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 2979
    invoke-virtual {p0, v0, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->moveFocus(IZ)Z

    .line 2983
    :cond_3
    if-eqz v7, :cond_8

    .line 2985
    if-lez v2, :cond_4

    .line 2986
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    .line 2987
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    .line 2988
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setViewStatusOfFocusedCandidate()V

    .line 2995
    .end local v5           #preFocusIndex:I
    .end local v6           #preHasFocusedArray1st:Z
    .end local v7           #reverse:Z
    :cond_4
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    if-eq v8, v9, :cond_0

    .line 2999
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mTextViewArray1st:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_5

    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m2ndView1stLineLastIndex:I

    if-le v8, v10, :cond_6

    :cond_5
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHasFocusedArray1st:Z

    if-eqz v8, :cond_0

    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stView1stLineLastIndex:I

    if-gt v8, v10, :cond_0

    .line 3001
    :cond_6
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stIndexCategoryNo:I

    if-le v8, v9, :cond_0

    .line 3002
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->m1stIndexCategoryNo:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v11, v8}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0

    .end local v0           #direction:I
    .end local v1           #height:I
    .end local v2           #i:I
    .end local v3           #moveCnt:I
    .end local v4           #pageSize:I
    :cond_7
    move v0, v9

    .line 2964
    goto :goto_1

    .line 2973
    .restart local v0       #direction:I
    .restart local v1       #height:I
    .restart local v2       #i:I
    .restart local v3       #moveCnt:I
    .restart local v4       #pageSize:I
    .restart local v5       #preFocusIndex:I
    .restart local v6       #preHasFocusedArray1st:Z
    .restart local v7       #reverse:Z
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public selectFocusCandidate()V
    .locals 3

    .prologue
    .line 2710
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCurrentFocusIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2711
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getFocusedWnnWord()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    .line 2712
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1

    .line 2724
    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_0
    :goto_0
    return-void

    .line 2716
    .restart local v0       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_1
    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    .line 2717
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectWebApiButton()V

    goto :goto_0

    .line 2718
    :cond_2
    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_3

    .line 2719
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectWebApiGetAgainButton()V

    goto :goto_0

    .line 2721
    :cond_3
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto :goto_0
.end method

.method public setAutoHide(Z)V
    .locals 0
    .parameter "hide"

    .prologue
    .line 636
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mAutoHideMode:Z

    .line 637
    return-void
.end method

.method public setCandidateMsgRemove()V
    .locals 2

    .prologue
    .line 3073
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3074
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3075
    return-void
.end method

.method public setCategoryItem(I)V
    .locals 0
    .parameter "categoryid"

    .prologue
    .line 3309
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    .line 3310
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCategoryItemValue()V

    .line 3311
    return-void
.end method

.method public setCategoryItem(Z)V
    .locals 2
    .parameter "next"

    .prologue
    .line 3277
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 3278
    .local v0, categoryCntMax:I
    if-eqz p1, :cond_3

    .line 3279
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    if-ne v1, v0, :cond_2

    .line 3280
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->isHistoryExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3281
    const/4 v1, 0x0

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    .line 3300
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCategoryItemValue()V

    .line 3301
    return-void

    .line 3283
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    goto :goto_0

    .line 3286
    :cond_2
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    goto :goto_0

    .line 3289
    :cond_3
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    if-nez v1, :cond_4

    .line 3290
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    goto :goto_0

    .line 3292
    :cond_4
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    .line 3293
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    if-nez v1, :cond_0

    .line 3294
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->isHistoryExists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3295
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryId:I

    goto :goto_0
.end method

.method public setEnableCandidateLongClick(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3068
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableCandidateLongClick:Z

    .line 3069
    return-void
.end method

.method public setEnableDecoEmoji(Z)V
    .locals 0
    .parameter "enableDecoEmoji"

    .prologue
    .line 2780
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableDecoEmoji:Z

    .line 2781
    return-void
.end method

.method public setEnableEmoji(Z)V
    .locals 0
    .parameter "enableEmoji"

    .prologue
    .line 2773
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoji:Z

    .line 2774
    return-void
.end method

.method public setEnableEmojiUNI6(Z)V
    .locals 0
    .parameter "enableEmojiUNI6"

    .prologue
    .line 2794
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmojiUNI6:Z

    .line 2795
    return-void
.end method

.method public setEnableEmoticon(Z)V
    .locals 0
    .parameter "enableEmoticon"

    .prologue
    .line 2787
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableEmoticon:Z

    .line 2788
    return-void
.end method

.method public setFullMode()V
    .locals 3

    .prologue
    .line 1926
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 1927
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xffffffc

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1928
    return-void
.end method

.method public setHardKeyboardHidden(Z)V
    .locals 0
    .parameter "hardKeyboardHidden"

    .prologue
    .line 3042
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mHardKeyboardHidden:Z

    .line 3043
    return-void
.end method

.method public setNormalMode()V
    .locals 3

    .prologue
    .line 1917
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setReadMore()V

    .line 1918
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 1919
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xffffffd

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1920
    return-void
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1894
    :try_start_0
    const-string v1, "key_vibration"

    const/4 v4, 0x1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1895
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const-string v4, "vibrator"

    invoke-virtual {v1, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mVibrator:Landroid/os/Vibrator;

    .line 1896
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "iwnn"

    const-string v4, "VIBRATOR ON"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_0
    :goto_0
    const-string v1, "key_sound"

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1901
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSound:Landroid/media/AudioManager;

    .line 1902
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "iwnn"

    const-string v4, "SOUND ON"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_1
    :goto_1
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidateDisplayArea()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    :goto_2
    const-string v1, "opt_mushroom"

    const-string v4, "notuse"

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "notuse"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mEnableMushroom:Z

    .line 1911
    return-void

    .line 1898
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mVibrator:Landroid/os/Vibrator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1907
    :catch_0
    move-exception v0

    .line 1908
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "iwnn"

    const-string v4, "NO VIBRATOR"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1904
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSound:Landroid/media/AudioManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_4
    move v1, v3

    .line 1910
    goto :goto_3
.end method

.method public setScrollDown()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1981
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1982
    .local v0, categoryCnt:I
    if-gtz v0, :cond_1

    .line 2010
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1987
    .local v6, jumpY:I
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1988
    .local v1, currentY:I
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 1989
    .local v3, displayHeight:I
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v10, v12}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1990
    .local v7, scrollBodyHeight:I
    add-int v2, v1, v3

    .line 1991
    .local v2, dispButtomY:I
    if-ge v1, v6, :cond_2

    if-lt v2, v7, :cond_3

    .line 1992
    :cond_2
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1993
    .local v9, wordSize:I
    if-lez v9, :cond_0

    .line 1994
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 1995
    .local v8, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v10, v8, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    const/high16 v11, 0x400

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 1996
    invoke-direct {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto :goto_0

    .line 2001
    .end local v8           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .end local v9           #wordSize:I
    :cond_3
    add-int/lit8 v4, v0, -0x2

    .local v4, index:I
    :goto_1
    if-ltz v4, :cond_4

    .line 2002
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2003
    .local v5, indexPos:I
    if-lt v1, v5, :cond_5

    .line 2009
    .end local v5           #indexPos:I
    :cond_4
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v10, v12, v6}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 2006
    .restart local v5       #indexPos:I
    :cond_5
    move v6, v5

    .line 2001
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public setScrollFullDown()V
    .locals 5

    .prologue
    .line 2032
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2033
    .local v0, categoryCnt:I
    if-gtz v0, :cond_1

    .line 2042
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 2038
    .local v1, currentY:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2039
    .local v2, lastCategoryY:I
    if-le v2, v1, :cond_0

    .line 2040
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method public setScrollFullUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2016
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2017
    .local v0, categoryCnt:I
    if-gtz v0, :cond_1

    .line 2026
    :cond_0
    :goto_0
    return-void

    .line 2021
    :cond_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 2022
    .local v1, currentY:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2023
    .local v2, firstCategoryY:I
    if-ge v2, v1, :cond_0

    .line 2024
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method public setScrollUp()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1950
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1951
    .local v0, categoryCnt:I
    if-gtz v0, :cond_1

    .line 1975
    :cond_0
    :goto_0
    return-void

    .line 1955
    :cond_1
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1956
    .local v4, jumpY:I
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1957
    .local v1, currentY:I
    if-gt v1, v4, :cond_2

    .line 1958
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1959
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnnWordArray2nd:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 1960
    .local v5, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v6, v5, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 1961
    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->selectCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto :goto_0

    .line 1966
    .end local v5           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_2
    const/4 v2, 0x1

    .local v2, index:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1967
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryYposArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1968
    .local v3, indexPos:I
    if-gt v1, v3, :cond_4

    .line 1974
    .end local v3           #indexPos:I
    :cond_3
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6, v7, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 1971
    .restart local v3       #indexPos:I
    :cond_4
    move v4, v3

    .line 1966
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setSymbolMode(ZI)V
    .locals 1
    .parameter "enable"
    .parameter "mode"

    .prologue
    .line 1934
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1935
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    .line 1936
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setViewType(I)V

    .line 1939
    :cond_0
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mSymbolMode:I

    .line 1940
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsSymbolMode:Z

    .line 1941
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1942
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1944
    :cond_1
    return-void
.end method

.method public setViewStatusOfFocusedCandidate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2657
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusedView:Landroid/view/View;

    .line 2658
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2659
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusedViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2660
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 2663
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getFocusedView()Landroid/widget/TextView;

    move-result-object v2

    .line 2664
    .local v2, v:Landroid/widget/TextView;
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusedView:Landroid/view/View;

    .line 2665
    if-eqz v2, :cond_1

    .line 2666
    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mFocusedViewBackground:Landroid/graphics/drawable/Drawable;

    .line 2667
    const v6, 0x7f020019

    invoke-direct {p0, v2, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCandidateBackGround(Landroid/view/View;I)V

    .line 2668
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2670
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getViewTopOnScreen(Landroid/view/View;)I

    move-result v5

    .line 2671
    .local v5, viewBodyTop:I
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    add-int v4, v5, v6

    .line 2672
    .local v4, viewBodyBottom:I
    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getViewTopOnScreen(Landroid/view/View;)I

    move-result v1

    .line 2673
    .local v1, focusedViewTop:I
    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int v0, v1, v6

    .line 2675
    .local v0, focusedViewBottom:I
    if-le v0, v4, :cond_2

    .line 2677
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    sub-int v7, v0, v4

    invoke-virtual {v6, v8, v7}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2683
    .end local v0           #focusedViewBottom:I
    .end local v1           #focusedViewTop:I
    .end local v4           #viewBodyBottom:I
    .end local v5           #viewBodyTop:I
    :cond_1
    :goto_0
    return-void

    .line 2678
    .restart local v0       #focusedViewBottom:I
    .restart local v1       #focusedViewTop:I
    .restart local v4       #viewBodyBottom:I
    .restart local v5       #viewBodyTop:I
    :cond_2
    if-ge v1, v5, :cond_1

    .line 2680
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mViewBodyScroll:Landroid/widget/ScrollView;

    sub-int v7, v1, v5

    invoke-virtual {v6, v8, v7}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public setViewType(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 990
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextCandidatesView:setViewType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_0
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setViewLayout(I)Z

    move-result v1

    .line 994
    .local v1, readMore:Z
    if-eqz v1, :cond_2

    .line 995
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    const/4 v3, -0x1

    invoke-direct {p0, v2, v5, v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V

    .line 1011
    :cond_1
    :goto_0
    return-void

    .line 997
    :cond_2
    if-nez p1, :cond_4

    .line 998
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mIsFullView:Z

    .line 999
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mDisplayEndOffset:I

    if-lez v2, :cond_3

    .line 1000
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getMaxLine()I

    move-result v0

    .line 1001
    .local v0, maxLine:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-direct {p0, v2, v5, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;ZI)V

    goto :goto_0

    .line 1003
    .end local v0           #maxLine:I
    :cond_3
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setReadMore()V

    goto :goto_0

    .line 1006
    :cond_4
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isCandidateExists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1007
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public showFullListDelay(I)V
    .locals 0
    .parameter "message"

    .prologue
    .line 2651
    return-void
.end method
