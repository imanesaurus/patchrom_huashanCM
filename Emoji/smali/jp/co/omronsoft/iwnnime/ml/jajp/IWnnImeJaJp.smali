.class public Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;
.super Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;
.source "IWnnImeJaJp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    }
.end annotation


# static fields
.field private static final AUTO_COMMIT_ENGLISH_OFF:I = 0x1

.field private static final AUTO_COMMIT_ENGLISH_ON:I = 0x0

.field private static final AUTO_COMMIT_ENGLISH_SYMBOL:I = 0x10

.field private static final AUTO_CURSOR_MOVEMENT_OFF:I = 0x0

.field private static final CHARCODE_LARGE_A:I = 0x41

.field private static final CHARCODE_LARGE_Z:I = 0x5a

.field private static final CHARCODE_OFFSET_LARGE_TO_SMALL:I = 0x20

.field public static final COMMIT_TEXT_THROUGH_ACTION:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml"

.field public static final COMMIT_TEXT_THROUGH_KEY_YOMI:Ljava/lang/String; = "yomi"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_KEYMODE_EIJI_STR:Ljava/lang/String; = "jp.co.omoronsoft.iwnnime.ml.mode=eng"

.field public static final DEFAULT_KEYMODE_FULL_ALPHABET:I = 0x5

.field private static final DEFAULT_KEYMODE_FULL_ALPHABET_STR:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.mode=4"

.field public static final DEFAULT_KEYMODE_FULL_HIRAGANA:I = 0x2

.field private static final DEFAULT_KEYMODE_FULL_HIRAGANA_STR:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.mode=1"

.field public static final DEFAULT_KEYMODE_FULL_KATAKANA:I = 0x3

.field private static final DEFAULT_KEYMODE_FULL_KATAKANA_STR:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.mode=2"

.field public static final DEFAULT_KEYMODE_FULL_NUMBER:I = 0x7

.field private static final DEFAULT_KEYMODE_FULL_NUMBER_STR:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.mode=6"

.field public static final DEFAULT_KEYMODE_HALF_ALPHABET:I = 0x6

.field private static final DEFAULT_KEYMODE_HALF_ALPHABET_STR:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.mode=5"

.field public static final DEFAULT_KEYMODE_HALF_KATAKANA:I = 0x4

.field private static final DEFAULT_KEYMODE_HALF_KATAKANA_STR:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.mode=3"

.field public static final DEFAULT_KEYMODE_HALF_NUMBER:I = 0x8

.field private static final DEFAULT_KEYMODE_HALF_NUMBER_STR:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.mode=7"

.field public static final DEFAULT_KEYMODE_HALF_PHONE:I = 0xa

.field private static final DEFAULT_KEYMODE_HALF_PHONE_STR:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.mode=9"

.field private static final DEFAULT_KEYMODE_HIRAGANA_STR:Ljava/lang/String; = "jp.co.omoronsoft.iwnnime.ml.mode=jpn"

.field public static final DEFAULT_KEYMODE_NOTHING:I = 0x1

.field private static final DEFAULT_KEYMODE_NUM_STR:Ljava/lang/String; = "jp.co.omoronsoft.iwnnime.ml.mode=num"

.field public static final DEFAULT_KEYMODE_VOICE:I = 0x9

.field private static final DELAY_MS_START_OTHER_ENABLE_IME:I = 0x1

.field private static final DELAY_MS_UPDATE_DECOEMOJI_DICTIONARY:I = 0x0

.field private static final DELAY_MS_UPDATE_LEARNING_DICTIONARY:I = 0x0

.field public static final ENGINE_MODE_EISU_KANA:I = 0x67

.field public static final ENGINE_MODE_FULL_KATAKANA:I = 0x65

.field public static final ENGINE_MODE_HALF_KATAKANA:I = 0x66

.field public static final ENGINE_MODE_OPT_TYPE_12KEY:I = 0x6a

.field public static final ENGINE_MODE_OPT_TYPE_QWERTY:I = 0x69

.field public static final ENGINE_MODE_SYMBOL:I = 0x68

.field private static final ENGLISH_CHARACTER_ALL:Ljava/util/regex/Pattern; = null

.field private static final ENGLISH_CHARACTER_LAST:Ljava/util/regex/Pattern; = null

.field private static final HW12KEYBOARD_KEYCODE_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIMIT_INPUT_NUMBER:I = 0x32

.field private static final MAX_ASCII_CODE:I = 0x7f

.field private static final MSG_CLOSE:I = 0x2

.field private static final MSG_PREDICTION:I = 0x1

.field private static final MSG_RESTART:I = 0x7

.field private static final MSG_START_OTHER_ENABLE_IME:I = 0x8

.field private static final MSG_TOGGLE_TIME_LIMIT:I = 0x3

.field private static final MSG_UPDATE_DECOEMOJI_DICTIONARY:I = 0x6

.field private static final MSG_UPDATE_LEARNING_DICTIONARY:I = 0x5

.field private static final OPT_ENABLE_LEARNING_EN_KEY:Ljava/lang/String; = "opt_enable_learning_en"

.field private static final OPT_ENABLE_LEARNING_JA_KEY:Ljava/lang/String; = "opt_enable_learning_ja"

.field private static final OPT_ENABLE_LEARNING_KEY:Ljava/lang/String; = "opt_enable_learning"

.field private static final OPT_FUNFUN_EN_KEY:Ljava/lang/String; = "opt_funfun_en"

.field private static final OPT_FUNFUN_JA_KEY:Ljava/lang/String; = "opt_funfun_ja"

.field private static final OPT_FUNFUN_KEY:Ljava/lang/String; = "opt_funfun"

.field private static final OPT_PREDICTION_EN_KEY:Ljava/lang/String; = "opt_prediction_en"

.field private static final OPT_PREDICTION_JA_KEY:Ljava/lang/String; = "opt_prediction_ja"

.field private static final OPT_PREDICTION_KEY:Ljava/lang/String; = "opt_prediction"

.field private static final OPT_SPELL_CORRECTION_EN_KEY:Ljava/lang/String; = "opt_spell_correction_en"

.field private static final OPT_SPELL_CORRECTION_JA_KEY:Ljava/lang/String; = "opt_spell_correction_ja"

.field private static final OPT_SPELL_CORRECTION_KEY:Ljava/lang/String; = "opt_spell_correction"

.field private static final PACKAGENAME_SP_MODE_MAILER:Ljava/lang/String; = "jp.co.nttdocomo.carriermail"

.field private static final PREDICTION_DELAY_MS_1ST:I = 0xc8

.field private static final PREDICTION_DELAY_MS_SHOWING_CANDIDATE:I = 0xc8

.field private static final PRIVATE_AREA_CODE:I = 0xef00

.field private static final PROFILE:Z = false

.field private static final SPAN_CONVERT_BGCOLOR_HL:Landroid/text/style/CharacterStyle; = null

.field private static final SPAN_EISUKANA_BGCOLOR_HL:Landroid/text/style/CharacterStyle; = null

.field private static final SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle; = null

.field private static final SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle; = null

.field private static final SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle; = null

.field private static final SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle; = null

.field private static final SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle; = null

.field private static final SPAN_UNDERLINE:Landroid/text/style/CharacterStyle; = null

.field private static final STATUS_AUTO_CURSOR_DONE:I = 0x100

.field private static final STATUS_CANDIDATE_FULL:I = 0x10

.field private static final STATUS_INIT:I = 0x0

.field private static final STATUS_INPUT:I = 0x1

.field private static final STATUS_INPUT_EDIT:I = 0x3


# instance fields
.field protected mAttribute:Landroid/view/inputmethod/EditorInfo;

.field private mAutoCaps:Z

.field private mAutoCursorMovementSpeed:I

.field private mCanUndo:Z

.field private mCommitConvertType:I

.field private mCommitCount:I

.field private mCommitCursorPosition:I

.field private mCommitExactMatch:Z

.field private mCommitFunfun:I

.field private mCommitLayer1StrSegment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/StrSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mCommitPredictKey:Ljava/lang/String;

.field private mCommitStartCursor:I

.field private mComposingStartCursor:I

.field private mConverterBack:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

.field private mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

.field private mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

.field private mConvertingForFuncKeyEijiType:I

.field private mDirectKana:Z

.field private mDisableAutoCommitEnglishMask:I

.field protected mDisplayText:Landroid/text/SpannableStringBuilder;

.field private mEnableAutoDeleteSpace:Z

.field private mEnableAutoInsertSpace:Z

.field private mEnableConverter:Z

.field private mEnableDecoEmoji:Z

.field private mEnableEmoji:Z

.field private mEnableFullscreen:Z

.field private mEnableFunfun:Z

.field private mEnableHardware12Keyboard:Z

.field private mEnableLearning:Z

.field protected mEnableMushroom:Z

.field private mEnablePrediction:Z

.field private mEnableSpellCorrection:Z

.field private mEnableSymbolList:Z

.field private mEnableSymbolListNonHalf:Z

.field private mEnableUNI6Emoji:Z

.field private mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

.field private mEnglishAutoCommitDelimiter:Ljava/util/regex/Pattern;

.field protected mExactMatchMode:Z

.field private mFullCandidate:Z

.field private mFunfun:I

.field mHandler:Landroid/os/Handler;

.field private mHardKeyBoardHidden:Z

.field private mHardKeyboardHidden:Z

.field private mHasContinuedPrediction:Z

.field private mHasRequiredFunfunSpace:Z

.field private mHasStartedTextSelection:Z

.field private mIgnoreCursorMove:Z

.field private mIsInputSequenced:Z

.field private mOrientation:I

.field private mPreConverterBack:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

.field private mPreConverterFullKatakana:Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanFullKatakana;

.field private mPreConverterHalfKatakana:Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana;

.field private mPreConverterHiragana:Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;

.field private mPreConverterHiraganaDirect:Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan;

.field private mPreConverterKanaDirect:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

.field private mPreConverterKanaRoman:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

.field private mPreEditorPackageName:Ljava/lang/String;

.field private mPrevCommitText:Ljava/lang/StringBuffer;

.field protected mStatus:I

.field private mStrokeOfCommitText:Ljava/lang/String;

.field private mTargetLayer:I

.field protected mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

