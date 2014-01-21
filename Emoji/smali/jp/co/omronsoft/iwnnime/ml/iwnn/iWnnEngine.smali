.class public Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
.super Ljava/lang/Object;
.source "iWnnEngine.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/WnnEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;,
        Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$SearchOrder;,
        Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$SearchMethod;,
        Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$KeyboardType;,
        Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$FlexibleSearchType;,
        Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$AddWordDictionaryType;,
        Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$SetType;,
        Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LanguageType;
    }
.end annotation


# static fields
.field private static final ADD_ENGLISH_USER_DIC_PATH:Ljava/lang/String; = "/dicset/master/Enjuserw.a"

.field private static final ADD_JAPANESE_USER_DIC_PATH:Ljava/lang/String; = "/dicset/master/njuserw.a"

.field public static final CANDIDATE_MAX:I = 0x15e

.field private static final CONF_TABLE:[Ljava/lang/String; = null

.field private static final CONF_TABLET_TABLE:[Ljava/lang/String; = null

.field public static final CONVERT_TYPE_HANKATA:I = 0x4

.field public static final CONVERT_TYPE_HAN_EIJI_CAP:I = 0x5

.field public static final CONVERT_TYPE_HAN_EIJI_LOWER:I = 0x9

.field public static final CONVERT_TYPE_HAN_EIJI_UPPER:I = 0x7

.field public static final CONVERT_TYPE_HIRAGANA:I = 0x2

.field public static final CONVERT_TYPE_KATAKANA:I = 0x3

.field public static final CONVERT_TYPE_NONE:I = 0x1

.field public static final CONVERT_TYPE_ZEN_EIJI_CAP:I = 0x6

.field public static final CONVERT_TYPE_ZEN_EIJI_LOWER:I = 0xa

.field public static final CONVERT_TYPE_ZEN_EIJI_UPPER:I = 0x8

.field private static final DEBUG:Z = false

.field public static final DICTIONARY_DELETE_FAILURE:I = -0x1

.field public static final IWNNIME_DIC_LANG_DEF:I = 0x64

.field private static final KEY_NORMALIZATION_USER_DIC:Ljava/lang/String; = "normalizationUserDic"

.field public static final LEARN_DICTIONARY_DELETE:I = 0x1

.field private static final LOCALE_CZ:Ljava/util/Locale; = null

.field private static final LOCALE_ES:Ljava/util/Locale; = null

.field private static final LOCALE_IT:Ljava/util/Locale; = null

.field private static final LOCALE_NB:Ljava/util/Locale; = null

.field private static final LOCALE_NL:Ljava/util/Locale; = null

.field private static final LOCALE_PL:Ljava/util/Locale; = null

.field private static final LOCALE_PT:Ljava/util/Locale; = null

.field private static final LOCALE_RU:Ljava/util/Locale; = null

.field private static final LOCALE_SV:Ljava/util/Locale; = null

.field private static final LOCALE_TABLE:[Ljava/util/Locale; = null

.field private static final NORMALIZATION_ADD_USER_DIC_PATH_TABLE:[Ljava/lang/String; = null

.field private static final NORMALIZATION_LANG_TABLE:[I = null

.field private static final NORMALIZATION_OLD_USER_DIC_PATH_TABLE:[Ljava/lang/String; = null

.field private static final OFFSET_FULL_WIDTH:I = 0xfee0

.field private static final OLD_ENGLISH_USER_DIC_PATH:Ljava/lang/String; = "/data/user/0/jp.co.omronsoft.iwnnime.ml/dicset/master/Enjuserw.a"

.field private static final OLD_JAPANESE_USER_DIC_PATH:Ljava/lang/String; = "/data/user/0/jp.co.omronsoft.iwnnime.ml/dicset/master/njuserw.a"

.field public static final SERVICE_CONFIGURATION_FILE_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "iWnn"

.field public static final USER_DICTIONARY_DELETE:I = 0x2

.field public static final WNNWORD_ATTRIBUTE_CONNECTED:I = 0x2000

.field public static final WNNWORD_ATTRIBUTE_DECOEMOJI:I = 0x1000000

.field public static final WNNWORD_ATTRIBUTE_DELETABLE:I = 0x2

.field public static final WNNWORD_ATTRIBUTE_HISTORY:I = 0x1

.field public static final WNNWORD_ATTRIBUTE_JAPANESE_QWERTY_GIJI:I = 0x80

.field public static final WNNWORD_ATTRIBUTE_LATIN_GIJI:I = 0x20

.field public static final WNNWORD_ATTRIBUTE_MUHENKAN:I = 0x4

.field public static final WNNWORD_ATTRIBUTE_MUHENKAN_LOWERCASE:I = 0x100

.field public static final WNNWORD_ATTRIBUTE_NEXT_BUTTON:I = 0x4000000

.field public static final WNNWORD_ATTRIBUTE_NO_CANDIDATE:I = 0x800

.field public static final WNNWORD_ATTRIBUTE_NO_DICTIONARY:I = 0x40

.field public static final WNNWORD_ATTRIBUTE_PREV_BUTTON:I = 0x2000000

.field public static final WNNWORD_ATTRIBUTE_SERVICE_WORD_NO_ENGINE:I = 0x1000

.field public static final WNNWORD_ATTRIBUTE_SYMBOL:I = 0x8

.field public static final WNNWORD_ATTRIBUTE_SYMBOLLIST:I = 0x10

.field public static final WNNWORD_ATTRIBUTE_TARGET_LEARN:I = 0x8000

.field public static final WNNWORD_ATTRIBUTE_WEBAPI:I = 0x200

.field public static final WNNWORD_ATTRIBUTE_WEBAPI_GET_AGAIN:I = 0x4000

.field public static final WNNWORD_ATTRIBUTE_WEBAPI_WORD:I = 0x400

.field private static mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

.field private static mServiceEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;


# instance fields
.field private mAllowDuplicationCharPattern:Ljava/util/regex/Pattern;

.field private mCaller:I

.field private mCandTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end field

.field private mCaseGijiList:[Ljava/lang/String;

.field private mCaseGijiListIndex:I

.field private mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

.field private mDictionarySet:I

.field private mDispWebAPIButton:Z

.field private mDispWebAPIWords:Z

.field private mEnableConvertedCandidate:Z

.field private mEnableLearnNumber:Z

.field private mFilesDirPath:Ljava/lang/String;

.field private mHasBroke:Z

.field private mHasLoadedDownloadDictionary:Z

.field private mHasSearchWords:Z

.field private mIsConverting:Z

.field private mIsForbidDuplication:Z

.field private mIsNormalizationUserDic:Z

.field private mIsRequestGiji:Z

.field private mIsServiceDics:Z

.field private mLangType:I

.field private mLatinFilter:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;

.field private mOutputNum:I

.field private mSearchCnt:I

.field private mSearchComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

.field private mSearchKey:Ljava/lang/String;

.field private mSegment:I

.field private mSegmentCount:I

.field private mUpdateDownloadDictionary:Z

.field private mWebAPIEnable:Z

.field private mWebAPIEnableFromSettings:Z

.field private mWebAPIOutputNum:I

.field private mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 92
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/lib/lib_dic_ja_JP.conf.so"

    aput-object v1, v0, v4

    const-string v1, "/system/lib/lib_dic_en_USUK.conf.so"

    aput-object v1, v0, v5

    const-string v1, "/system/lib/lib_dic_de_DE.conf.so"

    aput-object v1, v0, v3

    const-string v1, "/system/lib/lib_dic_en_US.conf.so"

    aput-object v1, v0, v6

    const-string v1, "/system/lib/lib_dic_en_UK.conf.so"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/system/lib/lib_dic_it_IT.conf.so"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/system/lib/lib_dic_fr_FR.conf.so"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/system/lib/lib_dic_es_ES.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/system/lib/lib_dic_nl_NL.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/system/lib/lib_dic_pl_PL.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/system/lib/lib_dic_ru_RU.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/system/lib/lib_dic_sv_SE.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/system/lib/lib_dic_nb_NO.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/system/lib/lib_dic_cs_CZ.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/system/lib/lib_dic_zh_CN.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "/system/lib/lib_dic_zh_TW.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "/system/lib/lib_dic_pt_PT.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "/system/lib/lib_dic_fr_CA.conf.so"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->CONF_TABLE:[Ljava/lang/String;

    .line 114
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/lib/lib_dic_ja_JP.conf.so"

    aput-object v1, v0, v4

    const-string v1, "/system/lib/lib_dic_en_tablet_USUK.conf.so"

    aput-object v1, v0, v5

    const-string v1, "/system/lib/lib_dic_de_DE.conf.so"

    aput-object v1, v0, v3

    const-string v1, "/system/lib/lib_dic_en_US.conf.so"

    aput-object v1, v0, v6

    const-string v1, "/system/lib/lib_dic_en_UK.conf.so"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/system/lib/lib_dic_it_IT.conf.so"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/system/lib/lib_dic_fr_FR.conf.so"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/system/lib/lib_dic_es_ES.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/system/lib/lib_dic_nl_NL.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/system/lib/lib_dic_pl_PL.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/system/lib/lib_dic_ru_RU.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/system/lib/lib_dic_sv_SE.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/system/lib/lib_dic_nb_NO.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/system/lib/lib_dic_cs_CZ.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/system/lib/lib_dic_zh_CN.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "/system/lib/lib_dic_zh_TW.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "/system/lib/lib_dic_pt_PT.conf.so"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "/system/lib/lib_dic_fr_CA.conf.so"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->CONF_TABLET_TABLE:[Ljava/lang/String;

    .line 372
    new-instance v0, Ljava/util/Locale;

    const-string v1, "nl"

    const-string v2, "NL"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_NL:Ljava/util/Locale;

    .line 374
    new-instance v0, Ljava/util/Locale;

    const-string v1, "cs"

    const-string v2, "CZ"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_CZ:Ljava/util/Locale;

    .line 376
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pl"

    const-string v2, "PL"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_PL:Ljava/util/Locale;

    .line 378
    new-instance v0, Ljava/util/Locale;

    const-string v1, "it"

    const-string v2, "IT"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_IT:Ljava/util/Locale;

    .line 380
    new-instance v0, Ljava/util/Locale;

    const-string v1, "es"

    const-string v2, "ES"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_ES:Ljava/util/Locale;

    .line 382
    new-instance v0, Ljava/util/Locale;

    const-string v1, "sv"

    const-string v2, "SE"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_SV:Ljava/util/Locale;

    .line 384
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    const-string v2, "RU"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_RU:Ljava/util/Locale;

    .line 386
    new-instance v0, Ljava/util/Locale;

    const-string v1, "nb"

    const-string v2, "NO"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_NB:Ljava/util/Locale;

    .line 388
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "PT"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_PT:Ljava/util/Locale;

    .line 395
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    aput-object v1, v0, v4

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v1, v0, v5

    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v1, v0, v6

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_IT:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_ES:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_NL:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_PL:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_RU:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_SV:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_NB:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_CZ:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_PT:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_TABLE:[Ljava/util/Locale;

    .line 419
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    .line 531
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->NORMALIZATION_LANG_TABLE:[I

    .line 532
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "/data/user/0/jp.co.omronsoft.iwnnime.ml/dicset/master/njuserw.a"

    aput-object v1, v0, v4

    const-string v1, "/data/user/0/jp.co.omronsoft.iwnnime.ml/dicset/master/Enjuserw.a"

    aput-object v1, v0, v5

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->NORMALIZATION_OLD_USER_DIC_PATH_TABLE:[Ljava/lang/String;

    .line 533
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "/dicset/master/njuserw.a"

    aput-object v1, v0, v4

    const-string v1, "/dicset/master/Enjuserw.a"

    aput-object v1, v0, v5

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->NORMALIZATION_ADD_USER_DIC_PATH_TABLE:[Ljava/lang/String;

    return-void

    .line 531
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    .line 427
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    .line 429
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    .line 431
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegment:I

    .line 433
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegmentCount:I

    .line 435
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchCnt:I

    .line 437
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCandTable:Ljava/util/HashMap;

    .line 439
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    .line 442
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    .line 448
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsRequestGiji:Z

    .line 451
    const-string v0, ".*[\u3041\u3042\u3043\u3044\u3045\u3046\u3047\u3048\u3049\u304a\u304b\u304c\u304d\u304e\u304f\u3050\u3051\u3052\u3053\u3054\u3055\u3056\u3057\u3058\u3059\u305a\u305b\u305c\u305d\u305e\u305f\u3060\u3061\u3062\u3063\u3064\u3065\u3066\u3067\u3068\u3069\u306a\u306b\u306c\u306d\u306e\u306f\u3070\u3071\u3072\u3073\u3074\u3075\u3076\u3077\u3078\u3079\u307a\u307b\u307c\u307d\u307e\u307f\u3080\u3081\u3082\u3083\u3084\u3085\u3086\u3087\u3088\u3089\u308a\u308b\u308c\u308d\u308e\u308f\u3090\u3091\u3092\u3093].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mAllowDuplicationCharPattern:Ljava/util/regex/Pattern;

    .line 459
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsForbidDuplication:Z

    .line 462
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsConverting:Z

    .line 465
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;-><init>(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLatinFilter:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;

    .line 468
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableConvertedCandidate:Z

    .line 471
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    .line 474
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    .line 477
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasBroke:Z

    .line 499
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    .line 502
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableLearnNumber:Z

    .line 505
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsServiceDics:Z

    .line 508
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasLoadedDownloadDictionary:Z

    .line 511
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mUpdateDownloadDictionary:Z

    .line 514
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mFilesDirPath:Ljava/lang/String;

    .line 517
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsNormalizationUserDic:Z

    .line 660
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    .line 661
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCandTable:Ljava/util/HashMap;

    .line 662
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    .line 663
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addToListWithFullWidth(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "word"
    .parameter "fullWidth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1587
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1588
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    :cond_0
    if-eqz p3, :cond_1

    .line 1591
    invoke-direct {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    :cond_1
    return-void
.end method

.method private clearCandidates()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 874
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    .line 876
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsForbidDuplication:Z

    .line 877
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIWords:Z

    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIButton:Z

    .line 879
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCandTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 880
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLatinFilter:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->clearLatinFilter()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->access$400(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;)V

    .line 881
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->clearCandidates()V

    .line 882
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    .line 883
    return-void
.end method

.method private convertFulltoHalfKanaSymbol(C)Ljava/lang/String;
    .locals 2
    .parameter "convChar"

    .prologue
    .line 2487
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 2488
    .local v0, retString:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 2510
    const/4 v0, 0x0

    .line 2513
    :goto_0
    return-object v0

    .line 2490
    :sswitch_0
    const v1, 0xff64

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 2491
    goto :goto_0

    .line 2494
    :sswitch_1
    const v1, 0xff61

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 2495
    goto :goto_0

    .line 2498
    :sswitch_2
    const v1, 0xff62

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 2499
    goto :goto_0

    .line 2502
    :sswitch_3
    const v1, 0xff63

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 2503
    goto :goto_0

    .line 2506
    :sswitch_4
    const v1, 0xff65

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 2507
    goto :goto_0

    .line 2488
    :sswitch_data_0
    .sparse-switch
        0x3001 -> :sswitch_0
        0x3002 -> :sswitch_1
        0x300c -> :sswitch_2
        0x300d -> :sswitch_3
        0x30fb -> :sswitch_4
    .end sparse-switch
.end method

.method private convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    .line 1571
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1572
    .local v0, chars:[C
    array-length v2, v0

    .line 1573
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1574
    aget-char v3, v0, v1

    const v4, 0xfee0

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 1573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1576
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private createCaseGiji(Ljava/lang/String;ZZ)Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 12
    .parameter "stroke"
    .parameter "init"
    .parameter "fullWidth"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1606
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsRequestGiji:Z

    if-nez v0, :cond_0

    .line 1657
    :goto_0
    return-object v4

    .line 1610
    :cond_0
    const/4 v2, 0x0

    .line 1611
    .local v2, result:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1612
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    .line 1613
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1616
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1617
    .local v11, word:Ljava/lang/String;
    invoke-direct {p0, v9, v11, p3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->addToListWithFullWidth(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 1619
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 1620
    .local v8, length:I
    invoke-direct {p0, v11}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1621
    .local v10, upperCase:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v8, v0, :cond_2

    .line 1623
    if-ge v5, v8, :cond_1

    .line 1624
    invoke-direct {p0, v9, v10, p3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->addToListWithFullWidth(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 1628
    :cond_1
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1629
    .local v7, c:C
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1630
    invoke-direct {p0, v9, v11, p3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->addToListWithFullWidth(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 1633
    .end local v7           #c:C
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1634
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    .line 1635
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiListIndex:I

    .line 1636
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    aget-object v2, v0, v1

    .line 1645
    .end local v8           #length:I
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #upperCase:Ljava/lang/String;
    .end local v11           #word:Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez v2, :cond_5

    .line 1646
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsRequestGiji:Z

    goto :goto_0

    .line 1639
    :cond_4
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiListIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiListIndex:I

    .line 1640
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiListIndex:I

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 1641
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiListIndex:I

    aget-object v2, v0, v3

    goto :goto_1

    .line 1649
    :cond_5
    const/4 v6, 0x0

    .line 1650
    .local v6, attribute:I
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableConvertedCandidate:Z

    if-eqz v0, :cond_6

    .line 1651
    const/16 v6, 0x20

    .line 1657
    :goto_2
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    move v5, v1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V

    move-object v4, v0

    goto/16 :goto_0

    .line 1655
    :cond_6
    const/16 v6, 0x80

    goto :goto_2
.end method

.method private getCandidate(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 8
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 842
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegment:I

    invoke-virtual {v1, v5, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getResultString(II)Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, candidate:Ljava/lang/String;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegment:I

    invoke-virtual {v1, v5, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getResultStroke(II)Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, stroke:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v4

    .line 866
    :goto_0
    return-object v0

    .line 847
    :cond_1
    const/4 v6, 0x0

    .line 848
    .local v6, attribute:I
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->isLearnDictionary(I)Z

    move-result v7

    .line 849
    .local v7, islearn:Z
    const/4 v1, 0x1

    if-ne v7, v1, :cond_2

    .line 850
    const/4 v6, 0x2

    .line 855
    :cond_2
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isLowercaseStrokeInLearning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->isGijiDic(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 858
    const/16 v6, 0x20

    .line 861
    :cond_3
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableConvertedCandidate:Z

    if-eqz v1, :cond_4

    .line 862
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLatinFilter:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->candidateConversion(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->access$300(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 865
    :cond_4
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    const/4 v5, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V

    .line 866
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    goto :goto_0
.end method

.method public static getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    return-object v0
.end method

.method public static getEngineForService()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .locals 1

    .prologue
    .line 680
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mServiceEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mServiceEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    .line 683
    :cond_0
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mServiceEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    return-object v0
.end method

.method private getGijiEijiStr(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)I
    .locals 9
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 2397
    if-nez p1, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return v4

    .line 2400
    :cond_1
    invoke-virtual {p1, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2401
    .local v1, input:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2404
    const/4 v0, 0x0

    .line 2407
    .local v0, candidate:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2425
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2436
    :goto_1
    if-eqz v0, :cond_0

    .line 2440
    new-array v3, v7, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 2441
    .local v3, ss:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    invoke-virtual {p1, v7}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 2442
    .local v2, len:I
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v5, v0, v4, v6}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v5, v3, v4

    .line 2444
    invoke-virtual {p1, v8}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v4

    invoke-virtual {p1, v8, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 2445
    invoke-virtual {p1, v8}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v4

    invoke-virtual {p1, v8, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V

    .line 2446
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegmentCount:I

    .line 2447
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegmentCount:I

    goto :goto_0

    .line 2409
    .end local v2           #len:I
    .end local v3           #ss:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :pswitch_1
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2410
    goto :goto_1

    .line 2413
    :pswitch_2
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2414
    goto :goto_1

    .line 2417
    :pswitch_3
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2418
    goto :goto_1

    .line 2421
    :pswitch_4
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2422
    goto :goto_1

    .line 2429
    :pswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2430
    goto :goto_1

    .line 2407
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getGijiKanaStr(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)I
    .locals 18
    .parameter "text"
    .parameter "type"

    .prologue
    .line 2319
    if-nez p1, :cond_0

    .line 2320
    const/4 v13, 0x0

    .line 2384
    :goto_0
    return v13

    .line 2322
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 2323
    .local v11, tempStr:Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 2324
    .local v12, tempStrLay0:Ljava/lang/String;
    if-eqz v11, :cond_1

    if-nez v12, :cond_2

    .line 2325
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 2327
    :cond_2
    const/4 v9, 0x0

    .line 2328
    .local v9, tempCandidate:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2329
    .local v1, compCandidate:Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    .line 2330
    .local v3, len:I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    .line 2331
    .local v4, lenLay0:I
    const/4 v5, 0x0

    .line 2336
    .local v5, posLay0:I
    const/4 v2, 0x0

    .local v2, count:I
    :goto_1
    if-ge v2, v3, :cond_a

    .line 2337
    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v11, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2338
    .local v10, tempChar:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2339
    .local v8, tc:C
    const/4 v6, 0x0

    .line 2340
    .local v6, ret:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isHiragana(C)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2341
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    move/from16 v0, p2

    invoke-virtual {v13, v10, v14, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getgijistr(Ljava/lang/String;II)I

    move-result v6

    .line 2343
    :cond_3
    if-gtz v6, :cond_9

    .line 2345
    move-object v9, v10

    .line 2346
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isAlphabet(C)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2348
    const/4 v13, 0x4

    move/from16 v0, p2

    if-eq v13, v0, :cond_4

    .line 2349
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2374
    :cond_4
    :goto_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2353
    :cond_5
    const/4 v13, 0x4

    move/from16 v0, p2

    if-ne v13, v0, :cond_8

    .line 2354
    :goto_3
    if-ge v5, v4, :cond_4

    .line 2355
    invoke-virtual {v12, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isAlphabet(C)Z

    move-result v13

    if-nez v13, :cond_7

    .line 2356
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->convertFulltoHalfKanaSymbol(C)Ljava/lang/String;

    move-result-object v9

    .line 2357
    if-nez v9, :cond_6

    .line 2358
    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 2360
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 2361
    goto :goto_2

    .line 2354
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2364
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    if-eqz v13, :cond_4

    .line 2367
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 2372
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getSegmentString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 2378
    .end local v6           #ret:I
    .end local v8           #tc:C
    .end local v10           #tempChar:Ljava/lang/String;
    :cond_a
    const/4 v13, 0x1

    new-array v7, v13, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 2379
    .local v7, ss:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    const/4 v13, 0x0

    new-instance v14, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/16 v16, 0x0

    add-int/lit8 v17, v3, -0x1

    invoke-direct/range {v14 .. v17}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v14, v7, v13

    .line 2381
    const/4 v13, 0x2

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 2382
    const/4 v13, 0x2

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7, v14}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V

    .line 2383
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegmentCount:I

    .line 2384
    move-object/from16 v0, p0

    iget v13, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegmentCount:I

    goto/16 :goto_0
.end method

.method private getSegmentString(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 810
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getSegmentString(I)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x0

    .line 814
    .end local v0           #string:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getSegmentStroke(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 827
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getSegmentStroke(I)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, stroke:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 829
    const/4 v0, 0x0

    .line 831
    .end local v0           #stroke:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getWord(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 7
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1359
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, p1, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getWord(II)Ljava/lang/String;

    move-result-object v3

    .line 1360
    .local v3, stroke:Ljava/lang/String;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/4 v6, 0x1

    invoke-virtual {v1, p1, v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getWord(II)Ljava/lang/String;

    move-result-object v2

    .line 1362
    .local v2, candidate:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v4

    .line 1367
    :goto_0
    return-object v0

    .line 1366
    :cond_1
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move v1, p1

    invoke-direct/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;I)V

    .line 1367
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    goto :goto_0
.end method

.method private isAlphabet(C)Z
    .locals 2
    .parameter "checkChar"

    .prologue
    .line 2473
    const/4 v0, 0x0

    .line 2474
    .local v0, ret:Z
    const/16 v1, 0x41

    if-gt v1, p1, :cond_0

    const/16 v1, 0x5a

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x61

    if-gt v1, p1, :cond_2

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_2

    .line 2475
    :cond_1
    const/4 v0, 0x1

    .line 2477
    :cond_2
    return v0
.end method

.method private isEnableLearnNumber()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2163
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsServiceDics:Z

    if-eqz v1, :cond_1

    .line 2165
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableLearnNumber:Z

    .line 2171
    :cond_0
    :goto_0
    return v0

    .line 2168
    :cond_1
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    if-eqz v1, :cond_2

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    if-ne v1, v0, :cond_0

    .line 2169
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHiragana(C)Z
    .locals 2
    .parameter "checkChar"

    .prologue
    .line 2458
    const/4 v0, 0x0

    .line 2459
    .local v0, ret:Z
    const/16 v1, 0x3041

    if-gt v1, p1, :cond_0

    const/16 v1, 0x3096

    if-gt p1, v1, :cond_0

    .line 2460
    const/4 v0, 0x1

    .line 2462
    :cond_0
    return v0
.end method

.method private isLowercaseStrokeInLearning()Z
    .locals 3

    .prologue
    .line 2002
    const/4 v0, 0x0

    .line 2003
    .local v0, result:Z
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    sparse-switch v1, :sswitch_data_0

    .line 2011
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getConfTable()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2012
    const/4 v0, 0x1

    .line 2019
    :goto_0
    return v0

    .line 2008
    :sswitch_0
    const/4 v0, 0x0

    .line 2009
    goto :goto_0

    .line 2014
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2003
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private isLowercaseStrokeInUser()Z
    .locals 3

    .prologue
    .line 1974
    const/4 v0, 0x0

    .line 1975
    .local v0, result:Z
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    sparse-switch v1, :sswitch_data_0

    .line 1984
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getConfTable()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1985
    const/4 v0, 0x1

    .line 1992
    :goto_0
    return v0

    .line 1981
    :sswitch_0
    const/4 v0, 0x0

    .line 1982
    goto :goto_0

    .line 1987
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1975
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private normalizationUserDic()V
    .locals 21

    .prologue
    .line 2528
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsNormalizationUserDic:Z

    if-eqz v3, :cond_1

    .line 2594
    :cond_0
    :goto_0
    return-void

    .line 2532
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v9

    .line 2533
    .local v9, con:Landroid/content/Context;
    if-nez v9, :cond_2

    .line 2534
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->getCurrentControlPanel()Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    move-result-object v9

    .line 2537
    :cond_2
    if-nez v9, :cond_3

    .line 2538
    const-string v3, "iWnn"

    const-string v4, "normalizationUserDic() Fail to get context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2542
    :cond_3
    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 2543
    .local v18, pref:Landroid/content/SharedPreferences;
    const-string v3, "normalizationUserDic"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 2544
    .local v20, wasNormalization:Z
    if-nez v20, :cond_0

    .line 2548
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsNormalizationUserDic:Z

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mFilesDirPath:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2551
    .local v19, tempDirPath:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, cnt:I
    :goto_1
    sget-object v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->NORMALIZATION_LANG_TABLE:[I

    array-length v3, v3

    if-ge v8, v3, :cond_7

    .line 2552
    new-instance v17, Ljava/io/File;

    sget-object v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->NORMALIZATION_OLD_USER_DIC_PATH_TABLE:[Ljava/lang/String;

    aget-object v3, v3, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2553
    .local v17, oldUserDic:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2551
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2557
    :cond_5
    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 2558
    .local v16, newUserDicPath:Ljava/lang/String;
    sget-object v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->NORMALIZATION_LANG_TABLE:[I

    aget v3, v3, v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getEngineInterface(II)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    move-result-object v13

    .line 2560
    .local v13, engineInterface:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->setDirPath(Ljava/lang/String;)V

    .line 2561
    invoke-virtual {v13}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getWords()Ljava/util/ArrayList;

    move-result-object v14

    .line 2563
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/WnnWord;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 2564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->NORMALIZATION_ADD_USER_DIC_PATH_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2565
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2566
    .local v15, newUserDic:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v10

    .line 2567
    .local v10, delete:Z
    if-nez v10, :cond_6

    .line 2568
    const-string v3, "iWnn"

    const-string v4, "normalizationUserDic() Fail to delete new user dic!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2572
    :cond_6
    const/4 v2, 0x0

    .line 2573
    .local v2, channelSrc:Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 2575
    .local v7, channelDest:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 2576
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 2578
    const-wide/16 v3, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2582
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    .line 2583
    invoke-static {v7}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    goto :goto_2

    .line 2579
    :catch_0
    move-exception v11

    .line 2580
    .local v11, e:Ljava/io/IOException;
    :try_start_1
    const-string v3, "iWnn"

    const-string v4, "normalizationUserDic() Fail to copy old user dic :"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2582
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    .line 2583
    invoke-static {v7}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_2

    .line 2582
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    .line 2583
    invoke-static {v7}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->closeChannel(Ljava/nio/channels/FileChannel;)V

    throw v3

    .line 2588
    .end local v2           #channelSrc:Ljava/nio/channels/FileChannel;
    .end local v7           #channelDest:Ljava/nio/channels/FileChannel;
    .end local v10           #delete:Z
    .end local v13           #engineInterface:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;
    .end local v14           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/WnnWord;>;"
    .end local v15           #newUserDic:Ljava/io/File;
    .end local v16           #newUserDicPath:Ljava/lang/String;
    .end local v17           #oldUserDic:Ljava/io/File;
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsNormalizationUserDic:Z

    .line 2589
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 2590
    .local v12, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "normalizationUserDic"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2591
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2592
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->close()V

    .line 2593
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->init(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setDictionary(II)Z
    .locals 1
    .parameter "language"
    .parameter "dictionary"

    .prologue
    const/4 v0, 0x0

    .line 740
    invoke-direct {p0, p1, p2, v0, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setDictionary(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "language"
    .parameter "dictionary"
    .parameter "serviceFile"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 754
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->normalizationUserDic()V

    .line 755
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getConfTable()[Ljava/lang/String;

    move-result-object v6

    .line 756
    .local v6, confTable:[Ljava/lang/String;
    if-nez p3, :cond_2

    if-ltz p1, :cond_0

    array-length v0, v6

    if-gt v0, p1, :cond_2

    .line 757
    :cond_0
    const-string v0, "iWnn"

    const-string v1, "iWnnEngine::setDictionary() END unknown Language type error. return = false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_1
    :goto_0
    return v8

    .line 760
    :cond_2
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    if-ne v0, p1, :cond_3

    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mUpdateDownloadDictionary:Z

    if-eqz v0, :cond_1

    .line 764
    :cond_3
    const/16 v0, 0x39

    if-le v0, p2, :cond_4

    const/4 v0, -0x1

    if-lt v0, p2, :cond_5

    .line 765
    :cond_4
    const-string v0, "iWnn"

    const-string v1, "iWnnEngine::setDictionary() END unknown dictionary type error. return = false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 769
    :cond_5
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDownloadDictionary()V

    .line 770
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setServicePackageName(Ljava/lang/String;)V

    .line 773
    if-eqz p3, :cond_7

    .line 774
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsServiceDics:Z

    .line 775
    move-object v3, p3

    .line 779
    .local v3, confFile:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    if-eq p1, v1, :cond_8

    :goto_2
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mFilesDirPath:Ljava/lang/String;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setDictionary(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v7

    .line 781
    .local v7, success:Z
    if-eqz v7, :cond_6

    .line 782
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    .line 783
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    .line 784
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->clearCandidates()V

    .line 785
    invoke-virtual {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setUpdateDownloadDictionary(Z)V

    :cond_6
    move v8, v7

    .line 788
    goto :goto_0

    .line 777
    .end local v3           #confFile:Ljava/lang/String;
    .end local v7           #success:Z
    :cond_7
    aget-object v3, v6, p1

    .restart local v3       #confFile:Ljava/lang/String;
    goto :goto_1

    :cond_8
    move v4, v8

    .line 779
    goto :goto_2
.end method

.method private stripAlphabetsIfJP(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 1957
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    if-nez v1, :cond_0

    .line 1958
    const-string v1, "^[a-zA-Z]*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1959
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1960
    const-string v1, "[a-zA-Z]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1961
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1964
    .end local v0           #p:Ljava/util/regex/Pattern;
    :cond_0
    return-object p1
.end method

.method private toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 906
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getConfTable()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 907
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_TABLE:[Ljava/util/Locale;

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 909
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 892
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getConfTable()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 893
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_TABLE:[Ljava/util/Locale;

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 895
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
    .locals 7
    .parameter "word"

    .prologue
    .line 1384
    if-nez p1, :cond_1

    .line 1385
    const-string v0, "iWnn"

    const-string v1, "iWnnEngine::addWord() END parameter error. return = false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const/4 v6, -0x1

    .line 1412
    :cond_0
    :goto_0
    return v6

    .line 1389
    :cond_1
    const/4 v3, 0x0

    .line 1390
    .local v3, hinsi:I
    iget v0, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 1391
    const/4 v4, 0x1

    .line 1395
    .local v4, type:I
    :goto_1
    iget v0, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_4

    .line 1396
    const/4 v5, 0x0

    .line 1402
    .local v5, relation:I
    :goto_2
    iget v0, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_2

    .line 1403
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isLowercaseStrokeInUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1404
    iget-object v0, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    .line 1407
    :cond_2
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    iget-object v2, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->addWord(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v6

    .line 1408
    .local v6, ret:I
    if-gez v6, :cond_0

    .line 1409
    const-string v0, "iWnn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iWnnEngine::addWord() error. ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1393
    .end local v4           #type:I
    .end local v5           #relation:I
    .end local v6           #ret:I
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #type:I
    goto :goto_1

    .line 1398
    :cond_4
    const/4 v5, 0x1

    .restart local v5       #relation:I
    goto :goto_2
.end method

.method public breakSequence()V
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasBroke:Z

    .line 800
    return-void
.end method

.method public checkDecoEmojiDictionary()I
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->checkDecoEmojiDictionary()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 935
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    .line 936
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    .line 937
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->unmountDictionary()I

    .line 938
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->clearCandidates()V

    .line 939
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsServiceDics:Z

    .line 940
    return-void
.end method

.method public controlDecoEmojiDictionary(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter "id"
    .parameter "yomi"
    .parameter "hinsi"
    .parameter "control_flag"

    .prologue
    .line 2229
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->controlDecoEmojiDictionary(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2230
    return-void
.end method

.method public convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)I
    .locals 14
    .parameter "text"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 993
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    .line 994
    const/4 v10, 0x0

    iput-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    .line 995
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->clearCandidates()V

    .line 996
    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegment:I

    .line 997
    iput v9, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegmentCount:I

    .line 998
    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsRequestGiji:Z

    .line 999
    iput-boolean v12, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsConverting:Z

    .line 1000
    iput-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasSearchWords:Z

    .line 1001
    iget-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIEnableFromSettings:Z

    iput-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIEnable:Z

    .line 1003
    if-nez p1, :cond_0

    move v6, v9

    .line 1042
    :goto_0
    return v6

    .line 1006
    :cond_0
    iget-boolean v10, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableConvertedCandidate:Z

    if-eqz v10, :cond_1

    .line 1007
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLatinFilter:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;

    invoke-virtual {p1, v12}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v11

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->setSearchKey(Ljava/lang/String;)V
    invoke-static {v10, v11}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->access$500(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;Ljava/lang/String;)V

    .line 1010
    :cond_1
    invoke-virtual {p1, v12}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1011
    .local v2, input:Ljava/lang/String;
    if-nez v2, :cond_2

    move v6, v9

    goto :goto_0

    .line 1013
    :cond_2
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    .line 1014
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mAllowDuplicationCharPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1015
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1016
    iput-boolean v12, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsForbidDuplication:Z

    .line 1020
    :cond_3
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {p1, v12}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v11

    invoke-virtual {v10, v2, v11}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->conv(Ljava/lang/String;I)I

    move-result v6

    .line 1021
    .local v6, ret:I
    if-gtz v6, :cond_4

    move v6, v9

    .line 1022
    goto :goto_0

    .line 1026
    :cond_4
    new-array v7, v6, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 1028
    .local v7, ss:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    const/4 v5, 0x0

    .line 1029
    .local v5, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_7

    .line 1030
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getSegmentString(I)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, candidate:Ljava/lang/String;
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getSegmentStroke(I)Ljava/lang/String;

    move-result-object v8

    .line 1032
    .local v8, stroke:Ljava/lang/String;
    if-eqz v0, :cond_5

    if-nez v8, :cond_6

    :cond_5
    move v6, v9

    .line 1033
    goto :goto_0

    .line 1035
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    .line 1036
    .local v3, len:I
    new-instance v10, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    add-int v11, v5, v3

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v10, v0, v5, v11}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v10, v7, v1

    .line 1037
    add-int/2addr v5, v3

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1039
    .end local v0           #candidate:Ljava/lang/String;
    .end local v3           #len:I
    .end local v8           #stroke:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, v13}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v9

    invoke-virtual {p1, v13, v9}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 1040
    invoke-virtual {p1, v13}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v9

    invoke-virtual {p1, v13, v7, v9}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V

    .line 1041
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegmentCount:I

    goto :goto_0
.end method

.method public createAdditionalDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 1692
    const/16 v0, 0x23

    if-ge p1, v0, :cond_0

    .line 1693
    const/4 v0, 0x0

    .line 1695
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->createAdditionalDictionary(I)Z

    move-result v0

    goto :goto_0
.end method

.method public createAutoLearningDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 1731
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_0

    .line 1732
    const/4 v0, 0x0

    .line 1734
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->createAutoLearningDictionary(I)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteAdditionalDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 1705
    const/16 v0, 0x23

    if-ge p1, v0, :cond_0

    .line 1706
    const/4 v0, 0x0

    .line 1708
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->deleteAdditionalDictionary(I)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteAutoLearningDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 1744
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_0

    .line 1745
    const/4 v0, 0x0

    .line 1747
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->deleteAutoLearningDictionary(I)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 4
    .parameter "word"

    .prologue
    const/4 v1, 0x0

    .line 1427
    if-nez p1, :cond_1

    .line 1428
    const-string v2, "iWnn"

    const-string v3, "iWnnEngine::deleteWord() END parameter error. return = false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_0
    :goto_0
    return v1

    .line 1433
    :cond_1
    iget v2, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 1434
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    iget v3, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->id:I

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->deleteWord(I)I

    move-result v0

    .line 1438
    .local v0, result:I
    :goto_1
    if-ltz v0, :cond_0

    .line 1442
    const/4 v1, 0x1

    goto :goto_0

    .line 1436
    .end local v0           #result:I
    :cond_2
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    iget v3, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->id:I

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->deleteSearchWord(I)I

    move-result v0

    .restart local v0       #result:I
    goto :goto_1
.end method

.method public getConfTable()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2182
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->CONF_TABLE:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2183
    .local v0, confTable:[Ljava/lang/String;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isTabletMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2184
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->CONF_TABLET_TABLE:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #confTable:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 2186
    .restart local v0       #confTable:[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getDictionary()I
    .locals 1

    .prologue
    .line 1908
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 1918
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    return v0
.end method

.method public getLocale(I)Ljava/util/Locale;
    .locals 2
    .parameter "language"

    .prologue
    .line 1942
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getConfTable()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1943
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_TABLE:[Ljava/util/Locale;

    aget-object v0, v0, p1

    .line 1945
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocaleString(I)Ljava/lang/String;
    .locals 2
    .parameter "language"

    .prologue
    .line 1928
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getConfTable()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1929
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->LOCALE_TABLE:[Ljava/util/Locale;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1931
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 3

    .prologue
    .line 1069
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getNextCandidateInternal()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    .line 1070
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-eqz v0, :cond_0

    .line 1071
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCandTable:Ljava/util/HashMap;

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    :cond_0
    return-object v0
.end method

.method public getNextCandidateInternal()Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasSearchWords:Z

    if-eqz v1, :cond_2

    .line 1085
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchCnt:I

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getWord(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    .line 1086
    if-eqz v0, :cond_0

    .line 1087
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchCnt:I

    :cond_0
    :goto_0
    move-object v4, v0

    .line 1169
    :cond_1
    return-object v4

    .line 1090
    :cond_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1094
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1095
    invoke-direct {p0, v4, v5, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->createCaseGiji(Ljava/lang/String;ZZ)Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    .line 1138
    :cond_3
    :goto_1
    if-nez v0, :cond_0

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIEnable:Z

    if-eqz v1, :cond_0

    .line 1139
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIButton:Z

    if-eqz v1, :cond_b

    .line 1140
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIButton:Z

    .line 1141
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    const-string v2, ""

    const-string v3, ""

    const/16 v6, 0x200

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V

    .line 1142
    .restart local v0       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    goto :goto_0

    .line 1098
    :cond_4
    const/4 v8, 0x0

    .local v8, cnt:I
    :goto_2
    const/16 v1, 0x15e

    if-ge v8, v1, :cond_8

    .line 1099
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getCandidate(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_8

    .line 1101
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->isGijiDic(I)Z

    move-result v10

    .line 1102
    .local v10, giji:Z
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    .line 1104
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsForbidDuplication:Z

    if-nez v1, :cond_5

    if-eqz v10, :cond_7

    .line 1105
    :cond_5
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCandTable:Ljava/util/HashMap;

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1098
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1108
    :cond_7
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableConvertedCandidate:Z

    if-eqz v1, :cond_8

    .line 1109
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLatinFilter:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->putCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    invoke-static {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->access$600(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1118
    .end local v10           #giji:Z
    :cond_8
    if-nez v0, :cond_3

    .line 1119
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableConvertedCandidate:Z

    if-eqz v1, :cond_a

    .line 1120
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_9

    .line 1121
    const/4 v0, 0x0

    goto :goto_1

    .line 1123
    :cond_9
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->createCaseGiji(Ljava/lang/String;ZZ)Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    goto :goto_1

    .line 1126
    :cond_a
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsConverting:Z

    if-nez v1, :cond_3

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    if-nez v1, :cond_3

    .line 1127
    const-string v1, "^[a-z]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 1128
    .local v7, alphabetPattern:Ljava/util/regex/Pattern;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    invoke-virtual {v1, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v9

    .line 1129
    .local v9, cursor:I
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v1, v5, v5, v2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v11

    .line 1130
    .local v11, text:Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1131
    invoke-direct {p0, v11, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->createCaseGiji(Ljava/lang/String;ZZ)Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    goto/16 :goto_1

    .line 1143
    .end local v7           #alphabetPattern:Ljava/util/regex/Pattern;
    .end local v8           #cnt:I
    .end local v9           #cursor:I
    .end local v11           #text:Ljava/lang/String;
    :cond_b
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIWords:Z

    if-eqz v1, :cond_0

    .line 1144
    const/4 v8, 0x0

    .restart local v8       #cnt:I
    :goto_3
    const/16 v1, 0x1f4

    if-ge v8, v1, :cond_0

    .line 1145
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    .line 1146
    if-eqz v0, :cond_d

    .line 1147
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    .line 1148
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCandTable:Ljava/util/HashMap;

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1144
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1151
    :cond_c
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    goto/16 :goto_0

    .line 1153
    :cond_d
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isWebApiAllSuccessReceived()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1154
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    const-string v2, ""

    const-string v3, ""

    const/16 v6, 0x4000

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V

    .line 1155
    .restart local v0       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    .line 1156
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    .line 1157
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIWords:Z

    goto/16 :goto_0

    .line 1158
    :cond_e
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    if-gtz v1, :cond_0

    .line 1159
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    const-string v2, ""

    const-string v3, ""

    const/16 v6, 0x800

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V

    .line 1160
    .restart local v0       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    .line 1161
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    goto/16 :goto_0
.end method

.method public getSendingYomiToWebApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->getSendingYomi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserDictionaryWords()[Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 1

    .prologue
    .line 1854
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebAPIWordsEnabled()Z
    .locals 1

    .prologue
    .line 2045
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIWords:Z

    return v0
.end method

.method public getgijistr(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)I
    .locals 1
    .parameter "text"
    .parameter "type"

    .prologue
    .line 2288
    const/4 v0, 0x0

    .line 2289
    .local v0, ret:I
    packed-switch p2, :pswitch_data_0

    .line 2308
    :goto_0
    return v0

    .line 2293
    :pswitch_0
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getGijiKanaStr(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)I

    move-result v0

    .line 2294
    goto :goto_0

    .line 2302
    :pswitch_1
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getGijiEijiStr(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)I

    move-result v0

    .line 2303
    goto :goto_0

    .line 2289
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .parameter "dirPath"

    .prologue
    .line 922
    if-eqz p1, :cond_0

    .line 923
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mFilesDirPath:Ljava/lang/String;

    .line 925
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mFilesDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->init(Ljava/lang/String;)I

    .line 926
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->clearCandidates()V

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsConverting:Z

    .line 928
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->init()V

    .line 929
    return-void
.end method

.method public initGijiList()V
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2194
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    .line 2195
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiListIndex:I

    .line 2196
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsRequestGiji:Z

    .line 2198
    :cond_0
    return-void
.end method

.method public initializeDictionary(I)Z
    .locals 1
    .parameter "dictionary"

    .prologue
    .line 1800
    const/4 v0, 0x0

    return v0
.end method

.method public initializeDictionary(II)Z
    .locals 1
    .parameter "dictionary"
    .parameter "type"

    .prologue
    .line 1794
    const/4 v0, 0x0

    return v0
.end method

.method public initializeLearnDictionary(I)Z
    .locals 3
    .parameter "language"

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 1770
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, v0, p1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->runInitialize(III)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1774
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializeUserDictionary(II)Z
    .locals 3
    .parameter "language"
    .parameter "setType"

    .prologue
    const/4 v0, 0x0

    .line 1669
    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 v1, 0xc

    if-eq p2, v1, :cond_1

    const/16 v1, 0xd

    if-eq p2, v1, :cond_1

    const/16 v1, 0xe

    if-eq p2, v1, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return v0

    .line 1677
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->runInitialize(III)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1679
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isConverting()Z
    .locals 1

    .prologue
    .line 2206
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsConverting:Z

    return v0
.end method

.method public isWebApiAllReceived()Z
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->isWebApiAllReceived()Z

    move-result v0

    return v0
.end method

.method public isWebApiAllSuccessReceived()Z
    .locals 1

    .prologue
    .line 2283
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->isWebApiAllSuccessReceived()Z

    move-result v0

    return v0
.end method

.method public isWebApiSuccessReceived()Z
    .locals 1

    .prologue
    .line 2274
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->isWebApiSuccessReceived()Z

    move-result v0

    return v0
.end method

.method public learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 16
    .parameter "word"

    .prologue
    .line 1195
    const/4 v12, 0x0

    .line 1196
    .local v12, noDictionary:Z
    const/4 v7, 0x0

    .line 1200
    .local v7, breakSequence:Z
    if-eqz p1, :cond_13

    .line 1201
    :try_start_0
    move-object/from16 v0, p1

    iget v10, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->id:I

    .line 1203
    .local v10, index:I
    move-object/from16 v0, p1

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    .line 1204
    const/4 v12, 0x1

    .line 1207
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isEnableLearnNumber()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1208
    const-string v1, ".*[0-9\uff10\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19].*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 1209
    .local v13, numberPattern:Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 1211
    .local v11, m:Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1212
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    move-object/from16 v0, p1

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->id:I

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->isGijiDic(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1215
    :cond_2
    const/4 v12, 0x1

    .line 1219
    .end local v11           #m:Ljava/util/regex/Matcher;
    .end local v13           #numberPattern:Ljava/util/regex/Pattern;
    :cond_3
    if-eqz v12, :cond_4

    .line 1220
    const/4 v7, 0x1

    .line 1223
    :cond_4
    move-object/from16 v0, p1

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 1226
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isLowercaseStrokeInLearning()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1227
    move-object/from16 v0, p1

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    or-int/lit16 v1, v1, 0x100

    move-object/from16 v0, p1

    iput v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    .line 1236
    :cond_5
    :goto_0
    move-object/from16 v0, p1

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_6

    move-object/from16 v0, p1

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_6

    move-object/from16 v0, p1

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_6

    move-object/from16 v0, p1

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_6

    move-object/from16 v0, p1

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_11

    .line 1242
    :cond_6
    if-eqz v12, :cond_9

    .line 1243
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mFilesDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->init(Ljava/lang/String;)I

    .line 1244
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasBroke:Z

    .line 1245
    const/4 v14, 0x1

    .line 1307
    .end local v10           #index:I
    :goto_1
    return v14

    .line 1229
    .restart local v10       #index:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->noConv(Ljava/lang/String;)Z

    move-result v15

    .line 1230
    .local v15, success:Z
    if-nez v15, :cond_8

    .line 1231
    const/4 v14, 0x0

    goto :goto_1

    .line 1233
    :cond_8
    const/4 v10, -0x1

    goto :goto_0

    .line 1252
    .end local v15           #success:Z
    :cond_9
    const/4 v5, 0x1

    .line 1253
    .local v5, type:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasBroke:Z

    if-eqz v1, :cond_b

    .line 1254
    const/4 v6, 0x0

    .line 1260
    .local v6, relation:I
    :goto_2
    move-object/from16 v0, p1

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_a

    .line 1261
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isLowercaseStrokeInLearning()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1262
    move-object/from16 v0, p1

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    .line 1265
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->lexicalCategory:I

    invoke-virtual/range {v1 .. v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->addWord(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v14

    .line 1266
    .local v14, ret:I
    if-gez v14, :cond_c

    .line 1267
    const/4 v14, 0x0

    goto :goto_1

    .line 1256
    .end local v6           #relation:I
    .end local v14           #ret:I
    :cond_b
    const/4 v6, 0x1

    .restart local v6       #relation:I
    goto :goto_2

    .line 1270
    .restart local v14       #ret:I
    :cond_c
    move-object/from16 v0, p1

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_e

    .line 1271
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegment:I

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegmentCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_d

    .line 1272
    move-object/from16 v0, p0

    iput-boolean v7, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasBroke:Z

    .line 1273
    const/4 v14, 0x1

    goto :goto_1

    .line 1275
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegment:I

    .line 1276
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegmentCount:I

    .line 1281
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->forecast(Ljava/lang/String;II)I

    move-result v14

    .line 1282
    if-nez v14, :cond_f

    .line 1283
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1285
    :cond_f
    const/4 v10, 0x0

    .line 1286
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v10}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getResultString(II)Ljava/lang/String;

    move-result-object v8

    .line 1287
    .local v8, candidate:Ljava/lang/String;
    :goto_3
    if-eqz v8, :cond_10

    .line 1288
    move-object/from16 v0, p1

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1293
    :cond_10
    const/4 v12, 0x1

    .line 1300
    .end local v5           #type:I
    .end local v6           #relation:I
    .end local v8           #candidate:Ljava/lang/String;
    .end local v14           #ret:I
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegment:I

    if-nez v12, :cond_14

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasBroke:Z

    invoke-virtual {v2, v3, v10, v1, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->select(IIZZ)I

    move-result v1

    if-ltz v1, :cond_15

    const/4 v14, 0x1

    .line 1301
    .local v14, ret:Z
    :goto_6
    move-object/from16 v0, p0

    iput-boolean v7, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasBroke:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1304
    .end local v10           #index:I
    .end local v14           #ret:Z
    :catch_0
    move-exception v9

    .line 1305
    .local v9, ex:Ljava/lang/Exception;
    const-string v1, "OpenWnn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iWnnEngine:learn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1291
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v5       #type:I
    .restart local v6       #relation:I
    .restart local v8       #candidate:Ljava/lang/String;
    .restart local v10       #index:I
    .local v14, ret:I
    :cond_12
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/4 v2, 0x0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v2, v10}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getResultString(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_3

    .line 1297
    .end local v5           #type:I
    .end local v6           #relation:I
    .end local v8           #candidate:Ljava/lang/String;
    .end local v10           #index:I
    .end local v14           #ret:I
    :cond_13
    const/4 v10, -0x1

    .restart local v10       #index:I
    goto :goto_4

    .line 1300
    :cond_14
    const/4 v1, 0x0

    goto :goto_5

    :cond_15
    const/4 v14, 0x0

    goto :goto_6
.end method

.method public learn(Z)Z
    .locals 7
    .parameter "learn"

    .prologue
    .line 1328
    const/4 v2, 0x0

    .line 1329
    .local v2, select_result:I
    const/4 v1, 0x0

    .line 1332
    .local v1, ret:Z
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegment:I

    const/4 v5, -0x1

    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasBroke:Z

    invoke-virtual {v3, v4, v5, p1, v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->select(IIZZ)I

    move-result v2

    .line 1333
    if-gez v2, :cond_0

    .line 1334
    const-string v3, "iWnn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iWnnEngine::learn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "failure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/4 v1, 0x0

    .line 1340
    :goto_0
    if-nez p1, :cond_1

    .line 1341
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasBroke:Z

    .line 1348
    :goto_1
    return v1

    .line 1338
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1343
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasBroke:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1345
    :catch_0
    move-exception v0

    .line 1346
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "OpenWnn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iWnnEngine::learn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public makeCandidateListOf(I)I
    .locals 5
    .parameter "clausePosition"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1462
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegment:I

    .line 1463
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    .line 1464
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    .line 1465
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIWords:Z

    .line 1466
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIButton:Z

    .line 1467
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsForbidDuplication:Z

    .line 1468
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCandTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1469
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLatinFilter:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->clearLatinFilter()V
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->access$400(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;)V

    .line 1470
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1481
    :cond_0
    :goto_0
    return v2

    .line 1473
    :cond_1
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getCandidate(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v1

    .line 1474
    .local v1, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-eqz v1, :cond_0

    .line 1477
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mAllowDuplicationCharPattern:Ljava/util/regex/Pattern;

    iget-object v4, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1478
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1479
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsForbidDuplication:Z

    :cond_2
    move v2, v3

    .line 1481
    goto :goto_0
.end method

.method public onDoneGettingCandidates()V
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->onDoneGettingCandidates()V

    .line 2090
    return-void
.end method

.method public predict(Ljp/co/omronsoft/iwnnime/ml/ComposingText;II)I
    .locals 7
    .parameter "text"
    .parameter "minLen"
    .parameter "maxLen"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 944
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    .line 945
    const/4 v3, 0x0

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaseGijiList:[Ljava/lang/String;

    .line 946
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->clearCandidates()V

    .line 947
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegment:I

    .line 948
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSegmentCount:I

    .line 949
    if-nez p2, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsRequestGiji:Z

    .line 950
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsConverting:Z

    .line 951
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasSearchWords:Z

    .line 953
    if-nez p1, :cond_2

    .line 987
    :cond_0
    :goto_1
    return v5

    :cond_1
    move v3, v5

    .line 949
    goto :goto_0

    .line 956
    :cond_2
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableConvertedCandidate:Z

    if-eqz v3, :cond_3

    .line 957
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLatinFilter:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;

    invoke-virtual {p1, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v6

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->setSearchKey(Ljava/lang/String;)V
    invoke-static {v3, v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->access$500(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;Ljava/lang/String;)V

    .line 960
    :cond_3
    invoke-virtual {p1, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, input:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 963
    if-ltz p3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p3, v3, :cond_4

    .line 964
    invoke-virtual {v0, v5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 967
    :cond_4
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;

    .line 968
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mAllowDuplicationCharPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 969
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_5

    .line 970
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mIsForbidDuplication:Z

    .line 974
    :cond_5
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->stripAlphabetsIfJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 975
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v3, v0, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->forecast(Ljava/lang/String;II)I

    move-result v2

    .line 978
    .local v2, ret:I
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIEnableFromSettings:Z

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIEnable:Z

    .line 979
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIEnable:Z

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p2, :cond_6

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    if-eq v3, v4, :cond_6

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 984
    :cond_6
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIEnable:Z

    :cond_7
    move v5, v2

    .line 987
    goto :goto_1
.end method

.method public refreshConfFile()Z
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->refreshConfFile()Z

    move-result v0

    return v0
.end method

.method public resetDecoEmojiDictionary()I
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->resetDecoEmojiDictionary()I

    move-result v0

    return v0
.end method

.method public resetExtendedInfo(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 1784
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->resetExtendedInfo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1786
    const/4 v0, 0x1

    .line 1788
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAdditionalDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 1718
    const/16 v0, 0x23

    if-ge p1, v0, :cond_0

    .line 1719
    const/4 v0, 0x0

    .line 1721
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->saveAdditionalDictionary(I)Z

    move-result v0

    goto :goto_0
.end method

.method public saveAutoLearningDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 1757
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_0

    .line 1758
    const/4 v0, 0x0

    .line 1760
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->saveAutoLearningDictionary(I)Z

    move-result v0

    goto :goto_0
.end method

.method public searchWords(Ljava/lang/String;)I
    .locals 6
    .parameter "key"

    .prologue
    .line 1048
    const/4 v3, 0x0

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchCnt:I

    .line 1051
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1052
    const/4 v0, 0x1

    .line 1053
    .local v0, method:I
    const/4 v1, 0x1

    .line 1058
    .local v1, order:I
    :goto_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v3, v0, v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->searchWord(IILjava/lang/String;)I

    move-result v2

    .line 1059
    .local v2, ret:I
    if-gez v2, :cond_0

    .line 1060
    const-string v3, "iWnn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iWnnEngine::searchWord() error. ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasSearchWords:Z

    .line 1064
    return v2

    .line 1055
    .end local v0           #method:I
    .end local v1           #order:I
    .end local v2           #ret:I
    :cond_1
    const/4 v0, 0x0

    .line 1056
    .restart local v0       #method:I
    const/4 v1, 0x0

    .restart local v1       #order:I
    goto :goto_0
.end method

.method public searchWords(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
    .locals 8
    .parameter "word"

    .prologue
    .line 1811
    const/4 v3, 0x0

    .line 1813
    .local v3, ret:I
    if-nez p1, :cond_0

    .line 1814
    const-string v5, "iWnn"

    const-string v6, "iWnnEngine::searchWords() END parameter error. return = false"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1843
    .end local v3           #ret:I
    .local v4, ret:I
    :goto_0
    return v4

    .line 1818
    .end local v4           #ret:I
    .restart local v3       #ret:I
    :cond_0
    iget v5, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 1821
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    .line 1822
    .local v0, dictionary:I
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    .line 1823
    .local v2, language:I
    const/16 v5, 0xb

    invoke-direct {p0, v2, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1824
    const-string v5, "iWnn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iWnnEngine::searchWords() END setDictionary() failed error. return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1825
    .end local v3           #ret:I
    .restart local v4       #ret:I
    goto :goto_0

    .line 1828
    .end local v4           #ret:I
    .restart local v3       #ret:I
    :cond_1
    iget-object v5, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->searchWords(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 1829
    :cond_2
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v1

    .local v1, getWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-eqz v1, :cond_3

    .line 1831
    iget-object v5, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-direct {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1832
    const/4 v3, 0x1

    .line 1836
    :cond_3
    if-eqz v1, :cond_4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 1841
    .end local v1           #getWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_4
    invoke-direct {p0, v2, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(II)Z

    .end local v0           #dictionary:I
    .end local v2           #language:I
    :cond_5
    move v4, v3

    .line 1843
    .end local v3           #ret:I
    .restart local v4       #ret:I
    goto :goto_0
.end method

.method public setConvertedCandidateEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1898
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableConvertedCandidate:Z

    .line 1899
    return-void
.end method

.method public setDecoEmojiFilter(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2216
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setDecoEmojiFilter(Z)V

    .line 2217
    return-void
.end method

.method public setDictionary(III)Z
    .locals 6
    .parameter "language"
    .parameter "setType"
    .parameter "caller"

    .prologue
    const/4 v4, 0x0

    .line 717
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDictionary(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "language"
    .parameter "setType"
    .parameter "caller"
    .parameter "serviceFile"
    .parameter "packageName"

    .prologue
    .line 699
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaller:I

    if-eq v0, p3, :cond_0

    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    if-eq v0, p1, :cond_0

    .line 700
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->close()V

    .line 702
    :cond_0
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCaller:I

    .line 703
    invoke-direct {p0, p1, p2, p4, p5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDictionary(Ljava/lang/Object;)Z
    .locals 3
    .parameter "caller"

    .prologue
    .line 729
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(III)Z

    move-result v0

    return v0
.end method

.method public setDownloadDictionary()V
    .locals 1

    .prologue
    .line 2096
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasLoadedDownloadDictionary:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2097
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->setDownloadDictionary(Landroid/content/Context;)Z

    .line 2098
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mHasLoadedDownloadDictionary:Z

    .line 2100
    :cond_0
    return-void
.end method

.method public setDownloadDictionary(ILjava/lang/String;Ljava/lang/String;IIIIIIZI)V
    .locals 12
    .parameter "index"
    .parameter "name"
    .parameter "file"
    .parameter "convertHigh"
    .parameter "convertBase"
    .parameter "predictHigh"
    .parameter "predictBase"
    .parameter "morphoHigh"
    .parameter "morphoBase"
    .parameter "cache"
    .parameter "limit"

    .prologue
    .line 2120
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setDownloadDictionary(ILjava/lang/String;Ljava/lang/String;IIIIIIZI)V

    .line 2133
    return-void
.end method

.method public setEmailAddressFilter(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1886
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setEmailAddressFilter(Z)V

    .line 1887
    return-void
.end method

.method public setEmojiFilter(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1874
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setEmojiFilter(Z)V

    .line 1875
    return-void
.end method

.method public setEnableLearnNumber(Z)V
    .locals 0
    .parameter "enableLearnNumber"

    .prologue
    .line 2153
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mEnableLearnNumber:Z

    .line 2154
    return-void
.end method

.method public setFlexibleCharset(II)I
    .locals 5
    .parameter "charset"
    .parameter "keytype"

    .prologue
    const/4 v4, 0x1

    .line 1545
    const/4 v0, 0x0

    .line 1547
    .local v0, ret:I
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v1, v0

    .line 1561
    .end local v0           #ret:I
    .local v1, ret:I
    :goto_0
    return v1

    .line 1550
    .end local v1           #ret:I
    .restart local v0       #ret:I
    :cond_0
    if-eqz p1, :cond_1

    if-eq v4, p1, :cond_1

    move v1, v0

    .line 1552
    .end local v0           #ret:I
    .restart local v1       #ret:I
    goto :goto_0

    .line 1554
    .end local v1           #ret:I
    .restart local v0       #ret:I
    :cond_1
    if-eqz p2, :cond_2

    if-eq v4, p2, :cond_2

    move v1, v0

    .line 1556
    .end local v0           #ret:I
    .restart local v1       #ret:I
    goto :goto_0

    .line 1558
    .end local v1           #ret:I
    .restart local v0       #ret:I
    :cond_2
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v2, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setFlexibleCharset(II)I

    move-result v0

    .line 1559
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mFilesDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->init(Ljava/lang/String;)I

    move v1, v0

    .line 1561
    .end local v0           #ret:I
    .restart local v1       #ret:I
    goto :goto_0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 1448
    const-string v1, "opt_multiwebapi"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1449
    .local v0, className:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIEnableFromSettings:Z

    .line 1450
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->setPreferences(Landroid/content/SharedPreferences;)V

    .line 1451
    return-void

    .line 1449
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUpdateDownloadDictionary(Z)V
    .locals 0
    .parameter "update"

    .prologue
    .line 2521
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mUpdateDownloadDictionary:Z

    .line 2522
    return-void
.end method

.method public setWebAPIWordsEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 2028
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIWords:Z

    .line 2029
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIWords:Z

    if-eqz v0, :cond_0

    .line 2030
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIButton:Z

    .line 2034
    :goto_0
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mOutputNum:I

    .line 2035
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIOutputNum:I

    .line 2036
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCandTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2037
    return-void

    .line 2032
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDispWebAPIButton:Z

    goto :goto_0
.end method

.method public setWebApiCandidates(Ljava/lang/String;[Ljava/lang/String;[S)V
    .locals 1
    .parameter "yomi"
    .parameter "candidates"
    .parameter "hinshi"

    .prologue
    .line 2073
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->setCandidates(Ljava/lang/String;[Ljava/lang/String;[S)V

    .line 2074
    return-void
.end method

.method public setWebApiResult(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "success"

    .prologue
    .line 2256
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->setWebApiResult(Ljava/lang/String;Z)V

    .line 2257
    return-void
.end method

.method public startWebAPI(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 2054
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->start(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)V

    .line 2055
    return-void
.end method

.method public startWebAPIGetAgain(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 2063
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mWebAPIWnnEngine:Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->getAgain(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)V

    .line 2064
    return-void
.end method

.method public undo(I)Z
    .locals 1
    .parameter "count"

    .prologue
    .line 1864
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->undo(I)Z

    move-result v0

    return v0
.end method

.method public writeoutDictionary(II)Z
    .locals 6
    .parameter "language"
    .parameter "setType"

    .prologue
    const/4 v4, 0x0

    .line 1498
    const/4 v3, 0x0

    .line 1499
    .local v3, ret:Z
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mLangType:I

    .line 1500
    .local v1, currentLanguage:I
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mDictionarySet:I

    .line 1503
    .local v0, currentDictionary:I
    packed-switch p2, :pswitch_data_0

    .line 1529
    :goto_0
    return v4

    .line 1508
    :pswitch_0
    const/4 v2, 0x3

    .line 1518
    .local v2, dicType:I
    :goto_1
    invoke-direct {p0, p1, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(II)Z

    .line 1520
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v4, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->writeoutDictionary(I)Z

    move-result v3

    .line 1522
    if-nez v3, :cond_0

    .line 1523
    const-string v4, "iWnn"

    const-string v5, "iWnnEngine::writeoutDictionary() END failed error. return = false"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_0
    invoke-direct {p0, v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(II)Z

    move v4, v3

    .line 1529
    goto :goto_0

    .line 1511
    .end local v2           #dicType:I
    :pswitch_1
    const/4 v2, 0x2

    .line 1512
    .restart local v2       #dicType:I
    goto :goto_1

    .line 1503
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
