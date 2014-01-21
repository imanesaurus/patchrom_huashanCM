.class public Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;
.super Ljava/lang/Object;
.source "IWnnSymbolEngine.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/WnnEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CATEGORY_HISTORY:I = 0x0

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DB_MAXHISTORY:I = 0x14

.field private static final DB_NAME_DECOEMOJI:Ljava/lang/String; = "db_select_decoemoji"

.field private static final DB_NAME_EMOJI:Ljava/lang/String; = "db_select_emoji"

.field private static final DB_NAME_EMOJI_UNI6:Ljava/lang/String; = "db_select_emoji_uni6"

.field private static final DB_NAME_FULLSIZESYMBOL:Ljava/lang/String; = "db_select_fullwidth_symbol"

.field private static final DB_NAME_HARFSIZESYMBOL:Ljava/lang/String; = "db_select_harfwidth_symbol"

.field private static final DB_NAME_KAOMOJI:Ljava/lang/String; = "db_select_kaomoji"

.field private static final DB_NAME_OTHERS:Ljava/lang/String; = "db_select_others"

.field private static final DEBUG:Z = false

.field private static final EMOJI_DOCOMO_ACTIVITIES_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_DOCOMO_ARTIFACTS_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_DOCOMO_FACES_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_DOCOMO_FOODS_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_DOCOMO_HUMAN_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_DOCOMO_NATURE_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_DOCOMO_SYMBOLS_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_KDDI_ACTIVITIES_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_KDDI_ARTIFACTS_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_KDDI_CRITTER_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_KDDI_FACES_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_KDDI_FOODS_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_KDDI_HUMAN_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_KDDI_NATURE_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_KDDI_SYMBOLS_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_KDDI_TOOLS_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_SBM_ACTIVITIES_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_SBM_ARTIFACTS_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_SBM_FACES_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_SBM_FOODS_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_SBM_HUMAN_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_SBM_NATURE_TABLE:[Ljava/lang/String; = null

.field private static final EMOJI_SBM_SYMBOLS_TABLE:[Ljava/lang/String; = null

.field private static final HISTORY_DATA:Ljava/lang/String; = "history_data"

.field private static final MAX_ITEM_IN_PAGE:I = 0xb4

.field private static final MAX_ROWID:I = 0x2710

.field public static final MODE_ADD_SYMBOL:I = 0x7

.field public static final MODE_DECOEMOJI:I = 0x6

.field public static final MODE_EMOJI:I = 0x3

.field public static final MODE_EMOJI_UNI6:I = 0x8

.field public static final MODE_KAO_MOJI:I = 0x2

.field public static final MODE_NONE:I = -0x1

.field public static final MODE_OTHERS_KAO_MOJI:I = 0x5

.field public static final MODE_OTHERS_SYMBOL:I = 0x4

.field public static final MODE_SYMBOL:I = 0x1

.field private static final QUERY_COLUMNS:[Ljava/lang/String; = null

.field private static final QUERY_CREATE_TABLE:Ljava/lang/String; = "create table SymbolEngine (rowid integer primary key autoincrement, history_data text not null, integer);"

.field private static final ROWID:Ljava/lang/String; = "rowid"

.field private static final SYM_TOGGLE_TABLE_JP:[I = null

.field private static final SYM_TOGGLE_TABLE_OTH:[I = null

.field private static final TABLE_NAME:Ljava/lang/String; = "SymbolEngine"

.field private static final TAG:Ljava/lang/String; = "iWnn"

.field private static final TOGGLE_MAX:I = 0x4

.field private static mHistorySize:I


# instance fields
.field private mAddSymbolType:I

.field private mAdditionalSymbolIndex:I

.field private mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

.field private mAdditionalSymbolPackageList:[Ljava/lang/String;

.field private mAdditionalSymbolTabList:[Ljava/lang/String;

.field private mCandidateHistory:Z

.field private mCandidates:[Ljava/lang/String;

.field private mCandidates1:[Ljava/lang/String;

.field private mCandidates2:[Ljava/lang/String;

.field private mCandidates3:[Ljava/lang/String;

.field private mCandidates4:[Ljava/lang/String;

.field private mCandidates_emoji_unicode6_activities:[Ljava/lang/String;

.field private mCandidates_emoji_unicode6_artifacts:[Ljava/lang/String;

.field private mCandidates_emoji_unicode6_faces:[Ljava/lang/String;

.field private mCandidates_emoji_unicode6_foods:[Ljava/lang/String;

.field private mCandidates_emoji_unicode6_human:[Ljava/lang/String;

.field private mCandidates_emoji_unicode6_nature:[Ljava/lang/String;

.field private mCandidates_emoji_unicode6_symbols:[Ljava/lang/String;

.field private mCategory:[Ljava/lang/String;

.field private mCountCategory:I

.field private mCurrentCategoryId:I

.field private mCurrentIndex:I

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDecoEmojiList:Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;

.field private mDictionary:I

.field private mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

.field private mHistories:[Ljava/lang/String;

.field private mIsLastNextButton:Z

.field private mIsNextPreviousButton:Z

.field private mLanguage:I

.field private mLocalContext:Landroid/content/Context;

.field private mLocale:Ljava/lang/String;

.field private mMaxItem:I

.field private mMode:I

.field private mSavedCategoryCount:I

.field private mSavedCurrentIndex:I

.field private mStartIndexStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpHistories:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "rowid"

    aput-object v1, v0, v3

    const-string v1, "history_data"

    aput-object v1, v0, v4

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->QUERY_COLUMNS:[Ljava/lang/String;

    .line 282
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb8\udc00"

    aput-object v1, v0, v3

    const-string v1, "\udbb8\udc01"

    aput-object v1, v0, v4

    const-string v1, "\udbb8\udc02"

    aput-object v1, v0, v5

    const-string v1, "\udbb8\udc03"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb8\udc04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb8\udc05"

    aput-object v2, v0, v1

    const-string v1, "\udbb8\udc06"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb8\udc07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb8\udc08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb8\udc11"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb8\udc12"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb8\udc13"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb8\udc14"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb8\udc15"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb8\udc18"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb8\udc19"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb8\udc1a"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb8\udc1b"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb8\udc1d"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb8\udc2a"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb8\udc2b"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb8\udc2c"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb8\udc2d"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb8\udc2e"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb8\udc2f"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb8\udc30"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb8\udc31"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb8\udc32"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb8\udc33"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb8\udc34"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb8\udc35"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb8\udc36"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb8\udc38"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb8\udc3c"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb8\udc3d"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb8\udc3e"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb8\udc3f"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbb8\udc40"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb8\udc4f"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb8\udc50"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbb8\udc51"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_NATURE_TABLE:[Ljava/lang/String;

    .line 291
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb8\udd90"

    aput-object v1, v0, v3

    const-string v1, "\udbb8\udd91"

    aput-object v1, v0, v4

    const-string v1, "\udbb8\udd95"

    aput-object v1, v0, v5

    const-string v1, "\udbb8\udd9a"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb8\uddb7"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb8\uddb8"

    aput-object v2, v0, v1

    const-string v1, "\udbb8\uddb9"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb8\uddba"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb8\uddbc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb8\uddbd"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb8\uddbe"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb8\uddbf"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_HUMAN_TABLE:[Ljava/lang/String;

    .line 296
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb8\udf20"

    aput-object v1, v0, v3

    const-string v1, "\udbb8\udf23"

    aput-object v1, v0, v4

    const-string v1, "\udbb8\udf24"

    aput-object v1, v0, v5

    const-string v1, "\udbb8\udf26"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb8\udf27"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb8\udf29"

    aput-object v2, v0, v1

    const-string v1, "\udbb8\udf2b"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb8\udf30"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb8\udf31"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb8\udf32"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb8\udf33"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb8\udf39"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb8\udf3a"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb8\udf3c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb8\udf3d"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb8\udf3e"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb8\udf3f"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb8\udf40"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb8\udf41"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb8\udf43"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb8\udf44"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb8\udf47"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_FACES_TABLE:[Ljava/lang/String;

    .line 303
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb9\udcb0"

    aput-object v1, v0, v3

    const-string v1, "\udbb9\udcb2"

    aput-object v1, v0, v4

    const-string v1, "\udbb9\udcb3"

    aput-object v1, v0, v5

    const-string v1, "\udbb9\udcb4"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb9\udcb5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb9\udcb6"

    aput-object v2, v0, v1

    const-string v1, "\udbb9\udcb7"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb9\udcb9"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb9\udcba"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb9\udcc3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb9\udcc9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb9\udccd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb9\udcd6"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb9\udcce"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb9\udccf"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb9\udcd0"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb9\udcd1"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb9\udcdc"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb9\udcdd"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb9\udce2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb9\udcef"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb9\udcf0"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb9\udcf1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb9\udcf2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb9\udcf3"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb9\udd06"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb9\udd0f"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb9\udd10"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb9\udd11"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb9\udd12"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb9\udd22"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb9\udd23"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb9\udd25"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb9\udd26"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb9\udd27"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb9\udd28"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb9\udd29"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbb9\udd2b"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb9\udd36"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb9\udd37"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbb9\udd38"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb9\udd39"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbb9\udd3a"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbb9\udd3e"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb9\udd46"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbb9\udd53"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_ARTIFACTS_TABLE:[Ljava/lang/String;

    .line 313
    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb9\udfd0"

    aput-object v1, v0, v3

    const-string v1, "\udbb9\udfd1"

    aput-object v1, v0, v4

    const-string v1, "\udbb9\udfd2"

    aput-object v1, v0, v5

    const-string v1, "\udbb9\udfd3"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb9\udfd4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb9\udfd5"

    aput-object v2, v0, v1

    const-string v1, "\udbb9\udfd6"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb9\udfd7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb9\udfd8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb9\udfd9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb9\udfdf"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb9\udfe1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb9\udfe2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb9\udfe4"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb9\udfe5"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb9\udfe6"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb9\udfe8"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb9\udfe9"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb9\udfea"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb9\udfeb"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb9\udff5"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb9\udff6"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb9\udff7"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb9\udffa"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb9\udffc"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbba\udc00"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbba\udc01"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbba\udc03"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbba\udc04"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbba\udc05"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbba\udc06"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbba\udc07"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbba\udc08"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbba\udc0a"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbba\udc13"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbba\udc14"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbba\udc1c"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbba\udc1d"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbba\udc23"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbba\udc24"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbba\udc25"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbba\udc2c"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbba\udc2e"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbba\udc2f"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbba\udc30"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbba\udc31"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbba\udc32"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbba\udc33"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbba\udc34"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbba\udc35"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbba\udc36"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbba\udc37"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_ACTIVITIES_TABLE:[Ljava/lang/String;

    .line 324
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbba\udd60"

    aput-object v1, v0, v3

    const-string v1, "\udbba\udd61"

    aput-object v1, v0, v4

    const-string v1, "\udbba\udd62"

    aput-object v1, v0, v5

    const-string v1, "\udbba\udd63"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbba\udd64"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbba\udd80"

    aput-object v2, v0, v1

    const-string v1, "\udbba\udd81"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbba\udd82"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbba\udd83"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbba\udd84"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbba\udd85"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbba\udd86"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_FOODS_TABLE:[Ljava/lang/String;

    .line 329
    const/16 v0, 0x43

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbba\udef0"

    aput-object v1, v0, v3

    const-string v1, "\udbba\udef1"

    aput-object v1, v0, v4

    const-string v1, "\udbba\udef2"

    aput-object v1, v0, v5

    const-string v1, "\udbba\udef3"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbba\udef4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbba\udef5"

    aput-object v2, v0, v1

    const-string v1, "\udbba\udef6"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbba\udef7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbba\udf04"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbba\udf05"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbba\udf06"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbba\udf07"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbba\udf08"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbba\udf0c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbba\udf0d"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbba\udf0e"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbba\udf0f"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbba\udf1a"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbba\udf1b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbba\udf1c"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbba\udf1d"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbba\udf1e"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbba\udf1f"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbba\udf20"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbba\udf22"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbba\udf23"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbba\udf2c"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbba\udf21"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbba\udf27"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbba\udf28"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbba\udf29"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbba\udf2d"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbba\udf2a"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbba\udf36"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbba\udf2e"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbba\udf2f"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbba\udf30"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbba\udf31"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbba\udf2b"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbba\udf55"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbba\udf56"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbba\udf57"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbba\udf58"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbba\udf59"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbba\udf5a"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbba\udf5b"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbba\udf5c"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbba\udf5d"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbba\udf60"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbba\udf81"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbba\udf84"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbba\udf83"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbba\udf85"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbba\udf82"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbba\udf93"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbba\udf95"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\udbba\udf94"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\udbba\udf96"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\udbba\udf97"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\udbbb\ude10"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\udbbb\ude11"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\udbbb\ude12"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\udbbb\ude13"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\udbbb\ude14"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\udbbb\ude15"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\udbba\udc2b"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\udbba\udc2d"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_SYMBOLS_TABLE:[Ljava/lang/String;

    .line 342
    const/16 v0, 0x45

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb8\udf30"

    aput-object v1, v0, v3

    const-string v1, "\udbb8\udf47"

    aput-object v1, v0, v4

    const-string v1, "\udbb8\udf35"

    aput-object v1, v0, v5

    const-string v1, "\udbb8\udf33"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb8\udf34"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb8\udf2c"

    aput-object v2, v0, v1

    const-string v1, "\udbb8\udf2d"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb8\udf3e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb8\udf27"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb8\udf41"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb8\udf40"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb8\udf3f"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb8\udf39"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb8\udf25"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb8\udf3a"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb8\udf44"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb8\udf3c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb8\udf46"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb8\udf3b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb8\udf20"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb8\udf3d"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb8\udf26"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb8\udf43"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb8\udf28"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb8\udf29"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb8\udf21"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb8\udf42"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb8\udf22"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb8\udf2e"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb8\udf2f"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb8\udf48"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb8\udf49"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb8\udf4a"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb8\udf4b"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb8\udf4c"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb8\udf4d"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb8\udf4e"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbb8\udf4f"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb8\udf50"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb8\udf52"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbb8\udf51"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb8\udf53"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbb8\udf54"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbb8\udf55"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb8\udf56"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbb8\udf58"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbb8\udf57"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbb8\udf59"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbb8\udf5a"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbb8\udf5b"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbb8\udd9b"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbb8\udd9c"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbb8\udda3"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbb8\uddab"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbb8\udda2"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbb8\udd9f"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\udbb8\udda9"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\udbb8\udda7"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\udbb8\udda8"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\udbb8\udda1"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\udbb8\uddaa"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\udbb8\uddaf"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\udbb8\uddb2"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\udbb8\uddad"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\udbb8\uddac"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\udbb8\uddae"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\udbb8\uddb1"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\udbb8\udf36"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\udbb8\udc16"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_FACES_TABLE:[Ljava/lang/String;

    .line 355
    const/16 v0, 0x4c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbba\udf97"

    aput-object v1, v0, v3

    const-string v1, "\udbba\udfa0"

    aput-object v1, v0, v4

    const-string v1, "\udbba\udf9f"

    aput-object v1, v0, v5

    const-string v1, "\udbba\udf96"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbba\udf98"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbba\udf9d"

    aput-object v2, v0, v1

    const-string v1, "\udbba\udf5e"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbba\udf9e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbba\udf93"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbba\udf94"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbba\udf95"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbba\udf99"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbba\udf9a"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbba\udf9c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbba\udf9b"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbba\udf0c"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbba\udf0e"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbba\udf0f"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbba\udf18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbba\udf0d"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbba\udf10"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbba\udf12"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbba\udf17"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbba\udf13"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbba\udf14"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbba\udf15"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbba\udf16"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbba\udc27"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbba\udc29"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbba\udf60"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbba\udf61"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbba\udf77"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbba\udf6a"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbba\udf68"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb9\udd17"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb9\udd20"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbba\udc0c"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbba\udc28"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbba\udd87"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbba\udf43"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbba\udf7a"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbba\udf7b"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbba\udf56"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbba\udf5c"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbba\udf5b"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbba\udf59"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbba\udf5f"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbba\udf5d"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbba\udf08"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbb9\udce4"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbb9\udd32"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbba\udf57"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbb9\udcf4"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbb8\uddb3"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbb9\udcf6"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbba\udf58"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\udbba\udf5a"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\udbba\udf23"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\udbba\udf4f"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\udbb9\udff9"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\udbba\udf32"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\udbb8\udd90"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\udbb8\udd92"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\udbb8\udde0"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\udbba\udc23"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\udbb8\udd94"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\udbb8\udd93"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\udbb8\udd91"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\udbb8\udddb"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\udbb9\udd53"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\udbba\udf04"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\udbba\udf09"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\udbba\udf06"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\udbba\udf05"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\udbba\udc13"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\udbba\udc14"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_HUMAN_TABLE:[Ljava/lang/String;

    .line 369
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb8\uddb7"

    aput-object v1, v0, v3

    const-string v1, "\udbb8\uddb8"

    aput-object v1, v0, v4

    const-string v1, "\udbb8\uddc1"

    aput-object v1, v0, v5

    const-string v1, "\udbb8\udddf"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb8\uddc0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb8\uddc4"

    aput-object v2, v0, v1

    const-string v1, "\udbb8\uddd2"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb8\uddd7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb8\uddc2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb8\uddd1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb8\uddbf"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb8\uddd4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb8\udddd"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb8\uddba"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb8\uddbb"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb8\uddcd"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb8\uddd8"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb8\uddcc"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb8\uddbe"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb8\uddd6"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb8\uddd5"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb8\uddd3"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb8\udddc"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb8\uddb9"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb8\uddcb"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb8\udde1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb8\udde2"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb8\uddda"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb8\uddde"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb8\uddc3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb8\uddc7"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb8\uddbc"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb8\uddc5"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb8\uddd9"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb8\uddc9"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb8\uddc6"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb8\udc2b"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbb8\udc2c"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb8\udc2d"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb8\udc2e"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbb8\udc2f"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb8\udc30"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbb8\udc31"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbb8\udc32"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb8\udc37"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbb8\udc33"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbb8\udc34"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbb8\udc35"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbb8\udc36"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_CRITTER_TABLE:[Ljava/lang/String;

    .line 379
    const/16 v0, 0x3a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbba\udd63"

    aput-object v1, v0, v3

    const-string v1, "\udbba\udd6c"

    aput-object v1, v0, v4

    const-string v1, "\udbba\udd6b"

    aput-object v1, v0, v5

    const-string v1, "\udbba\udd75"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbba\udd7f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbba\udd76"

    aput-object v2, v0, v1

    const-string v1, "\udbba\udd72"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbba\udd60"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbba\udd67"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbba\udd64"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbba\udd65"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbba\udd80"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbba\udd70"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbba\udd6e"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbba\udd6d"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbba\udd6f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbba\udd6a"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbba\udd61"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbba\udd73"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbba\udd83"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbba\udd86"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbba\udd82"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbba\udd85"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb9\udcc2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbba\udd84"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbba\udd81"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbba\udd88"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb9\udd11"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbba\udd62"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbba\udd66"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbba\udd77"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbba\udd7d"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbba\udd71"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbba\udd7a"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbba\udd7b"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbba\udd7c"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbba\udd79"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbba\udd78"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbba\udd7e"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbba\udd69"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbba\udd68"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb8\udc53"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbb8\udc4f"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbb8\udc54"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb8\udc51"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbb8\udc5b"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbb8\udc52"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbb8\udc57"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbb8\udc58"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbb8\udc59"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbb8\udc50"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbb8\udc5a"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbb8\udc4c"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbb8\udc55"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbb8\udc56"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbb8\udc4a"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\udbba\udd74"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\udbb8\udc4b"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_FOODS_TABLE:[Ljava/lang/String;

    .line 391
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb8\udc40"

    aput-object v1, v0, v3

    const-string v1, "\udbb8\udc3d"

    aput-object v1, v0, v4

    const-string v1, "\udbb8\udc41"

    aput-object v1, v0, v5

    const-string v1, "\udbb8\udc45"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb8\udc46"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb8\udc4d"

    aput-object v2, v0, v1

    const-string v1, "\udbb8\udc3e"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb8\udc3c"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb8\udc4e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb8\udc48"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb8\udc42"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb8\udc3f"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb8\udc00"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb8\udc01"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb8\udc02"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb8\udc0f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb8\udc04"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb8\udc05"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb8\udc03"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb8\udc0e"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb8\udc39"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb8\udc14"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb9\udd18"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb9\udd19"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb9\udd1a"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb9\udd1b"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb9\udd1c"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb9\udd21"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb9\udd1e"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb9\udffb"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb8\udc47"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb9\udd15"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb9\udd1d"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb8\udc17"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb9\udd1f"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb9\udd12"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb9\udd13"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbb9\udcc3"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb8\udc0a"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb8\udc0d"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbb8\udc0b"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb8\udc08"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbb8\udc10"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbb8\udc3b"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb8\udc3a"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbb8\udc38"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_NATURE_TABLE:[Ljava/lang/String;

    .line 401
    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb9\udcd5"

    aput-object v1, v0, v3

    const-string v1, "\udbb9\udcdb"

    aput-object v1, v0, v4

    const-string v1, "\udbb9\udcd9"

    aput-object v1, v0, v5

    const-string v1, "\udbb9\udcda"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb9\udcf0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb9\udcd8"

    aput-object v2, v0, v1

    const-string v1, "\udbb9\udcd6"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb9\udcd4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb9\udd0f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbba\udc25"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb8\udc07"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb8\udd95"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb8\udd96"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb8\udd97"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb8\udd98"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb9\udd05"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb9\udccf"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb9\udcd3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb9\udcd0"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb9\udd3b"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb9\udccc"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb9\udccd"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb8\udd99"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb9\udfd1"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb9\udfd4"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb9\udfdd"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb9\udfd3"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb9\udfd6"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb9\udfd9"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb9\udff0"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb9\udfd5"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb9\udfd8"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb9\udfda"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb9\udfde"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb9\udfd2"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb9\udfff"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb9\udfd7"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbba\udc10"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbba\udc0e"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb9\udffd"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbb9\udffe"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb9\udffa"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbb9\udcf7"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbba\udc08"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb8\uddb6"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbba\udc1a"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbba\udc17"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbba\udc18"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbba\udc16"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbba\udc19"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbba\udc0a"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbba\udc11"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbba\udc12"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbba\udc0b"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbba\udc0d"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbb9\udcdf"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\udbba\udf80"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_ACTIVITIES_TABLE:[Ljava/lang/String;

    .line 413
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb9\udfeb"

    aput-object v1, v0, v3

    const-string v1, "\udbb9\udfe4"

    aput-object v1, v0, v4

    const-string v1, "\udbb9\udfe6"

    aput-object v1, v0, v5

    const-string v1, "\udbb9\udff1"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb9\udff4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb9\udff2"

    aput-object v2, v0, v1

    const-string v1, "\udbb9\udff3"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb9\udfdf"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb9\udfe3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb9\udfe0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb9\udfea"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb9\udfe8"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb9\udfe9"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb9\udfed"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb8\uddb0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb9\udcb0"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb9\udcb2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb9\udcba"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb9\udcb3"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb9\udcb4"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb9\udcb7"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb9\udcb8"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb9\udcbd"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb9\udfec"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb9\udcbb"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb9\udcbe"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb9\udcbf"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb9\udfe7"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb9\udff8"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb9\udff7"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb9\udcc8"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb9\udcbc"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb9\udcc4"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb9\udff5"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb9\udff6"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb9\udcb9"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb9\udcb6"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbb9\udcb5"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb9\udcc7"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb8\udc44"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbba\udf26"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb9\udd06"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbba\udf20"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbb9\udcc1"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_ARTIFACTS_TABLE:[Ljava/lang/String;

    .line 423
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbba\udc1c"

    aput-object v1, v0, v3

    const-string v1, "\udbb9\udd31"

    aput-object v1, v0, v4

    const-string v1, "\udbba\udc01"

    aput-object v1, v0, v5

    const-string v1, "\udbb9\udcef"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbba\udc00"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbba\udc1d"

    aput-object v2, v0, v1

    const-string v1, "\udbb9\udd3c"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbba\udc20"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbba\udc03"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb9\udd30"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb9\udd38"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb9\udd28"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb9\udd39"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb9\udd3e"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb9\udd51"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb9\udd3a"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb9\udd47"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb9\udd46"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb9\udd27"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb9\udd04"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbba\udf85"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb9\udcce"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb8\udc2a"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb9\udcf2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb8\udc1b"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb9\udcd1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb9\udfdb"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb9\udcdd"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb9\udcdc"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbba\udf82"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbba\udf86"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb9\udcf5"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbba\udc07"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb9\udd2c"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb9\udd35"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb9\udd10"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb9\udcca"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbba\udc0f"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbba\udc04"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb9\udd16"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbb9\udd09"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb9\udd0a"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_TOOLS_TABLE:[Ljava/lang/String;

    .line 432
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbba\udef4"

    aput-object v1, v0, v3

    const-string v1, "\udbba\udef5"

    aput-object v1, v0, v4

    const-string v1, "\udbba\udef8"

    aput-object v1, v0, v5

    const-string v1, "\udbba\udef9"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbba\udefb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbba\udefa"

    aput-object v2, v0, v1

    const-string v1, "\udbba\udef0"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbba\udef2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbba\udef1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbba\udef3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbba\udef6"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbba\udef7"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbba\udf2c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbba\udf44"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbba\udf45"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbba\udf1e"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbba\udf1f"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbba\udf25"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbba\udf2b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbba\udf3d"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbba\udf36"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbba\udf38"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbba\udf37"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbba\udf3e"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbba\udf31"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbba\udf2f"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbba\udf40"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbba\udf41"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb9\udce5"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb9\udd14"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb9\udce6"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb9\udce7"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb9\udce8"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb9\udce9"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb9\udcea"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb9\udced"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb9\udcee"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbba\udf1a"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbba\udf1b"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbba\udf1c"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbba\udf1d"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbbb\ude43"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbbb\ude42"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbbb\ude41"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb9\udd23"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbb9\udd25"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbba\udc38"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbba\udc39"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbba\udc3a"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbb9\udd26"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbb9\udd29"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbba\udf92"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbbb\ude44"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbba\udc24"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbb9\udd2a"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbb9\udd2b"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_SYMBOLS_TABLE:[Ljava/lang/String;

    .line 443
    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb8\udc00"

    aput-object v1, v0, v3

    const-string v1, "\udbb8\udc01"

    aput-object v1, v0, v4

    const-string v1, "\udbb8\udc02"

    aput-object v1, v0, v5

    const-string v1, "\udbb8\udc03"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb8\udc04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb8\udc05"

    aput-object v2, v0, v1

    const-string v1, "\udbb8\udc07"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb8\udc08"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb8\udc09"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb8\udc0a"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb8\udc0b"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb8\udc0c"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb8\udc0d"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb8\udc38"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb8\udc14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbba\udf69"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb8\udc1e"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb8\udc1f"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb8\udc20"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb8\udc21"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb8\udc22"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb8\udc23"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb8\udc24"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb8\udc25"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb8\udc26"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb8\udc27"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb8\udc28"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb8\udc29"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb8\udc2b"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb8\udc2c"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb8\udc2d"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb8\udc2e"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb8\udc2f"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb8\udc30"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb8\udc31"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb8\udc32"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb8\udc33"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbb8\udc34"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb8\udc35"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb8\udc36"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbb8\udc37"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb8\udc3c"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbb8\udc3d"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbb8\udc3f"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb8\udc40"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbb8\udc41"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbb8\udc42"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbb8\udc43"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbb8\udc45"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbb8\udc46"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbb8\udc47"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbb8\udc48"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbb8\udc49"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbb8\udc51"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbb8\udc52"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbb8\udc53"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\udbb8\udc54"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\udbb8\udc55"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\udbb8\udc56"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_NATURE_TABLE:[Ljava/lang/String;

    .line 455
    const/16 v0, 0x41

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb8\udd90"

    aput-object v1, v0, v3

    const-string v1, "\udbb8\udd91"

    aput-object v1, v0, v4

    const-string v1, "\udbb8\udd92"

    aput-object v1, v0, v5

    const-string v1, "\udbb8\udd93"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb8\udd95"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb8\udd96"

    aput-object v2, v0, v1

    const-string v1, "\udbb8\udd97"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb8\udd98"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb8\udd99"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb8\udd9b"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb8\udd9c"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb8\udd9d"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb8\udd9e"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb8\udda0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb8\udda1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb8\udda2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb8\udda4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb8\udda5"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb8\udda6"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb8\udda7"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb8\udda8"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb8\udda9"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb8\uddaa"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb8\uddab"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb8\uddae"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb8\uddaf"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb8\uddb0"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb8\uddb1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb8\uddb2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb8\uddb3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb8\uddb4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb8\uddb5"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb8\uddb6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb8\uddd3"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb9\udfdc"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb8\uddd4"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb8\uddd5"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbb8\uddd6"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb8\uddcc"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb8\uddcd"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbb8\uddce"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb8\uddcf"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbb8\uddc5"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbb8\uddc6"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb8\uddcb"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbb8\uddc9"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbb8\uddba"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbb8\uddc8"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbb8\uddbc"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbb8\uddbd"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbb8\uddc7"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbb8\uddc2"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbb8\uddc0"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbb8\uddb8"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbb8\uddc3"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbb8\uddbe"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\udbb8\uddc4"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\udbb8\uddb7"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\udbb8\uddbf"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\udbb8\uddc1"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\udbb8\uddca"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\udbb8\uddd0"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\udbb8\uddd1"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\udbb8\uddd2"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\udbb8\uddd7"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_HUMAN_TABLE:[Ljava/lang/String;

    .line 468
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb8\udf20"

    aput-object v1, v0, v3

    const-string v1, "\udbb8\udf22"

    aput-object v1, v0, v4

    const-string v1, "\udbb8\udf23"

    aput-object v1, v0, v5

    const-string v1, "\udbb8\udf25"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb8\udf26"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb8\udf27"

    aput-object v2, v0, v1

    const-string v1, "\udbb8\udf29"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb8\udf2a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb8\udf2c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb8\udf2d"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb8\udf2e"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb8\udf2f"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb8\udf30"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb8\udf28"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb8\udf34"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb8\udf35"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb8\udf37"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb8\udf38"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb8\udf39"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb8\udf3a"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb8\udf3b"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb8\udf3c"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb8\udf3d"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb8\udf3e"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb8\udf3f"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb8\udf40"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb8\udf41"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb8\udf42"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb8\udf43"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb8\udf44"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb8\udf45"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb8\udf47"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb8\udf51"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb8\udf52"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb8\udf53"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb8\udf58"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb8\udf5b"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_FACES_TABLE:[Ljava/lang/String;

    .line 477
    const/16 v0, 0x5f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb9\udcb0"

    aput-object v1, v0, v3

    const-string v1, "\udbb9\udcb2"

    aput-object v1, v0, v4

    const-string v1, "\udbb9\udcb3"

    aput-object v1, v0, v5

    const-string v1, "\udbb9\udcb4"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb9\udcb5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb9\udcb6"

    aput-object v2, v0, v1

    const-string v1, "\udbb9\udcb7"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb9\udcb8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb9\udcb9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb9\udcba"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb9\udcbb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb9\udcbc"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb9\udcbd"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb9\udcbe"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb9\udcbf"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb9\udcc0"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb9\udcc3"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb9\udcc4"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb9\udcc5"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb9\udcc6"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb9\udccc"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb9\udcd6"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb9\udcd7"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb9\udcd8"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb9\udd53"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb9\udccf"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb9\udcd1"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb9\udcd3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb9\udcd4"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb9\udcd5"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb9\udcd9"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb9\udcda"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb9\udcf0"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb9\udcdd"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb9\udcde"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb9\udcdf"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb9\udced"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbb9\udce8"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb9\udceb"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb9\udce7"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbb9\udcea"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbb9\udce9"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbb9\udce5"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbb9\udcee"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb9\udcec"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbb9\udce6"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbb9\udcf6"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbb9\udcca"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbb9\udcf5"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbb9\udcf8"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbb8\udc44"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbb9\udcd2"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbb9\udd09"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbb9\udd0a"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbb9\udd0b"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbb9\udd0c"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\udbb9\udd0d"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\udbb9\udd0e"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\udbb9\udd0f"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\udbb9\udd10"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\udbb9\udd11"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\udbb9\udd12"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\udbb9\udd13"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\udbb9\udd14"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\udbb9\udd15"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\udbb9\udd16"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\udbb9\udd17"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\udbb9\udd18"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\udbb9\udd19"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\udbb9\udd1a"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\udbb9\udd1b"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\udbb9\udd1c"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\udbb9\udd1d"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\udbb9\udd1e"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\udbb9\udd1f"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\udbb8\udc17"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\udbb9\udd23"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\udbb9\udd25"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\udbb9\udd26"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\udbb9\udd27"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\udbb9\udd28"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\udbb9\udd2b"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\udbb9\udd2c"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\udbb9\udd2e"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\udbb9\udd2f"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\udbb9\udd30"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\udbb9\udd31"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\udbb9\udd37"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\udbb9\udd38"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\udbb9\udd3b"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\udbb9\udd3c"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\udbba\udc1d"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\udbba\udc1e"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\udbb9\udd3e"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\udbb9\udd46"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_ARTIFACTS_TABLE:[Ljava/lang/String;

    .line 494
    const/16 v0, 0x56

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbb9\udfd1"

    aput-object v1, v0, v3

    const-string v1, "\udbb9\udfd2"

    aput-object v1, v0, v4

    const-string v1, "\udbb9\udfd3"

    aput-object v1, v0, v5

    const-string v1, "\udbb9\udfd4"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbb9\udfd5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbb9\udfd6"

    aput-object v2, v0, v1

    const-string v1, "\udbb9\udfd7"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbb9\udfd9"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbb9\udfda"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbb9\udfdb"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbb9\udfdd"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbb9\udfde"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbb9\udfdf"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbb9\udfe0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbb9\udfe2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbb9\udfe3"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbb9\udfe4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbb9\udfe5"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbb9\udfe6"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbb9\udfe7"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbb9\udfe8"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbb9\udfe9"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbb9\udfea"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbb9\udfec"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbb9\udfed"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbb9\udfee"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbb9\udfef"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbb9\udff1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbb9\udff2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbb9\udff3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbb9\udff4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbb9\udff5"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbb9\udff6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbb9\udff7"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbb9\udff8"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbb9\udffa"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbb9\udffb"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbb9\udffd"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb9\udffe"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbba\udc00"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbba\udc01"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbba\udc02"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbba\udc03"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbba\udc04"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbba\udc05"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbba\udc07"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbba\udc08"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbba\udc0b"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbba\udc0c"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbba\udc0d"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbba\udc0e"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbba\udc13"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbba\udc14"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbba\udc15"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbba\udc16"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbba\udc18"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\udbba\udc1b"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\udbb9\udcef"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\udbba\udc1c"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\udbba\udc1f"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\udbba\udc20"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\udbba\udc23"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\udbba\udc25"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\udbba\udc26"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\udbba\udc27"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\udbba\udc28"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\udbba\udc29"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\udbba\udc2a"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\udbba\udf25"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\udbba\udf29"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\udbba\udf2d"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\udbba\udf2a"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\udbba\udc2c"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\udbba\udc2e"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\udbba\udc2f"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\udbba\udc30"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\udbba\udc31"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\udbba\udc32"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\udbba\udc33"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\udbba\udc34"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\udbba\udc35"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\udbba\udc36"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\udbba\udc37"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\udbba\udc38"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\udbba\udc39"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\udbba\udc3a"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_ACTIVITIES_TABLE:[Ljava/lang/String;

    .line 510
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbba\udd60"

    aput-object v1, v0, v3

    const-string v1, "\udbba\udd61"

    aput-object v1, v0, v4

    const-string v1, "\udbba\udd62"

    aput-object v1, v0, v5

    const-string v1, "\udbba\udd63"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbba\udd64"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbba\udd65"

    aput-object v2, v0, v1

    const-string v1, "\udbba\udd66"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbba\udd67"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbba\udd68"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbba\udd69"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbba\udd6a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbba\udd6b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbba\udd6c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbba\udd6d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbba\udd6e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbba\udd6f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbba\udd70"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbba\udd71"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbba\udd80"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbba\udd81"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbba\udd82"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbba\udd83"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbba\udd84"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbba\udd85"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbba\udd87"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_FOODS_TABLE:[Ljava/lang/String;

    .line 517
    const/16 v0, 0x68

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\udbba\udef0"

    aput-object v1, v0, v3

    const-string v1, "\udbba\udef1"

    aput-object v1, v0, v4

    const-string v1, "\udbba\udef2"

    aput-object v1, v0, v5

    const-string v1, "\udbba\udef3"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\udbba\udef8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\udbba\udef9"

    aput-object v2, v0, v1

    const-string v1, "\udbba\udefa"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "\udbba\udefb"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\udbba\udefc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\udbba\udefd"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\udbba\udefe"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\udbba\udeff"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\udbba\udf44"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\udbba\udf45"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\udbba\udf04"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\udbba\udf09"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\udbba\udf0a"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\udbba\udf0b"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\udbba\udc2b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\udbba\udf0c"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\udbba\udf0d"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\udbba\udf0e"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\udbba\udf11"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\udbba\udf12"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\udbba\udf13"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\udbba\udf14"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\udbba\udf15"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\udbba\udf16"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\udbba\udf17"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\udbba\udf19"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\udbba\udf1a"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\udbba\udf1b"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\udbba\udf1c"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\udbba\udf1d"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\udbba\udf1e"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\udbba\udf1f"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\udbba\udf20"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\udbba\udf23"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\udbb9\udfeb"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\udbb9\udff0"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\udbba\udf33"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\udbba\udf34"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\udbb9\udd05"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\udbb9\udd06"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\udbb9\udd07"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\udbb9\udd08"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\udbba\udf35"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\udbba\udf38"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\udbba\udf81"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\udbba\udf36"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\udbba\udf27"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\udbba\udf37"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\udbba\udf32"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\udbba\udf24"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\udbba\udf3f"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\udbba\udf2f"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\udbba\udf31"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\udbba\udf39"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\udbba\udf3a"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\udbba\udf3b"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\udbba\udf3c"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\udbba\udf3e"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\udbba\udf40"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\udbba\udf41"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\udbba\udf2b"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\udbba\udf43"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\udbba\udf3d"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\udbba\udf56"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\udbba\udf57"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\udbba\udf58"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\udbba\udf59"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\udbba\udf5b"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\udbba\udf5d"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\udbb9\udcf4"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\udbba\udf5e"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\udbba\udf60"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\udbba\udf61"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\udbba\udf62"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\udbba\udf63"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\udbba\udf64"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\udbba\udf67"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\udbba\udf68"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\udbba\udc21"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\udbba\udf85"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\udbba\udf86"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\udbba\udf87"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\udbba\udf82"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\udbb9\udcf2"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\udbba\udf42"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\udbba\udf93"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\udbba\udf95"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\udbba\udf94"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\udbba\udf96"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\udbba\udf97"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\udbba\udf98"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\udbba\udf99"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\udbba\udf9a"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\udbba\udf9b"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\udbba\udf9c"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\udbba\udf9d"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\udbba\udf9e"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\udbba\udf9f"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\udbba\udfa0"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\udbba\udfa1"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_SYMBOLS_TABLE:[Ljava/lang/String;

    .line 554
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->SYM_TOGGLE_TABLE_JP:[I

    .line 558
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->SYM_TOGGLE_TABLE_OTH:[I

    return-void

    .line 554
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 558
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "locale"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 137
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    .line 138
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mTmpHistories:[Ljava/lang/String;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAddSymbolType:I

    .line 154
    const/16 v0, 0x59

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u2600"

    aput-object v1, v0, v3

    const-string v1, "\u2601"

    aput-object v1, v0, v5

    const-string v1, "\u2614"

    aput-object v1, v0, v6

    const-string v1, "\u26c4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u26a1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\ud83c\udf00"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\ud83c\udf01"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud83c\udf02"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ud83c\udf03"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ud83c\udf04"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ud83c\udf05"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\ud83c\udf06"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud83c\udf07"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ud83c\udf08"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u2744"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u26c5"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ud83c\udf09"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\ud83c\udf0a"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud83c\udf0b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ud83c\udf0c"

    aput-object v2, v0, v1

    const-string v1, "\ud83c\udf0f"

    aput-object v1, v0, v4

    const/16 v1, 0x15

    const-string v2, "\ud83c\udf11"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\ud83c\udf14"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\ud83c\udf13"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\ud83c\udf19"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\ud83c\udf15"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\ud83c\udf1b"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\ud83c\udf1f"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\ud83c\udf20"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ud83d\udd50"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\ud83d\udd51"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ud83d\udd52"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\ud83d\udd53"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\ud83d\udd54"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\ud83d\udd55"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ud83d\udd56"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\ud83d\udd57"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\ud83d\udd58"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ud83d\udd59"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\ud83d\udd5a"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\ud83d\udd5b"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u231a"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u231b"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u23f0"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u23f3"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u2648"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u2649"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u264a"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u264b"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u264c"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u264d"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u264e"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u264f"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u2650"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\u2651"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\u2652"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\u2653"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u26ce"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\ud83c\udf40"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\ud83c\udf37"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\ud83c\udf31"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\ud83c\udf41"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\ud83c\udf38"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\ud83c\udf39"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\ud83c\udf42"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\ud83c\udf43"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\ud83c\udf3a"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\ud83c\udf3b"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\ud83c\udf34"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\ud83c\udf35"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\ud83c\udf3e"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\ud83c\udf3d"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\ud83c\udf44"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\ud83c\udf30"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\ud83c\udf3c"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\ud83c\udf3f"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\ud83c\udf52"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\ud83c\udf4c"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\ud83c\udf4e"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\ud83c\udf4a"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\ud83c\udf53"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\ud83c\udf49"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\ud83c\udf45"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\ud83c\udf46"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\ud83c\udf48"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\ud83c\udf4d"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\ud83c\udf47"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\ud83c\udf51"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\ud83c\udf4f"

    aput-object v2, v0, v1

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_nature:[Ljava/lang/String;

    .line 170
    const/16 v0, 0x54

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\ud83d\udc40"

    aput-object v1, v0, v3

    const-string v1, "\ud83d\udc42"

    aput-object v1, v0, v5

    const-string v1, "\ud83d\udc43"

    aput-object v1, v0, v6

    const-string v1, "\ud83d\udc44"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\ud83d\udc45"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\ud83d\udc84"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\ud83d\udc85"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud83d\udc86"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ud83d\udc87"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ud83d\udc88"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ud83d\udc64"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\ud83d\udc66"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud83d\udc67"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ud83d\udc68"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\ud83d\udc69"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ud83d\udc6a"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ud83d\udc6b"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\ud83d\udc6e"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud83d\udc6f"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ud83d\udc70"

    aput-object v2, v0, v1

    const-string v1, "\ud83d\udc71"

    aput-object v1, v0, v4

    const/16 v1, 0x15

    const-string v2, "\ud83d\udc72"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\ud83d\udc73"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\ud83d\udc74"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\ud83d\udc75"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\ud83d\udc76"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\ud83d\udc77"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\ud83d\udc78"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\ud83d\udc79"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ud83d\udc7a"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\ud83d\udc7b"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ud83d\udc7c"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\ud83d\udc7d"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\ud83d\udc7e"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\ud83d\udc7f"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ud83d\udc80"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\ud83d\udc81"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\ud83d\udc82"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ud83d\udc83"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\ud83d\udc0c"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\ud83d\udc0d"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\ud83d\udc0e"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\ud83d\udc14"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\ud83d\udc17"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\ud83d\udc2b"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\ud83d\udc18"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\ud83d\udc28"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\ud83d\udc12"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\ud83d\udc11"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\ud83d\udc19"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\ud83d\udc1a"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\ud83d\udc1b"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\ud83d\udc1c"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\ud83d\udc1d"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\ud83d\udc1e"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\ud83d\udc20"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\ud83d\udc21"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\ud83d\udc22"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\ud83d\udc24"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\ud83d\udc25"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\ud83d\udc26"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\ud83d\udc23"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\ud83d\udc27"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\ud83d\udc29"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\ud83d\udc1f"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\ud83d\udc2c"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\ud83d\udc2d"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\ud83d\udc2f"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\ud83d\udc31"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\ud83d\udc33"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\ud83d\udc34"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\ud83d\udc35"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\ud83d\udc36"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\ud83d\udc37"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\ud83d\udc3b"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\ud83d\udc39"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\ud83d\udc3a"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\ud83d\udc2e"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\ud83d\udc30"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\ud83d\udc38"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\ud83d\udc3e"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\ud83d\udc32"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\ud83d\udc3c"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\ud83d\udc3d"

    aput-object v2, v0, v1

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_human:[Ljava/lang/String;

    .line 185
    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\ud83d\ude20"

    aput-object v1, v0, v3

    const-string v1, "\ud83d\ude29"

    aput-object v1, v0, v5

    const-string v1, "\ud83d\ude32"

    aput-object v1, v0, v6

    const-string v1, "\ud83d\ude1e"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\ud83d\ude35"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\ud83d\ude30"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\ud83d\ude12"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud83d\ude0d"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ud83d\ude24"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ud83d\ude1c"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ud83d\ude1d"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\ud83d\ude0b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud83d\ude18"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ud83d\ude1a"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\ud83d\ude37"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ud83d\ude33"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ud83d\ude03"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\ud83d\ude05"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud83d\ude06"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ud83d\ude01"

    aput-object v2, v0, v1

    const-string v1, "\ud83d\ude02"

    aput-object v1, v0, v4

    const/16 v1, 0x15

    const-string v2, "\ud83d\ude0a"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u263a"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\ud83d\ude04"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\ud83d\ude22"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\ud83d\ude2d"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\ud83d\ude28"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\ud83d\ude23"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\ud83d\ude21"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ud83d\ude0c"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\ud83d\ude16"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ud83d\ude14"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\ud83d\ude31"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\ud83d\ude2a"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\ud83d\ude0f"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ud83d\ude13"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\ud83d\ude25"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\ud83d\ude2b"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ud83d\ude09"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\ud83d\ude3a"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\ud83d\ude38"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\ud83d\ude39"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\ud83d\ude3d"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\ud83d\ude3b"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\ud83d\ude3f"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\ud83d\ude3e"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\ud83d\ude3c"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\ud83d\ude40"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\ud83d\ude45"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\ud83d\ude46"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\ud83d\ude47"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\ud83d\ude48"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\ud83d\ude4a"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\ud83d\ude49"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\ud83d\ude4b"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\ud83d\ude4c"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\ud83d\ude4d"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\ud83d\ude4e"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\ud83d\ude4f"

    aput-object v2, v0, v1

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_faces:[Ljava/lang/String;

    .line 197
    const/16 v0, 0xa2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\ud83c\udfe0"

    aput-object v1, v0, v3

    const-string v1, "\ud83c\udfe1"

    aput-object v1, v0, v5

    const-string v1, "\ud83c\udfe2"

    aput-object v1, v0, v6

    const-string v1, "\ud83c\udfe3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\ud83c\udfe5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\ud83c\udfe6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\ud83c\udfe7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud83c\udfe8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ud83c\udfe9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ud83c\udfea"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ud83c\udfeb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u26ea"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u26f2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ud83c\udfec"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\ud83c\udfef"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ud83c\udff0"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ud83c\udfed"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u2693"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud83c\udfee"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ud83d\uddfb"

    aput-object v2, v0, v1

    const-string v1, "\ud83d\uddfc"

    aput-object v1, v0, v4

    const/16 v1, 0x15

    const-string v2, "\ud83d\uddfd"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\ud83d\uddfe"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\ud83d\uddff"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\ud83d\udc5e"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\ud83d\udc5f"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\ud83d\udc60"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\ud83d\udc61"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\ud83d\udc62"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ud83d\udc63"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\ud83d\udc53"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ud83d\udc55"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\ud83d\udc56"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\ud83d\udc51"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\ud83d\udc54"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ud83d\udc52"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\ud83d\udc57"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\ud83d\udc58"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ud83d\udc59"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\ud83d\udc5a"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\ud83d\udc5b"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\ud83d\udc5c"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\ud83d\udc5d"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\ud83d\udcb0"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\ud83d\udcb1"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\ud83d\udcb9"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\ud83d\udcb2"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\ud83d\udcb3"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\ud83d\udcb4"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\ud83d\udcb5"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\ud83d\udcb8"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\ud83c\udde8\ud83c\uddf3"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\ud83c\udde9\ud83c\uddea"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\ud83c\uddea\ud83c\uddf8"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\ud83c\uddeb\ud83c\uddf7"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\ud83c\uddec\ud83c\udde7"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\ud83c\uddee\ud83c\uddf9"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\ud83c\uddef\ud83c\uddf5"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\ud83c\uddf0\ud83c\uddf7"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\ud83c\uddf7\ud83c\uddfa"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\ud83c\uddfa\ud83c\uddf8"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\ud83d\udd25"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\ud83d\udd26"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\ud83d\udd27"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\ud83d\udd28"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\ud83d\udd29"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\ud83d\udd2a"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\ud83d\udd2b"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\ud83d\udd2e"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\ud83d\udd2f"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\ud83d\udd30"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\ud83d\udd31"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\ud83d\udc89"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\ud83d\udc8a"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\ud83c\udd70"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\ud83c\udd71"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\ud83c\udd8e"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\ud83c\udd7e"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\ud83c\udf80"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\ud83c\udf81"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\ud83c\udf82"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\ud83c\udf84"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\ud83c\udf85"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\ud83c\udf8c"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\ud83c\udf86"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\ud83c\udf88"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\ud83c\udf89"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\ud83c\udf8d"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\ud83c\udf8e"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\ud83c\udf93"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\ud83c\udf92"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\ud83c\udf8f"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\ud83c\udf87"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\ud83c\udf90"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\ud83c\udf83"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\ud83c\udf8a"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\ud83c\udf8b"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\ud83c\udf91"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\ud83d\udcdf"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\u260e"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\ud83d\udcde"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\ud83d\udcf1"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\ud83d\udcf2"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\ud83d\udcdd"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\ud83d\udce0"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\u2709"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\ud83d\udce8"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\ud83d\udce9"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\ud83d\udcea"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\ud83d\udceb"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\ud83d\udcee"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\ud83d\udcf0"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\ud83d\udce2"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\ud83d\udce3"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\ud83d\udce1"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\ud83d\udce4"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\ud83d\udce5"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\ud83d\udce6"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\ud83d\udce7"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\ud83d\udd20"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\ud83d\udd21"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\ud83d\udd22"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "\ud83d\udd23"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\ud83d\udd24"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\u2712"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\ud83d\udcba"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "\ud83d\udcbb"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\u270f"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "\ud83d\udcce"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\ud83d\udcbc"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "\ud83d\udcbd"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\ud83d\udcbe"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "\ud83d\udcbf"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\ud83d\udcc0"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "\u2702"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\ud83d\udccd"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "\ud83d\udcc3"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\ud83d\udcc4"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "\ud83d\udcc5"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "\ud83d\udcc1"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\ud83d\udcc2"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\ud83d\udcd3"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "\ud83d\udcd6"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\ud83d\udcd4"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "\ud83d\udcd5"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\ud83d\udcd7"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "\ud83d\udcd8"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\ud83d\udcd9"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "\ud83d\udcda"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\ud83d\udcdb"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "\ud83d\udcdc"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\ud83d\udccb"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "\ud83d\udcc6"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\ud83d\udcca"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "\ud83d\udcc8"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\ud83d\udcc9"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "\ud83d\udcc7"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\ud83d\udccc"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "\ud83d\udcd2"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\ud83d\udccf"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "\ud83d\udcd0"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\ud83d\udcd1"

    aput-object v2, v0, v1

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_artifacts:[Ljava/lang/String;

    .line 225
    const/16 v0, 0x6a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\ud83c\udfbd"

    aput-object v1, v0, v3

    const-string v1, "\u26be"

    aput-object v1, v0, v5

    const-string v1, "\u26f3"

    aput-object v1, v0, v6

    const-string v1, "\ud83c\udfbe"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u26bd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\ud83c\udfbf"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\ud83c\udfc0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud83c\udfc1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ud83c\udfc2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ud83c\udfc3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ud83c\udfc4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\ud83c\udfc6"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud83c\udfc8"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ud83c\udfca"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\ud83d\ude83"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ud83d\ude87"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u24c2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\ud83d\ude84"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud83d\ude85"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ud83d\ude97"

    aput-object v2, v0, v1

    const-string v1, "\ud83d\ude99"

    aput-object v1, v0, v4

    const/16 v1, 0x15

    const-string v2, "\ud83d\ude8c"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\ud83d\ude8f"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\ud83d\udea2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u2708"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u26f5"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\ud83d\ude89"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\ud83d\ude80"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\ud83d\udea4"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ud83d\ude95"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\ud83d\ude9a"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ud83d\ude92"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\ud83d\ude91"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\ud83d\ude93"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u26fd"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ud83c\udd7f"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\ud83d\udea5"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\ud83d\udea7"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ud83d\udea8"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u2668"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u26fa"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\ud83c\udfa0"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\ud83c\udfa1"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\ud83c\udfa2"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\ud83c\udfa3"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\ud83c\udfa4"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\ud83c\udfa5"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\ud83c\udfa6"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\ud83c\udfa7"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\ud83c\udfa8"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\ud83c\udfa9"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\ud83c\udfaa"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\ud83c\udfab"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\ud83c\udfac"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\ud83c\udfad"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\ud83c\udfae"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\ud83c\udc04"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\ud83c\udfaf"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\ud83c\udfb0"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\ud83c\udfb1"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\ud83c\udfb2"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\ud83c\udfb3"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\ud83c\udfb4"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\ud83c\udccf"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\ud83c\udfb5"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\ud83c\udfb6"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\ud83c\udfb7"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\ud83c\udfb8"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\ud83c\udfb9"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\ud83c\udfba"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\ud83c\udfbb"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\ud83c\udfbc"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\u303d"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\ud83d\udcf7"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\ud83d\udcf9"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\ud83d\udcfa"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\ud83d\udcfb"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\ud83d\udcfc"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\ud83d\udc8b"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\ud83d\udc8c"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\ud83d\udc8d"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\ud83d\udc8e"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\ud83d\udc8f"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\ud83d\udc90"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\ud83d\udc91"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\ud83d\udc92"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\ud83d\udd1e"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\u00a9"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\u00ae"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\u2122"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\u2139"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "#\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "1\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "2\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "3\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "4\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "5\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "6\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "7\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "8\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "9\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "0\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\ud83d\udd1f"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\ud83d\udcf6"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\ud83d\udcf3"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\ud83d\udcf4"

    aput-object v2, v0, v1

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_activities:[Ljava/lang/String;

    .line 244
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\ud83c\udf54"

    aput-object v1, v0, v3

    const-string v1, "\ud83c\udf59"

    aput-object v1, v0, v5

    const-string v1, "\ud83c\udf70"

    aput-object v1, v0, v6

    const-string v1, "\ud83c\udf5c"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\ud83c\udf5e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\ud83c\udf73"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\ud83c\udf66"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud83c\udf5f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ud83c\udf61"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ud83c\udf58"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ud83c\udf5a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\ud83c\udf5d"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud83c\udf5b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ud83c\udf62"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\ud83c\udf63"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ud83c\udf71"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ud83c\udf72"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\ud83c\udf67"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud83c\udf56"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ud83c\udf65"

    aput-object v2, v0, v1

    const-string v1, "\ud83c\udf60"

    aput-object v1, v0, v4

    const/16 v1, 0x15

    const-string v2, "\ud83c\udf55"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\ud83c\udf57"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\ud83c\udf68"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\ud83c\udf69"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\ud83c\udf6a"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\ud83c\udf6b"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\ud83c\udf6c"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\ud83c\udf6d"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ud83c\udf6e"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\ud83c\udf6f"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ud83c\udf64"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\ud83c\udf74"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u2615"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\ud83c\udf78"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ud83c\udf7a"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\ud83c\udf75"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\ud83c\udf76"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ud83c\udf77"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\ud83c\udf7b"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\ud83c\udf79"

    aput-object v2, v0, v1

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_foods:[Ljava/lang/String;

    .line 253
    const/16 v0, 0xb6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u2197"

    aput-object v1, v0, v3

    const-string v1, "\u2198"

    aput-object v1, v0, v5

    const-string v1, "\u2196"

    aput-object v1, v0, v6

    const-string v1, "\u2199"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u2934"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u2935"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2194"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u2195"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u2b06"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u2b07"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u27a1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u2b05"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u25b6"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u25c0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u23e9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u23ea"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u23eb"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u23ec"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud83d\udd3a"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ud83d\udd3b"

    aput-object v2, v0, v1

    const-string v1, "\ud83d\udd3c"

    aput-object v1, v0, v4

    const/16 v1, 0x15

    const-string v2, "\ud83d\udd3d"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u2b55"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u274c"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u274e"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u2757"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u2049"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u203c"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u2753"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u2754"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u2755"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u3030"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u27b0"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u27bf"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u2764"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ud83d\udc93"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\ud83d\udc94"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\ud83d\udc95"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ud83d\udc96"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\ud83d\udc97"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\ud83d\udc98"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\ud83d\udc99"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\ud83d\udc9a"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\ud83d\udc9b"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\ud83d\udc9c"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\ud83d\udc9d"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\ud83d\udc9e"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\ud83d\udc9f"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u2660"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u2666"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u2663"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\ud83d\udeac"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\ud83d\udead"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\u267f"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\ud83d\udea9"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\u26a0"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u26d4"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\u267b"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\ud83d\udeb2"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\ud83d\udeb6"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\ud83d\udeb9"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\ud83d\udeba"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\ud83d\udec0"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\ud83d\udebb"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\ud83d\udebd"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\ud83d\udebe"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\ud83d\udebc"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\ud83d\udeaa"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\ud83d\udeab"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\u2714"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\ud83c\udd91"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\ud83c\udd92"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\ud83c\udd93"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\ud83c\udd94"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\ud83c\udd95"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\ud83c\udd96"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\ud83c\udd97"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\ud83c\udd98"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\ud83c\udd99"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\ud83c\udd9a"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\ud83c\ude01"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\ud83c\ude02"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\ud83c\ude32"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\ud83c\ude33"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\ud83c\ude34"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\ud83c\ude35"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\ud83c\ude36"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\ud83c\ude1a"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\ud83c\ude37"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\ud83c\ude38"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\ud83c\ude39"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\ud83c\ude2f"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\ud83c\ude3a"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\u3299"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\u3297"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\ud83c\ude50"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\ud83c\ude51"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\u2795"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\u2796"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\u2716"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\u2797"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\ud83d\udca0"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\ud83d\udca1"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\ud83d\udca2"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\ud83d\udca3"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\ud83d\udca4"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\ud83d\udca5"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\ud83d\udca6"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\ud83d\udca7"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\ud83d\udca8"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\ud83d\udca9"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\ud83d\udcaa"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\ud83d\udcab"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\ud83d\udcac"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\u2728"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\u2734"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\u2733"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\u26aa"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\u26ab"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\ud83d\udd34"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\ud83d\udd35"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "\ud83d\udd32"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\ud83d\udd33"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\u2b50"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\u2b1c"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "\u2b1b"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\u25ab"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "\u25aa"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\u25fd"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "\u25fe"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\u25fb"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "\u25fc"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\ud83d\udd36"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "\ud83d\udd37"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\ud83d\udd38"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "\ud83d\udd39"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\u2747"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "\ud83d\udcae"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "\ud83d\udcaf"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\u21a9"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\u21aa"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "\ud83d\udd03"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\ud83d\udd0a"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "\ud83d\udd0b"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\ud83d\udd0c"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "\ud83d\udd0d"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\ud83d\udd0e"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "\ud83d\udd12"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\ud83d\udd13"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "\ud83d\udd0f"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\ud83d\udd10"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "\ud83d\udd11"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\ud83d\udd14"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "\u2611"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\ud83d\udd18"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "\ud83d\udd16"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\ud83d\udd17"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "\ud83d\udd19"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\ud83d\udd1a"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "\ud83d\udd1b"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\ud83d\udd1c"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "\ud83d\udd1d"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "\u2003"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "\u2002"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "\u2005"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "\u2705"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "\u270a"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "\u270b"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "\u270c"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "\ud83d\udc4a"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "\ud83d\udc4d"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "\u261d"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "\ud83d\udc46"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "\ud83d\udc47"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "\ud83d\udc48"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "\ud83d\udc49"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "\ud83d\udc4b"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "\ud83d\udc4f"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "\ud83d\udc4c"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "\ud83d\udc4e"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "\ud83d\udc50"

    aput-object v2, v0, v1

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_symbols:[Ljava/lang/String;

    .line 539
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidateHistory:Z

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    .line 545
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    .line 551
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLanguage:I

    .line 565
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDictionary:I

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocale:Ljava/lang/String;

    .line 571
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDecoEmojiList:Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;

    .line 586
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mStartIndexStack:Ljava/util/LinkedList;

    .line 589
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mSavedCurrentIndex:I

    .line 590
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mSavedCategoryCount:I

    .line 605
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentCategoryId:I

    .line 649
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    .line 650
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    .line 651
    sput v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    .line 652
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidateHistory:Z

    .line 653
    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocale:Ljava/lang/String;

    .line 654
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    .line 655
    return-void
.end method

.method private CandidatesEmoji()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1236
    const/4 v0, 0x0

    return-object v0
.end method

.method private CandidatesEmojiDocomo()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 1300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1303
    .local v3, length:I
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_NATURE_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1305
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1306
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_NATURE_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1309
    :cond_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1310
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_HUMAN_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1311
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 1312
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_HUMAN_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1315
    :cond_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_FACES_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1317
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    .line 1318
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_FACES_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1317
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1321
    :cond_2
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1322
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_ARTIFACTS_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1323
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_3

    .line 1324
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_ARTIFACTS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1327
    :cond_3
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_ACTIVITIES_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1329
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    .line 1330
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_ACTIVITIES_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1329
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1333
    :cond_4
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_FOODS_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1335
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_5

    .line 1336
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_FOODS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1339
    :cond_5
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1340
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_SYMBOLS_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1341
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_6

    .line 1342
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_DOCOMO_SYMBOLS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1341
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1345
    :cond_6
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 1347
    .local v0, array:[Ljava/lang/String;
    return-object v0
.end method

.method private CandidatesEmojiKddi()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 1354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    .local v1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1357
    .local v3, length:I
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1358
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_FACES_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1359
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1360
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_FACES_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1363
    :cond_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_HUMAN_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1365
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 1366
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_HUMAN_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1365
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1369
    :cond_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1370
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_CRITTER_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1371
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    .line 1372
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_CRITTER_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1371
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1375
    :cond_2
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1376
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_FOODS_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1377
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_3

    .line 1378
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_FOODS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1381
    :cond_3
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1382
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_NATURE_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1383
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    .line 1384
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_NATURE_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1387
    :cond_4
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1388
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_ACTIVITIES_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1389
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_5

    .line 1390
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_ACTIVITIES_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1389
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1393
    :cond_5
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_ARTIFACTS_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1395
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_6

    .line 1396
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_ARTIFACTS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1399
    :cond_6
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_TOOLS_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1401
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_7

    .line 1402
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_TOOLS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1405
    :cond_7
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1406
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_SYMBOLS_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1407
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_8

    .line 1408
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_KDDI_SYMBOLS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1407
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1411
    :cond_8
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 1413
    .local v0, array:[Ljava/lang/String;
    return-object v0
.end method

.method private CandidatesEmojiSbm()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 1420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    .local v1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1423
    .local v3, length:I
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_NATURE_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1425
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1426
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_NATURE_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1429
    :cond_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_HUMAN_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1431
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 1432
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_HUMAN_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1435
    :cond_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_FACES_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1437
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    .line 1438
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_FACES_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1441
    :cond_2
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_ARTIFACTS_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1443
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_3

    .line 1444
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_ARTIFACTS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1447
    :cond_3
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1448
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_ACTIVITIES_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1449
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    .line 1450
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_ACTIVITIES_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1453
    :cond_4
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1454
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_FOODS_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1455
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_5

    .line 1456
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_FOODS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1459
    :cond_5
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_SYMBOLS_TABLE:[Ljava/lang/String;

    array-length v3, v4

    .line 1461
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_6

    .line 1462
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->EMOJI_SBM_SYMBOLS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1465
    :cond_6
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 1467
    .local v0, array:[Ljava/lang/String;
    return-object v0
.end method

.method private CandidatesUnicode6Emoji()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 1243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1245
    .local v5, length:I
    const/4 v4, 0x0

    .line 1247
    .local v4, index:I
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1249
    .local v2, cate:Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_nature:[Ljava/lang/String;

    array-length v5, v6

    .line 1251
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1252
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_nature:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1255
    :cond_0
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_human:[Ljava/lang/String;

    array-length v5, v6

    .line 1257
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    .line 1258
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_human:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1261
    :cond_1
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_faces:[Ljava/lang/String;

    array-length v5, v6

    .line 1263
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    .line 1264
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_faces:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1267
    :cond_2
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_artifacts:[Ljava/lang/String;

    array-length v5, v6

    .line 1269
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_3

    .line 1270
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_artifacts:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1273
    :cond_3
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_activities:[Ljava/lang/String;

    array-length v5, v6

    .line 1275
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_4

    .line 1276
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_activities:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1279
    :cond_4
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_foods:[Ljava/lang/String;

    array-length v5, v6

    .line 1281
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_5

    .line 1282
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_foods:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1285
    :cond_5
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600d6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_symbols:[Ljava/lang/String;

    array-length v5, v6

    .line 1287
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_6

    .line 1288
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_symbols:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1291
    :cond_6
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    .line 1293
    .local v0, array:[Ljava/lang/String;
    return-object v0
.end method

.method private closeHistories()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 817
    :cond_0
    return-void
.end method

.method private convertSurrogatePair(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .parameter "moji"
    .parameter "type"

    .prologue
    .line 1087
    return-object p1
.end method

.method private getCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v10, 0x100

    const/4 v9, 0x6

    .line 1123
    const/4 v7, 0x0

    .line 1124
    .local v7, length:I
    const/4 v6, 0x0

    .line 1126
    .local v6, attribute:I
    or-int/lit8 v6, v6, 0x10

    .line 1127
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidateHistory:Z

    if-eqz v1, :cond_4

    .line 1128
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    sget v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    if-lt v1, v3, :cond_3

    .line 1129
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->loadResource()V

    .line 1130
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    array-length v7, v1

    .line 1143
    :cond_0
    :goto_0
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    if-eq v1, v9, :cond_1

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    if-le v7, v1, :cond_2

    :cond_1
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    if-ne v1, v9, :cond_5

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDecoEmojiList:Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->getItem(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1189
    :cond_2
    :goto_1
    return-object v4

    .line 1134
    :cond_3
    or-int/lit8 v6, v6, 0x1

    .line 1135
    sget v7, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    goto :goto_0

    .line 1138
    :cond_4
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1139
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    array-length v7, v1

    goto :goto_0

    .line 1148
    :cond_5
    const/4 v2, 0x0

    .line 1149
    .local v2, candidate:Ljava/lang/String;
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_8

    .line 1151
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    aget-object v2, v1, v3

    .line 1152
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    if-eq v1, v9, :cond_6

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAddSymbolType:I

    if-ne v1, v11, :cond_7

    .line 1154
    :cond_6
    or-int/2addr v6, v10

    .line 1183
    :cond_7
    :goto_2
    if-eqz v2, :cond_2

    .line 1187
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V

    .line 1188
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->setSymbolMode(I)V

    move-object v4, v0

    .line 1189
    goto :goto_1

    .line 1157
    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_8
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1158
    .local v8, r:Landroid/content/res/Resources;
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsNextPreviousButton:Z

    if-eqz v1, :cond_9

    .line 1159
    const v1, 0x7f060138

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1160
    const/high16 v1, 0x200

    or-int/2addr v6, v1

    .line 1161
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1162
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsNextPreviousButton:Z

    goto :goto_2

    .line 1163
    :cond_9
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMaxItem:I

    if-lez v1, :cond_a

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMaxItem:I

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCountCategory:I

    add-int/2addr v1, v3

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    if-gt v1, v3, :cond_a

    .line 1164
    const v1, 0x7f060139

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1165
    const/high16 v1, 0x400

    or-int/2addr v6, v1

    .line 1166
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1167
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsLastNextButton:Z

    goto :goto_2

    .line 1169
    :cond_a
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    if-ne v1, v9, :cond_b

    .line 1170
    or-int/2addr v6, v10

    .line 1171
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDecoEmojiList:Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->getItem(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1173
    :cond_b
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1174
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    aget-object v2, v1, v3

    .line 1175
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAddSymbolType:I

    if-ne v1, v11, :cond_7

    .line 1176
    or-int/2addr v6, v10

    goto :goto_2
.end method

.method private getCurrentPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1770
    const/4 v0, 0x0

    .line 1771
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolPackageList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1772
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolPackageList:[Ljava/lang/String;

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolIndex:I

    aget-object v0, v1, v2

    .line 1774
    :cond_0
    return-object v0
.end method

.method private getDBName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, name:Ljava/lang/String;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 918
    :pswitch_0
    const-string v0, "db_select_others"

    .line 921
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocale:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 924
    :goto_0
    return-object v1

    .line 907
    :pswitch_1
    const-string v1, "db_select_emoji"

    goto :goto_0

    .line 909
    :pswitch_2
    const-string v1, "db_select_emoji_uni6"

    goto :goto_0

    .line 911
    :pswitch_3
    const-string v1, "db_select_decoemoji"

    goto :goto_0

    .line 913
    :pswitch_4
    const-string v1, "db_select_harfwidth_symbol"

    goto :goto_0

    .line 915
    :pswitch_5
    const-string v1, "db_select_kaomoji"

    goto :goto_0

    .line 905
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSymToggleTable()[I
    .locals 2

    .prologue
    .line 1636
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLanguage()I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLanguage:I

    .line 1637
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLanguage:I

    if-eqz v0, :cond_0

    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLanguage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1639
    :cond_0
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->SYM_TOGGLE_TABLE_JP:[I

    .line 1641
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->SYM_TOGGLE_TABLE_OTH:[I

    goto :goto_0
.end method

.method public static isCategory(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 4
    .parameter "word"

    .prologue
    const/4 v1, 0x0

    .line 1703
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1704
    .local v0, length:I
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isHistoryExists()Z
    .locals 1

    .prologue
    .line 2053
    sget v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    if-lez v0, :cond_0

    .line 2054
    const/4 v0, 0x1

    .line 2056
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPartialList()Z
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mStartIndexStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadHistories()I
    .locals 21

    .prologue
    .line 825
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAddSymbolType:I

    .line 826
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_2

    .line 827
    :cond_0
    const/4 v15, 0x0

    .line 895
    :cond_1
    :goto_0
    return v15

    .line 830
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    .line 831
    const/4 v15, 0x0

    .line 833
    .local v15, historyCount:I
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v18

    .line 835
    .local v18, packageName:Ljava/lang/String;
    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->getCandidates(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->getSymbolType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAddSymbolType:I

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->getHistories(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 838
    .local v14, histories:[Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 839
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    array-length v3, v3

    if-ge v15, v3, :cond_3

    .line 840
    array-length v3, v14

    if-lt v15, v3, :cond_4

    .line 847
    :cond_3
    sput v15, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    .line 848
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidateHistory:Z

    .line 849
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    goto :goto_0

    .line 843
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    aget-object v4, v14, v15

    aput-object v4, v3, v15

    .line 839
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 855
    .end local v14           #histories:[Ljava/lang/String;
    .end local v15           #historyCount:I
    .end local v18           #packageName:Ljava/lang/String;
    :cond_5
    const/16 v19, 0x0

    .line 856
    .local v19, rowcount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 859
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "SymbolEngine"

    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 861
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 862
    if-gtz v19, :cond_6

    .line 863
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 864
    const/4 v15, 0x0

    goto :goto_0

    .line 867
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    .line 869
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 870
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->convertSurrogatePair(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    .line 871
    .local v20, tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    aput-object v20, v3, v16

    .line 872
    invoke-interface {v11}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 869
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 874
    .end local v20           #tag:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_a

    .line 875
    const/4 v10, 0x0

    .line 876
    .local v10, cnt:I
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 877
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 878
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mTmpHistories:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    aget-object v4, v4, v16

    aput-object v4, v3, v10

    .line 880
    add-int/lit8 v10, v10, 0x1

    .line 876
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 883
    .end local v13           #file:Ljava/io/File;
    :cond_9
    move/from16 v19, v10

    .line 884
    const/16 v17, 0x0

    .local v17, j:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mTmpHistories:[Ljava/lang/String;

    aget-object v4, v4, v17

    aput-object v4, v3, v17

    .line 884
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 888
    .end local v10           #cnt:I
    .end local v17           #j:I
    :cond_a
    sput v19, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    .line 889
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidateHistory:Z

    .line 890
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 891
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #i:I
    :goto_5
    move/from16 v15, v19

    .line 895
    goto/16 :goto_0

    .line 892
    :catch_0
    move-exception v12

    .line 893
    .local v12, e:Landroid/database/SQLException;
    const-string v3, "Exception on query"

    invoke-virtual {v12}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private loadItemKaomoji(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1914
    packed-switch p1, :pswitch_data_0

    .line 1953
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1954
    return-void

    .line 1916
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1917
    .local v0, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setDisplayHistory()Ljava/util/List;

    move-result-object v0

    .line 1918
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1921
    .end local v0           #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1924
    :pswitch_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1927
    :pswitch_3
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1930
    :pswitch_4
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1933
    :pswitch_5
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1936
    :pswitch_6
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1940
    :pswitch_7
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1943
    :pswitch_8
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1947
    :pswitch_9
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private loadItemSymbol(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1890
    packed-switch p1, :pswitch_data_0

    .line 1905
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1906
    return-void

    .line 1892
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1893
    .local v0, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setDisplayHistory()Ljava/util/List;

    move-result-object v0

    .line 1894
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1897
    .end local v0           #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1900
    :pswitch_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1890
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadItemUni6Emoji(I)V
    .locals 5
    .parameter "num"

    .prologue
    .line 1962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1963
    .local v0, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1965
    .local v2, length:I
    packed-switch p1, :pswitch_data_0

    .line 2028
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    .line 2029
    const/4 v3, 0x0

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 2030
    return-void

    .line 1967
    :pswitch_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setDisplayHistory()Ljava/util/List;

    move-result-object v0

    .line 1968
    goto :goto_0

    .line 1970
    :pswitch_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_nature:[Ljava/lang/String;

    array-length v2, v3

    .line 1971
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1973
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 1974
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_nature:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1973
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1978
    .end local v1           #i:I
    :pswitch_2
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_human:[Ljava/lang/String;

    array-length v2, v3

    .line 1979
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1981
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 1982
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_human:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1981
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1986
    .end local v1           #i:I
    :pswitch_3
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_faces:[Ljava/lang/String;

    array-length v2, v3

    .line 1987
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1989
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 1990
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_faces:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1989
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1994
    .end local v1           #i:I
    :pswitch_4
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_artifacts:[Ljava/lang/String;

    array-length v2, v3

    .line 1995
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1997
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v2, :cond_0

    .line 1998
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_artifacts:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1997
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2002
    .end local v1           #i:I
    :pswitch_5
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_activities:[Ljava/lang/String;

    array-length v2, v3

    .line 2003
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2005
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    if-ge v1, v2, :cond_0

    .line 2006
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_activities:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2005
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2010
    .end local v1           #i:I
    :pswitch_6
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_foods:[Ljava/lang/String;

    array-length v2, v3

    .line 2011
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2013
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    if-ge v1, v2, :cond_0

    .line 2014
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_foods:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2013
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2018
    .end local v1           #i:I
    :pswitch_7
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_symbols:[Ljava/lang/String;

    array-length v2, v3

    .line 2019
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2021
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_7
    if-ge v1, v2, :cond_0

    .line 2022
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates_emoji_unicode6_symbols:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2021
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private loadResource()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1197
    const/4 v1, -0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAddSymbolType:I

    .line 1198
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 1225
    :pswitch_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    .line 1228
    :cond_0
    :goto_0
    :pswitch_1
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1229
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidateHistory:Z

    .line 1230
    return-void

    .line 1200
    :pswitch_2
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->CandidatesEmoji()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1205
    :pswitch_3
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentCategoryId:I

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->loadItem(I)V

    goto :goto_0

    .line 1208
    :pswitch_4
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1213
    :pswitch_5
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1214
    .local v0, packageName:Ljava/lang/String;
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    .line 1215
    if-eqz v0, :cond_1

    .line 1216
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->getCandidates(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    .line 1217
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-static {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->getSymbolType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAddSymbolType:I

    .line 1219
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1220
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v3

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidates:[Ljava/lang/String;

    goto :goto_0

    .line 1198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private openHistories()V
    .locals 5

    .prologue
    .line 798
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->closeHistories()V

    .line 799
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine$DatabaseHelper;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getDBName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine$DatabaseHelper;-><init>(Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;Landroid/content/Context;Ljava/lang/String;)V

    .line 802
    .local v1, mDbHelper:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine$DatabaseHelper;
    :try_start_0
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "iWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IWnnSymbolEngine::openHistories "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDisplayHistory()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2039
    .local v0, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2040
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    if-ge v1, v2, :cond_0

    .line 2041
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2040
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2043
    :cond_0
    return-object v0
.end method

.method private updateHistory(Ljava/lang/String;)V
    .locals 23
    .parameter "info"

    .prologue
    .line 934
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    sget v17, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    .line 939
    .local v17, length:I
    const/4 v14, 0x0

    .line 942
    .local v14, i:I
    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    aget-object v21, v3, v14

    .line 944
    .local v21, str:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 949
    .end local v21           #str:Ljava/lang/String;
    :cond_2
    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    .line 950
    const/16 v3, 0x14

    if-ne v14, v3, :cond_5

    .line 951
    add-int/lit8 v14, v14, -0x1

    .line 957
    :cond_3
    :goto_2
    move v15, v14

    .local v15, j:I
    :goto_3
    if-lez v15, :cond_6

    .line 958
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    add-int/lit8 v5, v15, -0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v15

    .line 957
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 942
    .end local v15           #j:I
    .restart local v21       #str:Ljava/lang/String;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 953
    .end local v21           #str:Ljava/lang/String;
    :cond_5
    sget v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    goto :goto_2

    .line 961
    .restart local v15       #j:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 963
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->isPartialList()Z

    move-result v3

    if-nez v3, :cond_7

    .line 964
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidateHistory:Z

    .line 965
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 968
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_8

    .line 969
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v19

    .line 970
    .local v19, packageName:Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistories:[Ljava/lang/String;

    sget v5, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->updateHistories(Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_0

    .line 976
    .end local v19           #packageName:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 978
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SymbolEngine"

    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 980
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 981
    .local v13, historyCount:I
    const/16 v3, 0x14

    if-ge v3, v13, :cond_9

    const/16 v13, 0x14

    .line 983
    :cond_9
    const/16 v16, 0x0

    .line 984
    .local v16, lastRowId:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 985
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 986
    add-int/lit8 v16, v16, 0x1

    .line 988
    const/16 v3, 0x2710

    move/from16 v0, v16

    if-le v0, v3, :cond_b

    .line 989
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 990
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 991
    .local v10, args:Landroid/content/ContentValues;
    const/16 v20, 0x0

    .line 992
    .local v20, rowid:I
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_a

    .line 993
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 994
    const-string v3, "rowid"

    add-int/lit8 v4, v14, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 995
    const-string v3, "SymbolEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 996
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 992
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 998
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 999
    const-string v3, "SymbolEngine"

    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1000
    add-int/lit8 v16, v14, 0x1

    .line 1006
    .end local v10           #args:Landroid/content/ContentValues;
    .end local v20           #rowid:I
    :cond_b
    :goto_5
    if-lez v13, :cond_f

    .line 1007
    const/16 v20, 0x0

    .line 1008
    .restart local v20       #rowid:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1010
    const/4 v14, 0x0

    :goto_6
    if-ge v14, v13, :cond_e

    .line 1011
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->convertSurrogatePair(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v22

    .line 1012
    .local v22, tag:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1013
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1014
    .restart local v10       #args:Landroid/content/ContentValues;
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1015
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1016
    const-string v3, "rowid"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1017
    const-string v3, "SymbolEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1003
    .end local v10           #args:Landroid/content/ContentValues;
    .end local v20           #rowid:I
    .end local v22           #tag:Ljava/lang/String;
    :cond_c
    const/16 v16, 0x1

    goto :goto_5

    .line 1020
    .restart local v20       #rowid:I
    .restart local v22       #tag:Ljava/lang/String;
    :cond_d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1010
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1024
    .end local v22           #tag:Ljava/lang/String;
    :cond_e
    const/16 v3, 0x14

    if-lt v14, v3, :cond_f

    .line 1025
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1026
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1027
    const-string v3, "SymbolEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1028
    add-int/lit8 v13, v13, -0x1

    .line 1031
    .end local v20           #rowid:I
    :cond_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1033
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1034
    .local v12, cv:Landroid/content/ContentValues;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->convertSurrogatePair(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    .line 1035
    .local v18, moji:Ljava/lang/String;
    const-string v3, "rowid"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1036
    const-string v3, "history_data"

    move-object/from16 v0, v18

    invoke-virtual {v12, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v3, "SymbolEngine"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method


# virtual methods
.method public addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
    .locals 1
    .parameter "word"

    .prologue
    .line 1578
    const/4 v0, 0x0

    return v0
.end method

.method public breakSequence()V
    .locals 1

    .prologue
    .line 1596
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->breakSequence()V

    .line 1597
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 1481
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->closeHistories()V

    .line 1482
    return-void
.end method

.method public convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)I
    .locals 1
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 1503
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1504
    return v0
.end method

.method public deleteAdditionalSymbolHistories()V
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->deleteHistories()V

    .line 1782
    return-void
.end method

.method public deleteDataBase(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 1058
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    .line 1059
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->openHistories()V

    .line 1061
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1062
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 1065
    :try_start_0
    const-string v2, "drop table SymbolEngine"

    .line 1066
    .local v2, sql:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1068
    const-string v3, "create table SymbolEngine (rowid integer primary key autoincrement, history_data text not null, integer);"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    .end local v2           #sql:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->closeHistories()V

    .line 1075
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->initializeMode()V

    .line 1076
    return-void

    .line 1069
    :catch_0
    move-exception v1

    .line 1070
    .local v1, e:Landroid/database/SQLException;
    const-string v3, "iWnn"

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteToggleDataBase()V
    .locals 4

    .prologue
    .line 1045
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->SYM_TOGGLE_TABLE_JP:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 1046
    .local v3, mode:I
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->deleteDataBase(I)V

    .line 1045
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1048
    .end local v3           #mode:I
    :cond_0
    return-void
.end method

.method public deleteWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 1585
    const/4 v0, 0x1

    return v0
.end method

.method public getAdditionalSymbolIndex()I
    .locals 1

    .prologue
    .line 1752
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolIndex:I

    return v0
.end method

.method public getAdditionalSymbolTabNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolTabList:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1741
    const/4 v0, 0x0

    .line 1743
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolTabList:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getEmojiCategoryList()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1867
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    .local v2, category:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1870
    .local v1, cate:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1871
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1872
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1873
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1874
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1876
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1878
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1879
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1880
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    .line 1881
    .local v0, array:[Ljava/lang/String;
    return-object v0
.end method

.method public getKaomojiCategoryList()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1838
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1840
    .local v2, category:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1841
    .local v1, cate:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1842
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1843
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1844
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1846
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1848
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1849
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1853
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    .line 1858
    .local v0, array:[Ljava/lang/String;
    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    return v0
.end method

.method public getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 2

    .prologue
    .line 1518
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsLastNextButton:Z

    if-eqz v1, :cond_1

    .line 1519
    const/4 v0, 0x0

    .line 1530
    :cond_0
    :goto_0
    return-object v0

    .line 1522
    :cond_1
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    .line 1523
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-eqz v0, :cond_0

    .line 1524
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1526
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->isCategory(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCountCategory:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCountCategory:I

    goto :goto_0
.end method

.method public getSymbolCategoryList()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1822
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1824
    .local v2, category:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1825
    .local v1, cate:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1826
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06013a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1827
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1828
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    .line 1829
    .local v0, array:[Ljava/lang/String;
    return-object v0
.end method

.method public getUserDictionaryWords()[Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 1

    .prologue
    .line 1627
    const/4 v0, 0x0

    return-object v0
.end method

.method public getgijistr(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)I
    .locals 1
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 1786
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1787
    return v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .parameter "dirPath"

    .prologue
    .line 1474
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->init(Ljava/lang/String;)V

    .line 1475
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1476
    return-void
.end method

.method public initializeDictionary(I)Z
    .locals 1
    .parameter "dictionary"

    .prologue
    .line 1615
    const/4 v0, 0x0

    return v0
.end method

.method public initializeDictionary(II)Z
    .locals 1
    .parameter "dictionary"
    .parameter "type"

    .prologue
    .line 1609
    const/4 v0, 0x0

    return v0
.end method

.method public initializeMode()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 680
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLanguage:I

    .line 681
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDictionary:I

    .line 682
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    .line 683
    return-void
.end method

.method public isConverting()Z
    .locals 1

    .prologue
    .line 1651
    const/4 v0, 0x0

    return v0
.end method

.method public isIsLastNextButton()Z
    .locals 1

    .prologue
    .line 1813
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsLastNextButton:Z

    return v0
.end method

.method public learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 12
    .parameter "word"

    .prologue
    const/4 v10, 0x0

    .line 1536
    if-nez p1, :cond_0

    .line 1571
    :goto_0
    return v10

    .line 1540
    :cond_0
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1541
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->getSymbolMode()I

    move-result v11

    .line 1542
    .local v11, symbolModeType:I
    const/4 v9, 0x0

    .line 1543
    .local v9, setOtherMode:Z
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getMode()I

    move-result v7

    .line 1544
    .local v7, currentMode:I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_1

    if-eq v11, v7, :cond_1

    .line 1545
    const/4 v9, 0x1

    .line 1546
    invoke-virtual {p0, v11}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setMode(I)V

    .line 1548
    :cond_1
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->updateHistory(Ljava/lang/String;)V

    .line 1549
    if-eqz v9, :cond_2

    .line 1550
    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setMode(I)V

    .line 1554
    .end local v7           #currentMode:I
    .end local v9           #setOtherMode:Z
    .end local v11           #symbolModeType:I
    :cond_2
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    .line 1555
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->breakSequence()V

    .line 1556
    const/4 v10, 0x1

    goto :goto_0

    .line 1559
    :cond_3
    const/4 v10, 0x0

    .line 1561
    .local v10, success:Z
    :try_start_0
    iget-object v2, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 1562
    .local v2, tmp:Ljava/lang/String;
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v3, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    or-int/lit8 v6, v3, 0x4

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V

    .line 1564
    .local v0, learnWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    const/4 v10, 0x1

    goto :goto_0

    .line 1567
    .end local v0           #learnWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .end local v2           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1568
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IWnnSymbolEngine:learn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadItem(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 2064
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentCategoryId:I

    .line 2065
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 2074
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->loadItemSymbol(I)V

    .line 2077
    :goto_0
    return-void

    .line 2067
    :sswitch_0
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->loadItemUni6Emoji(I)V

    goto :goto_0

    .line 2070
    :sswitch_1
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->loadItemKaomoji(I)V

    goto :goto_0

    .line 2065
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public makeCandidateListOf(I)I
    .locals 1
    .parameter "clausePosition"

    .prologue
    .line 1603
    const/4 v0, 0x1

    return v0
.end method

.method public pageNext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1674
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCountCategory:I

    add-int/lit16 v0, v1, 0xb4

    .line 1675
    .local v0, itemCount:I
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMaxItem:I

    add-int/2addr v1, v0

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMaxItem:I

    .line 1676
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsNextPreviousButton:Z

    .line 1677
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsLastNextButton:Z

    .line 1678
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCountCategory:I

    .line 1679
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mStartIndexStack:Ljava/util/LinkedList;

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    sub-int/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1680
    return-void
.end method

.method public pagePrev()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1686
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mStartIndexStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1687
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    if-lez v0, :cond_1

    .line 1688
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsNextPreviousButton:Z

    .line 1692
    :goto_1
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsLastNextButton:Z

    .line 1693
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    add-int/lit16 v0, v0, 0xb4

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMaxItem:I

    .line 1694
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCountCategory:I

    .line 1695
    return-void

    .line 1686
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mStartIndexStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1690
    :cond_1
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidateHistory:Z

    goto :goto_1
.end method

.method public predict(Ljp/co/omronsoft/iwnnime/ml/ComposingText;II)I
    .locals 3
    .parameter "text"
    .parameter "minLen"
    .parameter "maxLen"

    .prologue
    const/4 v2, 0x0

    .line 1488
    const/4 v0, 0x1

    .line 1490
    .local v0, ret:I
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->isPartialList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1491
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1492
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidateHistory:Z

    .line 1495
    :cond_0
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsLastNextButton:Z

    .line 1496
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCountCategory:I

    .line 1497
    return v0
.end method

.method public restoreCurrentIndex()V
    .locals 1

    .prologue
    .line 1666
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mSavedCurrentIndex:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1667
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mSavedCategoryCount:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCountCategory:I

    .line 1668
    return-void
.end method

.method public saveCurrentIndex()V
    .locals 1

    .prologue
    .line 1658
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mSavedCurrentIndex:I

    .line 1659
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCountCategory:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mSavedCategoryCount:I

    .line 1660
    return-void
.end method

.method public searchWords(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 1510
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 1511
    return v0
.end method

.method public searchWords(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
    .locals 1
    .parameter "word"

    .prologue
    .line 1621
    const/4 v0, 0x0

    return v0
.end method

.method public setAdditionalSymbolIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1761
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolIndex:I

    .line 1762
    return-void
.end method

.method public setDictionary(II)Z
    .locals 3
    .parameter "language"
    .parameter "dictionary"

    .prologue
    .line 667
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(III)Z

    move-result v0

    .line 668
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 669
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getFilesDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->init(Ljava/lang/String;)V

    .line 673
    :goto_0
    return v0

    .line 671
    :cond_0
    const-string v1, "iWnn"

    const-string v2, "failed setDictionary()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 746
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    .line 748
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLanguage:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDictionary:I

    if-eq v1, v4, :cond_0

    .line 750
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLanguage:I

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDictionary:I

    invoke-virtual {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setDictionary(II)Z

    .line 752
    :cond_0
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDictionary:I

    .line 753
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLanguage:I

    .line 755
    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    .line 756
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolIndex:I

    .line 757
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->openHistories()V

    .line 760
    :cond_1
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentIndex:I

    .line 761
    sput v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mHistorySize:I

    .line 762
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCandidateHistory:Z

    .line 763
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentCategoryId:I

    .line 765
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->loadHistories()I

    move-result v0

    .line 766
    .local v0, count:I
    if-nez v0, :cond_2

    .line 767
    const/4 v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCurrentCategoryId:I

    .line 768
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->loadResource()V

    .line 771
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 772
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mDecoEmojiList:Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->initializeList()V

    .line 773
    const/16 v1, 0xb4

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMaxItem:I

    .line 777
    :goto_0
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsNextPreviousButton:Z

    .line 778
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mIsLastNextButton:Z

    .line 779
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mCountCategory:I

    .line 780
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mStartIndexStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 781
    return-void

    .line 775
    :cond_3
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMaxItem:I

    goto :goto_0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 1591
    return-void
.end method

.method public setSymToggle()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 689
    invoke-virtual {p0, v0, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setSymToggle(ZZ)V

    .line 690
    return-void
.end method

.method public setSymToggle(ZZ)V
    .locals 8
    .parameter "enableEmoji"
    .parameter "enableDecoEmoji"

    .prologue
    const/4 v7, 0x7

    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, isInAddSymbol:Z
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolPackageList:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 702
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolIndex:I

    .line 703
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolIndex:I

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolPackageList:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 704
    const/4 v1, 0x1

    .line 708
    :cond_0
    if-eqz v1, :cond_1

    .line 709
    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setMode(I)V

    .line 738
    :goto_0
    return-void

    .line 711
    :cond_1
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getSymToggleTable()[I

    move-result-object v4

    .line 712
    .local v4, table:[I
    array-length v2, v4

    .line 713
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v3, 0x0

    .line 715
    .local v3, next:I
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 717
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_6

    .line 718
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    aget v6, v4, v0

    if-ne v5, v6, :cond_5

    .line 719
    add-int/lit8 v0, v0, 0x1

    .line 720
    :goto_2
    if-ge v0, v2, :cond_6

    .line 721
    if-nez p1, :cond_2

    aget v5, v4, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    :cond_2
    if-nez p2, :cond_3

    aget v5, v4, v0

    const/4 v6, 0x6

    if-eq v5, v6, :cond_4

    :cond_3
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolPackageList:[Ljava/lang/String;

    if-nez v5, :cond_6

    aget v5, v4, v0

    if-ne v5, v7, :cond_6

    .line 720
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 717
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 732
    :cond_6
    rem-int v3, v0, v2

    .line 736
    :cond_7
    aget v5, v4, v3

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->setMode(I)V

    goto :goto_0
.end method

.method public startLongPressActionAdditionalSymbol(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 4
    .parameter "clickWord"

    .prologue
    .line 1797
    const/4 v1, 0x0

    .line 1798
    .local v1, ret:Z
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    if-eqz p1, :cond_0

    .line 1799
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1800
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1801
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    iget-object v3, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->startLongPressActionAdditionalSymbol(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1804
    .end local v0           #packageName:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public updateAdditionalSymbolInfo(ZZ)V
    .locals 4
    .parameter "enableEmoji"
    .parameter "enableDecoEmoji"

    .prologue
    .line 1722
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mLocalContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->getSelectAdditionalSymbolList(Landroid/content/Context;ZZ)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolPackageList:[Ljava/lang/String;

    .line 1724
    const/4 v2, 0x0

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolTabList:[Ljava/lang/String;

    .line 1725
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolPackageList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1726
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolPackageList:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolTabList:[Ljava/lang/String;

    .line 1727
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolTabList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1728
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolPackageList:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 1729
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolTabList:[Ljava/lang/String;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->mAdditionalSymbolList:Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;

    invoke-virtual {v3, v1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->getTabName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1732
    .end local v0           #i:I
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method