.field protected mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, -0x100

    .line 130
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x912701

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_CONVERT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 133
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x993256

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 136
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x604933

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_EISUKANA_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 139
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0xf0001

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 142
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x565657

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 145
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    .line 148
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    .line 151
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    .line 181
    const-string v0, ".*[a-zA-Z]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->ENGLISH_CHARACTER_LAST:Ljava/util/regex/Pattern;

    .line 184
    const-string v0, "^[a-zA-Z]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->ENGLISH_CHARACTER_ALL:Ljava/util/regex/Pattern;

    .line 358
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->HW12KEYBOARD_KEYCODE_REPLACE_TABLE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V
    .locals 0
    .parameter "context"
    .parameter "wnn"

    .prologue
    .line 811
    invoke-direct {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;-><init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V

    .line 812
    return-void
.end method

.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V
    .locals 6
    .parameter "wnn"

    .prologue
    const/16 v5, 0x15e

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 774
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;-><init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V

    .line 490
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 493
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 530
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 533
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    .line 536
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-direct {v1, p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    .line 539
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    .line 542
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    .line 545
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableConverter:Z

    .line 548
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolList:Z

    .line 551
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolListNonHalf:Z

    .line 554
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableEmoji:Z

    .line 557
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableDecoEmoji:Z

    .line 560
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableUNI6Emoji:Z

    .line 563
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSpellCorrection:Z

    .line 566
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    .line 569
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    .line 572
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoInsertSpace:Z

    .line 575
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFullscreen:Z

    .line 578
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStrokeOfCommitText:Ljava/lang/String;

    .line 581
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHardKeyboardHidden:Z

    .line 584
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableHardware12Keyboard:Z

    .line 587
    const-string v1, ""

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreEditorPackageName:Ljava/lang/String;

    .line 607
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCount:I

    .line 624
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    .line 627
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mOrientation:I

    .line 630
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnglishAutoCommitDelimiter:Ljava/util/regex/Pattern;

    .line 633
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mComposingStartCursor:I

    .line 636
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitStartCursor:I

    .line 639
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    .line 642
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    .line 645
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCaps:Z

    .line 648
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitPredictKey:Ljava/lang/String;

    .line 651
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitFunfun:I

    .line 654
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCursorPosition:I

    .line 657
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitExactMatch:Z

    .line 660
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitConvertType:I

    .line 663
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCanUndo:Z

    .line 666
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitLayer1StrSegment:Ljava/util/ArrayList;

    .line 675
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasRequiredFunfunSpace:Z

    .line 678
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasStartedTextSelection:Z

    .line 681
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFullCandidate:Z

    .line 684
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableMushroom:Z

    .line 687
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .line 690
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    .line 696
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDirectKana:Z

    .line 699
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHardKeyBoardHidden:Z

    .line 702
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 705
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConvertingForFuncKeyEijiType:I

    .line 708
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;

    invoke-direct {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    .line 775
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    invoke-direct {v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;-><init>()V

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setComposingText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)V

    .line 776
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-direct {v1, v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;-><init>(I)V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .line 777
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-direct {v1, v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;-><init>(I)V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    .line 779
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setCandidatesViewManager(Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;)V

    .line 783
    :goto_0
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createInputViewManager(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setInputViewManager(Ljp/co/omronsoft/iwnnime/ml/InputViewManager;)V

    .line 784
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    .line 785
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConverter(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 786
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLocaleString(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, localeString:Ljava/lang/String;
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    .line 788
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;

    invoke-direct {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;-><init>()V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHiragana:Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;

    .line 789
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHiragana:Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setPreConverter(Ljp/co/omronsoft/iwnnime/ml/LetterConverter;)V

    .line 790
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanFullKatakana;

    invoke-direct {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanFullKatakana;-><init>()V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterFullKatakana:Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanFullKatakana;

    .line 791
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana;

    invoke-direct {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana;-><init>()V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHalfKatakana:Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana;

    .line 792
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan;

    invoke-direct {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan;-><init>()V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHiraganaDirect:Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan;

    .line 793
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHiragana:Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaRoman:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 794
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHiraganaDirect:Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaDirect:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 796
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    .line 797
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setAutoHideMode(Z)V

    .line 799
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    .line 800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitLayer1StrSegment:Ljava/util/ArrayList;

    .line 802
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->resetCurrentKeyboard()V

    .line 803
    return-void

    .line 781
    .end local v0           #localeString:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setCandidatesViewManager(Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;)V

    goto :goto_0
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updatePrediction()V

    return-void
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    return-object v0
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    return-object v0
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    return v0
.end method

.method static synthetic access$500(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    return-void
.end method

.method private appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z
    .locals 5
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4343
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v0

    .line 4345
    .local v0, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_0

    .line 4349
    :goto_0
    return v1

    .line 4348
    :cond_0
    invoke-virtual {v0, v1, v2, p1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->insertStrSegment(IILjp/co/omronsoft/iwnnime/ml/StrSegment;)V

    move v1, v2

    .line 4349
    goto :goto_0
.end method

.method private appendToggleString(Ljava/lang/String;)Z
    .locals 2
    .parameter "appendString"

    .prologue
    .line 4919
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    invoke-direct {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z

    move-result v0

    .line 4920
    .local v0, appendComplete:Z
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->forwardCursor()V

    .line 4921
    return v0
.end method

.method private autoCommitEnglish()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4018
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    if-nez v6, :cond_1

    .line 4019
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4020
    .local v0, inputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0, v8, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4021
    .local v2, seq:Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 4022
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnglishAutoCommitDelimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4023
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4024
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_0

    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    if-eqz v6, :cond_0

    .line 4025
    invoke-interface {v0, v8, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4026
    invoke-interface {v2, v4, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4029
    .local v3, str:Ljava/lang/CharSequence;
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitTextToInputConnection(Ljava/lang/CharSequence;)V

    .line 4031
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 4032
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    .line 4037
    .end local v3           #str:Ljava/lang/CharSequence;
    :cond_0
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4038
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v5

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    .line 4043
    .end local v0           #inputConnection:Landroid/view/inputmethod/InputConnection;
    .end local v1           #m:Ljava/util/regex/Matcher;
    .end local v2           #seq:Ljava/lang/CharSequence;
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private breakSequence()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4753
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    .line 4754
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIsInputSequenced:Z

    .line 4755
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->breakSequence()V

    .line 4756
    return-void
.end method

.method private changeEngineMode(I)V
    .locals 8
    .parameter "mode"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3428
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-direct {v1, p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 3430
    .local v1, state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    packed-switch p1, :pswitch_data_0

    .line 3492
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    .end local v1           #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    invoke-direct {v1, p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 3493
    .restart local v1       #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    iput v5, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    .line 3494
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3496
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    .end local v1           #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    invoke-direct {v1, p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 3497
    .restart local v1       #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v2

    .line 3498
    .local v2, switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3499
    .local v0, pref:Landroid/content/SharedPreferences;
    sparse-switch p1, :sswitch_data_0

    .line 3562
    iput v5, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    .line 3563
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3565
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConverter(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 3566
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHiragana:Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaRoman:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 3567
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHiraganaDirect:Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaDirect:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 3569
    const-string v3, "opt_funfun_ja"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    .line 3570
    const-string v3, "opt_enable_learning_ja"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    .line 3571
    const-string v3, "opt_prediction_ja"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    .line 3572
    const-string v3, "opt_spell_correction_ja"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSpellCorrection:Z

    .line 3574
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    if-nez v3, :cond_0

    .line 3575
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    .line 3580
    :cond_0
    :goto_0
    if-eq p1, v6, :cond_1

    if-eq p1, v7, :cond_1

    .line 3581
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableKanaInput()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3582
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaDirect:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setPreConverter(Ljp/co/omronsoft/iwnnime/ml/LetterConverter;)V

    .line 3590
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getPreConverter()Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    move-result-object v3

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterBack:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 3591
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v3

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterBack:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    .line 3592
    .end local v0           #pref:Landroid/content/SharedPreferences;
    .end local v2           #switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    :cond_2
    :goto_2
    return-void

    .line 3432
    :pswitch_0
    iput v6, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    .line 3433
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3434
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    goto :goto_2

    .line 3438
    :pswitch_1
    iput v7, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    .line 3439
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3440
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    goto :goto_2

    .line 3444
    :pswitch_2
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEisuKana()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3445
    iput v5, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    .line 3446
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3447
    invoke-direct {p0, v6, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto :goto_2

    .line 3449
    :cond_3
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->startConvert(I)V

    goto :goto_2

    .line 3454
    :pswitch_3
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolList:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isDirectInputMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3455
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 3456
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 3457
    iput v6, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    .line 3458
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3459
    invoke-direct {p0, v6, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto :goto_2

    .line 3464
    :pswitch_4
    const/4 v3, 0x3

    invoke-direct {p0, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeSymbolEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;I)V

    goto :goto_2

    .line 3468
    :pswitch_5
    const/16 v3, 0x8

    invoke-direct {p0, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeSymbolEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;I)V

    goto :goto_2

    .line 3472
    :pswitch_6
    const/4 v3, 0x6

    invoke-direct {p0, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeSymbolEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;I)V

    goto :goto_2

    .line 3476
    :pswitch_7
    invoke-direct {p0, v1, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeSymbolEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;I)V

    goto :goto_2

    .line 3480
    :pswitch_8
    invoke-direct {p0, v1, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeSymbolEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;I)V

    goto :goto_2

    .line 3484
    :pswitch_9
    const/4 v3, 0x7

    invoke-direct {p0, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeSymbolEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;I)V

    goto :goto_2

    .line 3502
    .restart local v0       #pref:Landroid/content/SharedPreferences;
    .restart local v2       #switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    :sswitch_0
    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConverter(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 3503
    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setPreConverter(Ljp/co/omronsoft/iwnnime/ml/LetterConverter;)V

    goto :goto_0

    .line 3508
    :sswitch_1
    iput v6, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    .line 3509
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3510
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConverter(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 3511
    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setPreConverter(Ljp/co/omronsoft/iwnnime/ml/LetterConverter;)V

    .line 3513
    const-string v3, "opt_funfun_en"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    .line 3514
    const-string v3, "opt_enable_learning_en"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    .line 3515
    const-string v3, "opt_prediction_en"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    .line 3516
    const-string v3, "opt_spell_correction_en"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSpellCorrection:Z

    .line 3518
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    if-nez v3, :cond_4

    .line 3519
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    .line 3522
    :cond_4
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v3, :cond_0

    .line 3523
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v4, 0xfff000

    and-int/2addr v3, v4

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 3525
    :pswitch_a
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    .line 3526
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    .line 3527
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    .line 3528
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSpellCorrection:Z

    goto/16 :goto_0

    .line 3537
    :sswitch_2
    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConverter(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 3538
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHiragana:Ljp/co/omronsoft/iwnnime/ml/jajp/Romkan;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaRoman:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 3539
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHiraganaDirect:Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaDirect:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    goto/16 :goto_0

    .line 3543
    :sswitch_3
    iput v5, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    .line 3544
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3546
    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConverter(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 3547
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterFullKatakana:Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanFullKatakana;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaRoman:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 3548
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterFullKatakana:Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanFullKatakana;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaDirect:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    goto/16 :goto_0

    .line 3552
    :sswitch_4
    iput v5, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    .line 3553
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3555
    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConverter(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 3556
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHalfKatakana:Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaRoman:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 3557
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterHalfKatakana:Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaDirect:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    goto/16 :goto_0

    .line 3584
    :cond_5
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEnglish()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3585
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaRoman:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setPreConverter(Ljp/co/omronsoft/iwnnime/ml/LetterConverter;)V

    goto/16 :goto_1

    .line 3430
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_5
    .end packed-switch

    .line 3499
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
    .end sparse-switch

    .line 3523
    :pswitch_data_1
    .packed-switch 0x80000
        :pswitch_a
    .end packed-switch
.end method

.method private changeSymbolEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;I)V
    .locals 4
    .parameter "state"
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 4788
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolList:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isDirectInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4789
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 4790
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolListNonHalf:Z

    if-eqz v0, :cond_1

    .line 4791
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableEmoji:Z

    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableDecoEmoji:Z

    invoke-virtual {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setSymToggle(ZZ)V

    .line 4798
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 4799
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 4800
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    .line 4801
    iput v3, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    .line 4802
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 4803
    invoke-direct {p0, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    .line 4805
    :cond_0
    return-void

    .line 4793
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setMode(I)V

    goto :goto_0

    .line 4796
    :cond_2
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v0, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setMode(I)V

    goto :goto_0
.end method

.method private checkCommitInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4716
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitStartCursor:I

    if-gez v3, :cond_1

    .line 4735
    :cond_0
    :goto_0
    return-void

    .line 4720
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v3

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    invoke-direct {p0, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4722
    .local v1, composingString:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4724
    .local v0, composingLength:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4725
    .local v2, seq:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v3, v0, :cond_2

    .line 4726
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4727
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4728
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    .line 4729
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    goto :goto_0

    .line 4732
    :cond_2
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    .line 4733
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    goto :goto_0
.end method

.method private clearCommitInfo()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4697
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitStartCursor:I

    if-gez v2, :cond_0

    .line 4709
    :goto_0
    return v1

    .line 4701
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitStartCursor:I

    .line 4704
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    .line 4705
    .local v0, inputManager:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setUndoKey(Z)V

    .line 4706
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCanUndo:Z

    .line 4707
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasCommitedByVoiceInput:Z

    .line 4709
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private commitAllText()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3291
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initCommitInfoForWatchCursor()V

    .line 3292
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isConvertState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3293
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitConvertingText()V

    .line 3300
    :goto_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->checkCommitInfo()V

    .line 3301
    return-void

    .line 3295
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v0

    .line 3296
    .local v0, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 3298
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    move-result v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    goto :goto_0
.end method

.method private commitComposingText(Ljava/lang/CharSequence;)I
    .locals 12
    .parameter "string"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3347
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    .line 3348
    .local v6, layer:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v2

    .line 3350
    .local v2, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    iget-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasRequiredFunfunSpace:Z

    if-eqz v10, :cond_2

    .line 3351
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 3352
    .local v4, funfun:I
    if-lez v4, :cond_1

    .line 3353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3354
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 3355
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3354
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3357
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3359
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v5           #i:I
    :cond_1
    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasRequiredFunfunSpace:Z

    .line 3362
    .end local v4           #funfun:I
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 3364
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitTextToInputConnection(Ljava/lang/CharSequence;)V

    .line 3365
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 3366
    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    .line 3368
    invoke-virtual {v2, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v3

    .line 3369
    .local v3, cursor:I
    if-lez v3, :cond_3

    .line 3370
    invoke-virtual {v2, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2, v6, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->deleteStrSegment(III)V

    .line 3371
    invoke-virtual {v2, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v10

    invoke-virtual {v2, v6, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 3373
    :cond_3
    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 3374
    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 3375
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v10}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 3376
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCount:I

    .line 3378
    if-ne v6, v11, :cond_4

    invoke-virtual {v2, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v10

    if-nez v10, :cond_4

    .line 3379
    const/4 v6, 0x1

    .line 3382
    :cond_4
    const/4 v1, 0x0

    .line 3383
    .local v1, committed:Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v10, v8, :cond_5

    .line 3384
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->autoCommitEnglish()Z

    move-result v1

    .line 3386
    :cond_5
    iget-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoInsertSpace:Z

    if-nez v10, :cond_6

    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    iget v10, v10, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    if-ne v8, v10, :cond_6

    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v10}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v10

    if-nez v10, :cond_6

    .line 3387
    const/4 v1, 0x1

    .line 3388
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3389
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v10

    invoke-virtual {v10}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    .line 3391
    :cond_6
    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    .line 3392
    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIsInputSequenced:Z

    .line 3394
    if-ne v6, v11, :cond_9

    .line 3395
    new-instance v7, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    const/4 v10, 0x0

    invoke-direct {v7, p0, v10}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 3396
    .local v7, state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    iput v8, v7, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    .line 3397
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3399
    if-nez v1, :cond_8

    :goto_1
    invoke-direct {p0, v6, v8, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    .line 3405
    .end local v1           #committed:Z
    .end local v3           #cursor:I
    .end local v7           #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    :cond_7
    :goto_2
    invoke-virtual {v2, v9}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v8

    if-nez v8, :cond_b

    .line 3408
    :goto_3
    return v9

    .restart local v1       #committed:Z
    .restart local v3       #cursor:I
    .restart local v7       #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    :cond_8
    move v8, v9

    .line 3399
    goto :goto_1

    .line 3401
    .end local v7           #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    :cond_9
    if-nez v1, :cond_a

    :goto_4
    invoke-direct {p0, v8, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto :goto_2

    :cond_a
    move v8, v9

    goto :goto_4

    .line 3408
    .end local v1           #committed:Z
    .end local v3           #cursor:I
    :cond_b
    const/4 v9, 0x3

    goto :goto_3
.end method

.method private commitConvertingText()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4356
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v0

    .line 4357
    .local v0, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4358
    invoke-virtual {v0, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v2

    .line 4359
    .local v2, size:I
    if-gtz v2, :cond_1

    .line 4383
    .end local v2           #size:I
    :cond_0
    :goto_0
    return-void

    .line 4362
    .restart local v2       #size:I
    :cond_1
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCount:I

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 4363
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v4

    invoke-interface {v4, v1}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->makeCandidateListOf(I)I

    .line 4364
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->learnWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    .line 4362
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4367
    :cond_2
    invoke-direct {p0, v0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4370
    .local v3, text:Ljava/lang/CharSequence;
    invoke-virtual {v0, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStrokeOfCommitText:Ljava/lang/String;

    .line 4371
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitTextToInputConnection(Ljava/lang/CharSequence;)V

    .line 4373
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 4374
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    .line 4375
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 4378
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEisuKana()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4379
    invoke-virtual {v0, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 4381
    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    move-result v4

    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    goto :goto_0
.end method

.method private commitSpaceJustOne()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4050
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4051
    .local v0, seq:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 4052
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 4053
    const-string v1, " "

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Ljava/lang/String;)V

    .line 4056
    :cond_0
    return-void
.end method

.method private commitText(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
    .locals 1
    .parameter "word"

    .prologue
    .line 3310
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3311
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->learnWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    .line 3313
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3314
    iget-object v0, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStrokeOfCommitText:Ljava/lang/String;

    .line 3316
    :cond_1
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getSpannedCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitComposingText(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method private commitText(Z)I
    .locals 12
    .parameter "learn"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 3208
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v8

    .line 3209
    .local v8, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3211
    invoke-virtual {v8, v11}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v3

    invoke-virtual {v8, v11, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 3215
    :cond_0
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    .line 3216
    .local v10, layer:I
    invoke-virtual {v8, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v9

    .line 3217
    .local v9, cursor:I
    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v8, v10, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v2

    .line 3219
    .local v2, tmp:Ljava/lang/String;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3220
    if-eqz p1, :cond_4

    .line 3221
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3222
    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->learnWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    .line 3234
    :cond_1
    :goto_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3235
    invoke-virtual {v8, v11}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v8, v11, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStrokeOfCommitText:Ljava/lang/String;

    .line 3239
    :cond_2
    add-int/lit8 v3, v9, -0x1

    invoke-direct {p0, v8, v10, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;III)Ljava/lang/CharSequence;

    move-result-object v7

    .line 3241
    .local v7, commitText:Ljava/lang/CharSequence;
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitComposingText(Ljava/lang/CharSequence;)I

    move-result v1

    return v1

    .line 3224
    .end local v7           #commitText:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v8, v11}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 3225
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    const/4 v6, 0x4

    move-object v3, v2

    move v5, v1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V

    .line 3227
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->learnWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto :goto_0

    .line 3231
    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_4
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->breakSequence()V

    goto :goto_0
.end method

.method private commitText(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3325
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 3326
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 3328
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitTextToInputConnection(Ljava/lang/CharSequence;)V

    .line 3330
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3331
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    .line 3332
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    .line 3333
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIsInputSequenced:Z

    .line 3335
    invoke-direct {p0, v1, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    .line 3338
    return-void
.end method

.method private commitTextWithoutLastAlphabet()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 3248
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    .line 3249
    .local v1, layer:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v0

    .line 3250
    .local v0, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v0, v1, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v2

    .line 3251
    .local v2, strSegment:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    if-eqz v2, :cond_0

    .line 3252
    iget-object v3, v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    .line 3254
    .local v3, tmp:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isAlphabetLast(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3255
    invoke-virtual {v0, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->moveCursor(II)I

    .line 3256
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 3257
    invoke-virtual {v0, v5, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->moveCursor(II)I

    .line 3262
    .end local v3           #tmp:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3259
    .restart local v3       #tmp:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    goto :goto_0
.end method

.method private commitTextWithoutLastKana()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3268
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    .line 3269
    .local v1, layer:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v0

    .line 3270
    .local v0, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v0, v1, v7}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v2

    .line 3271
    .local v2, strSegment:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    invoke-virtual {v0, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v4

    if-le v4, v5, :cond_2

    .line 3272
    if-eqz v2, :cond_0

    .line 3273
    iget-object v3, v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    .line 3274
    .local v3, tmp:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 3275
    invoke-virtual {v0, v5, v7}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->moveCursor(II)I

    .line 3276
    invoke-direct {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 3277
    invoke-virtual {v0, v5, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->moveCursor(II)I

    .line 3285
    .end local v3           #tmp:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3279
    .restart local v3       #tmp:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    goto :goto_0

    .line 3283
    .end local v3           #tmp:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v5, v6, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    goto :goto_0
.end method

.method private convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "composingText"
    .parameter "targetLayer"

    .prologue
    .line 4963
    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;III)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;III)Ljava/lang/CharSequence;
    .locals 1
    .parameter "composingText"
    .parameter "targetLayer"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 4978
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableDecoEmoji:Z

    if-eqz v0, :cond_0

    .line 4979
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4980
    invoke-static {p1, p2, p3, p4}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;III)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4983
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private converterComposingText(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4992
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v1

    .line 4993
    .local v1, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 4994
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v2

    .line 4997
    .local v2, converter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    invoke-interface {v2, v1, p1}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->getgijistr(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)I

    .line 4999
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 5000
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 5001
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 5002
    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKey(Z)V

    .line 5004
    const/4 v3, 0x2

    invoke-direct {p0, v3, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    .line 5006
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    .line 5007
    return-void
.end method

.method private createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    .locals 2
    .parameter "charCode"

    .prologue
    .line 1906
    if-eqz p1, :cond_0

    const/high16 v0, -0x8000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0xef00

    if-ne p1, v0, :cond_1

    .line 1907
    :cond_0
    const/4 v0, 0x0

    .line 1909
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>([C)V

    goto :goto_0
.end method

.method private fitInputType(Landroid/content/SharedPreferences;Landroid/view/inputmethod/EditorInfo;)V
    .locals 11
    .parameter "preference"
    .parameter "info"

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4096
    iget v5, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v5, :cond_1

    .line 4097
    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setDirectInputMode(Z)V

    .line 4290
    :cond_0
    :goto_0
    return-void

    .line 4101
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    .line 4104
    .local v1, inputViewManager:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAfterVoiceInput:Z

    .line 4105
    const-string v5, "has_used_voice_input"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasUsedVoiceInput:Z

    .line 4109
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getKeyMode()I

    move-result v2

    .line 4110
    .local v2, keymode:I
    if-ne v2, v10, :cond_8

    .line 4111
    const-string v5, "opt_funfun_en"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    .line 4112
    const-string v5, "opt_enable_learning_en"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    .line 4113
    const-string v5, "opt_prediction_en"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    .line 4114
    const-string v5, "opt_spell_correction_en"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSpellCorrection:Z

    .line 4121
    :goto_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isTabletMode()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4122
    const-string v5, "fullscreen_mode"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFullscreen:Z

    .line 4126
    :goto_2
    const-string v5, "opt_mushroom"

    const-string v8, "notuse"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "notuse"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableMushroom:Z

    .line 4127
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getVibrator(Landroid/content/SharedPreferences;)Landroid/os/Vibrator;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mVibrator:Landroid/os/Vibrator;

    .line 4128
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    .line 4129
    const/4 v3, 0x0

    .line 4130
    .local v3, preferenceDictionary:I
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableConverter:Z

    .line 4131
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolList:Z

    .line 4132
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolListNonHalf:Z

    .line 4133
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableEmoji:Z

    .line 4135
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableDecoEmoji:Z

    .line 4136
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableUNI6Emoji:Z

    .line 4137
    invoke-virtual {v1, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setEnableEmoji(Z)V

    .line 4139
    invoke-virtual {v1, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setEnableDecoEmoji(Z)V

    .line 4141
    invoke-virtual {v1, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setEnableEmojiUNI6(Z)V

    .line 4142
    invoke-direct {p0, v6, v7, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setEnabledTabs(ZZZ)V

    .line 4143
    const-string v5, "auto_caps"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCaps:Z

    .line 4144
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setEmailAddressFilter(Z)V

    .line 4145
    const-string v5, "opt_auto_space"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoInsertSpace:Z

    .line 4146
    const-string v5, "opt_auto_cursor_movement"

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCursorMovementSpeed:I

    .line 4149
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCursorMovementSpeed:I

    if-eqz v5, :cond_2

    const-string v5, "flick_input"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "flick_toggle_input"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4152
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCursorMovementSpeed:I

    .line 4154
    :cond_2
    iget v5, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v8, 0x1000

    and-int/2addr v5, v8

    if-eqz v5, :cond_3

    .line 4155
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFullscreen:Z

    .line 4158
    :cond_3
    const-string v5, "kana_roman_input"

    const-string v8, "Roman"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "Kana"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v7

    :goto_4
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDirectKana:Z

    .line 4160
    invoke-virtual {v1, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->isEnableModekey(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4161
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableKanaInput()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 4162
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaDirect:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setPreConverter(Ljp/co/omronsoft/iwnnime/ml/LetterConverter;)V

    .line 4163
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getPreConverter()Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterBack:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 4173
    :cond_4
    :goto_5
    if-ne v2, v10, :cond_5

    .line 4174
    iget v5, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v8, 0xfff000

    and-int/2addr v5, v8

    packed-switch v5, :pswitch_data_0

    .line 4186
    :cond_5
    :goto_6
    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getDefaultKeyMode(Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    .line 4187
    .local v0, defaultKeyMode:I
    if-ne v0, v7, :cond_6

    .line 4188
    iget v5, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v5, v5, 0xf

    packed-switch v5, :pswitch_data_1

    .line 4271
    :cond_6
    :goto_7
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableEmoji:Z

    invoke-virtual {v5, v8}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableEmoji(Z)V

    .line 4272
    iget-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableEmoji:Z

    invoke-virtual {v1, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setEnableEmoji(Z)V

    .line 4273
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    iget-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableEmoji:Z

    if-nez v5, :cond_d

    move v5, v7

    :goto_8
    invoke-virtual {v8, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setEmojiFilter(Z)V

    .line 4274
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v5, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setPreferences(Landroid/content/SharedPreferences;)V

    .line 4275
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableDecoEmoji:Z

    if-nez v8, :cond_e

    :goto_9
    invoke-virtual {v5, v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDecoEmojiFilter(Z)V

    .line 4276
    iget-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableDecoEmoji:Z

    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->setConvertFunctionEnabled(Z)V

    .line 4277
    iget-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    if-nez v5, :cond_7

    .line 4278
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    .line 4282
    :cond_7
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v5

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4283
    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 4284
    .local v4, state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    iget v5, v5, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    iput v5, v4, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    .line 4285
    iput v3, v4, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->preferenceDictionary:I

    .line 4286
    iput v6, v4, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    .line 4288
    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    goto/16 :goto_0

    .line 4116
    .end local v0           #defaultKeyMode:I
    .end local v3           #preferenceDictionary:I
    .end local v4           #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    :cond_8
    const-string v5, "opt_funfun_ja"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    .line 4117
    const-string v5, "opt_enable_learning_ja"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    .line 4118
    const-string v5, "opt_prediction_ja"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    .line 4119
    const-string v5, "opt_spell_correction_ja"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSpellCorrection:Z

    goto/16 :goto_1

    .line 4124
    :cond_9
    const-string v5, "fullscreen_mode"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFullscreen:Z

    goto/16 :goto_2

    :cond_a
    move v5, v7

    .line 4126
    goto/16 :goto_3

    .restart local v3       #preferenceDictionary:I
    :cond_b
    move v5, v6

    .line 4158
    goto/16 :goto_4

    .line 4165
    :cond_c
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEnglish()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4166
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaRoman:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setPreConverter(Ljp/co/omronsoft/iwnnime/ml/LetterConverter;)V

    .line 4167
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getPreConverter()Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterBack:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    goto/16 :goto_5

    .line 4176
    :pswitch_0
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    .line 4177
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    .line 4178
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    .line 4179
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSpellCorrection:Z

    goto/16 :goto_6

    .line 4190
    .restart local v0       #defaultKeyMode:I
    :pswitch_1
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableConverter:Z

    .line 4191
    const/16 v5, 0x10

    iget v8, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v8, v8, 0xff0

    if-ne v5, v8, :cond_6

    .line 4192
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolListNonHalf:Z

    .line 4193
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableUNI6Emoji:Z

    .line 4194
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableEmoticon(Z)V

    .line 4195
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableEmojiUNI6(Z)V

    .line 4196
    invoke-virtual {v1, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setEnableEmojiUNI6(Z)V

    goto/16 :goto_7

    .line 4201
    :pswitch_2
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableConverter:Z

    goto/16 :goto_7

    .line 4205
    :pswitch_3
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolList:Z

    .line 4206
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableConverter:Z

    .line 4207
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolListNonHalf:Z

    .line 4208
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableUNI6Emoji:Z

    .line 4209
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v5, v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setEmailAddressFilter(Z)V

    .line 4210
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    .line 4211
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableEmoticon(Z)V

    .line 4212
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableEmojiUNI6(Z)V

    .line 4213
    invoke-virtual {v1, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setEnableEmojiUNI6(Z)V

    goto/16 :goto_7

    .line 4218
    :pswitch_4
    iget v5, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v5, v5, 0xff0

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_7

    .line 4245
    :sswitch_0
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoInsertSpace:Z

    .line 4246
    const/4 v3, 0x3

    .line 4247
    goto/16 :goto_7

    .line 4220
    :sswitch_1
    const/4 v3, 0x1

    .line 4221
    goto/16 :goto_7

    .line 4226
    :sswitch_2
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    .line 4227
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    .line 4228
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableConverter:Z

    .line 4229
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolListNonHalf:Z

    .line 4230
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableUNI6Emoji:Z

    .line 4231
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v5, v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setEmailAddressFilter(Z)V

    .line 4232
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    .line 4233
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableEmoticon(Z)V

    .line 4234
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableEmojiUNI6(Z)V

    .line 4235
    invoke-virtual {v1, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setEnableEmojiUNI6(Z)V

    goto/16 :goto_7

    .line 4240
    :sswitch_3
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoInsertSpace:Z

    .line 4241
    const/4 v3, 0x3

    .line 4242
    goto/16 :goto_7

    .line 4250
    :sswitch_4
    const/4 v3, 0x2

    .line 4251
    goto/16 :goto_7

    .line 4254
    :sswitch_5
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    .line 4255
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableConverter:Z

    .line 4256
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolList:Z

    goto/16 :goto_7

    :cond_d
    move v5, v6

    .line 4273
    goto/16 :goto_8

    :cond_e
    move v7, v6

    .line 4275
    goto/16 :goto_9

    .line 4174
    nop

    :pswitch_data_0
    .packed-switch 0x80000
        :pswitch_0
    .end packed-switch

    .line 4188
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 4218
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_3
        0x60 -> :sswitch_1
        0x70 -> :sswitch_4
        0x80 -> :sswitch_2
        0x90 -> :sswitch_2
        0xc0 -> :sswitch_5
        0xd0 -> :sswitch_3
        0xe0 -> :sswitch_2
    .end sparse-switch
.end method

.method private forwardCursor()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1866
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1867
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    if-nez v2, :cond_0

    .line 1868
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v0

    .line 1869
    .local v0, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v1

    .line 1870
    .local v1, cursor:I
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCursorMovementSpeed:I

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1872
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCursorMovementSpeed:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1876
    .end local v0           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v1           #cursor:I
    :cond_0
    return-void
.end method

.method private getConvertingForFuncKeyEijiType()I
    .locals 1

    .prologue
    .line 5024
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConvertingForFuncKeyEijiType:I

    return v0
.end method

.method public static getDefaultKeyMode(Landroid/view/inputmethod/EditorInfo;)I
    .locals 3
    .parameter "editor"

    .prologue
    .line 4301
    const/4 v0, 0x1

    .line 4302
    .local v0, result:I
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4303
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omoronsoft.iwnnime.ml.mode=eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4304
    const/4 v0, 0x6

    .line 4327
    :cond_0
    :goto_0
    return v0

    .line 4305
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omoronsoft.iwnnime.ml.mode=jpn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4306
    const/4 v0, 0x2

    goto :goto_0

    .line 4307
    :cond_2
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omoronsoft.iwnnime.ml.mode=num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4308
    const/16 v0, 0x8

    goto :goto_0

    .line 4309
    :cond_3
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omronsoft.iwnnime.ml.mode=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4310
    const/4 v0, 0x2

    goto :goto_0

    .line 4311
    :cond_4
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omronsoft.iwnnime.ml.mode=4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4312
    const/4 v0, 0x5

    goto :goto_0

    .line 4313
    :cond_5
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omronsoft.iwnnime.ml.mode=6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4314
    const/4 v0, 0x7

    goto :goto_0

    .line 4315
    :cond_6
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omronsoft.iwnnime.ml.mode=2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4316
    const/4 v0, 0x3

    goto :goto_0

    .line 4317
    :cond_7
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omronsoft.iwnnime.ml.mode=5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4318
    const/4 v0, 0x6

    goto :goto_0

    .line 4319
    :cond_8
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omronsoft.iwnnime.ml.mode=7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4320
    const/16 v0, 0x8

    goto :goto_0

    .line 4321
    :cond_9
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omronsoft.iwnnime.ml.mode=3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4322
    const/4 v0, 0x4

    goto :goto_0

    .line 4323
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "jp.co.omronsoft.iwnnime.ml.mode=9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4324
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private handleEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    .locals 27
    .parameter "ev"

    .prologue
    .line 1204
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v5

    .line 1205
    .local v5, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 1209
    .local v10, inputConnection:Landroid/view/inputmethod/InputConnection;
    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    .line 1381
    move-object/from16 v0, p1

    iget-object v13, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 1382
    .local v13, keyEvent:Landroid/view/KeyEvent;
    const/4 v12, 0x0

    .line 1383
    .local v12, keyCode:I
    if-eqz v13, :cond_0

    .line 1384
    invoke-virtual {v13}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 1387
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isDirectInputMode()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 1388
    if-eqz v10, :cond_1

    .line 1389
    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_1

    .line 1404
    sparse-switch v12, :sswitch_data_2

    .line 1425
    :cond_1
    const/4 v15, 0x0

    .line 1859
    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    .end local v12           #keyCode:I
    .end local v13           #keyEvent:Landroid/view/KeyEvent;
    :cond_2
    :goto_0
    return v15

    .line 1212
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLanguage()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_3

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x6

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    const-wide/16 v25, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1218
    :cond_3
    const/4 v15, 0x1

    goto :goto_0

    .line 1221
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onKeyUpEvent(Landroid/view/KeyEvent;)V

    .line 1222
    const/4 v15, 0x1

    goto :goto_0

    .line 1225
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onKeyLongPressEvent(Landroid/view/KeyEvent;)Z

    move-result v15

    goto :goto_0

    .line 1229
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    .line 1230
    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    move/from16 v23, v0

    const/16 v24, 0x68

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    move/from16 v23, v0

    const/16 v24, 0x67

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    move/from16 v23, v0

    const/16 v24, 0x6b

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    move/from16 v23, v0

    const/16 v24, 0x70

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    move/from16 v23, v0

    const/16 v24, 0x6c

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    move/from16 v23, v0

    const/16 v24, 0x6e

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    move/from16 v23, v0

    const/16 v24, 0x6d

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    move/from16 v23, v0

    const/16 v24, 0x6f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1238
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v23

    if-nez v23, :cond_4

    .line 1239
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 1242
    :cond_4
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1245
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->mode:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCategoryItem(I)V

    .line 1246
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1249
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCategoryItem(Z)V

    .line 1250
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1253
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCategoryItem(Z)V

    .line 1254
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1257
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1260
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v6

    .line 1261
    .local v6, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/16 v23, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 1263
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 1264
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 1265
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 1266
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    .line 1270
    .end local v6           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    :goto_1
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1268
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    goto :goto_1

    .line 1274
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onCreateInputViewOpenWnn()Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setInputView(Landroid/view/View;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-object/from16 v23, v0

    const-string v24, "window"

    invoke-virtual/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 1276
    .local v22, wm:Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getWidth()I

    move-result v25

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/Display;->getHeight()I

    move-result v26

    invoke-virtual/range {v23 .. v26}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;

    .line 1279
    const/16 v21, 0x0

    .line 1280
    .local v21, view:Landroid/view/View;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getWidth()I

    move-result v25

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/Display;->getHeight()I

    move-result v26

    invoke-virtual/range {v23 .. v26}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getCurrentView()Landroid/view/View;

    move-result-object v21

    .line 1288
    :goto_2
    if-eqz v21, :cond_6

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->setCandidatesView(Landroid/view/View;)V

    .line 1291
    :cond_6
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1286
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCurrentView()Landroid/view/View;

    move-result-object v21

    goto :goto_2

    .line 1295
    .end local v21           #view:Landroid/view/View;
    .end local v22           #wm:Landroid/view/WindowManager;
    :sswitch_9
    const/4 v15, 0x0

    .line 1296
    .local v15, ret:Z
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1297
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->onTouchSync()Z

    move-result v15

    goto/16 :goto_0

    .line 1302
    .end local v15           #ret:Z
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :sswitch_a
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 1303
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1306
    :sswitch_b
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->undo()Z

    move-result v15

    goto/16 :goto_0

    .line 1309
    :sswitch_c
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 1310
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setScrollUp()V

    .line 1312
    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1315
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :sswitch_d
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 1316
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setScrollDown()V

    .line 1318
    :cond_9
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1321
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :sswitch_e
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 1322
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setScrollFullUp()V

    .line 1324
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1327
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :sswitch_f
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 1328
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setScrollFullDown()V

    .line 1330
    :cond_b
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1333
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v23

    check-cast v23, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setOkToEnterKey()V

    .line 1334
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1337
    :sswitch_11
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->onUpdateState(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    .line 1338
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1341
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->onDoneGettingCandidates()V

    .line 1342
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1345
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isWebApiSuccessReceived()Z

    move-result v19

    .line 1347
    .local v19, success:Z
    if-eqz v19, :cond_e

    .line 1348
    const v8, 0x7f060116

    .line 1353
    .local v8, errorCodeResourceId:I
    :goto_3
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 1354
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 1355
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->onWebApiError(Ljava/lang/String;)V

    .line 1365
    :cond_c
    :goto_4
    if-eqz v19, :cond_d

    .line 1366
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v23

    new-instance v24, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v25, -0xfffefff

    invoke-direct/range {v24 .. v25}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->onDoneGettingCandidates()V

    .line 1369
    :cond_d
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1350
    .end local v8           #errorCodeResourceId:I
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :cond_e
    const v8, 0x7f060115

    .restart local v8       #errorCodeResourceId:I
    goto :goto_3

    .line 1359
    :cond_f
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 1360
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->onWebApiError(Ljava/lang/String;)V

    goto :goto_4

    .line 1372
    .end local v8           #errorCodeResourceId:I
    .end local v19           #success:Z
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->startShortcutIME()V

    .line 1373
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1391
    .restart local v12       #keyCode:I
    .restart local v13       #keyEvent:Landroid/view/KeyEvent;
    :sswitch_15
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->sendKeyEventDirect(Landroid/view/KeyEvent;)V

    .line 1392
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1395
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-char v23, v23, v24

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-char v23, v23, v24

    const/16 v24, 0x39

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_10

    .line 1397
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-char v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitTextToInputConnection(Ljava/lang/CharSequence;)V

    .line 1401
    :goto_5
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1399
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-char v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->sendKeyChar(C)V

    goto :goto_5

    .line 1406
    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isInputViewShown()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 1407
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v11

    .line 1408
    .local v11, inputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;
    invoke-interface {v11}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->closing()V

    .line 1409
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->requestHideSelf(I)V

    .line 1410
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1414
    .end local v11           #inputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;
    :cond_11
    :sswitch_18
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1415
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1428
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v23

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableHardware12Keyboard:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13

    const/16 v23, 0x43

    move/from16 v0, v23

    if-eq v12, v0, :cond_16

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_16

    .line 1431
    :cond_13
    if-eqz v13, :cond_14

    invoke-virtual {v13}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v23

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isTenKeyCode(I)Z

    move-result v23

    if-eqz v23, :cond_14

    invoke-virtual {v13}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v23

    if-nez v23, :cond_14

    .line 1434
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1436
    :cond_14
    sparse-switch v12, :sswitch_data_3

    .line 1560
    :cond_15
    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    move/from16 v23, v0

    const v24, -0xffffff9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    const/16 v23, 0x54

    move/from16 v0, v23

    if-eq v12, v0, :cond_16

    const/16 v23, 0x39

    move/from16 v0, v23

    if-eq v12, v0, :cond_16

    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v12, v0, :cond_16

    const/16 v23, 0x3b

    move/from16 v0, v23

    if-eq v12, v0, :cond_16

    const/16 v23, 0x3c

    move/from16 v0, v23

    if-eq v12, v0, :cond_16

    .line 1566
    new-instance v17, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 1567
    .local v17, state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    .line 1568
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 1572
    .end local v17           #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    :cond_16
    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    move/from16 v23, v0

    const v24, -0xffffff9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processHardware12Keyboard(Landroid/view/KeyEvent;)Z

    move-result v23

    if-eqz v23, :cond_22

    .line 1573
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1438
    :sswitch_19
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1442
    :sswitch_1a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1446
    :sswitch_1b
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v9

    .line 1447
    .local v9, ime:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    if-eqz v9, :cond_17

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isSubtypeExtraEmojiInput()Z

    move-result v23

    if-eqz v23, :cond_17

    .line 1448
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->switchToLastInputMethod()V

    .line 1452
    :goto_6
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1450
    :cond_17
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    goto :goto_6

    .line 1458
    .end local v9           #ime:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    :sswitch_1c
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v23

    if-eqz v23, :cond_18

    .line 1459
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->selectFocusCandidate()V

    .line 1460
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1462
    :cond_18
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1465
    :sswitch_1d
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 1466
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processLeftKeyEvent()V

    .line 1467
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1469
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1472
    :sswitch_1e
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 1473
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processRightKeyEvent()V

    .line 1474
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1476
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1479
    :sswitch_1f
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processDownKeyEvent()V

    .line 1480
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1483
    :sswitch_20
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 1484
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processUpKeyEvent()V

    .line 1485
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1487
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1490
    :sswitch_21
    if-eqz v13, :cond_1c

    .line 1491
    invoke-virtual {v13}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 1492
    new-instance v23, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v24, -0xfffd000

    invoke-direct/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1501
    :cond_1c
    :goto_7
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1493
    :cond_1d
    invoke-virtual {v13}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 1494
    invoke-virtual {v13}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    if-nez v23, :cond_1c

    .line 1495
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->switchSymbolList()V

    goto :goto_7

    .line 1498
    :cond_1e
    new-instance v23, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v24, -0xfffcfff

    invoke-direct/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_7

    .line 1504
    :sswitch_22
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->switchSymbolList()V

    .line 1505
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1508
    :sswitch_23
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->scrollPageAndUpdateFocus(Z)V

    .line 1509
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1512
    :sswitch_24
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->scrollPageAndUpdateFocus(Z)V

    .line 1513
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1516
    :sswitch_25
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 1517
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processEndKeyEvent()V

    .line 1518
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1520
    :cond_1f
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1523
    :sswitch_26
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v23

    if-eqz v23, :cond_20

    .line 1524
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processHomeKeyEvent()V

    .line 1525
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1527
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1530
    :sswitch_27
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 1531
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->switchCharset()V

    .line 1532
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1535
    :sswitch_28
    if-eqz v13, :cond_21

    .line 1536
    invoke-virtual {v13}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    if-nez v23, :cond_21

    .line 1537
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->switchSymbolList()V

    .line 1540
    :cond_21
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1543
    :sswitch_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableHardware12Keyboard:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 1544
    new-instance v23, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v24, -0xfffd000

    invoke-direct/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1545
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1550
    :sswitch_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableHardware12Keyboard:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 1551
    new-instance v23, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v24, -0xfffcfff

    invoke-direct/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1552
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1576
    :cond_22
    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    move/from16 v23, v0

    const v24, -0xffffffc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    .line 1577
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setCandidateIsViewTypeFull(Z)V

    .line 1578
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1579
    :cond_23
    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    move/from16 v23, v0

    const v24, -0xffffffd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 1580
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setCandidateIsViewTypeFull(Z)V

    .line 1581
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1585
    :cond_24
    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    move/from16 v23, v0

    const v24, -0xfffffe5

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_27

    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    move/from16 v23, v0

    const v24, -0xffffff0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_27

    if-eqz v13, :cond_26

    const/16 v23, 0x3b

    move/from16 v0, v23

    if-eq v12, v0, :cond_27

    const/16 v23, 0x3c

    move/from16 v0, v23

    if-eq v12, v0, :cond_27

    const/16 v23, 0x39

    move/from16 v0, v23

    if-eq v12, v0, :cond_27

    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v12, v0, :cond_27

    invoke-virtual {v13}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v23

    if-eqz v23, :cond_25

    const/16 v23, 0x43

    move/from16 v0, v23

    if-eq v12, v0, :cond_27

    const/16 v23, 0x70

    move/from16 v0, v23

    if-eq v12, v0, :cond_27

    const/16 v23, 0x3e

    move/from16 v0, v23

    if-eq v12, v0, :cond_27

    :cond_25
    invoke-virtual {v13}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v23

    if-eqz v23, :cond_26

    const/16 v23, 0x3e

    move/from16 v0, v23

    if-eq v12, v0, :cond_27

    .line 1597
    :cond_26
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    .line 1600
    :cond_27
    const/4 v15, 0x0

    .line 1601
    .restart local v15       #ret:Z
    move-object/from16 v0, p1

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_4

    goto/16 :goto_0

    .line 1630
    :sswitch_2b
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x11

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x100

    move/from16 v23, v0

    if-eqz v23, :cond_2

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isConvertState()Z

    move-result v23

    if-nez v23, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1634
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v6

    .line 1635
    .restart local v6       #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v7

    .line 1636
    .local v7, cursor:I
    if-lez v7, :cond_2

    .line 1637
    const/16 v23, 0x1

    add-int/lit8 v24, v7, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v18

    .line 1638
    .local v18, strSegment:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    if-eqz v18, :cond_2

    .line 1639
    move-object/from16 v0, v18

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    .line 1640
    .local v14, prevChar:Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 1641
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v14, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->searchToggleCharacter(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1642
    .local v4, c:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1643
    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->delete(IZ)I

    .line 1644
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendToggleString(Ljava/lang/String;)Z

    .line 1645
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 1646
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 1647
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    .line 1648
    const/4 v15, 0x1

    .line 1649
    goto/16 :goto_0

    .line 1603
    .end local v4           #c:Ljava/lang/String;
    .end local v6           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v7           #cursor:I
    .end local v14           #prevChar:Ljava/lang/String;
    .end local v18           #strSegment:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_2c
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 1604
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 1605
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getPreConverter()Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    move-result-object v23

    if-nez v23, :cond_29

    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v23

    if-nez v23, :cond_29

    .line 1607
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 1608
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    .line 1610
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    .line 1616
    :goto_8
    const/4 v15, 0x1

    .line 1617
    goto/16 :goto_0

    .line 1611
    :cond_29
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v23

    if-nez v23, :cond_2a

    .line 1612
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processSoftKeyboardCodeWithoutConversion([C)V

    goto :goto_8

    .line 1614
    :cond_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processSoftKeyboardCode([C)V

    goto :goto_8

    .line 1620
    :sswitch_2d
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->chars:[C

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processFlickInputChar(Ljava/lang/String;)V

    .line 1621
    const/4 v15, 0x1

    .line 1622
    goto/16 :goto_0

    .line 1625
    :sswitch_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->toggleTable:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processSoftKeyboardToggleChar([Ljava/lang/String;)V

    .line 1626
    const/4 v15, 0x1

    .line 1627
    goto/16 :goto_0

    .line 1658
    :sswitch_2f
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v6

    .line 1659
    .restart local v6       #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v7

    .line 1660
    .restart local v7       #cursor:I
    if-lez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isConvertState()Z

    move-result v23

    if-nez v23, :cond_2

    .line 1662
    const/16 v23, 0x1

    add-int/lit8 v24, v7, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v18

    .line 1663
    .restart local v18       #strSegment:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    if-eqz v18, :cond_2

    .line 1664
    move-object/from16 v0, v18

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1665
    .local v16, search:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 1666
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->replaceTable:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1667
    .restart local v4       #c:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1668
    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->delete(IZ)I

    .line 1669
    new-instance v23, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z

    .line 1670
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 1671
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 1672
    const/4 v15, 0x1

    .line 1673
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 1674
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto/16 :goto_0

    .line 1683
    .end local v4           #c:Ljava/lang/String;
    .end local v6           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v7           #cursor:I
    .end local v16           #search:Ljava/lang/String;
    .end local v18           #strSegment:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_30
    if-eqz v13, :cond_2

    .line 1687
    sparse-switch v12, :sswitch_data_5

    .line 1774
    :cond_2b
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v15

    .line 1775
    goto/16 :goto_0

    .line 1692
    :sswitch_31
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1696
    :sswitch_32
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v6

    .line 1697
    .restart local v6       #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v24, v0

    add-int v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2c

    .line 1698
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1700
    :cond_2c
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1705
    .end local v6           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    :sswitch_33
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v23

    if-nez v23, :cond_2b

    .line 1706
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v20

    .line 1707
    .local v20, switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->onUpdateState(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    goto :goto_9

    .line 1712
    .end local v20           #switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    :sswitch_34
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v23

    if-eqz v23, :cond_2e

    .line 1713
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->getCurrentView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->isShown()Z

    move-result v23

    if-eqz v23, :cond_2d

    .line 1714
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->scrollPageAndUpdateFocus(Z)V

    .line 1715
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1717
    :cond_2d
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1720
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isCandidateExists()Z

    move-result v23

    if-eqz v23, :cond_31

    .line 1721
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFullCandidate:Z

    move/from16 v23, v0

    if-eqz v23, :cond_30

    .line 1722
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->scrollPageAndUpdateFocus(Z)V

    .line 1726
    :cond_2f
    :goto_a
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1723
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCanReadMore()Z

    move-result v23

    if-eqz v23, :cond_2f

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setFullMode()V

    goto :goto_a

    .line 1728
    :cond_31
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1732
    :sswitch_35
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v23

    if-eqz v23, :cond_33

    .line 1733
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->getCurrentView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->isShown()Z

    move-result v23

    if-eqz v23, :cond_32

    .line 1734
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->scrollPageAndUpdateFocus(Z)V

    .line 1735
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1737
    :cond_32
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1740
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isCandidateExists()Z

    move-result v23

    if-eqz v23, :cond_36

    .line 1741
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFullCandidate:Z

    move/from16 v23, v0

    if-eqz v23, :cond_35

    .line 1742
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->scrollPageAndUpdateFocus(Z)V

    .line 1746
    :cond_34
    :goto_b
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1743
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCanReadMore()Z

    move-result v23

    if-eqz v23, :cond_34

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setFullMode()V

    goto :goto_b

    .line 1748
    :cond_36
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1752
    :sswitch_36
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->switchCharset()V

    .line 1753
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1756
    :sswitch_37
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitAllText()V

    .line 1757
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableEmoji:Z

    move/from16 v23, v0

    if-eqz v23, :cond_37

    .line 1758
    const/16 v23, 0x6b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    .line 1766
    :goto_c
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1760
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolListNonHalf:Z

    move/from16 v23, v0

    if-eqz v23, :cond_38

    .line 1761
    const/16 v23, 0x6d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    goto :goto_c

    .line 1763
    :cond_38
    const/16 v23, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    goto :goto_c

    .line 1778
    :sswitch_38
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v15

    .line 1779
    if-nez v15, :cond_2

    .line 1780
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->sendKeyEventDirect(Landroid/view/KeyEvent;)V

    .line 1781
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1786
    :sswitch_39
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initCommitInfoForWatchCursor()V

    .line 1787
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v23

    if-eqz v23, :cond_39

    .line 1788
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->clear()V

    .line 1790
    :cond_39
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 1791
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v23

    if-eqz v23, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v23

    if-nez v23, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoInsertSpace:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3a

    .line 1792
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitSpaceJustOne()V

    .line 1794
    :cond_3a
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->checkCommitInfo()V

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1797
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    goto/16 :goto_0

    .line 1802
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v23

    if-eqz v23, :cond_3d

    .line 1803
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_3c

    .line 1804
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v23

    if-nez v23, :cond_3b

    .line 1805
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processDownKeyEvent()V

    .line 1807
    :cond_3b
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processRightKeyEvent()V

    goto/16 :goto_0

    .line 1809
    :cond_3c
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    const/16 v23, 0x16

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->processMoveKeyEvent(I)V

    goto/16 :goto_0

    .line 1813
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :cond_3d
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->startConvert(I)V

    goto/16 :goto_0

    .line 1817
    :sswitch_3b
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitAllText()V

    goto/16 :goto_0

    .line 1821
    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->startWebAPI(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)V

    goto/16 :goto_0

    .line 1825
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->startWebAPIGetAgain(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)V

    goto/16 :goto_0

    .line 1829
    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setWebAPIWordsEnabled(Z)V

    .line 1830
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v23

    if-eqz v23, :cond_3e

    .line 1831
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1832
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->remakeCandidatesWebApi()V

    goto/16 :goto_0

    .line 1835
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :cond_3e
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1836
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->remakeCandidatesWebApi()V

    goto/16 :goto_0

    .line 1842
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :sswitch_3f
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v23

    if-eqz v23, :cond_3f

    .line 1843
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1844
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->onWebApiError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1847
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :cond_3f
    instance-of v0, v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1848
    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .end local v5           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->string:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->onWebApiError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1854
    .restart local v5       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :sswitch_40
    move-object/from16 v0, p1

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->callMushRoom(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto/16 :goto_0

    .line 1209
    nop

    :sswitch_data_0
    .sparse-switch
        -0xffffff1 -> :sswitch_3
        -0xfffffe7 -> :sswitch_7
        -0xfffffe5 -> :sswitch_b
        -0xfffffe4 -> :sswitch_8
        -0xfffffe3 -> :sswitch_9
        -0xfffffe1 -> :sswitch_1
        -0xfffffe0 -> :sswitch_a
        -0xfffffdc -> :sswitch_2
        -0xfffffdb -> :sswitch_14
        -0xfffeffd -> :sswitch_12
        -0xfffeffc -> :sswitch_13
        -0xfffd000 -> :sswitch_c
        -0xfffcfff -> :sswitch_d
        -0xfffcffe -> :sswitch_e
        -0xfffcffd -> :sswitch_f
        -0xfffc000 -> :sswitch_10
        -0xfffbfff -> :sswitch_11
        -0xfffb000 -> :sswitch_0
        -0xfffa000 -> :sswitch_4
        -0xfff9fff -> :sswitch_5
        -0xfff9ffe -> :sswitch_6
    .end sparse-switch

    .line 1389
    :sswitch_data_1
    .sparse-switch
        -0xffffffa -> :sswitch_16
        -0xffffff2 -> :sswitch_15
    .end sparse-switch

    .line 1404
    :sswitch_data_2
    .sparse-switch
        0x4 -> :sswitch_17
        0x44 -> :sswitch_18
    .end sparse-switch

    .line 1436
    :sswitch_data_3
    .sparse-switch
        0x4 -> :sswitch_1b
        0x11 -> :sswitch_29
        0x12 -> :sswitch_2a
        0x13 -> :sswitch_20
        0x14 -> :sswitch_1f
        0x15 -> :sswitch_1d
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_1c
        0x3e -> :sswitch_21
        0x3f -> :sswitch_22
        0x42 -> :sswitch_1c
        0x43 -> :sswitch_1a
        0x52 -> :sswitch_19
        0x5c -> :sswitch_23
        0x5d -> :sswitch_24
        0x5e -> :sswitch_28
        0x5f -> :sswitch_27
        0x6f -> :sswitch_1b
        0x70 -> :sswitch_1a
        0x7a -> :sswitch_26
        0x7b -> :sswitch_25
        0xa0 -> :sswitch_1c
    .end sparse-switch

    .line 1601
    :sswitch_data_4
    .sparse-switch
        -0xfffffff -> :sswitch_2b
        -0xffffffe -> :sswitch_3a
        -0xffffffa -> :sswitch_2c
        -0xffffff9 -> :sswitch_30
        -0xffffff5 -> :sswitch_39
        -0xffffff4 -> :sswitch_2e
        -0xffffff3 -> :sswitch_2f
        -0xffffff2 -> :sswitch_38
        -0xffffff0 -> :sswitch_3b
        -0xfffffdd -> :sswitch_2d
        -0xffff000 -> :sswitch_3c
        -0xfffefff -> :sswitch_3e
        -0xfffeffe -> :sswitch_3f
        -0xfffeffa -> :sswitch_3d
        -0xfffe000 -> :sswitch_40
    .end sparse-switch

    .line 1687
    :sswitch_data_5
    .sparse-switch
        0x15 -> :sswitch_33
        0x16 -> :sswitch_33
        0x39 -> :sswitch_31
        0x3a -> :sswitch_31
        0x3b -> :sswitch_31
        0x3c -> :sswitch_31
        0x5c -> :sswitch_34
        0x5d -> :sswitch_35
        0x5e -> :sswitch_37
        0x5f -> :sswitch_36
        0x71 -> :sswitch_32
        0x72 -> :sswitch_32
    .end sparse-switch
.end method

.method private initCommitInfoForWatchCursor()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 4657
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4689
    :cond_0
    return-void

    .line 4661
    :cond_1
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mComposingStartCursor:I

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitStartCursor:I

    .line 4662
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 4665
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitStartCursor:I

    if-ltz v5, :cond_0

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4666
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v1

    .line 4667
    .local v1, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    iget v5, v5, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitConvertType:I

    .line 4668
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitFunfun:I

    .line 4669
    invoke-virtual {v1, v7}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitPredictKey:Ljava/lang/String;

    .line 4670
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4671
    invoke-virtual {v1, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCursorPosition:I

    .line 4675
    :goto_0
    iget-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitExactMatch:Z

    .line 4676
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    .line 4677
    .local v3, inputManager:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
    invoke-virtual {v3, v10}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setUndoKey(Z)V

    .line 4678
    iput-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCanUndo:Z

    .line 4680
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitLayer1StrSegment:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 4681
    invoke-virtual {v1, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v4

    .line 4682
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 4683
    invoke-virtual {v1, v10, v2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v0

    .line 4684
    .local v0, c:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    if-eqz v0, :cond_2

    .line 4685
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitLayer1StrSegment:Ljava/util/ArrayList;

    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget-object v7, v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    iget v8, v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    iget v9, v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    invoke-direct {v6, v7, v8, v9}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4682
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4673
    .end local v0           #c:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    .end local v2           #i:I
    .end local v3           #inputManager:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
    .end local v4           #size:I
    :cond_3
    invoke-virtual {v1, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCursorPosition:I

    goto :goto_0
.end method

.method private isAlphabetAll(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 4432
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->ENGLISH_CHARACTER_ALL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4433
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private isAlphabetLast(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 4421
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->ENGLISH_CHARACTER_LAST:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4422
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private isEnableKanaInput()Z
    .locals 1

    .prologue
    .line 5068
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDirectKana:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHardKeyBoardHidden:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEnglish()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnableL2Converter()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4464
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableConverter:Z

    if-nez v1, :cond_1

    .line 4472
    :cond_0
    :goto_0
    return v0

    .line 4468
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEnglish()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    if-eqz v1, :cond_0

    .line 4472
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEnglishPrediction()Z
    .locals 1

    .prologue
    .line 3418
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEnglish()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHardKeyboard12KeyLongPress(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 5078
    const/4 v0, 0x0

    .line 5079
    .local v0, isLongPress:Z
    sparse-switch p1, :sswitch_data_0

    .line 5089
    :goto_0
    return v0

    .line 5083
    :sswitch_0
    const/4 v0, 0x1

    .line 5084
    goto :goto_0

    .line 5079
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private isRightOrLeftKeyEvents(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 4765
    const/4 v2, 0x0

    .line 4766
    .local v2, ret:Z
    iget v3, p1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->code:I

    const v4, -0xffffff2

    if-ne v3, v4, :cond_2

    .line 4767
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;->keyEvent:Landroid/view/KeyEvent;

    .line 4768
    .local v1, keyEvent:Landroid/view/KeyEvent;
    const/4 v0, 0x0

    .line 4769
    .local v0, keyCode:I
    if-eqz v1, :cond_0

    .line 4770
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4773
    :cond_0
    const/16 v3, 0x15

    if-eq v0, v3, :cond_1

    const/16 v3, 0x16

    if-ne v0, v3, :cond_2

    .line 4775
    :cond_1
    const/4 v2, 0x1

    .line 4778
    .end local v0           #keyCode:I
    .end local v1           #keyEvent:Landroid/view/KeyEvent;
    :cond_2
    return v2
.end method

.method private learnWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    .locals 2
    .parameter "word"

    .prologue
    .line 4075
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    if-nez v0, :cond_1

    iget v0, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    .line 4078
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->learn(Z)Z

    .line 4087
    :goto_0
    return-void

    .line 4081
    :cond_1
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    if-nez v0, :cond_2

    .line 4082
    iget v0, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    .line 4085
    :cond_2
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    goto :goto_0
.end method

.method private onKeyLongPressEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const v6, 0x7fffffff

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4549
    iget-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableHardware12Keyboard:Z

    if-eqz v5, :cond_1

    .line 4550
    const/4 v2, 0x0

    .line 4551
    .local v2, keyCode:I
    if-eqz p1, :cond_0

    .line 4552
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 4554
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .end local v2           #keyCode:I
    :cond_1
    move v3, v4

    .line 4582
    :cond_2
    :goto_0
    return v3

    .line 4556
    .restart local v2       #keyCode:I
    :sswitch_0
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableMushroom:Z

    if-eqz v4, :cond_2

    .line 4557
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->callMushRoom(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    goto :goto_0

    .line 4562
    :sswitch_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->requestHideSelf(I)V

    .line 4563
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4564
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    const-class v5, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4565
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4566
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v4, v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4570
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 4571
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4572
    .local v0, inputConnection:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 4573
    invoke-interface {v0, v6, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 4554
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method private onKeyUpEvent(Landroid/view/KeyEvent;)V
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4483
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 4485
    .local v3, key:I
    iget-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableHardware12Keyboard:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isDirectInputMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 4486
    invoke-direct {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isHardKeyboard12KeyLongPress(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x100

    if-nez v7, :cond_0

    .line 4488
    sparse-switch v3, :sswitch_data_0

    .line 4537
    :cond_0
    :goto_0
    return-void

    .line 4490
    :sswitch_0
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4491
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->switchSymbolList()V

    goto :goto_0

    .line 4492
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v7

    check-cast v7, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    invoke-virtual {v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getKeyMode()I

    move-result v7

    if-nez v7, :cond_2

    .line 4495
    invoke-direct {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->startConvert(I)V

    goto :goto_0

    .line 4497
    :cond_2
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v7

    check-cast v7, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    const/16 v8, -0xde

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->onKey(I[I)V

    goto :goto_0

    .line 4503
    :sswitch_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v7

    check-cast v7, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    invoke-virtual {v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->showInputModeSwitchDialog()Z

    goto :goto_0

    .line 4507
    :sswitch_2
    const/16 v5, 0x70

    .line 4508
    .local v5, newKeyCode:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v0

    .line 4509
    .local v0, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v0, v8}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v1

    .line 4510
    .local v1, composingTextSize:I
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/2addr v7, v1

    if-lez v7, :cond_4

    .line 4511
    invoke-virtual {v0, v8}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v7

    add-int/lit8 v8, v1, -0x1

    if-le v7, v8, :cond_3

    .line 4512
    const/16 v5, 0x43

    .line 4514
    :cond_3
    new-instance v4, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    invoke-direct {v4, v7, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 4515
    .local v4, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4516
    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->sendKeyEventDirect(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 4519
    .end local v4           #keyEvent:Landroid/view/KeyEvent;
    :cond_4
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 4520
    .local v2, inputConnection:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_6

    .line 4521
    invoke-interface {v2, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 4522
    .local v6, text:Ljava/lang/CharSequence;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 4523
    :cond_5
    const/16 v5, 0x43

    .line 4526
    .end local v6           #text:Ljava/lang/CharSequence;
    :cond_6
    new-instance v4, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    invoke-direct {v4, v7, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 4527
    .restart local v4       #keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->sendKeyEventDirect(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 4488
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method private processDelKeyEventForUndo(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2934
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2935
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->undo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2936
    const/4 v0, 0x1

    .line 2940
    :goto_0
    return v0

    .line 2939
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    .line 2940
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processDownKeyEvent()V
    .locals 2

    .prologue
    .line 2898
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 2899
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2900
    return-void
.end method

.method private processEndKeyEvent()V
    .locals 2

    .prologue
    .line 2922
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 2923
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2924
    return-void
.end method

.method private processFlickInputChar(Ljava/lang/String;)V
    .locals 4
    .parameter "input"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4813
    if-nez p1, :cond_0

    .line 4838
    :goto_0
    return-void

    .line 4817
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitConvertingText()V

    .line 4819
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4820
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 4825
    :cond_1
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCaps:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getShiftKeyState(Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 4826
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4827
    .local v0, top:C
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4828
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    .line 4831
    .end local v0           #top:C
    :cond_2
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    invoke-direct {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z

    .line 4833
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 4834
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 4835
    const/4 v1, 0x3

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 4837
    invoke-direct {p0, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto :goto_0
.end method

.method private processHardware12Keyboard(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyEvent"

    .prologue
    .line 5099
    const/4 v2, 0x0

    .line 5100
    .local v2, ret:Z
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableHardware12Keyboard:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 5101
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 5103
    .local v1, keyCode:I
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isHardKeyboard12KeyLongPress(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5104
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 5105
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    .line 5107
    :cond_0
    const/4 v2, 0x1

    .line 5118
    .end local v1           #keyCode:I
    :cond_1
    :goto_0
    return v2

    .line 5109
    .restart local v1       #keyCode:I
    :cond_2
    sget-object v3, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->HW12KEYBOARD_KEYCODE_REPLACE_TABLE:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5110
    .local v0, code:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 5111
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 5112
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->onKey(I[I)V

    .line 5114
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private processHardwareKeyboardInputChar(Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V
    .locals 8
    .parameter "str"
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2661
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableKanaInput()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isFullTenKeyCode(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2662
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterKanaRoman:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 2667
    .local v3, preConverter:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;
    :goto_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2668
    const/4 v0, 0x0

    .line 2669
    .local v0, commit:Z
    if-nez v3, :cond_2

    .line 2670
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnglishAutoCommitDelimiter:Ljava/util/regex/Pattern;

    iget-object v5, p1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2671
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2672
    invoke-direct {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 2673
    const/4 v0, 0x1

    .line 2675
    :cond_0
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z

    .line 2681
    .end local v2           #m:Ljava/util/regex/Matcher;
    :goto_1
    if-eqz v0, :cond_3

    .line 2682
    invoke-direct {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 2711
    .end local v0           #commit:Z
    :goto_2
    return-void

    .line 2664
    .end local v3           #preConverter:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getPreConverter()Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    move-result-object v3

    .restart local v3       #preConverter:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;
    goto :goto_0

    .line 2677
    .restart local v0       #commit:Z
    :cond_2
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z

    .line 2678
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v4

    invoke-interface {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/LetterConverter;->convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)Z

    goto :goto_1

    .line 2684
    :cond_3
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 2685
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2686
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 2687
    invoke-direct {p0, v6, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto :goto_2

    .line 2690
    .end local v0           #commit:Z
    :cond_4
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z

    .line 2691
    const/4 v1, 0x1

    .line 2692
    .local v1, completed:Z
    if-eqz v3, :cond_5

    .line 2693
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v4

    invoke-interface {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/LetterConverter;->convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)Z

    move-result v1

    .line 2696
    :cond_5
    if-eqz v1, :cond_8

    .line 2697
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableKanaInput()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2699
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitTextWithoutLastKana()V

    goto :goto_2

    .line 2701
    :cond_6
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEnglish()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2702
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitTextWithoutLastAlphabet()V

    goto :goto_2

    .line 2704
    :cond_7
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    goto :goto_2

    .line 2708
    :cond_8
    invoke-direct {p0, v6, v7, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    goto :goto_2
.end method

.method private processHardwareKeyboardSpaceKey(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2605
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 2606
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    .line 2608
    .local v1, inputViewManager:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2609
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->switchCharset()V

    .line 2651
    .end local v0           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :goto_0
    return-void

    .line 2610
    .restart local v0       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2611
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitAllText()V

    .line 2612
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableEmoji:Z

    if-eqz v2, :cond_1

    .line 2613
    const/16 v2, 0x6b

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    goto :goto_0

    .line 2614
    :cond_1
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolListNonHalf:Z

    if-nez v2, :cond_2

    .line 2615
    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    goto :goto_0

    .line 2617
    :cond_2
    const/16 v2, 0x70

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    goto :goto_0

    .line 2619
    :cond_3
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2621
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 2622
    const-string v2, " "

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Ljava/lang/String;)V

    .line 2623
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    .line 2624
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->breakSequence()V

    .line 2631
    :goto_1
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    goto :goto_0

    .line 2626
    :cond_4
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initCommitInfoForWatchCursor()V

    .line 2627
    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 2628
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitSpaceJustOne()V

    .line 2629
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->checkCommitInfo()V

    goto :goto_1

    .line 2632
    :cond_5
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2633
    instance-of v2, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    if-eqz v2, :cond_7

    .line 2634
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2635
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processDownKeyEvent()V

    .line 2637
    :cond_6
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processRightKeyEvent()V

    goto :goto_0

    .line 2639
    :cond_7
    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    .end local v0           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->processMoveKeyEvent(I)V

    goto :goto_0

    .line 2643
    .restart local v0       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :cond_8
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v2

    if-nez v2, :cond_9

    .line 2644
    const-string v2, " "

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    .line 2646
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->breakSequence()V

    goto/16 :goto_0

    .line 2648
    :cond_9
    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->startConvert(I)V

    goto/16 :goto_0
.end method

.method private processHomeKeyEvent()V
    .locals 2

    .prologue
    .line 2914
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 2915
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2916
    return-void
.end method

.method private processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 1919
    if-nez p1, :cond_0

    .line 1920
    const/16 v22, 0x0

    .line 2596
    :goto_0
    return v22

    .line 1922
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    .line 1923
    .local v14, key:I
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v3

    .line 1924
    .local v3, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v13

    .line 1925
    .local v13, inputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v6

    .line 1926
    .local v6, converter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isConvertingForFuncKey()Z

    move-result v7

    .line 1927
    .local v7, convertingForFuncKey:Z
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKey(Z)V

    .line 1929
    if-eqz v7, :cond_1

    .line 1930
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v5

    .line 1931
    .local v5, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v23, v0

    add-int v16, v22, v23

    .line 1932
    .local v16, len:I
    if-lez v16, :cond_5

    .line 1939
    sparse-switch v14, :sswitch_data_0

    .line 1961
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1974
    .end local v5           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v16           #len:I
    :cond_1
    :goto_1
    :sswitch_0
    const/16 v22, 0x44

    move/from16 v0, v22

    if-ne v0, v14, :cond_8

    .line 1980
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isInputViewShown()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1981
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1983
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->switchCharset()V

    .line 1998
    :cond_2
    :goto_2
    const/16 v22, 0x1

    goto :goto_0

    .line 1949
    .restart local v5       #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .restart local v16       #len:I
    :sswitch_1
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKeyEijiType(I)V

    goto :goto_1

    .line 1957
    :sswitch_2
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKey(Z)V

    .line 1958
    const/16 v22, 0x1

    goto :goto_0

    .line 1964
    :cond_3
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKey(Z)V

    .line 1965
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isThroughKeyCode(I)Z

    move-result v22

    if-nez v22, :cond_4

    const/16 v22, 0x1

    goto :goto_0

    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1970
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 1986
    .end local v5           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v16           #len:I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v22

    if-nez v22, :cond_2

    .line 1987
    invoke-interface {v13}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->closing()V

    .line 1988
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->requestHideSelf(I)V

    goto :goto_2

    .line 1993
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v22

    if-nez v22, :cond_2

    .line 1994
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v21

    .line 1995
    .local v21, switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    invoke-virtual/range {v21 .. v21}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->requestShowSelf()V

    goto :goto_2

    .line 2002
    .end local v21           #switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 2003
    if-eqz v7, :cond_9

    .line 2004
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKey(Z)V

    .line 2006
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isTenKeyCode(I)Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v22

    if-nez v22, :cond_a

    .line 2009
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2011
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 2012
    const/16 v22, 0x1d

    move/from16 v0, v22

    if-eq v14, v0, :cond_b

    const/16 v22, 0x22

    move/from16 v0, v22

    if-eq v14, v0, :cond_b

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-eq v14, v0, :cond_b

    const/16 v22, 0x32

    move/from16 v0, v22

    if-eq v14, v0, :cond_b

    const/16 v22, 0x34

    move/from16 v0, v22

    if-eq v14, v0, :cond_b

    const/16 v22, 0x35

    move/from16 v0, v22

    if-eq v14, v0, :cond_b

    const/16 v22, 0x36

    move/from16 v0, v22

    if-ne v14, v0, :cond_e

    .line 2014
    :cond_b
    if-eqz v7, :cond_c

    .line 2015
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2017
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v5

    .line 2018
    .restart local v5       #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v23, v0

    add-int v22, v22, v23

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 2019
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2021
    :cond_d
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2026
    .end local v5           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 2027
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v4

    .line 2029
    .local v4, charCode:I
    if-eqz v4, :cond_f

    const/high16 v22, -0x8000

    and-int v22, v22, v4

    if-nez v22, :cond_f

    const v22, 0xef00

    move/from16 v0, v22

    if-ne v4, v0, :cond_10

    .line 2030
    :cond_f
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2034
    .end local v4           #charCode:I
    :cond_10
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitConvertingText()V

    .line 2036
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    .line 2040
    .local v9, edit:Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v22

    if-nez v22, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v22

    if-nez v22, :cond_16

    .line 2042
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCaps:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getShiftKeyState(Landroid/view/inputmethod/EditorInfo;)I

    move-result v19

    .line 2045
    .local v19, shift:I
    :goto_3
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableKanaInput()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 2046
    const/16 v19, 0x0

    .line 2049
    :cond_11
    if-eqz v19, :cond_13

    const/16 v22, 0x1d

    move/from16 v0, v22

    if-lt v14, v0, :cond_13

    const/16 v22, 0x36

    move/from16 v0, v22

    if-gt v14, v0, :cond_13

    .line 2051
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2204
    .end local v19           #shift:I
    .local v20, str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :goto_4
    if-nez v20, :cond_1a

    .line 2205
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2042
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_12
    const/16 v19, 0x0

    goto :goto_3

    .line 2054
    .restart local v19       #shift:I
    :cond_13
    packed-switch v14, :pswitch_data_0

    .line 2082
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableKanaInput()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 2083
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    .line 2085
    .restart local v4       #charCode:I
    const/16 v22, 0x41

    move/from16 v0, v22

    if-lt v4, v0, :cond_14

    const/16 v22, 0x5a

    move/from16 v0, v22

    if-gt v4, v0, :cond_14

    .line 2086
    add-int/lit8 v22, v4, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto :goto_4

    .line 2058
    .end local v4           #charCode:I
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :pswitch_1
    const/16 v22, 0x5e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2059
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto :goto_4

    .line 2063
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :pswitch_2
    const/16 v22, 0x40

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2064
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto :goto_4

    .line 2068
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :pswitch_3
    const/16 v22, 0x5b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2069
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto :goto_4

    .line 2073
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :pswitch_4
    const/16 v22, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2074
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto :goto_4

    .line 2078
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :pswitch_5
    const/16 v22, 0x5d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2079
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto :goto_4

    .line 2088
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    .restart local v4       #charCode:I
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto :goto_4

    .line 2091
    .end local v4           #charCode:I
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto :goto_4

    .line 2096
    .end local v19           #shift:I
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v22

    if-nez v22, :cond_18

    .line 2097
    sparse-switch v14, :sswitch_data_1

    .line 2176
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2177
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2102
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_3
    const/16 v20, 0x0

    .line 2103
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2107
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_4
    const/16 v22, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2108
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2112
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_5
    const/16 v22, 0x26

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2113
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2117
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_6
    const/16 v22, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2118
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2122
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_7
    const/16 v22, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2123
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2127
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_8
    const/16 v22, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2128
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2130
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableKanaInput()Z

    move-result v22

    if-eqz v22, :cond_17

    .line 2133
    const/16 v22, 0x3092

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2137
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_17
    const/16 v20, 0x0

    .line 2139
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2143
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_a
    const/16 v22, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2144
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2148
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_b
    const/16 v22, 0x7e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2149
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2153
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_c
    const/16 v22, 0x60

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2154
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2158
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_d
    const/16 v22, 0x7b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2159
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2163
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_e
    const/16 v22, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2164
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2168
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_f
    const/16 v22, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2169
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2173
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_10
    const/16 v22, 0x7d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2174
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2179
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v22

    if-nez v22, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19

    .line 2180
    sparse-switch v14, :sswitch_data_2

    .line 2187
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .line 2188
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2184
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_11
    const/16 v20, 0x0

    .line 2185
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2191
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_19
    sparse-switch v14, :sswitch_data_3

    .line 2198
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->createStrSegment(I)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v20

    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2195
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :sswitch_12
    const/16 v20, 0x0

    .line 2196
    .restart local v20       #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    goto/16 :goto_4

    .line 2208
    :cond_1a
    if-eqz v7, :cond_1b

    .line 2210
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasRequiredFunfunSpace:Z

    .line 2211
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initCommitInfoForWatchCursor()V

    .line 2212
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 2213
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->checkCommitInfo()V

    .line 2214
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    .line 2216
    :cond_1b
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKeyEijiType(I)V

    .line 2217
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKey(Z)V

    .line 2220
    move-object/from16 v0, v20

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c

    .line 2221
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processHardwareKeyboardInputChar(Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V

    .line 2222
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2224
    :cond_1c
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 2225
    move-object/from16 v0, v20

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Ljava/lang/String;)V

    .line 2226
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 2227
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2230
    .end local v9           #edit:Landroid/view/inputmethod/EditorInfo;
    .end local v20           #str:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_1d
    const/16 v22, 0x3e

    move/from16 v0, v22

    if-ne v14, v0, :cond_1e

    .line 2231
    invoke-direct/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processHardwareKeyboardSpaceKey(Landroid/view/KeyEvent;)V

    .line 2232
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2234
    :cond_1e
    const/16 v22, 0x52

    move/from16 v0, v22

    if-ne v14, v0, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableMushroom:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 2235
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->callMushRoom(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    .line 2236
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2238
    :cond_1f
    const/16 v22, 0x3f

    move/from16 v0, v22

    if-ne v14, v0, :cond_22

    .line 2240
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initCommitInfoForWatchCursor()V

    .line 2241
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 2242
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->checkCommitInfo()V

    .line 2243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableEmoji:Z

    move/from16 v22, v0

    if-eqz v22, :cond_20

    .line 2244
    const/16 v22, 0x6b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    .line 2250
    :goto_5
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2245
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSymbolListNonHalf:Z

    move/from16 v22, v0

    if-nez v22, :cond_21

    .line 2246
    const/16 v22, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    goto :goto_5

    .line 2248
    :cond_21
    const/16 v22, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    goto :goto_5

    .line 2251
    :cond_22
    const/16 v22, 0xcc

    move/from16 v0, v22

    if-ne v14, v0, :cond_24

    .line 2252
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isInputViewShown()Z

    move-result v22

    if-eqz v22, :cond_23

    .line 2253
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->switchCharset()V

    .line 2254
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2256
    :cond_23
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2259
    :cond_24
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v14, v0, :cond_25

    move-object/from16 v22, v13

    .line 2260
    check-cast v22, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual/range {v22 .. v22}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getKeyboardView()Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-result-object v15

    .line 2261
    .local v15, keyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;
    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->handleBack()Z

    move-result v22

    if-eqz v22, :cond_25

    .line 2262
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2266
    .end local v15           #keyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;
    :cond_25
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v5

    .line 2269
    .restart local v5       #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v23, v0

    add-int v22, v22, v23

    if-lez v22, :cond_40

    .line 2270
    sparse-switch v14, :sswitch_data_4

    .line 2488
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isThroughKeyCode(I)Z

    move-result v22

    if-nez v22, :cond_3f

    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2272
    :sswitch_13
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v22

    if-eqz v22, :cond_27

    .line 2273
    const/16 v22, 0x7a

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2281
    :cond_26
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2275
    :cond_27
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v16

    .line 2276
    .restart local v16       #len:I
    move-object/from16 v0, p0

    iget v11, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2277
    .local v11, funfunlen:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6
    add-int v22, v16, v11

    move/from16 v0, v22

    if-gt v12, v0, :cond_26

    .line 2278
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processLeftKeyEvent()V

    .line 2277
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 2284
    .end local v11           #funfunlen:I
    .end local v12           #i:I
    .end local v16           #len:I
    :sswitch_14
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v22

    if-eqz v22, :cond_29

    .line 2285
    const/16 v22, 0x7b

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2307
    :cond_28
    :goto_7
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2287
    :cond_29
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v18

    .line 2288
    .local v18, pos:I
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v17

    .line 2289
    .local v17, maxlen:I
    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_28

    .line 2290
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v22, v0

    if-nez v22, :cond_28

    .line 2292
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 2293
    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_28

    .line 2301
    :cond_2a
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processRightKeyEvent()V

    .line 2302
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 2297
    :cond_2b
    add-int/lit8 v22, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_2a

    goto :goto_7

    .line 2311
    .end local v17           #maxlen:I
    .end local v18           #pos:I
    :sswitch_15
    invoke-direct/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processDelKeyEventForUndo(Landroid/view/KeyEvent;)Z

    move-result v22

    if-eqz v22, :cond_2c

    .line 2312
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2315
    :cond_2c
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 2316
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isConvertState()Z

    move-result v22

    if-nez v22, :cond_2d

    if-eqz v7, :cond_2e

    .line 2317
    :cond_2d
    const/16 v22, 0x1

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 2319
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 2320
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2321
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 2347
    :goto_9
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    .line 2348
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2323
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v22, v0

    if-lez v22, :cond_2f

    .line 2324
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2325
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    goto :goto_9

    .line 2327
    :cond_2f
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v22

    if-eqz v22, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_31

    .line 2331
    :cond_30
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2333
    :cond_31
    const/16 v22, 0x70

    move/from16 v0, v22

    if-ne v14, v0, :cond_32

    .line 2334
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->deleteForward(I)I

    goto :goto_9

    .line 2336
    :cond_32
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_33

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v22

    if-eqz v22, :cond_33

    .line 2338
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 2339
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2341
    :cond_33
    const/16 v22, 0x1

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->delete(IZ)I

    goto/16 :goto_9

    .line 2353
    :sswitch_16
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->getViewType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_35

    .line 2354
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setCandidateIsViewTypeFull(Z)V

    .line 2372
    :cond_34
    :goto_a
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2356
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isConvertState()Z

    move-result v22

    if-nez v22, :cond_36

    if-nez v7, :cond_36

    .line 2357
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 2358
    if-eqz v6, :cond_34

    .line 2359
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getFilesDirPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->init(Ljava/lang/String;)V

    goto :goto_a

    .line 2362
    :cond_36
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    .line 2363
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 2364
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2365
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 2366
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 2367
    const/16 v22, 0x1

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 2369
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto :goto_a

    .line 2375
    :sswitch_17
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v22

    if-nez v22, :cond_37

    .line 2376
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 2377
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2379
    :cond_37
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processLeftKeyEvent()V

    .line 2380
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2384
    :sswitch_18
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v22

    if-nez v22, :cond_39

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_38

    .line 2386
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 2391
    :cond_38
    :goto_b
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2389
    :cond_39
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processRightKeyEvent()V

    goto :goto_b

    .line 2394
    :sswitch_19
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processDownKeyEvent()V

    .line 2395
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2398
    :sswitch_1a
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v22

    if-eqz v22, :cond_3a

    .line 2399
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processUpKeyEvent()V

    .line 2401
    :cond_3a
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2406
    :sswitch_1b
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v22

    if-eqz v22, :cond_3b

    .line 2407
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->selectFocusCandidate()V

    .line 2408
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2410
    :cond_3b
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v22

    if-nez v22, :cond_3c

    .line 2411
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v23, v0

    add-int v8, v22, v23

    .line 2412
    .local v8, cursor:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ge v8, v0, :cond_3c

    .line 2413
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2417
    .end local v8           #cursor:I
    :cond_3c
    move-object/from16 v0, p0

    iget v10, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2418
    .local v10, funfun:I
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasRequiredFunfunSpace:Z

    .line 2420
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initCommitInfoForWatchCursor()V

    .line 2421
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 2422
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->checkCommitInfo()V

    .line 2424
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v22

    if-eqz v22, :cond_3d

    .line 2425
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 2428
    :cond_3d
    if-lez v10, :cond_3e

    .line 2429
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 2430
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->breakSequence()V

    .line 2432
    :cond_3e
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    .line 2433
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2436
    .end local v10           #funfun:I
    :sswitch_1c
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->converterComposingText(I)V

    .line 2437
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2440
    :sswitch_1d
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->converterComposingText(I)V

    .line 2441
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2444
    :sswitch_1e
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->converterComposingText(I)V

    .line 2445
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2448
    :sswitch_1f
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConvertingForFuncKeyEijiType()I

    move-result v22

    packed-switch v22, :pswitch_data_1

    .line 2459
    :pswitch_6
    const/16 v22, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKeyEijiType(I)V

    .line 2462
    :goto_c
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConvertingForFuncKeyEijiType()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->converterComposingText(I)V

    .line 2463
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2450
    :pswitch_7
    const/16 v22, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKeyEijiType(I)V

    goto :goto_c

    .line 2454
    :pswitch_8
    const/16 v22, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKeyEijiType(I)V

    goto :goto_c

    .line 2466
    :sswitch_20
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConvertingForFuncKeyEijiType()I

    move-result v22

    packed-switch v22, :pswitch_data_2

    .line 2477
    :pswitch_9
    const/16 v22, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKeyEijiType(I)V

    .line 2480
    :goto_d
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConvertingForFuncKeyEijiType()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->converterComposingText(I)V

    .line 2481
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2468
    :pswitch_a
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKeyEijiType(I)V

    goto :goto_d

    .line 2472
    :pswitch_b
    const/16 v22, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConvertingForFuncKeyEijiType(I)V

    goto :goto_d

    .line 2484
    :sswitch_21
    invoke-direct/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processTabKeyEvent(Landroid/view/KeyEvent;)V

    .line 2485
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2488
    :cond_3f
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2492
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isCandidateExists()Z

    move-result v22

    if-eqz v22, :cond_4a

    .line 2494
    sparse-switch v14, :sswitch_data_5

    .line 2569
    :cond_41
    invoke-virtual/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processKeyEventNoInputCandidateShown(Landroid/view/KeyEvent;)Z

    move-result v22

    goto/16 :goto_0

    .line 2496
    :sswitch_22
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v22

    if-eqz v22, :cond_42

    .line 2497
    const/16 v22, 0x7a

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2499
    :cond_42
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2502
    :sswitch_23
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v22

    if-eqz v22, :cond_43

    .line 2503
    const/16 v22, 0x7b

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2505
    :cond_43
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2508
    :sswitch_24
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v22

    if-eqz v22, :cond_44

    .line 2509
    const/16 v22, 0x15

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2510
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2512
    :cond_44
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v22

    if-eqz v22, :cond_45

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getFilesDirPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->init(Ljava/lang/String;)V

    .line 2516
    :cond_45
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 2517
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    .line 2518
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2521
    :sswitch_25
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v22

    if-eqz v22, :cond_46

    .line 2522
    const/16 v22, 0x16

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2523
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2525
    :cond_46
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    move/from16 v22, v0

    if-eqz v22, :cond_48

    .line 2526
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2527
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 2532
    :cond_47
    :goto_e
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 2533
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    .line 2535
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    move/from16 v22, v0

    if-eqz v22, :cond_49

    .line 2536
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2528
    :cond_48
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v22

    if-eqz v22, :cond_47

    .line 2530
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getFilesDirPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->init(Ljava/lang/String;)V

    goto :goto_e

    .line 2538
    :cond_49
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2542
    :sswitch_26
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processDownKeyEvent()V

    .line 2543
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2546
    :sswitch_27
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v22

    if-eqz v22, :cond_41

    .line 2547
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processUpKeyEvent()V

    .line 2548
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2555
    :sswitch_28
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v22

    if-eqz v22, :cond_41

    .line 2556
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->selectFocusCandidate()V

    .line 2557
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2562
    :sswitch_29
    invoke-direct/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processTabKeyEvent(Landroid/view/KeyEvent;)V

    .line 2563
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2571
    :cond_4a
    sparse-switch v14, :sswitch_data_6

    .line 2596
    :cond_4b
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2578
    :sswitch_2a
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isInputViewShown()Z

    move-result v22

    if-eqz v22, :cond_4b

    .line 2579
    invoke-interface {v13}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->closing()V

    .line 2580
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->requestHideSelf(I)V

    .line 2581
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2586
    :sswitch_2b
    invoke-direct/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processDelKeyEventForUndo(Landroid/view/KeyEvent;)Z

    move-result v22

    if-eqz v22, :cond_4b

    .line 2587
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1939
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x44 -> :sswitch_2
        0x6f -> :sswitch_1
        0x88 -> :sswitch_1
        0x89 -> :sswitch_1
        0x8a -> :sswitch_1
        0x8b -> :sswitch_0
        0x8c -> :sswitch_0
        0xa0 -> :sswitch_1
    .end sparse-switch

    .line 2054
    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 2097
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_9
        0x9 -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x44 -> :sswitch_3
        0x45 -> :sswitch_a
        0x46 -> :sswitch_b
        0x47 -> :sswitch_c
        0x48 -> :sswitch_d
        0x49 -> :sswitch_10
        0x4a -> :sswitch_e
        0x4b -> :sswitch_f
    .end sparse-switch

    .line 2180
    :sswitch_data_2
    .sparse-switch
        0x1f -> :sswitch_11
        0x2f -> :sswitch_11
    .end sparse-switch

    .line 2191
    :sswitch_data_3
    .sparse-switch
        0x1f -> :sswitch_12
        0x2f -> :sswitch_12
    .end sparse-switch

    .line 2270
    :sswitch_data_4
    .sparse-switch
        0x4 -> :sswitch_16
        0x13 -> :sswitch_1a
        0x14 -> :sswitch_19
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x17 -> :sswitch_1b
        0x3d -> :sswitch_21
        0x42 -> :sswitch_1b
        0x43 -> :sswitch_15
        0x6f -> :sswitch_16
        0x70 -> :sswitch_15
        0x7a -> :sswitch_13
        0x7b -> :sswitch_14
        0x88 -> :sswitch_1c
        0x89 -> :sswitch_1d
        0x8a -> :sswitch_1e
        0x8b -> :sswitch_1f
        0x8c -> :sswitch_20
        0xa0 -> :sswitch_1b
    .end sparse-switch

    .line 2448
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2466
    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2494
    :sswitch_data_5
    .sparse-switch
        0x13 -> :sswitch_27
        0x14 -> :sswitch_26
        0x15 -> :sswitch_24
        0x16 -> :sswitch_25
        0x17 -> :sswitch_28
        0x3d -> :sswitch_29
        0x42 -> :sswitch_28
        0x7a -> :sswitch_22
        0x7b -> :sswitch_23
        0xa0 -> :sswitch_28
    .end sparse-switch

    .line 2571
    :sswitch_data_6
    .sparse-switch
        0x4 -> :sswitch_2a
        0x43 -> :sswitch_2b
        0x6f -> :sswitch_2a
        0x70 -> :sswitch_2b
    .end sparse-switch
.end method

.method private processLeftKeyEvent()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2776
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 2777
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2778
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2809
    :goto_0
    return-void

    .line 2782
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v1

    .line 2783
    .local v1, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isConvertState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2784
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEisuKana()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2785
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 2788
    :cond_1
    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 2789
    invoke-virtual {v1, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->moveCursor(II)I

    .line 2806
    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCount:I

    .line 2807
    const/4 v2, 0x3

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 2808
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    invoke-direct {p0, v2, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    goto :goto_0

    .line 2791
    :cond_3
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    if-eqz v2, :cond_4

    .line 2792
    invoke-virtual {v1, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->moveCursor(II)I

    goto :goto_1

    .line 2794
    :cond_4
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    if-eqz v2, :cond_5

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    if-lez v2, :cond_5

    .line 2795
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2796
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    goto :goto_1

    .line 2798
    :cond_5
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2799
    invoke-virtual {v1, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->moveCursor(II)I

    goto :goto_1

    .line 2801
    :cond_6
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    goto :goto_1
.end method

.method private processRightKeyEvent()V
    .locals 20

    .prologue
    .line 2815
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v4

    .line 2816
    .local v4, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2817
    const/16 v17, 0x16

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2892
    :goto_0
    return-void

    .line 2821
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    .line 2822
    .local v11, layer:I
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v7

    .line 2823
    .local v7, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isConvertState()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2824
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v16

    .line 2825
    .local v16, textSize:I
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 2826
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 2827
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2828
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 2829
    const/4 v11, 0x1

    .line 2831
    new-instance v13, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 2832
    .local v13, state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v13, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    .line 2833
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 2888
    .end local v13           #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    .end local v16           #textSize:I
    :cond_2
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCount:I

    .line 2889
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 2891
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    goto/16 :goto_0

    .line 2835
    .restart local v16       #textSize:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEisuKana()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2836
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 2838
    :cond_4
    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->moveCursor(II)I

    goto :goto_1

    .line 2841
    .end local v16           #textSize:I
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 2843
    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->moveCursor(II)I

    goto :goto_1

    .line 2844
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2845
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2847
    .local v6, composingString:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIsInputSequenced:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isAlphabetAll(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 2849
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    .line 2850
    .local v12, size:I
    const/4 v8, 0x0

    .line 2851
    .local v8, count:I
    const/4 v5, 0x0

    .line 2852
    .local v5, change:Z
    const/4 v9, 0x0

    .line 2853
    .local v9, infront:Z
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v12, :cond_c

    .line 2854
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isAlphabetLast(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2855
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    .line 2856
    .local v10, last:I
    const/4 v5, 0x0

    .line 2857
    add-int/lit8 v17, v10, -0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2858
    .local v3, a:C
    const-string v17, "n"

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    if-eq v3, v0, :cond_8

    const-string v17, "N"

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    if-ne v3, v0, :cond_9

    .line 2859
    :cond_8
    const/4 v5, 0x1

    .line 2866
    :goto_3
    const/16 v17, 0x1

    add-int/lit8 v18, v10, -0x1

    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->deleteStrSegment(III)V

    .line 2867
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 2871
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2853
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2860
    :cond_9
    const-string v17, "y"

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    if-eq v3, v0, :cond_a

    const-string v17, "Y"

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    if-ne v3, v0, :cond_b

    .line 2861
    :cond_a
    const/4 v9, 0x1

    goto :goto_3

    .line 2863
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 2876
    .end local v3           #a:C
    .end local v10           #last:I
    :cond_c
    if-eqz v5, :cond_d

    if-nez v9, :cond_d

    .line 2877
    const-string v14, "\u3093"

    .line 2878
    .local v14, str:Ljava/lang/String;
    move-object v15, v7

    .line 2879
    .local v15, text:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/16 v17, 0x0

    const/16 v18, 0x1

    new-instance v19, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->insertStrSegment(IILjp/co/omronsoft/iwnnime/ml/StrSegment;)V

    .line 2883
    .end local v5           #change:Z
    .end local v8           #count:I
    .end local v9           #infront:Z
    .end local v12           #size:I
    .end local v14           #str:Ljava/lang/String;
    .end local v15           #text:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2884
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    goto/16 :goto_1
.end method

.method private processSoftKeyboardCode([C)V
    .locals 9
    .parameter "chars"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3893
    if-nez p1, :cond_0

    .line 3955
    :goto_0
    return-void

    .line 3897
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v2

    .line 3898
    .local v2, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    aget-char v5, p1, v8

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    aget-char v5, p1, v8

    const/16 v6, 0x3000

    if-ne v5, v6, :cond_7

    .line 3899
    :cond_1
    invoke-virtual {v2, v8}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 3900
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v5

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    .line 3901
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Ljava/lang/String;)V

    .line 3902
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->breakSequence()V

    .line 3925
    :goto_1
    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableAutoDeleteSpace:Z

    goto :goto_0

    .line 3904
    :cond_2
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3905
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initCommitInfoForWatchCursor()V

    .line 3906
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 3907
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitSpaceJustOne()V

    .line 3908
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->checkCommitInfo()V

    goto :goto_1

    .line 3910
    :cond_3
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3911
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 3912
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    instance-of v5, v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    if-eqz v5, :cond_5

    .line 3913
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3914
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processDownKeyEvent()V

    .line 3916
    :cond_4
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processRightKeyEvent()V

    goto :goto_1

    .line 3918
    :cond_5
    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    .end local v0           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    const/16 v5, 0x16

    invoke-virtual {v0, v5}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->processMoveKeyEvent(I)V

    goto :goto_1

    .line 3921
    :cond_6
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->startConvert(I)V

    goto :goto_1

    .line 3927
    :cond_7
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitConvertingText()V

    .line 3930
    const/4 v1, 0x0

    .line 3931
    .local v1, commit:Z
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    iget v5, v5, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    if-ne v5, v7, :cond_8

    .line 3934
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnglishAutoCommitDelimiter:Ljava/util/regex/Pattern;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3935
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3936
    const/4 v1, 0x1

    .line 3940
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_8
    if-eqz v1, :cond_9

    .line 3941
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 3943
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    invoke-direct {v5, p1}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>([C)V

    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z

    .line 3944
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    goto/16 :goto_0

    .line 3946
    :cond_9
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    invoke-direct {v5, p1}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>([C)V

    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z

    .line 3947
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getPreConverter()Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    move-result-object v4

    .line 3948
    .local v4, preConverter:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;
    if-eqz v4, :cond_a

    .line 3949
    invoke-interface {v4, v2}, Ljp/co/omronsoft/iwnnime/ml/LetterConverter;->convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)Z

    .line 3950
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 3952
    :cond_a
    invoke-direct {p0, v7, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto/16 :goto_0
.end method

.method private processSoftKeyboardCodeWithoutConversion([C)V
    .locals 4
    .parameter "chars"

    .prologue
    const/4 v3, 0x1

    .line 3866
    if-nez p1, :cond_0

    .line 3885
    :goto_0
    return-void

    .line 3870
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v1

    .line 3871
    .local v1, text:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    invoke-direct {v2, p1}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>([C)V

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z

    .line 3873
    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isAlphabetLast(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3875
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    goto :goto_0

    .line 3877
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getPreConverter()Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    move-result-object v2

    invoke-interface {v2, v1}, Ljp/co/omronsoft/iwnnime/ml/LetterConverter;->convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)Z

    move-result v0

    .line 3878
    .local v0, completed:Z
    if-eqz v0, :cond_2

    .line 3879
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitTextWithoutLastAlphabet()V

    goto :goto_0

    .line 3881
    :cond_2
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 3882
    invoke-direct {p0, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto :goto_0
.end method

.method private processSoftKeyboardToggleChar([Ljava/lang/String;)V
    .locals 12
    .parameter "table"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3805
    if-nez p1, :cond_0

    .line 3858
    :goto_0
    return-void

    .line 3809
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitConvertingText()V

    .line 3811
    const/4 v7, 0x0

    .line 3812
    .local v7, toggled:Z
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    and-int/lit8 v9, v9, -0x11

    if-ne v9, v10, :cond_1

    .line 3813
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v2

    .line 3814
    .local v2, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v2, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v3

    .line 3815
    .local v3, cursor:I
    if-lez v3, :cond_1

    .line 3816
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v2, v10, v9}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v6

    .line 3817
    .local v6, strSegment:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    if-eqz v6, :cond_1

    .line 3818
    iget-object v4, v6, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    .line 3819
    .local v4, prevChar:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3820
    invoke-virtual {p0, v4, p1, v11}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->searchToggleCharacter(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3821
    .local v1, c:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3822
    invoke-virtual {v2, v10, v11}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->delete(IZ)I

    .line 3823
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendToggleString(Ljava/lang/String;)Z

    .line 3824
    const/4 v7, 0x1

    .line 3831
    .end local v1           #c:Ljava/lang/String;
    .end local v2           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v3           #cursor:I
    .end local v4           #prevChar:Ljava/lang/String;
    .end local v6           #strSegment:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_1
    const/4 v0, 0x1

    .line 3832
    .local v0, appendComplete:Z
    if-nez v7, :cond_4

    .line 3833
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v9

    if-nez v9, :cond_2

    .line 3834
    invoke-direct {p0, v11}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Z)I

    .line 3837
    :cond_2
    aget-object v5, p1, v11

    .line 3840
    .local v5, str:Ljava/lang/String;
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCaps:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getShiftKeyState(Landroid/view/inputmethod/EditorInfo;)I

    move-result v9

    if-ne v9, v10, :cond_3

    .line 3841
    aget-object v9, p1, v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 3842
    .local v8, top:C
    const/16 v9, 0x7f

    if-gt v8, v9, :cond_3

    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3843
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 3846
    .end local v8           #top:C
    :cond_3
    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendToggleString(Ljava/lang/String;)Z

    move-result v0

    .line 3849
    .end local v5           #str:Ljava/lang/String;
    :cond_4
    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 3850
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 3851
    if-eqz v0, :cond_5

    .line 3852
    iput v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 3857
    :goto_1
    invoke-direct {p0, v10, v10}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto :goto_0

    .line 3854
    :cond_5
    const/4 v9, 0x3

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    goto :goto_1
.end method

.method private processTabKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 5033
    if-nez p1, :cond_1

    .line 5059
    :cond_0
    :goto_0
    return-void

    .line 5037
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 5038
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isCandidateExists()Z

    move-result v2

    .line 5039
    .local v2, isShowCand:Z
    if-eqz v2, :cond_0

    .line 5042
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v1

    .line 5044
    .local v1, isFocusCand:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5045
    if-eqz v1, :cond_2

    .line 5046
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processLeftKeyEvent()V

    goto :goto_0

    .line 5049
    :cond_2
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processEndKeyEvent()V

    goto :goto_0

    .line 5052
    :cond_3
    if-eqz v1, :cond_4

    .line 5053
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processRightKeyEvent()V

    goto :goto_0

    .line 5056
    :cond_4
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processDownKeyEvent()V

    goto :goto_0
.end method

.method private processUpKeyEvent()V
    .locals 2

    .prologue
    .line 2906
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 2907
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->processMoveKeyEvent(I)V

    .line 2908
    return-void
.end method

.method private sendKeyEventDirect(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "keyEvent"

    .prologue
    .line 3006
    if-nez p1, :cond_0

    .line 3014
    :goto_0
    return-void

    .line 3009
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_2

    .line 3010
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->sendKeyChar(C)V

    goto :goto_0

    .line 3012
    :cond_2
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->sendDownUpKeyEvents(I)V

    goto :goto_0
.end method

.method private setCandidateIsViewTypeFull(Z)V
    .locals 2
    .parameter "isFullCandidate"

    .prologue
    .line 4865
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFullCandidate:Z

    .line 4866
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFullCandidate:Z

    if-eqz v0, :cond_1

    .line 4867
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 4868
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->setViewType(I)V

    .line 4869
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateFullscreenMode()V

    .line 4870
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4871
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v0

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->hideInputView()V

    .line 4879
    :cond_0
    :goto_0
    return-void

    .line 4874
    :cond_1
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 4875
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->setViewType(I)V

    .line 4876
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateFullscreenMode()V

    .line 4877
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v0

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->showInputView()V

    goto :goto_0
.end method

.method private setConvertingForFuncKeyEijiType(I)V
    .locals 0
    .parameter "set"

    .prologue
    .line 5015
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConvertingForFuncKeyEijiType:I

    .line 5016
    return-void
.end method

.method private setDictionary()V
    .locals 4

    .prologue
    .line 3734
    const/4 v0, 0x0

    .line 3737
    .local v0, dictionary:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    iget v2, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3738
    const/4 v1, 0x0

    .line 3739
    .local v1, language:I
    const/4 v0, 0x1

    .line 3777
    :goto_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(III)Z

    .line 3778
    return-void

    .line 3741
    .end local v1           #language:I
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    iget v2, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    packed-switch v2, :pswitch_data_0

    .line 3759
    const/4 v1, 0x0

    .line 3760
    .restart local v1       #language:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setConvertedCandidateEnabled(Z)V

    .line 3762
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    iget v2, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->preferenceDictionary:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 3764
    :pswitch_0
    const/4 v0, 0x3

    .line 3765
    goto :goto_0

    .line 3743
    .end local v1           #language:I
    :pswitch_1
    const/4 v1, 0x1

    .line 3744
    .restart local v1       #language:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setConvertedCandidateEnabled(Z)V

    .line 3746
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    iget v2, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->preferenceDictionary:I

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 3748
    :pswitch_2
    const/4 v0, 0x5

    .line 3749
    goto :goto_0

    .line 3767
    :pswitch_3
    const/4 v0, 0x4

    .line 3768
    goto :goto_0

    .line 3741
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 3762
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 3746
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method private setEnabledTabs(ZZZ)V
    .locals 2
    .parameter "enableEmoji"
    .parameter "enableEmoticon"
    .parameter "enableEmojiUNI6"

    .prologue
    .line 4892
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableEmoji(Z)V

    .line 4893
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v0, p2}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableEmoticon(Z)V

    .line 4894
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v0, p3}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableEmojiUNI6(Z)V

    .line 4896
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setEnableDecoEmoji(Z)V

    .line 4897
    return-void
.end method

.method private startConvert(I)V
    .locals 6
    .parameter "convertType"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3963
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4010
    :cond_0
    :goto_0
    return-void

    .line 3967
    :cond_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    iget v3, v3, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    if-eq v3, p1, :cond_0

    .line 3969
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    if-nez v3, :cond_2

    .line 3970
    if-ne p1, v4, :cond_4

    .line 3972
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 3986
    :cond_2
    :goto_1
    if-ne p1, v4, :cond_3

    .line 3988
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 3989
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 3990
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 3993
    :cond_3
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCount:I

    .line 3996
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 3997
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 3998
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 3999
    const/4 v1, 0x1

    .line 4004
    .local v1, layer:I
    :goto_2
    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 4005
    .local v2, state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    iput p1, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    .line 4006
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 4008
    invoke-direct {p0, v1, v4, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    goto :goto_0

    .line 3974
    .end local v1           #layer:I
    .end local v2           #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    :cond_4
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isRenbun()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3976
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    goto :goto_1

    .line 3979
    :cond_5
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v0

    .line 3980
    .local v0, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v0, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    goto :goto_1

    .line 4001
    .end local v0           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    :cond_6
    const/4 v1, 0x2

    .restart local v1       #layer:I
    goto :goto_2
.end method

.method private switchCharset()V
    .locals 2

    .prologue
    .line 4936
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    .line 4938
    .local v0, inputViewManager:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEnglish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4940
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    .line 4945
    :goto_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->clearCandidates()V

    .line 4946
    return-void

    .line 4943
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_0
.end method

.method private switchSymbolList()V
    .locals 2

    .prologue
    .line 4952
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeSymbolEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;I)V

    .line 4953
    return-void
.end method

.method private undo()Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4591
    iget-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCanUndo:Z

    if-eqz v11, :cond_5

    .line 4592
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasCommitedByVoiceInput:Z

    .line 4594
    .local v1, hasCommitedByVoiceInput:Z
    new-instance v7, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    const/4 v11, 0x0

    invoke-direct {v7, p0, v11}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 4595
    .local v7, state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    iput v10, v7, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    .line 4596
    invoke-direct {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 4599
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-interface {v11, v12, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4601
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    .line 4602
    .local v3, inputManager:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->undoKeyMode()V

    .line 4603
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    .line 4607
    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    .line 4609
    iget-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableLearning:Z

    if-eqz v10, :cond_0

    if-nez v1, :cond_0

    .line 4610
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v10, v9}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->undo(I)Z

    .line 4612
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v0

    .line 4613
    .local v0, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->clear()V

    .line 4616
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitPredictKey:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4617
    .local v8, strSpilit:[Ljava/lang/String;
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitPredictKey:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v5, v10

    .line 4618
    .local v5, length:I
    add-int/lit8 v5, v5, -0x1

    .line 4619
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 4620
    new-instance v10, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    add-int/lit8 v11, v2, 0x1

    aget-object v11, v8, v11

    invoke-direct {v10, v11}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->appendStrSegment(Ljp/co/omronsoft/iwnnime/ml/StrSegment;)Z

    .line 4619
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4623
    :cond_1
    if-eqz v5, :cond_2

    .line 4624
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitLayer1StrSegment:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4625
    .local v6, size:I
    new-array v4, v6, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 4626
    .local v4, layer1StrSegment:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitLayer1StrSegment:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4627
    invoke-virtual {v0, v9, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 4628
    invoke-virtual {v0, v9, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V

    .line 4630
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitFunfun:I

    iput v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 4631
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v10}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 4633
    .end local v4           #layer1StrSegment:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    .end local v6           #size:I
    :cond_2
    iget-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitExactMatch:Z

    iput-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 4634
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCursorPosition:I

    invoke-virtual {v0, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 4636
    const/4 v10, 0x3

    iput v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 4637
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4638
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v10

    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v11}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getFilesDirPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->init(Ljava/lang/String;)V

    .line 4641
    :cond_3
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitConvertType:I

    if-ne v10, v13, :cond_4

    .line 4642
    invoke-direct {p0, v13}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->startConvert(I)V

    .line 4647
    :goto_1
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->breakSequence()V

    .line 4650
    .end local v0           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v1           #hasCommitedByVoiceInput:Z
    .end local v2           #i:I
    .end local v3           #inputManager:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
    .end local v5           #length:I
    .end local v7           #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    .end local v8           #strSpilit:[Ljava/lang/String;
    :goto_2
    return v9

    .line 4644
    .restart local v0       #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .restart local v1       #hasCommitedByVoiceInput:Z
    .restart local v2       #i:I
    .restart local v3       #inputManager:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
    .restart local v5       #length:I
    .restart local v7       #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    .restart local v8       #strSpilit:[Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v9, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    goto :goto_1

    .end local v0           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v1           #hasCommitedByVoiceInput:Z
    .end local v2           #i:I
    .end local v3           #inputManager:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
    .end local v5           #length:I
    .end local v7           #state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    .end local v8           #strSpilit:[Ljava/lang/String;
    :cond_5
    move v9, v10

    .line 4650
    goto :goto_2
.end method

.method private updateCandidateView()V
    .locals 11

    .prologue
    const-wide/16 v9, 0xc8

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3148
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v1

    .line 3150
    .local v1, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    packed-switch v7, :pswitch_data_0

    .line 3199
    :goto_0
    return-void

    .line 3153
    :pswitch_0
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnablePrediction:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEisuKana()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3155
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    if-nez v6, :cond_2

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isConvertState()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3158
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3159
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isCandidateExists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3160
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v6, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3163
    :cond_1
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v6, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3167
    :cond_2
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3168
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updatePrediction()V

    goto :goto_0

    .line 3171
    :cond_3
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3172
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    goto :goto_0

    .line 3176
    :pswitch_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v3

    .line 3177
    .local v3, converter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v2

    .line 3178
    .local v2, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCount:I

    if-nez v7, :cond_4

    .line 3179
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3180
    invoke-interface {v3, v2}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)I

    .line 3183
    :cond_4
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitCount:I

    invoke-interface {v3, v7}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->makeCandidateListOf(I)I

    move-result v0

    .line 3185
    .local v0, candidates:I
    if-eqz v0, :cond_7

    .line 3186
    invoke-virtual {v2, v8, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 3187
    invoke-virtual {v2, v8}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v7

    if-le v7, v5, :cond_5

    move v4, v5

    .line 3188
    .local v4, isExistOtherSegment:Z
    :goto_1
    if-nez v4, :cond_6

    :goto_2
    invoke-virtual {v1, v5}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->setEnableCandidateLongClick(Z)V

    .line 3189
    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    goto/16 :goto_0

    .end local v4           #isExistOtherSegment:Z
    :cond_5
    move v4, v6

    .line 3187
    goto :goto_1

    .restart local v4       #isExistOtherSegment:Z
    :cond_6
    move v5, v6

    .line 3188
    goto :goto_2

    .line 3191
    .end local v4           #isExistOtherSegment:Z
    :cond_7
    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 3193
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    goto/16 :goto_0

    .line 3150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V
    .locals 12
    .parameter "state"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 3602
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    .line 3605
    .local v2, myState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    if-eq v6, v9, :cond_0

    .line 3606
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    iput v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    .line 3607
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setDictionary()V

    .line 3608
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->breakSequence()V

    .line 3611
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    if-ne v6, v9, :cond_0

    .line 3612
    iget v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    iput v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    .line 3617
    :cond_0
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    if-eq v6, v9, :cond_1

    iget v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    iget v7, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    if-eq v6, v7, :cond_1

    .line 3620
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    iput v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    .line 3621
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setDictionary()V

    .line 3625
    :cond_1
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    if-eq v6, v9, :cond_3

    .line 3627
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    packed-switch v6, :pswitch_data_0

    .line 3673
    :cond_2
    :goto_0
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    iput v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    .line 3677
    :cond_3
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->preferenceDictionary:I

    if-eq v6, v9, :cond_4

    iget v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->preferenceDictionary:I

    iget v7, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->preferenceDictionary:I

    if-eq v6, v7, :cond_4

    .line 3681
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->preferenceDictionary:I

    iput v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->preferenceDictionary:I

    .line 3683
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setDictionary()V

    .line 3687
    :cond_4
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    if-eq v6, v9, :cond_7

    .line 3691
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    packed-switch v6, :pswitch_data_1

    .line 3703
    const/4 v1, 0x1

    .line 3705
    .local v1, keyboardType:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v4

    .line 3706
    .local v4, switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3707
    .local v3, pref:Landroid/content/SharedPreferences;
    iget v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    if-nez v6, :cond_b

    .line 3708
    const-string v6, "opt_spell_correction_ja"

    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSpellCorrection:Z

    .line 3713
    :goto_1
    iget v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSpellCorrection:Z

    if-nez v6, :cond_c

    .line 3715
    :cond_5
    const/4 v0, 0x0

    .line 3723
    .end local v3           #pref:Landroid/content/SharedPreferences;
    .end local v4           #switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    .local v0, flexibleType:I
    :goto_2
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v6

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3724
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v6, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setFlexibleCharset(II)I

    .line 3726
    :cond_6
    iget v6, p1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    iput v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    .line 3728
    .end local v0           #flexibleType:I
    .end local v1           #keyboardType:I
    :cond_7
    return-void

    .line 3631
    :pswitch_0
    iget v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    if-eqz v6, :cond_2

    .line 3632
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setDictionary()V

    .line 3633
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->initializeMode()V

    .line 3634
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreConverterBack:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setPreConverter(Ljp/co/omronsoft/iwnnime/ml/LetterConverter;)V

    .line 3635
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterBack:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConverter(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 3636
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    and-int/lit8 v6, v6, -0x11

    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    .line 3638
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3639
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setCandidatesViewManager(Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;)V

    .line 3640
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->getCurrentView()Landroid/view/View;

    move-result-object v5

    .line 3641
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_8

    .line 3642
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->setCandidatesView(Landroid/view/View;)V

    .line 3645
    .end local v5           #view:Landroid/view/View;
    :cond_8
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v6, v10, v10}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setSymbolMode(ZI)V

    .line 3646
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v6

    check-cast v6, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v6, v10}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setSymbolMode(I)V

    .line 3647
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v6

    check-cast v6, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setNormalKeyboard()V

    goto/16 :goto_0

    .line 3654
    :pswitch_1
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setConverter(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 3655
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisableAutoCommitEnglishMask:I

    .line 3656
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3657
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setCandidatesViewManager(Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;)V

    .line 3658
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getCurrentView()Landroid/view/View;

    move-result-object v5

    .line 3659
    .restart local v5       #view:Landroid/view/View;
    if-eqz v5, :cond_9

    .line 3660
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->setCandidatesView(Landroid/view/View;)V

    .line 3663
    .end local v5           #view:Landroid/view/View;
    :cond_9
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getMode()I

    move-result v7

    invoke-virtual {v6, v11, v7}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setSymbolMode(ZI)V

    .line 3664
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v6

    check-cast v6, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getMode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setSymbolMode(I)V

    .line 3665
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    iget-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableEmoji:Z

    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableDecoEmoji:Z

    invoke-virtual {v6, v7, v8}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->updateAdditionalSymbolInfo(ZZ)V

    .line 3666
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v6

    check-cast v6, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setSymbolKeyboard()V

    goto/16 :goto_0

    .line 3693
    :pswitch_2
    const/4 v1, 0x0

    .line 3694
    .restart local v1       #keyboardType:I
    iget v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    if-ne v6, v11, :cond_a

    .line 3695
    const/4 v0, 0x0

    .restart local v0       #flexibleType:I
    goto/16 :goto_2

    .line 3697
    .end local v0           #flexibleType:I
    :cond_a
    const/4 v0, 0x1

    .line 3699
    .restart local v0       #flexibleType:I
    goto/16 :goto_2

    .line 3710
    .end local v0           #flexibleType:I
    .restart local v3       #pref:Landroid/content/SharedPreferences;
    .restart local v4       #switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    :cond_b
    const-string v6, "opt_spell_correction_en"

    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableSpellCorrection:Z

    goto/16 :goto_1

    .line 3717
    :cond_c
    const/4 v0, 0x1

    .restart local v0       #flexibleType:I
    goto/16 :goto_2

    .line 3627
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3691
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch
.end method

.method private updatePrediction()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2717
    const/4 v0, 0x0

    .line 2718
    .local v0, candidates:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v2

    .line 2719
    .local v2, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v2, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v4

    .line 2720
    .local v4, cursor:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v3

    .line 2722
    .local v3, converter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2723
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v1

    .line 2724
    .local v1, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    instance-of v7, v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    if-eqz v7, :cond_1

    .line 2725
    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    .end local v1           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->cancelLastSetCandiateEvent()V

    .line 2727
    :cond_1
    iget-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    if-eqz v7, :cond_4

    .line 2729
    invoke-interface {v3, v2, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->predict(Ljp/co/omronsoft/iwnnime/ml/ComposingText;II)I

    move-result v0

    .line 2760
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v1

    .line 2762
    .restart local v1       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    if-lez v0, :cond_9

    .line 2763
    invoke-virtual {v2, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v7

    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/2addr v7, v8

    if-nez v7, :cond_3

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    :cond_3
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasContinuedPrediction:Z

    .line 2765
    invoke-virtual {v1, v6}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->setEnableCandidateLongClick(Z)V

    .line 2766
    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->displayCandidates(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V

    .line 2770
    :goto_1
    return-void

    .line 2731
    .end local v1           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :cond_4
    iget-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFunfun:Z

    if-eqz v7, :cond_7

    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    if-lez v7, :cond_7

    .line 2733
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    const/4 v8, 0x4

    if-ge v7, v8, :cond_5

    .line 2735
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/2addr v7, v4

    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/2addr v8, v4

    invoke-interface {v3, v2, v7, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->predict(Ljp/co/omronsoft/iwnnime/ml/ComposingText;II)I

    move-result v0

    .line 2738
    :cond_5
    if-gtz v0, :cond_2

    .line 2741
    :cond_6
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/2addr v7, v4

    invoke-interface {v3, v2, v7, v9}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->predict(Ljp/co/omronsoft/iwnnime/ml/ComposingText;II)I

    move-result v0

    if-gtz v0, :cond_2

    .line 2743
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    if-nez v7, :cond_6

    .line 2744
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 2745
    invoke-interface {v3, v2, v5, v9}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->predict(Ljp/co/omronsoft/iwnnime/ml/ComposingText;II)I

    move-result v0

    .line 2746
    goto :goto_0

    .line 2752
    :cond_7
    invoke-interface {v3, v2, v5, v9}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->predict(Ljp/co/omronsoft/iwnnime/ml/ComposingText;II)I

    move-result v0

    goto :goto_0

    .line 2756
    :cond_8
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 2757
    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    goto :goto_0

    .line 2768
    .restart local v1       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    :cond_9
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    goto :goto_1
.end method

.method private updateViewStatus(IZZ)V
    .locals 19
    .parameter "layer"
    .parameter "updateCandidates"
    .parameter "updateEmptyText"

    .prologue
    .line 3042
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    .line 3043
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v4

    .line 3045
    .local v4, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    if-eqz p2, :cond_0

    .line 3046
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateCandidateView()V

    .line 3047
    move-object/from16 v0, p0

    iget-boolean v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFullCandidate:Z

    if-eqz v14, :cond_0

    .line 3048
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFullCandidate:Z

    .line 3049
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateFullscreenMode()V

    .line 3053
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v12

    .line 3054
    .local v12, switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v14

    invoke-interface {v14, v12}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->onUpdateState(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    .line 3057
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3058
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3060
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    if-ge v9, v14, :cond_1

    .line 3061
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    const-string v15, "\u25cb"

    invoke-virtual {v14, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3060
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3065
    :cond_1
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v5

    .line 3069
    .local v5, cursor:I
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 3070
    .local v10, inputConnection:Landroid/view/inputmethod/InputConnection;
    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    if-nez v14, :cond_2

    if-eqz p3, :cond_8

    .line 3071
    :cond_2
    if-eqz v5, :cond_6

    .line 3072
    const/4 v8, 0x0

    .line 3074
    .local v8, highlightEnd:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEisuKana()Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnglishPrediction()Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v14

    if-ge v5, v14, :cond_9

    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isConvertingForFuncKey()Z

    move-result v14

    if-nez v14, :cond_9

    .line 3079
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v15, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    const/16 v16, 0x0

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3081
    move v8, v5

    .line 3119
    :cond_5
    :goto_1
    if-eqz v8, :cond_6

    .line 3121
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v15, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v16

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v8, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3126
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v15, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v17

    const/16 v18, 0x21

    invoke-virtual/range {v14 .. v18}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3132
    .end local v8           #highlightEnd:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v15, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v17

    const/16 v18, 0x21

    invoke-virtual/range {v14 .. v18}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3135
    move-object/from16 v0, p0

    iget v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/2addr v14, v5

    if-nez v14, :cond_e

    const/4 v6, 0x0

    .line 3138
    .local v6, displayCursor:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasStartedTextSelection:Z

    if-nez v14, :cond_8

    .line 3139
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v10, v14, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3142
    .end local v6           #displayCursor:I
    :cond_8
    return-void

    .line 3083
    .restart local v8       #highlightEnd:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isEisuKana()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 3084
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v15, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_EISUKANA_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    const/16 v16, 0x0

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3086
    move v8, v5

    goto/16 :goto_1

    .line 3088
    :cond_a
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ne v0, v14, :cond_d

    .line 3089
    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v14, v15, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;III)Ljava/lang/CharSequence;

    move-result-object v7

    .line 3091
    .local v7, firstSegment:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableDecoEmoji:Z

    if-eqz v14, :cond_c

    .line 3092
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3094
    .local v3, composingString:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3095
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_b

    .line 3096
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v2

    .line 3097
    .local v2, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->getTextViewArray1st()Ljava/util/ArrayList;

    move-result-object v11

    .line 3098
    .local v11, mTextViewArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 3099
    .local v13, tv:Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 3101
    .end local v2           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    .end local v11           #mTextViewArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .end local v13           #tv:Landroid/widget/TextView;
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3103
    .end local v3           #composingString:Ljava/lang/CharSequence;
    :cond_c
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 3106
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v15, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_CONVERT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    const/16 v16, 0x0

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v8, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 3109
    .end local v7           #firstSegment:Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAutoCursorMovementSpeed:I

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    iget v14, v14, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 3113
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v15, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    add-int/lit8 v16, v5, -0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3115
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v15, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    add-int/lit8 v16, v5, -0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 3135
    .end local v8           #highlightEnd:I
    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_2
.end method

.method private updateViewStatusForPrediction(ZZ)V
    .locals 2
    .parameter "updateCandidates"
    .parameter "updateEmptyText"

    .prologue
    .line 3025
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 3026
    .local v0, state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    const/4 v1, 0x0

    iput v1, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    .line 3027
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 3029
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    .line 3030
    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 4
    .parameter "now"

    .prologue
    .line 4739
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4741
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4742
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 4743
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4747
    :goto_0
    return-void

    .line 4745
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected commitMushRoomString()V
    .locals 2

    .prologue
    .line 4901
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->getInstance()Ljp/co/omronsoft/iwnnime/ml/MushroomControl;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->getResultString()Ljava/lang/String;

    move-result-object v0

    .line 4902
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4903
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4904
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStrokeOfCommitText:Ljava/lang/String;

    .line 4905
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitTextToInputConnection(Ljava/lang/CharSequence;)V

    .line 4907
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->requestShowSelf()V

    .line 4909
    :cond_1
    return-void
.end method

.method public commitTextToInputConnection(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "commitText"

    .prologue
    .line 4846
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4847
    .local v1, inputConnection:Landroid/view/inputmethod/InputConnection;
    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4848
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4849
    .local v0, data:Landroid/os/Bundle;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStrokeOfCommitText:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStrokeOfCommitText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 4850
    const-string v2, "yomi"

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStrokeOfCommitText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4854
    :goto_0
    const-string v2, "jp.co.omronsoft.iwnnime.ml"

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 4855
    const/4 v2, 0x0

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStrokeOfCommitText:Ljava/lang/String;

    .line 4856
    return-void

    .line 4852
    :cond_0
    const-string v2, "yomi"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected commitVoiceResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 4926
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    .line 4927
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initCommitInfoForWatchCursor()V

    .line 4928
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitText(Ljava/lang/String;)V

    .line 4929
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->checkCommitInfo()V

    .line 4930
    return-void
.end method

.method protected createInputViewManager(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)Ljp/co/omronsoft/iwnnime/ml/InputViewManager;
    .locals 1
    .parameter "wnn"

    .prologue
    .line 3786
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    invoke-direct {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;-><init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V

    return-object v0
.end method

.method protected getLanguage()I
    .locals 1

    .prologue
    .line 3795
    const/4 v0, 0x0

    return v0
.end method

.method protected getShiftKeyState(Landroid/view/inputmethod/EditorInfo;)I
    .locals 2
    .parameter "editor"

    .prologue
    .line 4066
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hideWindow()V
    .locals 8

    .prologue
    .line 980
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v1

    .line 981
    .local v1, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->setCandidateMsgRemove()V

    .line 982
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->removeMessages()V

    .line 984
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v2

    .local v2, inputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;
    move-object v4, v2

    .line 986
    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

    .line 987
    .local v0, baseInputView:Ljp/co/omronsoft/iwnnime/ml/BaseInputView;
    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->closeDialog()V

    .line 991
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v4

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->clear()V

    .line 992
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v3

    .line 993
    .local v3, switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    invoke-interface {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->onUpdateState(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    .line 994
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    .line 995
    invoke-interface {v2}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->closing()V

    .line 997
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 998
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->closeDialog()V

    .line 1003
    :goto_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->hideWindowOpenWnn()V

    .line 1004
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1006
    return-void

    .line 1000
    :cond_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->closeDialog()V

    goto :goto_0
.end method

.method protected initializeScreen()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4387
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 4389
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v1

    .line 4390
    .local v1, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v1, v6}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    if-eqz v4, :cond_1

    .line 4391
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v4, v5, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4393
    :cond_1
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->clear()V

    .line 4394
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mExactMatchMode:Z

    .line 4395
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 4396
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 4397
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    .line 4398
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4399
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isCandidateExists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4400
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    .line 4402
    :cond_2
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v3

    .line 4403
    .local v3, switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v4

    invoke-interface {v4, v3}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->onUpdateState(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    .line 4405
    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 4406
    .local v2, state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    iput v6, v2, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    .line 4407
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 4408
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFullCandidate:Z

    if-eqz v4, :cond_3

    .line 4409
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFullCandidate:Z

    .line 4410
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateFullscreenMode()V

    .line 4412
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 1105
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v9

    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getCategorySelected()I

    move-result v0

    .line 1106
    .local v0, CategorySelected:I
    const/4 v1, 0x0

    .line 1107
    .local v1, candidateShown:Z
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isCandidateExists()Z

    move-result v1

    .line 1109
    :try_start_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 1110
    .local v5, inputConnection:Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_c

    .line 1111
    const/4 v6, 0x0

    .line 1112
    .local v6, onRotation:Z
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mOrientation:I

    iget v11, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v9, v11, :cond_1

    .line 1113
    iget v9, p1, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mOrientation:I

    .line 1114
    const/4 v6, 0x1

    .line 1115
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v2

    .line 1116
    .local v2, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v9

    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/2addr v9, v11

    if-gtz v9, :cond_0

    if-nez v1, :cond_0

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1119
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setStateOfKeepInput(Z)V

    .line 1123
    .end local v2           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    :cond_1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onConfigurationChangedOpenWnn(Landroid/content/res/Configuration;)V

    .line 1125
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->isInputViewShown()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1126
    if-eqz v6, :cond_2

    if-eqz v1, :cond_9

    :cond_2
    move v7, v8

    .line 1127
    .local v7, requestCandidate:Z
    :goto_0
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    const/4 v11, 0x1

    invoke-direct {p0, v9, v7, v11}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    .line 1129
    .end local v7           #requestCandidate:Z
    :cond_3
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1130
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getMode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 1141
    :goto_1
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v9, v0}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setCategoryItem(I)V

    .line 1144
    :cond_4
    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1145
    .local v4, hiddenState:I
    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    move v9, v8

    :goto_2
    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHardKeyBoardHidden:Z

    .line 1146
    iget v9, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_b

    .line 1147
    .local v8, type12Key:Z
    :goto_3
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mOrientation:I

    iget v11, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v11, :cond_5

    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableHardware12Keyboard:Z

    if-eq v9, v8, :cond_8

    .line 1149
    :cond_5
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mRecognizing:Z

    if-eqz v9, :cond_6

    .line 1150
    const/4 v9, 0x0

    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mRecognizing:Z

    .line 1152
    :cond_6
    iget v9, p1, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mOrientation:I

    .line 1153
    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableHardware12Keyboard:Z

    .line 1154
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->commitConvertingText()V

    .line 1155
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    if-lez v9, :cond_7

    .line 1156
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1157
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    const/4 v11, 0x0

    invoke-interface {v5, v9, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1158
    const/4 v9, 0x0

    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 1159
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 1162
    :cond_7
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 1163
    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v9, v11, v12}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    .line 1165
    :cond_8
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v9

    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHardKeyBoardHidden:Z

    invoke-virtual {v9, v11}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setHardKeyboardHidden(Z)V

    .line 1166
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v9

    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v9, v8}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setHardware12Keyboard(Z)V

    .line 1167
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHardKeyBoardHidden:Z

    invoke-virtual {v9, v11}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setHardKeyboardHidden(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    .end local v4           #hiddenState:I
    .end local v5           #inputConnection:Landroid/view/inputmethod/InputConnection;
    .end local v6           #onRotation:Z
    .end local v8           #type12Key:Z
    :goto_4
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setStateOfKeepInput(Z)V

    .line 1176
    return-void

    .restart local v5       #inputConnection:Landroid/view/inputmethod/InputConnection;
    .restart local v6       #onRotation:Z
    :cond_9
    move v7, v10

    .line 1126
    goto/16 :goto_0

    .line 1132
    :sswitch_0
    const/16 v9, 0x6c

    :try_start_1
    invoke-direct {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1172
    .end local v5           #inputConnection:Landroid/view/inputmethod/InputConnection;
    .end local v6           #onRotation:Z
    :catch_0
    move-exception v3

    .line 1173
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "iWnn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IWnnImeJaJp::onConfigurationChanged "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1135
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v5       #inputConnection:Landroid/view/inputmethod/InputConnection;
    .restart local v6       #onRotation:Z
    :sswitch_1
    const/16 v9, 0x6d

    :try_start_2
    invoke-direct {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    goto/16 :goto_1

    .line 1138
    :sswitch_2
    const/16 v9, 0x70

    invoke-direct {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->changeEngineMode(I)V

    goto/16 :goto_1

    .restart local v4       #hiddenState:I
    :cond_a
    move v9, v10

    .line 1145
    goto/16 :goto_2

    :cond_b
    move v8, v10

    .line 1146
    goto/16 :goto_3

    .line 1169
    .end local v4           #hiddenState:I
    .end local v6           #onRotation:Z
    :cond_c
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onConfigurationChangedOpenWnn(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1130
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 816
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onCreateOpenWnn()V

    .line 818
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, delimiter:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnglishAutoCommitDelimiter:Ljava/util/regex/Pattern;

    .line 821
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V

    .line 822
    .local v1, state:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
    iput v4, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    .line 823
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateEngineState(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;)V

    .line 825
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v2, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setConvertedCandidateEnabled(Z)V

    .line 826
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 5

    .prologue
    .line 830
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 831
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setCandidatesViewManager(Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;)V

    .line 834
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 835
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;

    .line 839
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 844
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 845
    .local v0, hiddenState:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHardKeyBoardHidden:Z

    .line 846
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    move v1, v4

    .line 848
    .local v1, type12Key:Z
    :goto_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHardKeyBoardHidden:Z

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setHardKeyboardHidden(Z)V

    .line 849
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v3, v1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setHardware12Keyboard(Z)V

    .line 850
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHardKeyBoardHidden:Z

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setHardKeyboardHidden(Z)V

    .line 851
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableHardware12Keyboard:Z

    .line 853
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onCreateInputView()Landroid/view/View;

    move-result-object v2

    .line 854
    .local v2, v:Landroid/view/View;
    return-object v2

    .end local v1           #type12Key:Z
    .end local v2           #v:Landroid/view/View;
    :cond_0
    move v3, v5

    .line 845
    goto :goto_0

    :cond_1
    move v1, v5

    .line 846
    goto :goto_1
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 3

    .prologue
    .line 1881
    const/4 v0, 0x0

    .line 1882
    .local v0, ret:Z
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1883
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableFullscreen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1885
    :cond_0
    const/4 v0, 0x0

    .line 1890
    :cond_1
    :goto_0
    return v0

    .line 1887
    :cond_2
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onEvaluateFullscreenModeOpenWnn()Z

    move-result v0

    goto :goto_0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 1

    .prologue
    .line 1896
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 1180
    monitor-enter p0

    const/4 v1, 0x0

    .line 1181
    .local v1, ret:Z
    :try_start_0
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFullCandidate:Z

    if-eqz v2, :cond_0

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mStatus:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isRightOrLeftKeyEvents(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1183
    :cond_1
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->handleEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1190
    :goto_0
    monitor-exit p0

    return v1

    .line 1185
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1186
    .local v0, inputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1187
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->handleEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    move-result v1

    .line 1188
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1180
    .end local v0           #inputConnection:Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onFinishInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4444
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4445
    .local v0, inputConnection:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 4446
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    if-lez v1, :cond_0

    .line 4447
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4448
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4449
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 4450
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 4453
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 4455
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onFinishInputOpenWnn()V

    .line 4456
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/16 v3, 0x2d

    .line 859
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 860
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-eq v0, v1, :cond_0

    .line 861
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasStartedTextSelection:Z

    .line 863
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreEditorPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(III)Z

    .line 866
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->deleteAutoLearningDictionary(I)Z

    .line 867
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPreEditorPackageName:Ljava/lang/String;

    .line 869
    :cond_1
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 13
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 875
    if-eqz p2, :cond_7

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v9, :cond_7

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v9, v9, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    iget-object v10, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v5, 0x1

    .line 878
    .local v5, keep:Z
    :goto_0
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 885
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 887
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    const/4 v3, 0x0

    .line 888
    .local v3, ignore:Z
    if-eqz v5, :cond_0

    .line 889
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 890
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 891
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 892
    .local v1, chars:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 893
    const/4 v3, 0x1

    .line 898
    .end local v1           #chars:Ljava/lang/CharSequence;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v8

    .line 900
    .local v8, switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 901
    .local v7, pref:Landroid/content/SharedPreferences;
    if-nez v3, :cond_1

    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v9

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 902
    :cond_1
    invoke-virtual {p0, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onStartInputViewOpenWnn(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 933
    :goto_1
    invoke-direct {p0, v7, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->fitInputType(Landroid/content/SharedPreferences;Landroid/view/inputmethod/EditorInfo;)V

    .line 934
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateFullscreenMode()V

    .line 936
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v4

    .line 937
    .local v4, ime:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->isCandidateExists()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->getAutoHide()Z

    move-result v9

    if-nez v9, :cond_2

    .line 939
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setCandidatesViewShown(Z)V

    .line 942
    :cond_2
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 943
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidates1LineViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljp/co/omronsoft/iwnnime/ml/TextCandidates1LineViewManager;->setAutoHide(Z)V

    .line 947
    :cond_3
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 948
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->breakSequence()V

    .line 951
    :cond_4
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 952
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 957
    :cond_5
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v9

    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->set5key()V

    .line 959
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v9

    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->isChangeToOtherIme()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 960
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 961
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 976
    :cond_6
    :goto_2
    return-void

    .line 875
    .end local v0           #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    .end local v3           #ignore:Z
    .end local v4           #ime:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    .end local v5           #keep:Z
    .end local v7           #pref:Landroid/content/SharedPreferences;
    .end local v8           #switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 907
    .restart local v0       #candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    .restart local v3       #ignore:Z
    .restart local v5       #keep:Z
    .restart local v7       #pref:Landroid/content/SharedPreferences;
    .restart local v8       #switcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    :cond_8
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    if-eqz v9, :cond_9

    .line 908
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->close()V

    .line 910
    :cond_9
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterIWnn:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getLanguage()I

    move-result v10

    invoke-virtual {v9, v10}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLocaleString(I)Ljava/lang/String;

    move-result-object v6

    .line 911
    .local v6, localeString:Ljava/lang/String;
    new-instance v9, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    invoke-direct {v9, v8, v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mConverterSymbolEngineBack:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    .line 913
    const/4 v9, 0x0

    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    .line 914
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    .line 917
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 919
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v9

    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->resetCurrentKeyboard()V

    .line 921
    invoke-virtual {p0, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onStartInputViewOpenWnn(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 922
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 923
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTextCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;

    invoke-virtual {v9, v7}, Ljp/co/omronsoft/iwnnime/ml/TextCandidatesViewManager;->setPreferences(Landroid/content/SharedPreferences;)V

    .line 927
    :cond_a
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setCandidateIsViewTypeFull(Z)V

    .line 928
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->clearCandidates()V

    .line 930
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto/16 :goto_1

    .line 966
    .end local v6           #localeString:Ljava/lang/String;
    .restart local v4       #ime:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    :cond_b
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isSubtypeExtraEmojiInput()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 968
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEnableUNI6Emoji:Z

    if-eqz v9, :cond_c

    .line 970
    new-instance v9, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v10, -0xffffff1

    const/16 v11, 0x70

    invoke-direct {v9, v10, v11}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_2

    .line 973
    :cond_c
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->switchToLastInputMethod()V

    goto :goto_2
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 14
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1012
    invoke-virtual/range {p0 .. p6}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->onUpdateSelectionOpenWnn(IIIIII)V

    .line 1014
    if-gez p5, :cond_1

    move/from16 v11, p4

    :goto_0
    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mComposingStartCursor:I

    .line 1017
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasStartedTextSelection:Z

    .line 1018
    .local v8, prevSelection:Z
    move/from16 v0, p3

    move/from16 v1, p4

    if-eq v0, v1, :cond_2

    .line 1019
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    .line 1020
    const/4 v11, 0x1

    iput-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasStartedTextSelection:Z

    .line 1025
    :goto_1
    iget-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasContinuedPrediction:Z

    if-eqz v11, :cond_3

    .line 1026
    const/4 v11, 0x0

    iput-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasContinuedPrediction:Z

    .line 1027
    const/4 v11, 0x0

    iput-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    .line 1100
    :cond_0
    :goto_2
    return-void

    .end local v8           #prevSelection:Z
    :cond_1
    move/from16 v11, p5

    .line 1014
    goto :goto_0

    .line 1022
    .restart local v8       #prevSelection:Z
    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasStartedTextSelection:Z

    goto :goto_1

    .line 1031
    :cond_3
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mEngineState:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;

    invoke-virtual {v11}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->isSymbolList()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1035
    if-gez p5, :cond_8

    if-gez p6, :cond_8

    const/4 v7, 0x1

    .line 1036
    .local v7, isNotComposing:Z
    :goto_3
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v4

    .line 1037
    .local v4, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v11

    iget v12, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/2addr v11, v12

    if-eqz v11, :cond_a

    if-nez v7, :cond_a

    .line 1040
    iget-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasStartedTextSelection:Z

    if-eqz v11, :cond_9

    .line 1041
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 1042
    .local v6, inputConnection:Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_7

    .line 1043
    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    if-lez v11, :cond_6

    .line 1044
    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    invoke-direct {p0, v4, v11}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1046
    .local v3, composingString:Ljava/lang/CharSequence;
    const/4 v11, 0x1

    invoke-interface {v6, v3, v11}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1047
    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    sub-int v11, p6, v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1048
    .local v5, funfunStart:I
    move/from16 v10, p3

    .line 1049
    .local v10, selStart:I
    move/from16 v9, p4

    .line 1050
    .local v9, selEnd:I
    move/from16 v0, p3

    if-ge v5, v0, :cond_4

    .line 1051
    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    sub-int v11, p3, v11

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1053
    :cond_4
    move/from16 v0, p4

    if-ge v5, v0, :cond_5

    .line 1054
    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    sub-int v11, p4, v11

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1056
    :cond_5
    invoke-interface {v6, v10, v9}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 1057
    const/4 v11, 0x0

    iput v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    .line 1058
    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    invoke-virtual {p0, v11}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setFunFun(I)V

    .line 1060
    .end local v3           #composingString:Ljava/lang/CharSequence;
    .end local v5           #funfunStart:I
    .end local v9           #selEnd:I
    .end local v10           #selStart:I
    :cond_6
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1062
    :cond_7
    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->clear()V

    .line 1063
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    .line 1067
    .end local v6           #inputConnection:Landroid/view/inputmethod/InputConnection;
    :goto_4
    const/4 v11, 0x0

    iput-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    goto :goto_2

    .line 1035
    .end local v4           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v7           #isNotComposing:Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 1065
    .restart local v4       #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .restart local v7       #isNotComposing:Z
    :cond_9
    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mTargetLayer:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct {p0, v11, v12, v13}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatus(IZZ)V

    goto :goto_4

    .line 1069
    :cond_a
    iget-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    if-eqz v11, :cond_b

    .line 1070
    const/4 v11, 0x0

    iput-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mIgnoreCursorMove:Z

    goto/16 :goto_2

    .line 1072
    :cond_b
    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mCommitStartCursor:I

    iget-object v12, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mPrevCommitText:Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    add-int v2, v11, v12

    .line 1073
    .local v2, commitEnd:I
    move/from16 v0, p4

    move/from16 v1, p2

    if-lt v0, v1, :cond_c

    move/from16 v0, p4

    if-ge v2, v0, :cond_d

    :cond_c
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->clearCommitInfo()Z

    move-result v11

    if-nez v11, :cond_e

    :cond_d
    if-eqz v7, :cond_0

    .line 1076
    :cond_e
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isEnableL2Converter()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1077
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->breakSequence()V

    .line 1080
    :cond_f
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 1081
    .restart local v6       #inputConnection:Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_11

    .line 1083
    const/4 v11, 0x1

    iget v12, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    if-ge v11, v12, :cond_10

    .line 1084
    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mFunfun:I

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1086
    :cond_10
    if-eqz v7, :cond_11

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v11

    if-eqz v11, :cond_11

    .line 1087
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1093
    :cond_11
    iget-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasStartedTextSelection:Z

    if-ne v8, v11, :cond_12

    iget-boolean v11, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHasStartedTextSelection:Z

    if-nez v11, :cond_0

    .line 1094
    :cond_12
    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->clear()V

    .line 1095
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->initializeScreen()V

    goto/16 :goto_2
.end method

.method processKeyEventNoInputCandidateShown(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2951
    const/4 v3, 0x1

    .line 2952
    .local v3, ret:Z
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 2953
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    move-result-object v1

    .line 2954
    .local v1, converter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2956
    .local v2, key:I
    sparse-switch v2, :sswitch_data_0

    .line 2989
    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->isThroughKeyCode(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2997
    :cond_0
    :goto_0
    return v4

    .line 2959
    :sswitch_0
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->processDelKeyEventForUndo(Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2964
    const/4 v3, 0x1

    .line 2992
    :goto_1
    if-eqz v1, :cond_1

    .line 2994
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getFilesDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->init(Ljava/lang/String;)V

    .line 2996
    :cond_1
    invoke-direct {p0, v4, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->updateViewStatusForPrediction(ZZ)V

    move v4, v3

    .line 2997
    goto :goto_0

    .line 2971
    :sswitch_1
    const/4 v3, 0x0

    .line 2972
    goto :goto_1

    .line 2975
    :sswitch_2
    const/4 v3, 0x1

    .line 2976
    goto :goto_1

    .line 2980
    :sswitch_3
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->getViewType()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 2981
    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->setCandidateIsViewTypeFull(Z)V

    goto :goto_0

    .line 2984
    :cond_2
    const/4 v3, 0x1

    .line 2986
    goto :goto_1

    :cond_3
    move v4, v5

    .line 2989
    goto :goto_0

    .line 2956
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
        0x52 -> :sswitch_1
        0x6f -> :sswitch_3
        0x70 -> :sswitch_0
        0xa0 -> :sswitch_1
    .end sparse-switch
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 5129
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5130
    return-void
.end method

.method public restartSelf(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .parameter "attribute"

    .prologue
    .line 5123
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 5124
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5125
    return-void
.end method
