.class public Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;
.super Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;
.source "DefaultSoftKeyboardJAJP.java"


# static fields
.field private static final DEFAULT_KEYBOARD_TYPE_MOBILE:I = 0x1

.field private static final INPUT_TYPE_INSTANT:I = 0x2

.field private static final INPUT_TYPE_TOGGLE:I = 0x1

.field private static final INSTANT_CHAR_CODE_FULL_NUMBER:[C = null

.field private static final INSTANT_CHAR_CODE_HALF_NUMBER:[C = null

.field private static final INVALID_KEYMODE:I = -0x1

.field private static final JP_EMPTY_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_ALPHABET_CYCLE_TABLE:[[Ljava/lang/String; = null

.field private static final JP_FULL_ALPHABET_CYCLE_TABLE_FLICK:[[Ljava/lang/String; = null

.field private static final JP_FULL_ALPHABET_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_HIRAGANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_HIRAGANA_CYCLE_TABLE:[[Ljava/lang/String; = null

.field private static final JP_FULL_HIRAGANA_CYCLE_TABLE_FLICK:[[Ljava/lang/String; = null

.field private static final JP_FULL_HIRAGANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_HIRAGANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_KATAKANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_KATAKANA_CYCLE_TABLE:[[Ljava/lang/String; = null

.field private static final JP_FULL_KATAKANA_CYCLE_TABLE_FLICK:[[Ljava/lang/String; = null

.field private static final JP_FULL_KATAKANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_KATAKANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_KATAKANA_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_NUMBER_CYCLE_TABLE_FLICK:[[Ljava/lang/String; = null

.field private static final JP_HALF_ALPHABET_CYCLE_TABLE:[[Ljava/lang/String; = null

.field private static final JP_HALF_ALPHABET_CYCLE_TABLE_FLICK:[[Ljava/lang/String; = null

.field private static final JP_HALF_ALPHABET_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_HALF_KATAKANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_HALF_KATAKANA_CYCLE_TABLE:[[Ljava/lang/String; = null

.field private static final JP_HALF_KATAKANA_CYCLE_TABLE_FLICK:[[Ljava/lang/String; = null

.field private static final JP_HALF_KATAKANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_HALF_KATAKANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_HALF_KATAKANA_REPLACE_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_HALF_NUMBER_CYCLE_TABLE_FLICK:[[Ljava/lang/String; = null

.field private static final JP_MODE_CYCLE_TABLE:[I = null

.field private static final JP_MODE_CYCLE_TABLE_DISABLE_HALF_ALPHABET:[I = null

.field private static final JP_MODE_CYCLE_TABLE_VOICE:[I = null

.field private static final JP_MODE_CYCLE_TABLE_VOICE_DISABLE_HALF_ALPHABET:[I = null

.field public static final KEYCODE_EISU_KANA:I = -0x131

.field private static final KEYCODE_NOP:I = -0x136

.field private static final KEYCODE_SELECT_CASE:I = -0x135

.field private static final KEYCODE_SWITCH_FULL_ALPHABET:I = -0x12f

.field private static final KEYCODE_SWITCH_FULL_HIRAGANA:I = -0x12d

.field private static final KEYCODE_SWITCH_FULL_HIRAGANA_MENU:I = -0x139

.field private static final KEYCODE_SWITCH_FULL_KATAKANA:I = -0x12e

.field private static final KEYCODE_SWITCH_FULL_NUMBER:I = -0x130

.field private static final KEYCODE_SWITCH_FULL_NUMBER_MENU:I = -0x13a

.field private static final KEYCODE_SWITCH_HALF_ALPHABET:I = -0x133

.field private static final KEYCODE_SWITCH_HALF_ALPHABET_MENU:I = -0x13b

.field private static final KEYCODE_SWITCH_HALF_KATAKANA:I = -0x132

.field private static final KEYCODE_SWITCH_HALF_NUMBER:I = -0x134

.field private static final KEYCODE_SWITCH_HALF_NUMBER_MENU:I = -0x13c

.field private static final KEYCODE_SWITCH_VOICE:I = -0x137

.field private static final KEY_INDEX_CHANGE_MODE_12KEY:I = 0xf

.field private static final KEY_INDEX_CHANGE_MODE_QWERTY:I = 0x1d

.field private static final KEY_NUMBER_12KEY:I = 0x14

.field private static final LIMITED_KEYMODE_DISABLE_HALF_ALPHABET:[I = null

.field private static final LIMITED_KEYMODE_VOICE_DISABLE_HALF_ALPHABET:[I = null

.field private static final POS_INPUTMODE:I = 0x4

.field private static final POS_KEYBOARDTYPE:I = 0x3

.field private static final POS_METHOD:I = 0x1

.field private static final POS_MUSHROOM:I = 0x2

.field private static final POS_SETTINGS:I = 0x0

.field private static final SLIDE_DRAWABLE_ID_DISABLE_HALF_ALPHABET_TABLE:[[[[I = null

.field private static final SLIDE_DRAWABLE_ID_TABLE:[[[[I = null

.field private static final USE_ENGLISH_PREDICT:Z = true


# instance fields
.field private mCanUndo:Z

.field private mCurrentInstantTable:[C

.field private mEnableAutoCaps:Z

.field private mEnableDecoEmoji:Z

.field private mEnableEmoji:Z

.field private mEnableEmojiUNI6:Z

.field private mEnableFlick:Z

.field private mEnableFlickToggle:Z

.field private mEnablePopup:Z

.field private mInputIconUndo:Landroid/graphics/drawable/Drawable;

.field private mInputKeyBoard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field private mInputType:I

.field private mIsInputTypeNull:Z

.field private mIsKeyboardTypeNotSave:Z

.field private mLimitedKeyMode:[I

.field private mMenuItem:[I

.field private mNoInputIconUndo:Landroid/graphics/drawable/Drawable;

.field private mNoInputKeyBoard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field private mPopupResId:I

.field private mPreferenceKeyMode:I

.field private mUndoKey:Ljava/lang/String;

.field private mUndoKeyMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 104
    new-array v0, v8, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE:[I

    .line 109
    new-array v0, v9, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_VOICE:[I

    .line 114
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_DISABLE_HALF_ALPHABET:[I

    .line 119
    new-array v0, v8, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_VOICE_DISABLE_HALF_ALPHABET:[I

    .line 124
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->LIMITED_KEYMODE_VOICE_DISABLE_HALF_ALPHABET:[I

    .line 135
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->LIMITED_KEYMODE_DISABLE_HALF_ALPHABET:[I

    .line 154
    new-array v0, v5, [[[[I

    new-array v1, v5, [[[I

    new-array v2, v5, [[I

    new-array v3, v9, [I

    fill-array-data v3, :array_6

    aput-object v3, v2, v6

    new-array v3, v9, [I

    fill-array-data v3, :array_7

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v5, [[I

    new-array v3, v9, [I

    fill-array-data v3, :array_8

    aput-object v3, v2, v6

    new-array v3, v9, [I

    fill-array-data v3, :array_9

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v5, [[[I

    new-array v2, v5, [[I

    new-array v3, v9, [I

    fill-array-data v3, :array_a

    aput-object v3, v2, v6

    new-array v3, v9, [I

    fill-array-data v3, :array_b

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v5, [[I

    new-array v3, v9, [I

    fill-array-data v3, :array_c

    aput-object v3, v2, v6

    new-array v3, v9, [I

    fill-array-data v3, :array_d

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->SLIDE_DRAWABLE_ID_TABLE:[[[[I

    .line 206
    new-array v0, v5, [[[[I

    new-array v1, v5, [[[I

    new-array v2, v5, [[I

    new-array v3, v8, [I

    fill-array-data v3, :array_e

    aput-object v3, v2, v6

    new-array v3, v8, [I

    fill-array-data v3, :array_f

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v5, [[I

    new-array v3, v8, [I

    fill-array-data v3, :array_10

    aput-object v3, v2, v6

    new-array v3, v8, [I

    fill-array-data v3, :array_11

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v5, [[[I

    new-array v2, v5, [[I

    new-array v3, v8, [I

    fill-array-data v3, :array_12

    aput-object v3, v2, v6

    new-array v3, v8, [I

    fill-array-data v3, :array_13

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v5, [[I

    new-array v3, v8, [I

    fill-array-data v3, :array_14

    aput-object v3, v2, v6

    new-array v3, v8, [I

    fill-array-data v3, :array_15

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->SLIDE_DRAWABLE_ID_DISABLE_HALF_ALPHABET_TABLE:[[[[I

    .line 258
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u3042"

    aput-object v2, v1, v6

    const-string v2, "\u3044"

    aput-object v2, v1, v7

    const-string v2, "\u3046"

    aput-object v2, v1, v5

    const-string v2, "\u3048"

    aput-object v2, v1, v8

    const-string v2, "\u304a"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u3041"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u3043"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u3045"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u3047"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u3049"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u304b"

    aput-object v2, v1, v6

    const-string v2, "\u304d"

    aput-object v2, v1, v7

    const-string v2, "\u304f"

    aput-object v2, v1, v5

    const-string v2, "\u3051"

    aput-object v2, v1, v8

    const-string v2, "\u3053"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u3055"

    aput-object v2, v1, v6

    const-string v2, "\u3057"

    aput-object v2, v1, v7

    const-string v2, "\u3059"

    aput-object v2, v1, v5

    const-string v2, "\u305b"

    aput-object v2, v1, v8

    const-string v2, "\u305d"

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u305f"

    aput-object v2, v1, v6

    const-string v2, "\u3061"

    aput-object v2, v1, v7

    const-string v2, "\u3064"

    aput-object v2, v1, v5

    const-string v2, "\u3066"

    aput-object v2, v1, v8

    const-string v2, "\u3068"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u3063"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u306a"

    aput-object v2, v1, v6

    const-string v2, "\u306b"

    aput-object v2, v1, v7

    const-string v2, "\u306c"

    aput-object v2, v1, v5

    const-string v2, "\u306d"

    aput-object v2, v1, v8

    const-string v2, "\u306e"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u306f"

    aput-object v3, v2, v6

    const-string v3, "\u3072"

    aput-object v3, v2, v7

    const-string v3, "\u3075"

    aput-object v3, v2, v5

    const-string v3, "\u3078"

    aput-object v3, v2, v8

    const-string v3, "\u307b"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u307e"

    aput-object v3, v2, v6

    const-string v3, "\u307f"

    aput-object v3, v2, v7

    const-string v3, "\u3080"

    aput-object v3, v2, v5

    const-string v3, "\u3081"

    aput-object v3, v2, v8

    const-string v3, "\u3082"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u3084"

    aput-object v3, v2, v6

    const-string v3, "\u3086"

    aput-object v3, v2, v7

    const-string v3, "\u3088"

    aput-object v3, v2, v5

    const-string v3, "\u3083"

    aput-object v3, v2, v8

    const-string v3, "\u3085"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u3087"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u3089"

    aput-object v3, v2, v6

    const-string v3, "\u308a"

    aput-object v3, v2, v7

    const-string v3, "\u308b"

    aput-object v3, v2, v5

    const-string v3, "\u308c"

    aput-object v3, v2, v8

    const-string v3, "\u308d"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u308f"

    aput-object v3, v2, v6

    const-string v3, "\u3092"

    aput-object v3, v2, v7

    const-string v3, "\u3093"

    aput-object v3, v2, v5

    const-string v3, "\u308e"

    aput-object v3, v2, v8

    const-string v3, "\u30fc"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u3001"

    aput-object v3, v2, v6

    const-string v3, "\u3002"

    aput-object v3, v2, v7

    const-string v3, "\uff1f"

    aput-object v3, v2, v5

    const-string v3, "\uff01"

    aput-object v3, v2, v8

    const-string v3, "\u30fb"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u3000"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_CYCLE_TABLE:[[Ljava/lang/String;

    .line 275
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u3042"

    aput-object v2, v1, v6

    const-string v2, "\u3044"

    aput-object v2, v1, v7

    const-string v2, "\u3046"

    aput-object v2, v1, v5

    const-string v2, "\u3048"

    aput-object v2, v1, v8

    const-string v2, "\u304a"

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u304b"

    aput-object v2, v1, v6

    const-string v2, "\u304d"

    aput-object v2, v1, v7

    const-string v2, "\u304f"

    aput-object v2, v1, v5

    const-string v2, "\u3051"

    aput-object v2, v1, v8

    const-string v2, "\u3053"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u3055"

    aput-object v2, v1, v6

    const-string v2, "\u3057"

    aput-object v2, v1, v7

    const-string v2, "\u3059"

    aput-object v2, v1, v5

    const-string v2, "\u305b"

    aput-object v2, v1, v8

    const-string v2, "\u305d"

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u305f"

    aput-object v2, v1, v6

    const-string v2, "\u3061"

    aput-object v2, v1, v7

    const-string v2, "\u3064"

    aput-object v2, v1, v5

    const-string v2, "\u3066"

    aput-object v2, v1, v8

    const-string v2, "\u3068"

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u306a"

    aput-object v2, v1, v6

    const-string v2, "\u306b"

    aput-object v2, v1, v7

    const-string v2, "\u306c"

    aput-object v2, v1, v5

    const-string v2, "\u306d"

    aput-object v2, v1, v8

    const-string v2, "\u306e"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u306f"

    aput-object v3, v2, v6

    const-string v3, "\u3072"

    aput-object v3, v2, v7

    const-string v3, "\u3075"

    aput-object v3, v2, v5

    const-string v3, "\u3078"

    aput-object v3, v2, v8

    const-string v3, "\u307b"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u307e"

    aput-object v3, v2, v6

    const-string v3, "\u307f"

    aput-object v3, v2, v7

    const-string v3, "\u3080"

    aput-object v3, v2, v5

    const-string v3, "\u3081"

    aput-object v3, v2, v8

    const-string v3, "\u3082"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u3084"

    aput-object v3, v2, v6

    const-string v3, "\uff08"

    aput-object v3, v2, v7

    const-string v3, "\u3086"

    aput-object v3, v2, v5

    const-string v3, "\uff09"

    aput-object v3, v2, v8

    const-string v3, "\u3088"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u3089"

    aput-object v3, v2, v6

    const-string v3, "\u308a"

    aput-object v3, v2, v7

    const-string v3, "\u308b"

    aput-object v3, v2, v5

    const-string v3, "\u308c"

    aput-object v3, v2, v8

    const-string v3, "\u308d"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u308f"

    aput-object v3, v2, v6

    const-string v3, "\u3092"

    aput-object v3, v2, v7

    const-string v3, "\u3093"

    aput-object v3, v2, v5

    const-string v3, "\u30fc"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u3001"

    aput-object v3, v2, v6

    const-string v3, "\u3002"

    aput-object v3, v2, v7

    const-string v3, "\uff1f"

    aput-object v3, v2, v5

    const-string v3, "\uff01"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 290
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$1;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$1;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap;

    .line 312
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$2;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$2;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 324
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$3;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$3;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 331
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$4;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$4;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap;

    .line 343
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30a2"

    aput-object v2, v1, v6

    const-string v2, "\u30a4"

    aput-object v2, v1, v7

    const-string v2, "\u30a6"

    aput-object v2, v1, v5

    const-string v2, "\u30a8"

    aput-object v2, v1, v8

    const-string v2, "\u30aa"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u30a1"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u30a3"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u30a5"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u30a7"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u30a9"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30ab"

    aput-object v2, v1, v6

    const-string v2, "\u30ad"

    aput-object v2, v1, v7

    const-string v2, "\u30af"

    aput-object v2, v1, v5

    const-string v2, "\u30b1"

    aput-object v2, v1, v8

    const-string v2, "\u30b3"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30b5"

    aput-object v2, v1, v6

    const-string v2, "\u30b7"

    aput-object v2, v1, v7

    const-string v2, "\u30b9"

    aput-object v2, v1, v5

    const-string v2, "\u30bb"

    aput-object v2, v1, v8

    const-string v2, "\u30bd"

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30bf"

    aput-object v2, v1, v6

    const-string v2, "\u30c1"

    aput-object v2, v1, v7

    const-string v2, "\u30c4"

    aput-object v2, v1, v5

    const-string v2, "\u30c6"

    aput-object v2, v1, v8

    const-string v2, "\u30c8"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u30c3"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30ca"

    aput-object v2, v1, v6

    const-string v2, "\u30cb"

    aput-object v2, v1, v7

    const-string v2, "\u30cc"

    aput-object v2, v1, v5

    const-string v2, "\u30cd"

    aput-object v2, v1, v8

    const-string v2, "\u30ce"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30cf"

    aput-object v3, v2, v6

    const-string v3, "\u30d2"

    aput-object v3, v2, v7

    const-string v3, "\u30d5"

    aput-object v3, v2, v5

    const-string v3, "\u30d8"

    aput-object v3, v2, v8

    const-string v3, "\u30db"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30de"

    aput-object v3, v2, v6

    const-string v3, "\u30df"

    aput-object v3, v2, v7

    const-string v3, "\u30e0"

    aput-object v3, v2, v5

    const-string v3, "\u30e1"

    aput-object v3, v2, v8

    const-string v3, "\u30e2"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30e4"

    aput-object v3, v2, v6

    const-string v3, "\u30e6"

    aput-object v3, v2, v7

    const-string v3, "\u30e8"

    aput-object v3, v2, v5

    const-string v3, "\u30e3"

    aput-object v3, v2, v8

    const-string v3, "\u30e5"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u30e7"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30e9"

    aput-object v3, v2, v6

    const-string v3, "\u30ea"

    aput-object v3, v2, v7

    const-string v3, "\u30eb"

    aput-object v3, v2, v5

    const-string v3, "\u30ec"

    aput-object v3, v2, v8

    const-string v3, "\u30ed"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30ef"

    aput-object v3, v2, v6

    const-string v3, "\u30f2"

    aput-object v3, v2, v7

    const-string v3, "\u30f3"

    aput-object v3, v2, v5

    const-string v3, "\u30ee"

    aput-object v3, v2, v8

    const-string v3, "\u30fc"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u3001"

    aput-object v3, v2, v6

    const-string v3, "\u3002"

    aput-object v3, v2, v7

    const-string v3, "\uff1f"

    aput-object v3, v2, v5

    const-string v3, "\uff01"

    aput-object v3, v2, v8

    const-string v3, "\u30fb"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u3000"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_CYCLE_TABLE:[[Ljava/lang/String;

    .line 359
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30a2"

    aput-object v2, v1, v6

    const-string v2, "\u30a4"

    aput-object v2, v1, v7

    const-string v2, "\u30a6"

    aput-object v2, v1, v5

    const-string v2, "\u30a8"

    aput-object v2, v1, v8

    const-string v2, "\u30aa"

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30ab"

    aput-object v2, v1, v6

    const-string v2, "\u30ad"

    aput-object v2, v1, v7

    const-string v2, "\u30af"

    aput-object v2, v1, v5

    const-string v2, "\u30b1"

    aput-object v2, v1, v8

    const-string v2, "\u30b3"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30b5"

    aput-object v2, v1, v6

    const-string v2, "\u30b7"

    aput-object v2, v1, v7

    const-string v2, "\u30b9"

    aput-object v2, v1, v5

    const-string v2, "\u30bb"

    aput-object v2, v1, v8

    const-string v2, "\u30bd"

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30bf"

    aput-object v2, v1, v6

    const-string v2, "\u30c1"

    aput-object v2, v1, v7

    const-string v2, "\u30c4"

    aput-object v2, v1, v5

    const-string v2, "\u30c6"

    aput-object v2, v1, v8

    const-string v2, "\u30c8"

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u30ca"

    aput-object v2, v1, v6

    const-string v2, "\u30cb"

    aput-object v2, v1, v7

    const-string v2, "\u30cc"

    aput-object v2, v1, v5

    const-string v2, "\u30cd"

    aput-object v2, v1, v8

    const-string v2, "\u30ce"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30cf"

    aput-object v3, v2, v6

    const-string v3, "\u30d2"

    aput-object v3, v2, v7

    const-string v3, "\u30d5"

    aput-object v3, v2, v5

    const-string v3, "\u30d8"

    aput-object v3, v2, v8

    const-string v3, "\u30db"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30de"

    aput-object v3, v2, v6

    const-string v3, "\u30df"

    aput-object v3, v2, v7

    const-string v3, "\u30e0"

    aput-object v3, v2, v5

    const-string v3, "\u30e1"

    aput-object v3, v2, v8

    const-string v3, "\u30e2"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30e4"

    aput-object v3, v2, v6

    const-string v3, "\uff08"

    aput-object v3, v2, v7

    const-string v3, "\u30e6"

    aput-object v3, v2, v5

    const-string v3, "\uff09"

    aput-object v3, v2, v8

    const-string v3, "\u30e8"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30e9"

    aput-object v3, v2, v6

    const-string v3, "\u30ea"

    aput-object v3, v2, v7

    const-string v3, "\u30eb"

    aput-object v3, v2, v5

    const-string v3, "\u30ec"

    aput-object v3, v2, v8

    const-string v3, "\u30ed"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30ef"

    aput-object v3, v2, v6

    const-string v3, "\u30f2"

    aput-object v3, v2, v7

    const-string v3, "\u30f3"

    aput-object v3, v2, v5

    const-string v3, "\u30fc"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u3001"

    aput-object v3, v2, v6

    const-string v3, "\u3002"

    aput-object v3, v2, v7

    const-string v3, "\uff1f"

    aput-object v3, v2, v5

    const-string v3, "\uff01"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 374
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$5;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$5;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_REPLACE_TABLE:Ljava/util/HashMap;

    .line 394
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$6;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$6;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 405
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$7;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$7;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 411
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$8;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$8;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap;

    .line 423
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff71"

    aput-object v2, v1, v6

    const-string v2, "\uff72"

    aput-object v2, v1, v7

    const-string v2, "\uff73"

    aput-object v2, v1, v5

    const-string v2, "\uff74"

    aput-object v2, v1, v8

    const-string v2, "\uff75"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\uff67"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\uff68"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\uff69"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\uff6a"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\uff6b"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff76"

    aput-object v2, v1, v6

    const-string v2, "\uff77"

    aput-object v2, v1, v7

    const-string v2, "\uff78"

    aput-object v2, v1, v5

    const-string v2, "\uff79"

    aput-object v2, v1, v8

    const-string v2, "\uff7a"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff7b"

    aput-object v2, v1, v6

    const-string v2, "\uff7c"

    aput-object v2, v1, v7

    const-string v2, "\uff7d"

    aput-object v2, v1, v5

    const-string v2, "\uff7e"

    aput-object v2, v1, v8

    const-string v2, "\uff7f"

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff80"

    aput-object v2, v1, v6

    const-string v2, "\uff81"

    aput-object v2, v1, v7

    const-string v2, "\uff82"

    aput-object v2, v1, v5

    const-string v2, "\uff83"

    aput-object v2, v1, v8

    const-string v2, "\uff84"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\uff6f"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff85"

    aput-object v2, v1, v6

    const-string v2, "\uff86"

    aput-object v2, v1, v7

    const-string v2, "\uff87"

    aput-object v2, v1, v5

    const-string v2, "\uff88"

    aput-object v2, v1, v8

    const-string v2, "\uff89"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff8a"

    aput-object v3, v2, v6

    const-string v3, "\uff8b"

    aput-object v3, v2, v7

    const-string v3, "\uff8c"

    aput-object v3, v2, v5

    const-string v3, "\uff8d"

    aput-object v3, v2, v8

    const-string v3, "\uff8e"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff8f"

    aput-object v3, v2, v6

    const-string v3, "\uff90"

    aput-object v3, v2, v7

    const-string v3, "\uff91"

    aput-object v3, v2, v5

    const-string v3, "\uff92"

    aput-object v3, v2, v8

    const-string v3, "\uff93"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff94"

    aput-object v3, v2, v6

    const-string v3, "\uff95"

    aput-object v3, v2, v7

    const-string v3, "\uff96"

    aput-object v3, v2, v5

    const-string v3, "\uff6c"

    aput-object v3, v2, v8

    const-string v3, "\uff6d"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\uff6e"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff97"

    aput-object v3, v2, v6

    const-string v3, "\uff98"

    aput-object v3, v2, v7

    const-string v3, "\uff99"

    aput-object v3, v2, v5

    const-string v3, "\uff9a"

    aput-object v3, v2, v8

    const-string v3, "\uff9b"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "\uff9c"

    aput-object v3, v2, v6

    const-string v3, "\uff66"

    aput-object v3, v2, v7

    const-string v3, "\uff9d"

    aput-object v3, v2, v5

    const-string v3, "\uff70"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff64"

    aput-object v3, v2, v6

    const-string v3, "\uff61"

    aput-object v3, v2, v7

    const-string v3, "?"

    aput-object v3, v2, v5

    const-string v3, "!"

    aput-object v3, v2, v8

    const-string v3, "\uff65"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, " "

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_CYCLE_TABLE:[[Ljava/lang/String;

    .line 438
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff71"

    aput-object v2, v1, v6

    const-string v2, "\uff72"

    aput-object v2, v1, v7

    const-string v2, "\uff73"

    aput-object v2, v1, v5

    const-string v2, "\uff74"

    aput-object v2, v1, v8

    const-string v2, "\uff75"

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff76"

    aput-object v2, v1, v6

    const-string v2, "\uff77"

    aput-object v2, v1, v7

    const-string v2, "\uff78"

    aput-object v2, v1, v5

    const-string v2, "\uff79"

    aput-object v2, v1, v8

    const-string v2, "\uff7a"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff7b"

    aput-object v2, v1, v6

    const-string v2, "\uff7c"

    aput-object v2, v1, v7

    const-string v2, "\uff7d"

    aput-object v2, v1, v5

    const-string v2, "\uff7e"

    aput-object v2, v1, v8

    const-string v2, "\uff7f"

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff80"

    aput-object v2, v1, v6

    const-string v2, "\uff81"

    aput-object v2, v1, v7

    const-string v2, "\uff82"

    aput-object v2, v1, v5

    const-string v2, "\uff83"

    aput-object v2, v1, v8

    const-string v2, "\uff84"

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff85"

    aput-object v2, v1, v6

    const-string v2, "\uff86"

    aput-object v2, v1, v7

    const-string v2, "\uff87"

    aput-object v2, v1, v5

    const-string v2, "\uff88"

    aput-object v2, v1, v8

    const-string v2, "\uff89"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff8a"

    aput-object v3, v2, v6

    const-string v3, "\uff8b"

    aput-object v3, v2, v7

    const-string v3, "\uff8c"

    aput-object v3, v2, v5

    const-string v3, "\uff8d"

    aput-object v3, v2, v8

    const-string v3, "\uff8e"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff8f"

    aput-object v3, v2, v6

    const-string v3, "\uff90"

    aput-object v3, v2, v7

    const-string v3, "\uff91"

    aput-object v3, v2, v5

    const-string v3, "\uff92"

    aput-object v3, v2, v8

    const-string v3, "\uff93"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff94"

    aput-object v3, v2, v6

    const-string v3, "("

    aput-object v3, v2, v7

    const-string v3, "\uff95"

    aput-object v3, v2, v5

    const-string v3, ")"

    aput-object v3, v2, v8

    const-string v3, "\uff96"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff97"

    aput-object v3, v2, v6

    const-string v3, "\uff98"

    aput-object v3, v2, v7

    const-string v3, "\uff99"

    aput-object v3, v2, v5

    const-string v3, "\uff9a"

    aput-object v3, v2, v8

    const-string v3, "\uff9b"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff9c"

    aput-object v3, v2, v6

    const-string v3, "\uff66"

    aput-object v3, v2, v7

    const-string v3, "\uff9d"

    aput-object v3, v2, v5

    const-string v3, "\uff70"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff64"

    aput-object v3, v2, v6

    const-string v3, "\uff61"

    aput-object v3, v2, v7

    const-string v3, "?"

    aput-object v3, v2, v5

    const-string v3, "!"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 453
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$9;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$9;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_REPLACE_TABLE:Ljava/util/HashMap;

    .line 472
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$10;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$10;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 483
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$11;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$11;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 489
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$12;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$12;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap;

    .line 499
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff0e"

    aput-object v2, v1, v6

    const-string v2, "\uff20"

    aput-object v2, v1, v7

    const-string v2, "\uff0d"

    aput-object v2, v1, v5

    const-string v2, "\uff3f"

    aput-object v2, v1, v8

    const-string v2, "\uff0f"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\uff1a"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\uff5e"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\uff11"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff41"

    aput-object v2, v1, v6

    const-string v2, "\uff42"

    aput-object v2, v1, v7

    const-string v2, "\uff43"

    aput-object v2, v1, v5

    const-string v2, "\uff21"

    aput-object v2, v1, v8

    const-string v2, "\uff22"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\uff23"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\uff12"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff44"

    aput-object v2, v1, v6

    const-string v2, "\uff45"

    aput-object v2, v1, v7

    const-string v2, "\uff46"

    aput-object v2, v1, v5

    const-string v2, "\uff24"

    aput-object v2, v1, v8

    const-string v2, "\uff25"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\uff26"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\uff13"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff47"

    aput-object v2, v1, v6

    const-string v2, "\uff48"

    aput-object v2, v1, v7

    const-string v2, "\uff49"

    aput-object v2, v1, v5

    const-string v2, "\uff27"

    aput-object v2, v1, v8

    const-string v2, "\uff28"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\uff29"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\uff14"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff4a"

    aput-object v2, v1, v6

    const-string v2, "\uff4b"

    aput-object v2, v1, v7

    const-string v2, "\uff4c"

    aput-object v2, v1, v5

    const-string v2, "\uff2a"

    aput-object v2, v1, v8

    const-string v2, "\uff2b"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\uff2c"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\uff15"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff4d"

    aput-object v3, v2, v6

    const-string v3, "\uff4e"

    aput-object v3, v2, v7

    const-string v3, "\uff4f"

    aput-object v3, v2, v5

    const-string v3, "\uff2d"

    aput-object v3, v2, v8

    const-string v3, "\uff2e"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\uff2f"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\uff16"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff50"

    aput-object v3, v2, v6

    const-string v3, "\uff51"

    aput-object v3, v2, v7

    const-string v3, "\uff52"

    aput-object v3, v2, v5

    const-string v3, "\uff53"

    aput-object v3, v2, v8

    const-string v3, "\uff30"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\uff31"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\uff32"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\uff33"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\uff17"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff54"

    aput-object v3, v2, v6

    const-string v3, "\uff55"

    aput-object v3, v2, v7

    const-string v3, "\uff56"

    aput-object v3, v2, v5

    const-string v3, "\uff34"

    aput-object v3, v2, v8

    const-string v3, "\uff35"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\uff36"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\uff18"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff57"

    aput-object v3, v2, v6

    const-string v3, "\uff58"

    aput-object v3, v2, v7

    const-string v3, "\uff59"

    aput-object v3, v2, v5

    const-string v3, "\uff5a"

    aput-object v3, v2, v8

    const-string v3, "\uff37"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\uff38"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\uff39"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\uff3a"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\uff19"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "\uff0d"

    aput-object v3, v2, v6

    const-string v3, "\uff10"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff0c"

    aput-object v3, v2, v6

    const-string v3, "\uff0e"

    aput-object v3, v2, v7

    const-string v3, "\uff1f"

    aput-object v3, v2, v5

    const-string v3, "\uff01"

    aput-object v3, v2, v8

    const-string v3, "\u30fb"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u3000"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_ALPHABET_CYCLE_TABLE:[[Ljava/lang/String;

    .line 514
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff0e"

    aput-object v2, v1, v6

    const-string v2, "\uff20"

    aput-object v2, v1, v7

    const-string v2, "\uff0d"

    aput-object v2, v1, v5

    const-string v2, "\uff3f"

    aput-object v2, v1, v8

    const-string v2, "\uff11"

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff41"

    aput-object v2, v1, v6

    const-string v2, "\uff42"

    aput-object v2, v1, v7

    const-string v2, "\uff43"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    aput-object v2, v1, v8

    const-string v2, "\uff12"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff44"

    aput-object v2, v1, v6

    const-string v2, "\uff45"

    aput-object v2, v1, v7

    const-string v2, "\uff46"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    aput-object v2, v1, v8

    const-string v2, "\uff13"

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff47"

    aput-object v2, v1, v6

    const-string v2, "\uff48"

    aput-object v2, v1, v7

    const-string v2, "\uff49"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    aput-object v2, v1, v8

    const-string v2, "\uff14"

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff4a"

    aput-object v2, v1, v6

    const-string v2, "\uff4b"

    aput-object v2, v1, v7

    const-string v2, "\uff4c"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    aput-object v2, v1, v8

    const-string v2, "\uff15"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff4d"

    aput-object v3, v2, v6

    const-string v3, "\uff4e"

    aput-object v3, v2, v7

    const-string v3, "\uff4f"

    aput-object v3, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v8

    const-string v3, "\uff16"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff50"

    aput-object v3, v2, v6

    const-string v3, "\uff51"

    aput-object v3, v2, v7

    const-string v3, "\uff52"

    aput-object v3, v2, v5

    const-string v3, "\uff53"

    aput-object v3, v2, v8

    const-string v3, "\uff17"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff54"

    aput-object v3, v2, v6

    const-string v3, "\uff55"

    aput-object v3, v2, v7

    const-string v3, "\uff56"

    aput-object v3, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v8

    const-string v3, "\uff18"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff57"

    aput-object v3, v2, v6

    const-string v3, "\uff58"

    aput-object v3, v2, v7

    const-string v3, "\uff59"

    aput-object v3, v2, v5

    const-string v3, "\uff5a"

    aput-object v3, v2, v8

    const-string v3, "\uff19"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff0d"

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v7

    const-string v3, "\uff10"

    aput-object v3, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff0c"

    aput-object v3, v2, v6

    const-string v3, "\uff0e"

    aput-object v3, v2, v7

    const-string v3, "\uff1f"

    aput-object v3, v2, v5

    const-string v3, "\uff01"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_ALPHABET_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 529
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$13;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$13;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_ALPHABET_REPLACE_TABLE:Ljava/util/HashMap;

    .line 545
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "."

    aput-object v2, v1, v6

    const-string v2, "@"

    aput-object v2, v1, v7

    const-string v2, "-"

    aput-object v2, v1, v5

    const-string v2, "_"

    aput-object v2, v1, v8

    const-string v2, "/"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, ":"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "~"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "1"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v6

    const-string v2, "b"

    aput-object v2, v1, v7

    const-string v2, "c"

    aput-object v2, v1, v5

    const-string v2, "A"

    aput-object v2, v1, v8

    const-string v2, "B"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "C"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "2"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "d"

    aput-object v2, v1, v6

    const-string v2, "e"

    aput-object v2, v1, v7

    const-string v2, "f"

    aput-object v2, v1, v5

    const-string v2, "D"

    aput-object v2, v1, v8

    const-string v2, "E"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "F"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "3"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "g"

    aput-object v2, v1, v6

    const-string v2, "h"

    aput-object v2, v1, v7

    const-string v2, "i"

    aput-object v2, v1, v5

    const-string v2, "G"

    aput-object v2, v1, v8

    const-string v2, "H"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "I"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "4"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "j"

    aput-object v2, v1, v6

    const-string v2, "k"

    aput-object v2, v1, v7

    const-string v2, "l"

    aput-object v2, v1, v5

    const-string v2, "J"

    aput-object v2, v1, v8

    const-string v2, "K"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "L"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "5"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "m"

    aput-object v3, v2, v6

    const-string v3, "n"

    aput-object v3, v2, v7

    const-string v3, "o"

    aput-object v3, v2, v5

    const-string v3, "M"

    aput-object v3, v2, v8

    const-string v3, "N"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "O"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "p"

    aput-object v3, v2, v6

    const-string v3, "q"

    aput-object v3, v2, v7

    const-string v3, "r"

    aput-object v3, v2, v5

    const-string v3, "s"

    aput-object v3, v2, v8

    const-string v3, "P"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Q"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "R"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "7"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "t"

    aput-object v3, v2, v6

    const-string v3, "u"

    aput-object v3, v2, v7

    const-string v3, "v"

    aput-object v3, v2, v5

    const-string v3, "T"

    aput-object v3, v2, v8

    const-string v3, "U"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "V"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "8"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "w"

    aput-object v3, v2, v6

    const-string v3, "x"

    aput-object v3, v2, v7

    const-string v3, "y"

    aput-object v3, v2, v5

    const-string v3, "z"

    aput-object v3, v2, v8

    const-string v3, "W"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "X"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Y"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "-"

    aput-object v3, v2, v6

    const-string v3, "0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ","

    aput-object v3, v2, v6

    const-string v3, "."

    aput-object v3, v2, v7

    const-string v3, "?"

    aput-object v3, v2, v5

    const-string v3, "!"

    aput-object v3, v2, v8

    const-string v3, ";"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, " "

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_ALPHABET_CYCLE_TABLE:[[Ljava/lang/String;

    .line 560
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "."

    aput-object v2, v1, v6

    const-string v2, "@"

    aput-object v2, v1, v7

    const-string v2, "-"

    aput-object v2, v1, v5

    const-string v2, "_"

    aput-object v2, v1, v8

    const-string v2, "1"

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v6

    const-string v2, "b"

    aput-object v2, v1, v7

    const-string v2, "c"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    aput-object v2, v1, v8

    const-string v2, "2"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "d"

    aput-object v2, v1, v6

    const-string v2, "e"

    aput-object v2, v1, v7

    const-string v2, "f"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    aput-object v2, v1, v8

    const-string v2, "3"

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "g"

    aput-object v2, v1, v6

    const-string v2, "h"

    aput-object v2, v1, v7

    const-string v2, "i"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    aput-object v2, v1, v8

    const-string v2, "4"

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "j"

    aput-object v2, v1, v6

    const-string v2, "k"

    aput-object v2, v1, v7

    const-string v2, "l"

    aput-object v2, v1, v5

    const/4 v2, 0x0

    aput-object v2, v1, v8

    const-string v2, "5"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "m"

    aput-object v3, v2, v6

    const-string v3, "n"

    aput-object v3, v2, v7

    const-string v3, "o"

    aput-object v3, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v8

    const-string v3, "6"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "p"

    aput-object v3, v2, v6

    const-string v3, "q"

    aput-object v3, v2, v7

    const-string v3, "r"

    aput-object v3, v2, v5

    const-string v3, "s"

    aput-object v3, v2, v8

    const-string v3, "7"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "t"

    aput-object v3, v2, v6

    const-string v3, "u"

    aput-object v3, v2, v7

    const-string v3, "v"

    aput-object v3, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v8

    const-string v3, "8"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "w"

    aput-object v3, v2, v6

    const-string v3, "x"

    aput-object v3, v2, v7

    const-string v3, "y"

    aput-object v3, v2, v5

    const-string v3, "z"

    aput-object v3, v2, v8

    const-string v3, "9"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "-"

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v7

    const-string v3, "0"

    aput-object v3, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ","

    aput-object v3, v2, v6

    const-string v3, "."

    aput-object v3, v2, v7

    const-string v3, "?"

    aput-object v3, v2, v5

    const-string v3, "!"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_ALPHABET_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 575
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$14;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$14;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_ALPHABET_REPLACE_TABLE:Ljava/util/HashMap;

    .line 591
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_EMPTY_REPLACE_TABLE:Ljava/util/HashMap;

    .line 594
    const-string v0, "\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19\uff10\uff03\uff0a"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->INSTANT_CHAR_CODE_FULL_NUMBER:[C

    .line 598
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff11"

    aput-object v2, v1, v6

    const-string v2, "\uff0e"

    aput-object v2, v1, v7

    const-string v2, "\uff20"

    aput-object v2, v1, v5

    const-string v2, "\uff0d"

    aput-object v2, v1, v8

    const/4 v2, 0x0

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff12"

    aput-object v2, v1, v6

    const-string v2, "\uff0f"

    aput-object v2, v1, v7

    const-string v2, "\uff1a"

    aput-object v2, v1, v5

    const-string v2, "\uff3f"

    aput-object v2, v1, v8

    const/4 v2, 0x0

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff13"

    aput-object v2, v1, v6

    const-string v2, "\uff5e"

    aput-object v2, v1, v7

    const-string v2, "\uff05"

    aput-object v2, v1, v5

    const-string v2, "\uff3e"

    aput-object v2, v1, v8

    const/4 v2, 0x0

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff14"

    aput-object v2, v1, v6

    const-string v2, "\uff3b"

    aput-object v2, v1, v7

    const-string v2, "\u2018"

    aput-object v2, v1, v5

    const-string v2, "\uff3d"

    aput-object v2, v1, v8

    const-string v2, "\u2019"

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uff15"

    aput-object v2, v1, v6

    const-string v2, "\uff1c"

    aput-object v2, v1, v7

    const-string v2, "\uff04"

    aput-object v2, v1, v5

    const-string v2, "\uff1e"

    aput-object v2, v1, v8

    const-string v2, "\uffe5"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff16"

    aput-object v3, v2, v6

    const-string v3, "\uff5b"

    aput-object v3, v2, v7

    const-string v3, "\uff06"

    aput-object v3, v2, v5

    const-string v3, "\uff5d"

    aput-object v3, v2, v8

    const-string v3, "\u201d"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff17"

    aput-object v3, v2, v6

    const-string v3, "\uff3c"

    aput-object v3, v2, v7

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v3, "\uff5c"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff18"

    aput-object v3, v2, v6

    const-string v3, "\uff08"

    aput-object v3, v2, v7

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v3, "\uff09"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff19"

    aput-object v3, v2, v6

    const-string v3, "\uff1d"

    aput-object v3, v2, v7

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v3, "\uff1b"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff10"

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v7

    const-string v3, "\uff0b"

    aput-object v3, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff03"

    aput-object v3, v2, v6

    const-string v3, "\u3001"

    aput-object v3, v2, v7

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v3, "\u3002"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\uff0a"

    aput-object v3, v2, v6

    const-string v3, "\uff01"

    aput-object v3, v2, v7

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v3, "\uff1f"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_NUMBER_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 614
    const-string v0, "1234567890#*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->INSTANT_CHAR_CODE_HALF_NUMBER:[C

    .line 618
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "."

    aput-object v2, v1, v7

    const-string v2, "@"

    aput-object v2, v1, v5

    const-string v2, "-"

    aput-object v2, v1, v8

    const/4 v2, 0x0

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "2"

    aput-object v2, v1, v6

    const-string v2, "/"

    aput-object v2, v1, v7

    const-string v2, ":"

    aput-object v2, v1, v5

    const-string v2, "_"

    aput-object v2, v1, v8

    const/4 v2, 0x0

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "~"

    aput-object v2, v1, v7

    const-string v2, "%"

    aput-object v2, v1, v5

    const-string v2, "^"

    aput-object v2, v1, v8

    const/4 v2, 0x0

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v1, v6

    const-string v2, "["

    aput-object v2, v1, v7

    const-string v2, "`"

    aput-object v2, v1, v5

    const-string v2, "]"

    aput-object v2, v1, v8

    const-string v2, "\'"

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "5"

    aput-object v2, v1, v6

    const-string v2, "<"

    aput-object v2, v1, v7

    const-string v2, "$"

    aput-object v2, v1, v5

    const-string v2, ">"

    aput-object v2, v1, v8

    const-string v2, "\u00a5"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "6"

    aput-object v3, v2, v6

    const-string v3, "{"

    aput-object v3, v2, v7

    const-string v3, "&"

    aput-object v3, v2, v5

    const-string v3, "}"

    aput-object v3, v2, v8

    const-string v3, "\""

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "7"

    aput-object v3, v2, v6

    const-string v3, "\\"

    aput-object v3, v2, v7

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v3, "|"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "8"

    aput-object v3, v2, v6

    const-string v3, "("

    aput-object v3, v2, v7

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v3, ")"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "9"

    aput-object v3, v2, v6

    const-string v3, "="

    aput-object v3, v2, v7

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v3, ";"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v7

    const-string v3, "+"

    aput-object v3, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "#"

    aput-object v3, v2, v6

    const-string v3, ","

    aput-object v3, v2, v7

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v3, "."

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "*"

    aput-object v3, v2, v6

    const-string v3, "!"

    aput-object v3, v2, v7

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v3, "?"

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_NUMBER_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    return-void

    .line 104
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 109
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 119
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 124
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 135
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 154
    :array_6
    .array-data 0x4
        0x63t 0x1t 0x2t 0x7ft
        0x5dt 0x1t 0x2t 0x7ft
        0x69t 0x1t 0x2t 0x7ft
        0x72t 0x1t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x63t 0x1t 0x2t 0x7ft
        0x60t 0x1t 0x2t 0x7ft
        0x6ft 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x48t 0x1t 0x2t 0x7ft
        0x42t 0x1t 0x2t 0x7ft
        0x51t 0x1t 0x2t 0x7ft
        0x4et 0x1t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x48t 0x1t 0x2t 0x7ft
        0x45t 0x1t 0x2t 0x7ft
        0x57t 0x1t 0x2t 0x7ft
        0x4et 0x1t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x96t 0x1t 0x2t 0x7ft
        0x90t 0x1t 0x2t 0x7ft
        0x99t 0x1t 0x2t 0x7ft
        0x9ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x96t 0x1t 0x2t 0x7ft
        0x93t 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x81t 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0x87t 0x1t 0x2t 0x7ft
    .end array-data

    :array_d
    .array-data 0x4
        0x81t 0x1t 0x2t 0x7ft
        0x7et 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
        0x87t 0x1t 0x2t 0x7ft
    .end array-data

    .line 206
    :array_e
    .array-data 0x4
        0x66t 0x1t 0x2t 0x7ft
        0x6ct 0x1t 0x2t 0x7ft
        0x75t 0x1t 0x2t 0x7ft
    .end array-data

    :array_f
    .array-data 0x4
        0x63t 0x1t 0x2t 0x7ft
        0x6ft 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0x4bt 0x1t 0x2t 0x7ft
        0x54t 0x1t 0x2t 0x7ft
        0x4et 0x1t 0x2t 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0x48t 0x1t 0x2t 0x7ft
        0x5at 0x1t 0x2t 0x7ft
        0x4et 0x1t 0x2t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0x96t 0x1t 0x2t 0x7ft
        0x99t 0x1t 0x2t 0x7ft
        0x9ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_13
    .array-data 0x4
        0x96t 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0x81t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0x87t 0x1t 0x2t 0x7ft
    .end array-data

    :array_15
    .array-data 0x4
        0x84t 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
        0x87t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V
    .locals 4
    .parameter "wnn"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 744
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;-><init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V

    .line 663
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputType:I

    .line 670
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentInstantTable:[C

    .line 677
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    .line 684
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 687
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mUndoKey:Ljava/lang/String;

    .line 690
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputKeyBoard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 693
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mNoInputKeyBoard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 696
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mUndoKeyMode:I

    .line 699
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputIconUndo:Landroid/graphics/drawable/Drawable;

    .line 702
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mNoInputIconUndo:Landroid/graphics/drawable/Drawable;

    .line 705
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCanUndo:Z

    .line 708
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableAutoCaps:Z

    .line 711
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlick:Z

    .line 714
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlickToggle:Z

    .line 717
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnablePopup:Z

    .line 720
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPopupResId:I

    .line 723
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsInputTypeNull:Z

    .line 726
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableEmojiUNI6:Z

    .line 729
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableEmoji:Z

    .line 732
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableDecoEmoji:Z

    .line 745
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentLanguage:I

    .line 746
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    .line 755
    :goto_0
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    .line 756
    sput v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    .line 757
    return-void

    .line 749
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isScreenSize10inch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    goto :goto_0

    .line 752
    :cond_1
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    goto :goto_0
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mMenuItem:[I

    return-object v0
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 53
    sget v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    return v0
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    return v0
.end method

.method private commitText()V
    .locals 3

    .prologue
    .line 822
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mNoInput:Z

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xffffff0

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 825
    :cond_0
    return-void
.end method

.method private createKeyboardsLandscape(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V
    .locals 9
    .parameter "parent"

    .prologue
    const v8, 0x7f050036

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2122
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2124
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v0, v1, v4

    .line 2125
    .local v0, keyList:[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    aget-object v1, v0, v6

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050032

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2126
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2127
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2128
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050034

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2129
    aget-object v1, v0, v7

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002c

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2132
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2136
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2140
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2144
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2148
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2152
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2156
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2160
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v0, v1, v4

    .line 2161
    aget-object v1, v0, v6

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050033

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2162
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050037

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2163
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050037

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2164
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050035

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2165
    aget-object v1, v0, v7

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v7

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2169
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2173
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2177
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2181
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2185
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2189
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2193
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2360
    :goto_0
    return-void

    .line 2197
    .end local v0           #keyList:[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v0, v1, v4

    .line 2198
    .restart local v0       #keyList:[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2199
    aget-object v1, v0, v5

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2200
    aget-object v1, v0, v6

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050032

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2201
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2202
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2203
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050034

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2204
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2205
    aget-object v1, v0, v7

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002c

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2208
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2212
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2216
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2220
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2224
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2228
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2232
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2236
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v0, v1, v4

    .line 2237
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050037

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2238
    aget-object v1, v0, v5

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050037

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2239
    aget-object v1, v0, v6

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050033

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2240
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050037

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2241
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050037

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2242
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050035

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2243
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050037

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2244
    aget-object v1, v0, v7

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v7

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2248
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2252
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2256
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2260
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2264
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2268
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2272
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2276
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v0, v1, v4

    .line 2277
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002d

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2278
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002e

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2279
    aget-object v1, v0, v5

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05001c

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2280
    aget-object v1, v0, v5

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05001d

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2281
    aget-object v1, v0, v6

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050022

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2282
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlick:Z

    if-eqz v1, :cond_1

    .line 2283
    aget-object v1, v0, v6

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050022

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2284
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002a

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2285
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05001e

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2286
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050020

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2287
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050026

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2288
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050028

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2297
    :goto_1
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050024

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2298
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050025

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2299
    aget-object v1, v0, v7

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002c

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2302
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2306
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2310
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2314
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2317
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2321
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2325
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2329
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2333
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    .line 2337
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2341
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    .line 2345
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2349
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    .line 2353
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2357
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    goto/16 :goto_0

    .line 2290
    :cond_1
    aget-object v1, v0, v6

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050023

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2291
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002b

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2292
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05001f

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2293
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050021

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2294
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050027

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2295
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050029

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    goto/16 :goto_1
.end method

.method private createKeyboardsPortrait(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V
    .locals 9
    .parameter "parent"

    .prologue
    const v8, 0x7f050037

    const v7, 0x7f050036

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1873
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1875
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v0, v1, v4

    .line 1876
    .local v0, keyList:[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050032

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1877
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v7}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1878
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v7}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1879
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050034

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1880
    aget-object v1, v0, v6

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002c

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1883
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1887
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 1891
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1895
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 1899
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1903
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 1907
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1911
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v0, v1, v4

    .line 1912
    const/4 v1, 0x2

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050033

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1913
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1914
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1915
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050035

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1916
    aget-object v1, v0, v6

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v6

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 1920
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1924
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 1928
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1932
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 1936
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1940
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 1944
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2113
    :goto_0
    return-void

    .line 1948
    .end local v0           #keyList:[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v0, v1, v4

    .line 1949
    .restart local v0       #keyList:[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v7}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1950
    aget-object v1, v0, v5

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v7}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1951
    const/4 v1, 0x2

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050032

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1952
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v7}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1953
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v7}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1954
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050034

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1955
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v7}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1956
    aget-object v1, v0, v6

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002c

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1959
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1963
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 1967
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1971
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 1975
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1979
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 1983
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 1988
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v0, v1, v4

    .line 1989
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1990
    aget-object v1, v0, v5

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1991
    const/4 v1, 0x2

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050033

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1992
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1993
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1994
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050035

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1995
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-direct {v2, p1, v8}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 1996
    aget-object v1, v0, v6

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v6

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2000
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2004
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2008
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2012
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2016
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2020
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2024
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2029
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v0, v1, v4

    .line 2030
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002d

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2031
    aget-object v1, v0, v4

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002e

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2032
    aget-object v1, v0, v5

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05001c

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2033
    aget-object v1, v0, v5

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05001d

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2034
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlick:Z

    if-eqz v1, :cond_1

    .line 2035
    const/4 v1, 0x2

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050022

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2036
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002a

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2037
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05001e

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2038
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050020

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2039
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050026

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2040
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050028

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2049
    :goto_1
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050024

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2050
    const/4 v1, 0x4

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050025

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2051
    aget-object v1, v0, v6

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002c

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2054
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2058
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2062
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2066
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2070
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2074
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2078
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    .line 2082
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2086
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    .line 2090
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2094
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    .line 2098
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2102
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    .line 2106
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2110
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v4

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    goto/16 :goto_0

    .line 2042
    :cond_1
    const/4 v1, 0x2

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050023

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2043
    const/4 v1, 0x5

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05002b

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2044
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f05001f

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2045
    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050021

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    .line 2046
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050027

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v4

    .line 2047
    const/4 v1, 0x6

    aget-object v1, v0, v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    const v3, 0x7f050029

    invoke-direct {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v2, v1, v5

    goto/16 :goto_1
.end method

.method private filterKeyMode(I)I
    .locals 11
    .parameter "keyMode"

    .prologue
    .line 2876
    move v8, p1

    .line 2877
    .local v8, targetMode:I
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    .line 2879
    .local v4, limits:[I
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mHardKeyboardHidden:Z

    if-nez v9, :cond_1

    .line 2880
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    if-nez v9, :cond_1

    if-eqz v8, :cond_1

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 2883
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 2884
    .local v5, locale:Ljava/util/Locale;
    const/4 v3, 0x4

    .line 2885
    .local v3, keymode:I
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2886
    sparse-switch v8, :sswitch_data_0

    .line 2897
    :cond_0
    :goto_0
    move v8, v3

    .line 2902
    .end local v3           #keymode:I
    .end local v5           #locale:Ljava/util/Locale;
    :cond_1
    if-eqz v4, :cond_3

    .line 2903
    const/4 v0, 0x0

    .line 2904
    .local v0, hasAccepted:Z
    const/4 v1, 0x1

    .line 2905
    .local v1, hasRequiredChange:Z
    array-length v7, v4

    .line 2906
    .local v7, size:I
    sget v6, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    .line 2908
    .local v6, nowMode:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 2909
    aget v9, v4, v2

    if-ne v8, v9, :cond_4

    .line 2910
    const/4 v0, 0x1

    .line 2918
    :cond_2
    if-nez v0, :cond_3

    .line 2919
    if-eqz v1, :cond_6

    .line 2920
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    const/4 v10, 0x0

    aget v8, v9, v10

    .line 2927
    .end local v0           #hasAccepted:Z
    .end local v1           #hasRequiredChange:Z
    .end local v2           #i:I
    .end local v6           #nowMode:I
    .end local v7           #size:I
    :cond_3
    :goto_2
    return v8

    .line 2890
    .restart local v3       #keymode:I
    .restart local v5       #locale:Ljava/util/Locale;
    :sswitch_0
    const/4 v3, 0x0

    .line 2891
    goto :goto_0

    .line 2913
    .end local v3           #keymode:I
    .end local v5           #locale:Ljava/util/Locale;
    .restart local v0       #hasAccepted:Z
    .restart local v1       #hasRequiredChange:Z
    .restart local v2       #i:I
    .restart local v6       #nowMode:I
    .restart local v7       #size:I
    :cond_4
    aget v9, v4, v2

    if-ne v6, v9, :cond_5

    .line 2914
    const/4 v1, 0x0

    .line 2908
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2922
    :cond_6
    const/4 v8, -0x1

    goto :goto_2

    .line 2886
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private findIndexOfValue([II)I
    .locals 2
    .parameter "value"
    .parameter "mode"

    .prologue
    .line 3382
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3383
    aget v1, p1, v0

    if-ne v1, p2, :cond_0

    .line 3387
    .end local v0           #i:I
    :goto_1
    return v0

    .line 3382
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3387
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getCycleTable()[[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2393
    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/String;

    .line 2394
    .local v0, cycleTable:[[Ljava/lang/String;
    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    packed-switch v1, :pswitch_data_0

    .line 2423
    :goto_0
    :pswitch_0
    return-object v0

    .line 2396
    :pswitch_1
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_CYCLE_TABLE:[[Ljava/lang/String;

    .line 2397
    goto :goto_0

    .line 2400
    :pswitch_2
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_CYCLE_TABLE:[[Ljava/lang/String;

    .line 2401
    goto :goto_0

    .line 2404
    :pswitch_3
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_ALPHABET_CYCLE_TABLE:[[Ljava/lang/String;

    .line 2405
    goto :goto_0

    .line 2413
    :pswitch_4
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_ALPHABET_CYCLE_TABLE:[[Ljava/lang/String;

    .line 2414
    goto :goto_0

    .line 2417
    :pswitch_5
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_CYCLE_TABLE:[[Ljava/lang/String;

    .line 2418
    goto :goto_0

    .line 2394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getFlickCycleTable()[[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2432
    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/String;

    .line 2433
    .local v0, cycleTable:[[Ljava/lang/String;
    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    packed-switch v1, :pswitch_data_0

    .line 2465
    :goto_0
    return-object v0

    .line 2435
    :pswitch_0
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 2436
    goto :goto_0

    .line 2439
    :pswitch_1
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 2440
    goto :goto_0

    .line 2443
    :pswitch_2
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_ALPHABET_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 2444
    goto :goto_0

    .line 2447
    :pswitch_3
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_NUMBER_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 2448
    goto :goto_0

    .line 2451
    :pswitch_4
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_NUMBER_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 2452
    goto :goto_0

    .line 2455
    :pswitch_5
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_ALPHABET_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 2456
    goto :goto_0

    .line 2459
    :pswitch_6
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_CYCLE_TABLE_FLICK:[[Ljava/lang/String;

    .line 2460
    goto :goto_0

    .line 2433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private getKeyboardTypePref(I)I
    .locals 11
    .parameter "mode"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 3145
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsKeyboardTypeNotSave:Z

    .line 3147
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v7

    .line 3212
    :cond_0
    :goto_0
    return v2

    .line 3153
    :cond_1
    const/4 v2, 0x0

    .line 3155
    .local v2, keyboardType:I
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isScreenSize10inch()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3156
    const/4 v2, 0x0

    .line 3161
    :goto_1
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsInputTypeNull:Z

    if-nez v8, :cond_6

    .line 3162
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3163
    .local v3, keyboardTypePref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 3164
    .local v4, keyboardTypePrefEditor:Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input_mode_type_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mDisplayMode:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3166
    .local v0, inputModeKey:Ljava/lang/String;
    const-string v8, ""

    invoke-interface {v3, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3168
    .local v1, inputModeValue:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3170
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3171
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3172
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3175
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 3179
    :pswitch_0
    const/4 v2, 0x0

    .line 3180
    goto :goto_0

    .line 3158
    .end local v0           #inputModeKey:Ljava/lang/String;
    .end local v1           #inputModeValue:Ljava/lang/String;
    .end local v3           #keyboardTypePref:Landroid/content/SharedPreferences;
    .end local v4           #keyboardTypePrefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 3184
    .restart local v0       #inputModeKey:Ljava/lang/String;
    .restart local v1       #inputModeValue:Ljava/lang/String;
    .restart local v3       #keyboardTypePref:Landroid/content/SharedPreferences;
    .restart local v4       #keyboardTypePrefEditor:Landroid/content/SharedPreferences$Editor;
    :pswitch_1
    const/4 v2, 0x1

    .line 3185
    goto :goto_0

    .line 3189
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_keyboard_type_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mDisplayMode:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3191
    .local v5, lastKeyboardType:Ljava/lang/String;
    const-string v8, ""

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3192
    .local v6, lastKeyboardTypeValue:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3195
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_0

    .line 3196
    :cond_5
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3199
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3201
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 3210
    .end local v0           #inputModeKey:Ljava/lang/String;
    .end local v1           #inputModeValue:Ljava/lang/String;
    .end local v3           #keyboardTypePref:Landroid/content/SharedPreferences;
    .end local v4           #keyboardTypePrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #lastKeyboardType:Ljava/lang/String;
    .end local v6           #lastKeyboardTypeValue:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getModeCycleTable()[I
    .locals 1

    .prologue
    .line 3579
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    if-eqz v0, :cond_0

    .line 3580
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE:[I

    .line 3582
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_DISABLE_HALF_ALPHABET:[I

    goto :goto_0
.end method

.method private getReplaceTable()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2474
    const/4 v0, 0x0

    .line 2475
    .local v0, hashTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    packed-switch v1, :pswitch_data_0

    .line 2503
    :goto_0
    :pswitch_0
    return-object v0

    .line 2477
    :pswitch_1
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2478
    goto :goto_0

    .line 2480
    :pswitch_2
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2481
    goto :goto_0

    .line 2484
    :pswitch_3
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_ALPHABET_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2485
    goto :goto_0

    .line 2493
    :pswitch_4
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_ALPHABET_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2494
    goto :goto_0

    .line 2497
    :pswitch_5
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2498
    goto :goto_0

    .line 2475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getReplaceTable(I)Ljava/util/HashMap;
    .locals 2
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2512
    const/4 v0, 0x0

    .line 2513
    .local v0, hashTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    packed-switch v1, :pswitch_data_0

    .line 2639
    const/4 v0, 0x0

    .line 2642
    :goto_0
    return-object v0

    .line 2516
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 2535
    const/4 v0, 0x0

    .line 2536
    goto :goto_0

    .line 2519
    :pswitch_1
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_EMPTY_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2520
    goto :goto_0

    .line 2523
    :pswitch_2
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2524
    goto :goto_0

    .line 2527
    :pswitch_3
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2528
    goto :goto_0

    .line 2531
    :pswitch_4
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_HIRAGANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2532
    goto :goto_0

    .line 2542
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    .line 2561
    const/4 v0, 0x0

    .line 2562
    goto :goto_0

    .line 2545
    :pswitch_6
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_EMPTY_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2546
    goto :goto_0

    .line 2549
    :pswitch_7
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2550
    goto :goto_0

    .line 2553
    :pswitch_8
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2554
    goto :goto_0

    .line 2557
    :pswitch_9
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_KATAKANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2558
    goto :goto_0

    .line 2568
    :pswitch_a
    packed-switch p1, :pswitch_data_3

    .line 2581
    const/4 v0, 0x0

    .line 2582
    goto :goto_0

    .line 2573
    :pswitch_b
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_EMPTY_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2574
    goto :goto_0

    .line 2577
    :pswitch_c
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_FULL_ALPHABET_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2578
    goto :goto_0

    .line 2589
    :pswitch_d
    const/4 v0, 0x0

    .line 2590
    goto :goto_0

    .line 2594
    :pswitch_e
    packed-switch p1, :pswitch_data_4

    .line 2607
    const/4 v0, 0x0

    .line 2608
    goto :goto_0

    .line 2599
    :pswitch_f
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_EMPTY_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2600
    goto :goto_0

    .line 2603
    :pswitch_10
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_ALPHABET_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2604
    goto :goto_0

    .line 2614
    :pswitch_11
    packed-switch p1, :pswitch_data_5

    .line 2633
    const/4 v0, 0x0

    .line 2634
    goto :goto_0

    .line 2617
    :pswitch_12
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_EMPTY_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2618
    goto :goto_0

    .line 2621
    :pswitch_13
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2622
    goto :goto_0

    .line 2625
    :pswitch_14
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2626
    goto :goto_0

    .line 2629
    :pswitch_15
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_HALF_KATAKANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 2630
    goto :goto_0

    .line 2513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_5
        :pswitch_e
        :pswitch_d
        :pswitch_11
    .end packed-switch

    .line 2516
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 2542
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
    .end packed-switch

    .line 2568
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 2594
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 2614
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method private getSlideCycleTable()[I
    .locals 1

    .prologue
    .line 3592
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    if-eqz v0, :cond_1

    .line 3593
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableVoiceInput:Z

    if-eqz v0, :cond_0

    .line 3594
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_VOICE:[I

    .line 3602
    :goto_0
    return-object v0

    .line 3596
    :cond_0
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE:[I

    goto :goto_0

    .line 3599
    :cond_1
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableVoiceInput:Z

    if-eqz v0, :cond_2

    .line 3600
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_VOICE_DISABLE_HALF_ALPHABET:[I

    goto :goto_0

    .line 3602
    :cond_2
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_DISABLE_HALF_ALPHABET:[I

    goto :goto_0
.end method

.method private getTableIndex(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    const/4 v0, 0x0

    .line 2369
    const/16 v1, -0xc9

    if-ne p1, v1, :cond_1

    .line 2384
    .local v0, index:I
    :cond_0
    :goto_0
    return v0

    .line 2369
    .end local v0           #index:I
    :cond_1
    const/16 v1, -0xca

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, -0xcb

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v1, -0xcc

    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/16 v1, -0xcd

    if-ne p1, v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const/16 v1, -0xce

    if-ne p1, v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const/16 v1, -0xcf

    if-ne p1, v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    const/16 v1, -0xd0

    if-ne p1, v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    const/16 v1, -0xd1

    if-ne p1, v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    const/16 v1, -0xd2

    if-ne p1, v1, :cond_a

    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    const/16 v1, -0xd3

    if-ne p1, v1, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    :cond_b
    const/16 v1, -0xd5

    if-ne p1, v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0
.end method

.method private hasDakutenCapitalConversion(I)Z
    .locals 2
    .parameter "keyMode"

    .prologue
    const/4 v0, 0x1

    .line 3261
    if-eqz p1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    .line 3266
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnableLongPressMenu(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 3555
    const/4 v0, 0x0

    .line 3557
    .local v0, isLongPressMenu:Z
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 3570
    :goto_0
    return v0

    .line 3563
    :sswitch_0
    const/4 v0, 0x1

    .line 3564
    goto :goto_0

    .line 3557
    :sswitch_data_0
    .sparse-switch
        -0x13c -> :sswitch_0
        -0x13b -> :sswitch_0
        -0x13a -> :sswitch_0
        -0x139 -> :sswitch_0
        -0xe6 -> :sswitch_0
    .end sparse-switch
.end method

.method private setKeyboardTypePref(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x2

    .line 3223
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    if-nez v4, :cond_0

    .line 3251
    :goto_0
    return-void

    .line 3227
    :cond_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsKeyboardTypeNotSave:Z

    if-eqz v4, :cond_2

    .line 3228
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsKeyboardTypeNotSave:Z

    goto :goto_0

    .line 3233
    :cond_2
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3234
    .local v2, keyboardTypePre:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3235
    .local v3, keyboardTypePrefEditor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input_mode_type_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mDisplayMode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3237
    .local v0, inputModeKey:Ljava/lang/String;
    const-string v4, ""

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3239
    .local v1, inputModeValue:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3241
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3242
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3243
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3248
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last_keyboard_type_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mDisplayMode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3250
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private setStatusIcon()V
    .locals 3

    .prologue
    .line 2649
    const/4 v0, 0x0

    .line 2651
    .local v0, icon:I
    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    packed-switch v1, :pswitch_data_0

    .line 2693
    :goto_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2694
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->showStatusIcon(I)V

    .line 2696
    :cond_0
    return-void

    .line 2653
    :pswitch_0
    const v0, 0x7f020034

    .line 2654
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0601b8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2658
    :pswitch_1
    const v0, 0x7f02002f

    .line 2659
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0601b9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2663
    :pswitch_2
    const v0, 0x7f02002e

    .line 2664
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0601ba

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2668
    :pswitch_3
    const v0, 0x7f020030

    .line 2669
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0601bb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2673
    :pswitch_4
    const v0, 0x7f020032

    .line 2674
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0601bc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2678
    :pswitch_5
    const v0, 0x7f020031

    .line 2679
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0601bd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2684
    :pswitch_6
    const v0, 0x7f020033

    .line 2685
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0601be

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2651
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public changeKeyMode(I)V
    .locals 9
    .parameter "keyMode"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 833
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->filterKeyMode(I)I

    move-result v3

    .line 834
    .local v3, targetMode:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 925
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->commitText()V

    .line 839
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 840
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v4, :cond_1

    .line 841
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setShifted(Z)Z

    .line 842
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setCapsLock(Z)V

    .line 844
    :cond_1
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    .line 845
    if-eq v3, v8, :cond_2

    .line 846
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setKeyMode(I)V

    .line 848
    :cond_2
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPrevInputKeyCode:I

    .line 866
    :goto_1
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getModeChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v0

    .line 868
    .local v0, kbd:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    const/4 v2, 0x1

    .line 870
    .local v2, mode:I
    packed-switch v3, :pswitch_data_0

    .line 921
    :goto_2
    :pswitch_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setStatusIcon()V

    .line 922
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    .line 923
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCanUndo:Z

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setUndoKey(Z)V

    .line 924
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v6, -0xffffff1

    invoke-direct {v5, v6, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 850
    .end local v0           #kbd:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .end local v2           #mode:I
    :cond_3
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    if-eqz v4, :cond_4

    .line 851
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    .line 853
    :cond_4
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    .line 854
    .local v1, keyboardTypeBack:I
    if-eq v3, v8, :cond_5

    .line 856
    invoke-direct {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getKeyboardTypePref(I)I

    move-result v4

    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    .line 857
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setKeyMode(I)V

    .line 859
    :cond_5
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPrevInputKeyCode:I

    .line 860
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    if-eq v4, v1, :cond_6

    .line 861
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboardType(I)V

    .line 863
    :cond_6
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    goto :goto_1

    .line 872
    .end local v1           #keyboardTypeBack:I
    .restart local v0       #kbd:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .restart local v2       #mode:I
    :pswitch_1
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputType:I

    .line 873
    const/4 v2, 0x0

    .line 874
    goto :goto_2

    .line 878
    :pswitch_2
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputType:I

    .line 879
    const/4 v2, 0x2

    .line 884
    goto :goto_2

    .line 887
    :pswitch_3
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputType:I

    .line 888
    const/4 v2, 0x1

    .line 889
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->INSTANT_CHAR_CODE_FULL_NUMBER:[C

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentInstantTable:[C

    goto :goto_2

    .line 893
    :pswitch_4
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputType:I

    .line 894
    const/4 v2, 0x1

    .line 895
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->INSTANT_CHAR_CODE_HALF_NUMBER:[C

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentInstantTable:[C

    goto :goto_2

    .line 899
    :pswitch_5
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputType:I

    .line 900
    const/16 v2, 0x65

    .line 901
    goto :goto_2

    .line 904
    :pswitch_6
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputType:I

    .line 905
    const/4 v2, 0x1

    .line 906
    goto :goto_2

    .line 909
    :pswitch_7
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputType:I

    .line 910
    const/16 v2, 0x66

    .line 911
    goto :goto_2

    .line 914
    :pswitch_8
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v6, -0xfffffdb

    invoke-direct {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_0

    .line 870
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z
    .locals 2
    .parameter "keyboard"

    .prologue
    .line 3541
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    move-result v0

    .line 3542
    .local v0, changed:Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsInputTypeNull:Z

    if-nez v1, :cond_0

    .line 3543
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setKeyboardTypePref(I)V

    .line 3545
    :cond_0
    return v0
.end method

.method public changeKeyboardType(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const v4, -0xffffff1

    .line 962
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->commitText()V

    .line 963
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getTypeChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v0

    .line 964
    .local v0, kbd:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    if-eqz v0, :cond_0

    .line 965
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    .line 966
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    .line 967
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setShiftByEditorInfo(Z)V

    .line 969
    :cond_0
    if-ne p1, v1, :cond_1

    .line 970
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v3, 0x6a

    invoke-direct {v2, v4, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 976
    :goto_0
    return-void

    .line 973
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v3, 0x69

    invoke-direct {v2, v4, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0
.end method

.method protected createKeyboards(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V
    .locals 12
    .parameter "parent"

    .prologue
    const/16 v11, 0x6a

    const/16 v10, 0x69

    const v9, -0xffffff1

    const/4 v1, 0x2

    .line 786
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0601c6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mUndoKey:Ljava/lang/String;

    .line 789
    const/4 v0, 0x3

    const/4 v2, 0x4

    const/16 v7, 0x8

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    filled-new-array/range {v0 .. v8}, [I

    move-result-object v0

    const-class v1, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    .line 791
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->set5key()V

    .line 793
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mHardKeyboardHidden:Z

    if-eqz v0, :cond_2

    .line 795
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mDisplayMode:I

    if-nez v0, :cond_0

    .line 796
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->createKeyboardsPortrait(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    .line 800
    :goto_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 801
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v1, v9, v11}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 814
    :goto_1
    return-void

    .line 798
    :cond_0
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->createKeyboardsLandscape(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    goto :goto_0

    .line 804
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v1, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_1

    .line 807
    :cond_2
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    if-eqz v0, :cond_3

    .line 808
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v1, v9, v11}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_1

    .line 811
    :cond_3
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v1, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_1
.end method

.method protected getLongpressMushroomKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 3405
    const/4 v0, 0x0

    .line 3406
    .local v0, result:Z
    if-eqz p1, :cond_0

    .line 3407
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 3419
    :cond_0
    :goto_0
    return v0

    .line 3411
    :sswitch_0
    const/4 v0, 0x1

    .line 3412
    goto :goto_0

    .line 3407
    :sswitch_data_0
    .sparse-switch
        -0x131 -> :sswitch_0
        -0xde -> :sswitch_0
        -0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method protected getModeCycleCount()I
    .locals 1

    .prologue
    .line 3441
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    if-eqz v0, :cond_0

    .line 3442
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE:[I

    array-length v0, v0

    .line 3444
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_DISABLE_HALF_ALPHABET:[I

    array-length v0, v0

    goto :goto_0
.end method

.method protected getShiftKeyState(Landroid/view/inputmethod/EditorInfo;)I
    .locals 4
    .parameter "editor"

    .prologue
    const/4 v2, 0x0

    .line 2705
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2706
    .local v1, connection:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 2707
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 2708
    .local v0, caps:I
    if-nez v0, :cond_1

    .line 2710
    .end local v0           #caps:I
    :cond_0
    :goto_0
    return v2

    .line 2708
    .restart local v0       #caps:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected getSlideCycleCount()I
    .locals 1

    .prologue
    .line 3450
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    if-eqz v0, :cond_1

    .line 3451
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableVoiceInput:Z

    if-eqz v0, :cond_0

    .line 3452
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_VOICE:[I

    array-length v0, v0

    .line 3460
    :goto_0
    return v0

    .line 3454
    :cond_0
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE:[I

    array-length v0, v0

    goto :goto_0

    .line 3457
    :cond_1
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableVoiceInput:Z

    if-eqz v0, :cond_2

    .line 3458
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_VOICE_DISABLE_HALF_ALPHABET:[I

    array-length v0, v0

    goto :goto_0

    .line 3460
    :cond_2
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->JP_MODE_CYCLE_TABLE_DISABLE_HALF_ALPHABET:[I

    array-length v0, v0

    goto :goto_0
.end method

.method protected getSlideKeyTop(IZZ)I
    .locals 6
    .parameter "index"
    .parameter "enableModeKey"
    .parameter "hiraEnalbeMode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3428
    if-eqz p2, :cond_0

    move v0, v3

    .line 3429
    .local v0, enableModeKeyIndex:I
    :goto_0
    sget-boolean v5, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableVoiceInput:Z

    if-eqz v5, :cond_1

    move v1, v3

    .line 3430
    .local v1, enableVoiceInputIndex:I
    :goto_1
    if-eqz p3, :cond_2

    move v2, v3

    .line 3432
    .local v2, hiraEnableModeKeyIndex:I
    :goto_2
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    if-eqz v3, :cond_3

    .line 3433
    sget-object v3, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->SLIDE_DRAWABLE_ID_TABLE:[[[[I

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    aget v3, v3, p1

    .line 3435
    :goto_3
    return v3

    .end local v0           #enableModeKeyIndex:I
    .end local v1           #enableVoiceInputIndex:I
    .end local v2           #hiraEnableModeKeyIndex:I
    :cond_0
    move v0, v4

    .line 3428
    goto :goto_0

    .restart local v0       #enableModeKeyIndex:I
    :cond_1
    move v1, v4

    .line 3429
    goto :goto_1

    .restart local v1       #enableVoiceInputIndex:I
    :cond_2
    move v2, v4

    .line 3430
    goto :goto_2

    .line 3435
    .restart local v2       #hiraEnableModeKeyIndex:I
    :cond_3
    sget-object v3, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->SLIDE_DRAWABLE_ID_DISABLE_HALF_ALPHABET_TABLE:[[[[I

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    aget v3, v3, p1

    goto :goto_3
.end method

.method protected getSoftLockEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3396
    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    if-eqz v1, :cond_0

    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    if-eq v1, v0, :cond_0

    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;
    .locals 7
    .parameter "parent"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 929
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v5, "OpenWnn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DefaultSoftKeyboardJAJP.initView()"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;

    move-result-object v1

    .line 932
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentLanguage:I

    aget-object v2, v2, v5

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mDisplayMode:I

    aget-object v2, v2, v5

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    aget-object v2, v2, v5

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    aget-object v2, v2, v5

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getEnableVoiceInput()I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getEnableSwitchIme()I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getEnableQwertyLeftRightKey()I

    move-result v5

    aget-object v2, v2, v5

    sget v5, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    aget-object v2, v2, v5

    aget-object v0, v2, v4

    .line 933
    .local v0, keyboard:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    if-eqz v0, :cond_1

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v2, :cond_1

    .line 934
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v2

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 935
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 936
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsSymbolKeyboard:Z

    if-eqz v2, :cond_3

    .line 937
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setSymbolKeyboard()V

    .line 957
    :cond_1
    :goto_1
    return-object v1

    .end local v0           #keyboard:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    .end local v1           #view:Landroid/view/View;
    :cond_2
    move v2, v4

    .line 929
    goto :goto_0

    .line 939
    .restart local v0       #keyboard:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    .restart local v1       #view:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setNormalKeyboard()V

    .line 940
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 941
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    if-eqz v2, :cond_1

    .line 942
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setShifted(Z)Z

    .line 943
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getSoftLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 944
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setCapsLock(Z)V

    goto :goto_1

    .line 946
    :cond_4
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setCapsLockMode(Z)V

    goto :goto_1

    .line 950
    :cond_5
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setShifted(I)V

    goto :goto_1

    .line 954
    :cond_6
    sget v2, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_1
.end method

.method protected inputByFlick(IZ)V
    .locals 23
    .parameter "directionIndex"
    .parameter "isCommit"

    .prologue
    .line 2987
    move-object/from16 v0, p0

    iget-object v10, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v10, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    .line 2988
    .local v10, keyboardView:Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mFlickPressKey:I

    move/from16 v19, v0

    const/16 v20, -0xd5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    sget v19, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->hasDakutenCapitalConversion(I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2991
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mNoInput:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 2993
    invoke-direct/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getReplaceTable(I)Ljava/util/HashMap;

    move-result-object v15

    .line 2994
    .local v15, replaceTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v15, :cond_1

    .line 2995
    const-string v19, "OpenWnn"

    const-string v20, "not founds replace table"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    .end local v15           #replaceTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 2997
    .restart local v15       #replaceTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    if-eqz p2, :cond_3

    .line 2998
    if-nez p1, :cond_2

    .line 2999
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsKeyProcessFinish:Z

    goto :goto_0

    .line 3000
    :cond_2
    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 3001
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v19, v0

    new-instance v20, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v21, -0xffffff3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v15}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILjava/util/HashMap;)V

    invoke-virtual/range {v19 .. v20}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 3004
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnablePopup:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 3005
    if-nez p1, :cond_4

    .line 3006
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedKeyGuide(Z)V

    goto :goto_0

    .line 3009
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v2

    .line 3010
    .local v2, cursor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v19

    const/16 v20, 0x1

    add-int/lit8 v21, v2, -0x1

    invoke-virtual/range {v19 .. v21}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v13

    .line 3012
    .local v13, prevChar:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    if-eqz v13, :cond_0

    .line 3013
    iget-object v0, v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3014
    .local v16, search:Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3016
    .local v14, replaceChar:Ljava/lang/String;
    if-nez v14, :cond_5

    .line 3017
    invoke-virtual {v10}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->clearFlickedKeyTop()V

    goto :goto_0

    .line 3019
    :cond_5
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v14, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedKeyTop(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 3027
    .end local v2           #cursor:I
    .end local v13           #prevChar:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    .end local v14           #replaceChar:Ljava/lang/String;
    .end local v15           #replaceTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #search:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnablePopup:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 3028
    if-nez p1, :cond_7

    .line 3029
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedKeyGuide(Z)V

    goto/16 :goto_0

    .line 3031
    :cond_7
    invoke-virtual {v10}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->clearFlickedKeyTop()V

    goto/16 :goto_0

    .line 3035
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mFlickPressKey:I

    move/from16 v19, v0

    const/16 v20, -0xe6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 3036
    const/16 v19, 0x4

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 3037
    if-nez p2, :cond_9

    .line 3038
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedKeyTop(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 3040
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->nextKeyMode()V

    goto/16 :goto_0

    .line 3042
    :cond_a
    const/16 v19, 0x5

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 3043
    if-nez p2, :cond_0

    .line 3044
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedKeyTop(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 3047
    :cond_b
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getSlideCycleTable()[I

    move-result-object v18

    .line 3048
    .local v18, table:[I
    aget v12, v18, p1

    .line 3049
    .local v12, mode:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->isEnableModekey(I)Z

    move-result v4

    .line 3050
    .local v4, enableModeKey:Z
    if-eqz p2, :cond_c

    .line 3051
    if-eqz v4, :cond_0

    .line 3052
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto/16 :goto_0

    .line 3055
    :cond_c
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->isEnableModekey(I)Z

    move-result v5

    .line 3056
    .local v5, hiraEnableModeKey:Z
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getSlideKeyTop(IZZ)I

    move-result v9

    .line 3057
    .local v9, keyTop:I
    const/4 v6, 0x0

    .line 3058
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v11

    .line 3059
    .local v11, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    invoke-virtual {v11}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 3060
    invoke-virtual {v11, v9}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3062
    :cond_d
    if-eqz v6, :cond_e

    .line 3063
    invoke-virtual {v10, v6}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedPreview(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 3065
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedPreview(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 3071
    .end local v4           #enableModeKey:Z
    .end local v5           #hiraEnableModeKey:Z
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v9           #keyTop:I
    .end local v11           #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .end local v12           #mode:I
    .end local v18           #table:[I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mFlickPressKey:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getTableIndex(I)I

    move-result v7

    .line 3072
    .local v7, index:I
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getFlickCycleTable()[[Ljava/lang/String;

    move-result-object v3

    .line 3073
    .local v3, cycleTable:[[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3074
    aget-object v19, v3, v7

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentCycleTable:[Ljava/lang/String;

    .line 3075
    if-eqz p2, :cond_12

    aget-object v19, v3, v7

    aget-object v19, v19, p1

    if-eqz v19, :cond_12

    .line 3076
    aget-object v19, v3, v7

    aget-object v8, v19, p1

    .line 3077
    .local v8, inputString:Ljava/lang/String;
    sget v19, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mFlickPressKey:I

    move/from16 v19, v0

    const/16 v20, -0xd3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 3080
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->commitText()V

    .line 3082
    :cond_10
    sget v19, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->hasDakutenCapitalConversion(I)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 3084
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v19, v0

    new-instance v20, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v21, -0xfffffdd

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-direct/range {v20 .. v22}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(IC)V

    invoke-virtual/range {v19 .. v20}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_0

    .line 3087
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v19, v0

    new-instance v20, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v21, -0xffffffa

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-direct/range {v20 .. v22}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(IC)V

    invoke-virtual/range {v19 .. v20}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_0

    .line 3090
    .end local v8           #inputString:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnablePopup:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 3091
    if-nez p1, :cond_13

    .line 3092
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedKeyGuide(Z)V

    goto/16 :goto_0

    .line 3094
    :cond_13
    aget-object v19, v3, v7

    aget-object v17, v19, p1

    .line 3095
    .local v17, str:Ljava/lang/String;
    if-nez v17, :cond_14

    .line 3096
    invoke-virtual {v10}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->clearFlickedKeyTop()V

    goto/16 :goto_0

    .line 3098
    :cond_14
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedKeyTop(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0
.end method

.method protected inputByFlickDirection(IZ)V
    .locals 6
    .parameter "direction"
    .parameter "isCommit"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2932
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mFlickPressKey:I

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->isEnableFlickMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2933
    packed-switch p1, :pswitch_data_0

    .line 2983
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2935
    :pswitch_1
    invoke-virtual {p0, v1, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2939
    :pswitch_2
    invoke-virtual {p0, v2, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2943
    :pswitch_3
    invoke-virtual {p0, v3, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2947
    :pswitch_4
    invoke-virtual {p0, v4, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2951
    :pswitch_5
    invoke-virtual {p0, v5, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2955
    :pswitch_6
    invoke-virtual {p0, v1, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2959
    :pswitch_7
    invoke-virtual {p0, v2, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2963
    :pswitch_8
    invoke-virtual {p0, v3, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2967
    :pswitch_9
    invoke-virtual {p0, v4, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2971
    :pswitch_a
    invoke-virtual {p0, v5, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2975
    :pswitch_b
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->inputByFlick(IZ)V

    goto :goto_0

    .line 2933
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public isChangeToOtherIme()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 3739
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    if-nez v1, :cond_1

    .line 3740
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_1

    .line 3742
    :cond_0
    const/4 v0, 0x1

    .line 3745
    :cond_1
    return v0
.end method

.method protected isEnableFlickMode(I)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 3109
    const/4 v0, 0x0

    .line 3110
    .local v0, isFlickMode:Z
    const/16 v1, -0xe6

    if-ne p1, v1, :cond_1

    .line 3111
    const/4 v0, 0x1

    .line 3131
    :cond_0
    :goto_0
    return v0

    .line 3113
    :cond_1
    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3121
    :pswitch_0
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlick:Z

    if-eqz v1, :cond_0

    .line 3122
    const/4 v0, 0x1

    goto :goto_0

    .line 3113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnableModekey(I)Z
    .locals 4
    .parameter "mode"

    .prologue
    .line 3500
    const/4 v1, 0x1

    .line 3502
    .local v1, isModekey:Z
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    if-eqz v3, :cond_0

    .line 3503
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    array-length v2, v3

    .line 3504
    .local v2, length:I
    const/4 v1, 0x0

    .line 3505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3506
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_1

    .line 3507
    const/4 v1, 0x1

    .line 3512
    .end local v0           #i:I
    .end local v2           #length:I
    :cond_0
    return v1

    .line 3505
    .restart local v0       #i:I
    .restart local v2       #length:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected isFlickKey(I)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 3469
    packed-switch p1, :pswitch_data_0

    .line 3487
    :pswitch_0
    const/4 v0, 0x0

    .line 3491
    .local v0, ret:Z
    :goto_0
    return v0

    .line 3483
    .end local v0           #ret:Z
    :pswitch_1
    const/4 v0, 0x1

    .line 3484
    .restart local v0       #ret:Z
    goto :goto_0

    .line 3469
    nop

    :pswitch_data_0
    .packed-switch -0xe6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected isVoiceInputMode()Z
    .locals 2

    .prologue
    .line 3609
    sget v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextKeyMode()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 1832
    const/4 v0, 0x0

    .line 1834
    .local v0, found:Z
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getModeCycleCount()I

    move-result v4

    .line 1835
    .local v4, length:I
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getModeCycleTable()[I

    move-result-object v5

    .line 1836
    .local v5, table:[I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1837
    aget v6, v5, v2

    sget v7, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    if-ne v6, v7, :cond_2

    .line 1838
    const/4 v0, 0x1

    .line 1843
    :cond_0
    if-nez v0, :cond_3

    .line 1845
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setDefaultKeyboard()V

    .line 1863
    :cond_1
    :goto_1
    return-void

    .line 1836
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1848
    :cond_3
    const/4 v3, -0x1

    .line 1849
    .local v3, keyMode:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 1850
    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v4

    .line 1852
    aget v6, v5, v2

    invoke-direct {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->filterKeyMode(I)I

    move-result v3

    .line 1853
    if-eq v3, v8, :cond_5

    .line 1858
    :cond_4
    if-eq v3, v8, :cond_1

    .line 1860
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_1

    .line 1849
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onKey(I[I)V
    .locals 13
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const v10, -0xffffff1

    const v12, -0xffffffa

    const v11, -0xffffff2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 980
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->onKey(I[I)V

    .line 981
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsKeyProcessFinish:Z

    if-eqz v6, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1279
    if-ltz p1, :cond_2

    .line 1280
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    int-to-char v9, p1

    invoke-direct {v8, v12, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(IC)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1285
    :cond_2
    :goto_1
    :sswitch_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v6, :cond_3

    .line 1286
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v6, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->isCapsLock()Z

    move-result v6

    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    .line 1289
    :cond_3
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    if-nez v6, :cond_0

    const/4 v6, -0x1

    if-eq p1, v6, :cond_0

    .line 1290
    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setShiftByEditorInfo(Z)V

    goto :goto_0

    .line 988
    :sswitch_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->nextKeyMode()V

    goto :goto_1

    .line 993
    :sswitch_2
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    new-instance v9, Landroid/view/KeyEvent;

    const/16 v10, 0x43

    invoke-direct {v9, v7, v10}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v8, v11, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_1

    .line 998
    :sswitch_3
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 999
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    .line 1000
    .local v2, keyboardView:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;
    if-eqz v2, :cond_2

    .line 1001
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getSoftLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1002
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->isShifted()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1003
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->isCapsLock()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1004
    invoke-virtual {v2, v7}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setShifted(Z)Z

    .line 1005
    invoke-virtual {v2, v7}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setCapsLock(Z)V

    .line 1006
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    goto :goto_1

    .line 1008
    :cond_4
    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setCapsLock(Z)V

    .line 1009
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    goto :goto_1

    .line 1012
    :cond_5
    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setShifted(Z)Z

    goto :goto_1

    .line 1015
    :cond_6
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->isShifted()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1016
    invoke-virtual {v2, v7}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setShifted(Z)Z

    .line 1017
    invoke-virtual {v2, v7}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setCapsLockMode(Z)V

    .line 1018
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    goto :goto_1

    .line 1020
    :cond_7
    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setShifted(Z)Z

    .line 1021
    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setCapsLockMode(Z)V

    .line 1022
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    goto :goto_1

    .line 1027
    .end local v2           #keyboardView:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;
    :cond_8
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getSoftLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1028
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    if-nez v6, :cond_9

    .line 1029
    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setShifted(I)V

    goto/16 :goto_1

    .line 1031
    :cond_9
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    if-nez v6, :cond_a

    .line 1033
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    .line 1035
    :cond_a
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->toggleShiftLock()V

    goto/16 :goto_1

    .line 1038
    :cond_b
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->toggleShiftLock()V

    goto/16 :goto_1

    .line 1044
    :sswitch_4
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->processAltKey()V

    goto/16 :goto_1

    .line 1049
    :sswitch_5
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    new-instance v9, Landroid/view/KeyEvent;

    const/16 v10, 0x42

    invoke-direct {v9, v7, v10}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v8, v11, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1054
    :sswitch_6
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v6

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget-object v6, v6, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v6, :cond_c

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v6

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget-object v6, v6, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mUndoKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1057
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xfffffe5

    invoke-direct {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1061
    :cond_c
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mNoInput:Z

    if-nez v6, :cond_2

    .line 1062
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xfffffff

    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentCycleTable:[Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1067
    :sswitch_7
    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboardType(I)V

    goto/16 :goto_1

    .line 1071
    :sswitch_8
    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboardType(I)V

    goto/16 :goto_1

    .line 1076
    :sswitch_9
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->commitText()V

    .line 1077
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableEmoji:Z

    if-eqz v6, :cond_d

    .line 1078
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v9, 0x6b

    invoke-direct {v8, v10, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1079
    :cond_d
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableEmojiUNI6:Z

    if-nez v6, :cond_e

    .line 1080
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v9, 0x6c

    invoke-direct {v8, v10, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1082
    :cond_e
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v9, 0x70

    invoke-direct {v8, v10, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1087
    :sswitch_a
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xffffff9

    new-instance v10, Landroid/view/KeyEvent;

    const/4 v11, 0x4

    invoke-direct {v10, v7, v11}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v8, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1092
    :sswitch_b
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xfffd000

    invoke-direct {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1096
    :sswitch_c
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xfffcfff

    invoke-direct {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1100
    :sswitch_d
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    const/16 v7, 0x43

    invoke-virtual {v6, v7}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->sendDownUpKeyEvents(I)V

    goto/16 :goto_0

    .line 1115
    :sswitch_e
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputType:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_f

    .line 1117
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->commitText()V

    .line 1118
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentInstantTable:[C

    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getTableIndex(I)I

    move-result v10

    aget-char v9, v9, v10

    invoke-direct {v8, v12, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(IC)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1121
    :cond_f
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlick:Z

    if-eqz v6, :cond_10

    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlickToggle:Z

    if-nez v6, :cond_10

    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->isEnableFlickMode(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1122
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xfffffe0

    invoke-direct {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1124
    :cond_10
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPrevInputKeyCode:I

    if-eq v6, p1, :cond_11

    .line 1125
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xfffffe0

    invoke-direct {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1126
    sget v6, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_11

    const/16 v6, -0xd3

    if-ne p1, v6, :cond_11

    .line 1129
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->commitText()V

    .line 1134
    :cond_11
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getCycleTable()[[Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, cycleTable:[[Ljava/lang/String;
    if-nez v0, :cond_12

    .line 1136
    const-string v6, "OpenWnn"

    const-string v8, "not founds cycle table"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :goto_2
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPrevInputKeyCode:I

    goto/16 :goto_1

    .line 1138
    :cond_12
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getTableIndex(I)I

    move-result v1

    .line 1139
    .local v1, index:I
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xffffff4

    aget-object v10, v0, v1

    invoke-direct {v8, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1140
    aget-object v6, v0, v1

    iput-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentCycleTable:[Ljava/lang/String;

    goto :goto_2

    .line 1147
    .end local v0           #cycleTable:[[Ljava/lang/String;
    .end local v1           #index:I
    :sswitch_f
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mInputType:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_13

    .line 1148
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->commitText()V

    .line 1149
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentInstantTable:[C

    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getTableIndex(I)I

    move-result v10

    aget-char v9, v9, v10

    invoke-direct {v8, v12, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(IC)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1152
    :cond_13
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mNoInput:Z

    if-nez v6, :cond_2

    .line 1154
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getReplaceTable()Ljava/util/HashMap;

    move-result-object v4

    .line 1155
    .local v4, replaceTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_14

    .line 1156
    const-string v6, "OpenWnn"

    const-string v8, "not founds replace table"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1158
    :cond_14
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xffffff3

    invoke-direct {v8, v9, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILjava/util/HashMap;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 1159
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPrevInputKeyCode:I

    goto/16 :goto_1

    .line 1168
    .end local v4           #replaceTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_10
    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto/16 :goto_1

    .line 1173
    :sswitch_11
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto/16 :goto_1

    .line 1178
    :sswitch_12
    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto/16 :goto_1

    .line 1184
    :sswitch_13
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto/16 :goto_1

    .line 1189
    :sswitch_14
    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto/16 :goto_1

    .line 1195
    :sswitch_15
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto/16 :goto_1

    .line 1201
    :sswitch_16
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto/16 :goto_1

    .line 1206
    :sswitch_17
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto/16 :goto_1

    .line 1211
    :sswitch_18
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    if-nez v6, :cond_15

    .line 1212
    .local v5, shifted:I
    :goto_3
    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getShiftChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v3

    .line 1213
    .local v3, newKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    if-eqz v3, :cond_2

    .line 1214
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    .line 1215
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    goto/16 :goto_1

    .end local v3           #newKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .end local v5           #shifted:I
    :cond_15
    move v5, v7

    .line 1211
    goto :goto_3

    .line 1220
    :sswitch_19
    sget v6, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    if-nez v6, :cond_16

    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mNoInput:Z

    if-nez v6, :cond_16

    .line 1221
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xffffffe

    invoke-direct {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1223
    :cond_16
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v9, 0x20

    invoke-direct {v8, v12, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(IC)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1228
    :sswitch_1a
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v9, 0x67

    invoke-direct {v8, v10, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1232
    :sswitch_1b
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xffffff9

    new-instance v10, Landroid/view/KeyEvent;

    const/4 v11, 0x4

    invoke-direct {v10, v7, v11}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v8, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1237
    :sswitch_1c
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    new-instance v9, Landroid/view/KeyEvent;

    const/16 v10, 0x15

    invoke-direct {v9, v7, v10}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v8, v11, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1243
    :sswitch_1d
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    new-instance v9, Landroid/view/KeyEvent;

    const/16 v10, 0x16

    invoke-direct {v9, v7, v10}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v8, v11, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1249
    :sswitch_1e
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    new-instance v9, Landroid/view/KeyEvent;

    const/16 v10, 0x13

    invoke-direct {v9, v7, v10}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v8, v11, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1255
    :sswitch_1f
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    new-instance v9, Landroid/view/KeyEvent;

    const/16 v10, 0x14

    invoke-direct {v9, v7, v10}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v8, v11, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1261
    :sswitch_20
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xfffffdb

    invoke-direct {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1265
    :sswitch_21
    iget-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    if-nez v6, :cond_17

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v6

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget-object v6, v6, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v6, :cond_17

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v6

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget-object v6, v6, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mUndoKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1268
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xfffffe5

    invoke-direct {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v6, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto/16 :goto_1

    .line 1272
    :cond_17
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v6}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->handleLanguageSwitchKey()V

    goto/16 :goto_1

    .line 985
    nop

    :sswitch_data_0
    .sparse-switch
        -0x19c -> :sswitch_21
        -0x13c -> :sswitch_16
        -0x13b -> :sswitch_15
        -0x13a -> :sswitch_13
        -0x139 -> :sswitch_10
        -0x138 -> :sswitch_20
        -0x137 -> :sswitch_17
        -0x136 -> :sswitch_0
        -0x135 -> :sswitch_18
        -0x134 -> :sswitch_16
        -0x133 -> :sswitch_15
        -0x132 -> :sswitch_14
        -0x131 -> :sswitch_1a
        -0x130 -> :sswitch_13
        -0x12f -> :sswitch_12
        -0x12e -> :sswitch_11
        -0x12d -> :sswitch_10
        -0xec -> :sswitch_1f
        -0xeb -> :sswitch_1e
        -0xea -> :sswitch_d
        -0xe9 -> :sswitch_c
        -0xe8 -> :sswitch_b
        -0xe7 -> :sswitch_a
        -0xe6 -> :sswitch_1
        -0xde -> :sswitch_9
        -0xdd -> :sswitch_8
        -0xdc -> :sswitch_1b
        -0xdb -> :sswitch_6
        -0xda -> :sswitch_1c
        -0xd9 -> :sswitch_1d
        -0xd8 -> :sswitch_5
        -0xd7 -> :sswitch_19
        -0xd6 -> :sswitch_2
        -0xd5 -> :sswitch_f
        -0xd3 -> :sswitch_e
        -0xd2 -> :sswitch_e
        -0xd1 -> :sswitch_e
        -0xd0 -> :sswitch_e
        -0xcf -> :sswitch_e
        -0xce -> :sswitch_e
        -0xcd -> :sswitch_e
        -0xcc -> :sswitch_e
        -0xcb -> :sswitch_e
        -0xca -> :sswitch_e
        -0xc9 -> :sswitch_e
        -0x72 -> :sswitch_1
        -0x6a -> :sswitch_9
        -0x68 -> :sswitch_7
        -0x67 -> :sswitch_4
        -0x65 -> :sswitch_5
        -0x64 -> :sswitch_2
        -0x1 -> :sswitch_3
    .end sparse-switch
.end method

.method public onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 768
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->isEnableLongPressMenu(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->showLongPressMenu()V

    .line 779
    :goto_0
    return v0

    .line 771
    :cond_0
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getSoftLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v1

    if-nez v1, :cond_2

    .line 773
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    if-nez v1, :cond_1

    .line 774
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    .line 776
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->toggleShiftLock()V

    goto :goto_0

    .line 779
    :cond_2
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUpdateState(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1798
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->onUpdateState(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    .line 1799
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->isCapsLock()Z

    move-result v0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    .line 1802
    :cond_0
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    if-nez v0, :cond_1

    .line 1803
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setShiftByEditorInfo(Z)V

    .line 1805
    :cond_1
    return-void
.end method

.method public setDefaultKeyboard()V
    .locals 4

    .prologue
    .line 1811
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1812
    .local v1, locale:Ljava/util/Locale;
    const/4 v0, 0x0

    .line 1814
    .local v0, keymode:I
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1815
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 1823
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    .line 1824
    return-void

    .line 1816
    :cond_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    if-eqz v2, :cond_2

    .line 1817
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    const/4 v3, 0x0

    aget v0, v2, v3

    goto :goto_0

    .line 1819
    :cond_2
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1820
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setEnableDecoEmoji(Z)V
    .locals 0
    .parameter "enableDecoEmoji"

    .prologue
    .line 3536
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableDecoEmoji:Z

    .line 3537
    return-void
.end method

.method public setEnableEmoji(Z)V
    .locals 0
    .parameter "enableEmoji"

    .prologue
    .line 3528
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableEmoji:Z

    .line 3529
    return-void
.end method

.method public setEnableEmojiUNI6(Z)V
    .locals 0
    .parameter "enableEmojiUNI6"

    .prologue
    .line 3520
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableEmojiUNI6:Z

    .line 3521
    return-void
.end method

.method public setHardKeyboardHidden(Z)V
    .locals 5
    .parameter "hidden"

    .prologue
    const v4, -0xffffff1

    const/4 v3, -0x1

    .line 2749
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    if-eqz v0, :cond_3

    .line 2750
    if-nez p1, :cond_0

    .line 2751
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    if-eqz v0, :cond_4

    .line 2752
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v2, 0x6a

    invoke-direct {v1, v4, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 2760
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mHardKeyboardHidden:Z

    if-eq v0, p1, :cond_3

    .line 2761
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    if-nez v0, :cond_2

    sget v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    if-eqz v0, :cond_2

    sget v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 2766
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    .line 2767
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastImeOptions:I

    .line 2768
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2769
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setDefaultKeyboard()V

    .line 2773
    :cond_2
    if-eqz p1, :cond_3

    .line 2774
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    .line 2775
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastImeOptions:I

    .line 2779
    :cond_3
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setHardKeyboardHidden(Z)V

    .line 2780
    return-void

    .line 2755
    :cond_4
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v2, 0x69

    invoke-direct {v1, v4, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0
.end method

.method public setHardware12Keyboard(Z)V
    .locals 4
    .parameter "type12Key"

    .prologue
    const v3, -0xffffff1

    .line 2784
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    if-eqz v0, :cond_0

    .line 2785
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    if-eq v0, p1, :cond_0

    .line 2786
    if-eqz p1, :cond_1

    .line 2787
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v2, 0x6a

    invoke-direct {v1, v3, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 2795
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setHardware12Keyboard(Z)V

    .line 2796
    return-void

    .line 2790
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const/16 v2, 0x69

    invoke-direct {v1, v3, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0
.end method

.method public setNormalKeyboard()V
    .locals 2

    .prologue
    .line 3614
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v1, :cond_0

    .line 3615
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsSymbolKeyboard:Z

    if-eqz v1, :cond_0

    .line 3616
    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getKeyboardTypePref(I)I

    move-result v0

    .line 3617
    .local v0, type:I
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    if-eq v1, v0, :cond_0

    .line 3618
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboardType(I)V

    .line 3622
    .end local v0           #type:I
    :cond_0
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setNormalKeyboard()V

    .line 3623
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    if-nez v1, :cond_1

    .line 3624
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setShiftByEditorInfo(Z)V

    .line 3626
    :cond_1
    return-void
.end method

.method public setPreferences(Landroid/content/SharedPreferences;Landroid/view/inputmethod/EditorInfo;)V
    .locals 30
    .parameter "pref"
    .parameter "editor"

    .prologue
    .line 1296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlick:Z

    move/from16 v22, v0

    .line 1298
    .local v22, preEnableFlick:Z
    const-string v26, "flick_input"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlick:Z

    .line 1299
    const-string v26, "flick_toggle_input"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlickToggle:Z

    .line 1300
    const-string v26, "popup_preview"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnablePopup:Z

    .line 1301
    invoke-super/range {p0 .. p2}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setPreferences(Landroid/content/SharedPreferences;Landroid/view/inputmethod/EditorInfo;)V

    .line 1303
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v26

    if-nez v26, :cond_0

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mDisplayMode:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v19, v26, v27

    .line 1313
    .local v19, keyboard12Key:[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlick:Z

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 1314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableFlick:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 1315
    const v12, 0x7f05002a

    .line 1316
    .local v12, halfId:I
    const v9, 0x7f050022

    .line 1317
    .local v9, fullId:I
    const v13, 0x7f050026

    .line 1318
    .local v13, halfIdkana:I
    const v10, 0x7f05001e

    .line 1319
    .local v10, fullIdkana:I
    const v14, 0x7f050028

    .line 1320
    .local v14, halfIdkana_input:I
    const v11, 0x7f050020

    .line 1337
    .local v11, fullIdkana_input:I
    :goto_0
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v12}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1338
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v9}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1343
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1345
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1351
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1353
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1359
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1361
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1368
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v12}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1369
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v9}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1374
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1376
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1382
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1384
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1390
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1392
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1399
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v12}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1400
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v9}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1405
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1407
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1413
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1415
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1421
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1423
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1430
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v12}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1431
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v9}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1436
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1438
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1444
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1446
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1452
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x5

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1454
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1459
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v13}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1460
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1461
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1463
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1465
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1467
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1469
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1471
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1474
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v13}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1475
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1476
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1478
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1480
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1482
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1484
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1486
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1489
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v13}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1490
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1491
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1493
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1495
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1497
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1499
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1501
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1504
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v13}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1505
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1506
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1508
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1510
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1512
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1514
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1516
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1521
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v14}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1522
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v11}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1523
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1525
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1527
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1529
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1531
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1533
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1536
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v14}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1537
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v11}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1538
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1540
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1542
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1544
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1546
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1548
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1551
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v14}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1552
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v11}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1553
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1555
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1557
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1559
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1561
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1563
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1566
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v14}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1567
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    new-instance v28, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v11}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;-><init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V

    aput-object v28, v26, v27

    .line 1568
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1570
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1572
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1574
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1576
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x6

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1578
    const/16 v26, 0x1

    aget-object v26, v19, v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x1

    aget-object v26, v26, v27

    const/16 v27, 0x3

    aget-object v26, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const/16 v29, 0x3

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aput-object v28, v26, v27

    .line 1580
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    .line 1584
    .end local v9           #fullId:I
    .end local v10           #fullIdkana:I
    .end local v11           #fullIdkana_input:I
    .end local v12           #halfId:I
    .end local v13           #halfIdkana:I
    .end local v14           #halfIdkana_input:I
    .end local v19           #keyboard12Key:[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1794
    :goto_1
    return-void

    .line 1322
    .restart local v19       #keyboard12Key:[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_1
    const v12, 0x7f05002b

    .line 1323
    .restart local v12       #halfId:I
    const v9, 0x7f050023

    .line 1324
    .restart local v9       #fullId:I
    const v13, 0x7f050027

    .line 1325
    .restart local v13       #halfIdkana:I
    const v10, 0x7f05001f

    .line 1326
    .restart local v10       #fullIdkana:I
    const v14, 0x7f050029

    .line 1327
    .restart local v14       #halfIdkana_input:I
    const v11, 0x7f050021

    .restart local v11       #fullIdkana_input:I
    goto/16 :goto_0

    .line 1588
    .end local v9           #fullId:I
    .end local v10           #fullIdkana:I
    .end local v11           #fullIdkana_input:I
    .end local v12           #halfId:I
    .end local v13           #halfIdkana:I
    .end local v14           #halfIdkana_input:I
    .end local v19           #keyboard12Key:[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    .line 1589
    .local v18, inputType:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mHardKeyboardHidden:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e

    .line 1590
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsInputTypeNull:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 1591
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsInputTypeNull:Z

    .line 1598
    :cond_3
    :goto_2
    const-string v26, "opt_prediction"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1599
    .local v23, prediction:Z
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    .line 1600
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 1601
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mNoInput:Z

    move/from16 v20, v0

    .line 1602
    .local v20, lastNoInput:Z
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mNoInput:Z

    .line 1603
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mDisableKeyInput:Z

    .line 1604
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v26

    if-eqz v26, :cond_f

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    check-cast v26, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setCapsLock(Z)V

    .line 1612
    :cond_4
    :goto_3
    const/4 v3, 0x0

    .line 1613
    .local v3, autoCaps:Z
    const/4 v8, 0x1

    .line 1614
    .local v8, forceShift:Z
    const/16 v24, 0x0

    .line 1615
    .local v24, setDefault:Z
    const/4 v5, -0x1

    .line 1616
    .local v5, changeKeyMode:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v17, v0

    .line 1618
    .local v17, imeOptions:I
    invoke-static/range {p2 .. p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;->getDefaultKeyMode(Landroid/view/inputmethod/EditorInfo;)I

    move-result v7

    .line 1619
    .local v7, defaultKeyMode:I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_14

    .line 1620
    and-int/lit8 v26, v18, 0xf

    packed-switch v26, :pswitch_data_0

    .line 1690
    if-nez v18, :cond_6

    .line 1691
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsInputTypeNull:Z

    .line 1692
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->isEnableOtherInputMethod()Z

    move-result v26

    if-nez v26, :cond_5

    .line 1693
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setEnableHalfAlphabet(Z)V

    .line 1697
    :cond_5
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    .line 1698
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->disableVoiceInput()V

    .line 1699
    const/4 v3, 0x0

    .line 1700
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboardType(I)V

    .line 1705
    :cond_6
    :goto_4
    const/high16 v26, -0x8000

    and-int v26, v26, v17

    if-eqz v26, :cond_7

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    move-object/from16 v26, v0

    if-nez v26, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 1707
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setEnableHalfAlphabet(Z)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    check-cast v26, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getSlideCycleCount()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setModeCycleCount(I)V

    .line 1710
    const/16 v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 1742
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->forceCloseVoiceInputKeyboard()V

    .line 1744
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    .line 1745
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 1746
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    move-object/from16 v26, v0

    if-nez v26, :cond_8

    .line 1748
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 1752
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    move-object/from16 v26, v0

    if-nez v26, :cond_9

    .line 1753
    sget-boolean v26, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableVoiceInput:Z

    if-eqz v26, :cond_1c

    .line 1754
    sget-object v26, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->LIMITED_KEYMODE_VOICE_DISABLE_HALF_ALPHABET:[I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    .line 1761
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v26

    if-nez v26, :cond_a

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    check-cast v26, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsInputTypeNull:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setIsInputTypeNull(Z)V

    .line 1765
    :cond_a
    if-eqz v3, :cond_1d

    const-string v26, "auto_caps"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_1d

    const/16 v26, 0x1

    :goto_7
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableAutoCaps:Z

    .line 1767
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    move/from16 v26, v0

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_1e

    const/16 v16, 0x1

    .line 1768
    .local v16, hasInputTypeChanged:Z
    :goto_8
    sget v26, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    move/from16 v26, v0

    if-nez v26, :cond_1f

    const/4 v6, 0x1

    .line 1769
    .local v6, contradictionSettings:Z
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastImeOptions:I

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_20

    const/4 v15, 0x1

    .line 1770
    .local v15, hasImeOptionsChanged:Z
    :goto_a
    if-nez v16, :cond_b

    if-nez v6, :cond_b

    if-eqz v15, :cond_c

    .line 1771
    :cond_b
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v5, v0, :cond_21

    .line 1772
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    .line 1776
    :goto_b
    const/16 v24, 0x1

    .line 1778
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_c

    .line 1779
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    .line 1780
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastImeOptions:I

    .line 1783
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setShiftByEditorInfo(Z)V

    .line 1785
    sget v26, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getKeyboardTypePref(I)I

    move-result v25

    .line 1786
    .local v25, type:I
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_22

    .line 1787
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboardType(I)V

    .line 1793
    :cond_d
    :goto_c
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setStatusIcon()V

    goto/16 :goto_1

    .line 1593
    .end local v3           #autoCaps:Z
    .end local v5           #changeKeyMode:I
    .end local v6           #contradictionSettings:Z
    .end local v7           #defaultKeyMode:I
    .end local v8           #forceShift:Z
    .end local v15           #hasImeOptionsChanged:Z
    .end local v16           #hasInputTypeChanged:Z
    .end local v17           #imeOptions:I
    .end local v20           #lastNoInput:Z
    .end local v23           #prediction:Z
    .end local v24           #setDefault:Z
    .end local v25           #type:I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsInputTypeNull:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 1594
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mIsInputTypeNull:Z

    .line 1595
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboardType(I)V

    goto/16 :goto_2

    .line 1609
    .restart local v20       #lastNoInput:Z
    .restart local v23       #prediction:Z
    :cond_f
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCapsLock:Z

    goto/16 :goto_3

    .line 1623
    .restart local v3       #autoCaps:Z
    .restart local v5       #changeKeyMode:I
    .restart local v7       #defaultKeyMode:I
    .restart local v8       #forceShift:Z
    .restart local v17       #imeOptions:I
    .restart local v24       #setDefault:Z
    :pswitch_0
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 1624
    const/16 v26, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 1625
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    move/from16 v26, v0

    if-eqz v26, :cond_10

    .line 1626
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_1

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    .line 1630
    :goto_d
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->disableVoiceInput()V

    goto/16 :goto_4

    .line 1628
    :cond_10
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x5

    aput v28, v26, v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    goto :goto_d

    .line 1635
    :pswitch_1
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    goto/16 :goto_4

    .line 1639
    :pswitch_2
    const/4 v8, 0x0

    .line 1640
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mHardKeyboardHidden:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    .line 1641
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x7

    aput v28, v26, v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    goto/16 :goto_4

    .line 1642
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    .line 1643
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x5

    aput v28, v26, v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    goto/16 :goto_4

    .line 1645
    :cond_12
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x4

    aput v28, v26, v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    goto/16 :goto_4

    .line 1650
    :pswitch_3
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff0

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 1680
    :goto_e
    const/16 v4, 0x7000

    .line 1683
    .local v4, capsFlag:I
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7000

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1684
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 1655
    .end local v4           #capsFlag:I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->isEnableOtherInputMethod()Z

    move-result v26

    if-nez v26, :cond_13

    .line 1656
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setEnableHalfAlphabet(Z)V

    .line 1659
    :cond_13
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_2

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    .line 1660
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->disableVoiceInput()V

    goto :goto_e

    .line 1666
    :sswitch_1
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setEnableHalfAlphabet(Z)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    check-cast v26, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getSlideCycleCount()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setModeCycleCount(I)V

    .line 1669
    const/16 v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    goto :goto_e

    .line 1673
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->disableVoiceInput()V

    goto :goto_e

    .line 1713
    :cond_14
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v7, v0, :cond_15

    .line 1714
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 1715
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    goto/16 :goto_5

    .line 1716
    :cond_15
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ne v7, v0, :cond_16

    .line 1717
    const/4 v5, 0x1

    .line 1718
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    goto/16 :goto_5

    .line 1719
    :cond_16
    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v7, v0, :cond_17

    .line 1720
    const/4 v5, 0x2

    .line 1721
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    goto/16 :goto_5

    .line 1722
    :cond_17
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v7, v0, :cond_18

    .line 1723
    const/4 v5, 0x3

    .line 1724
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    goto/16 :goto_5

    .line 1725
    :cond_18
    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v7, v0, :cond_19

    .line 1726
    const/16 v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 1727
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    .line 1728
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setEnableHalfAlphabet(Z)V

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    move-object/from16 v26, v0

    check-cast v26, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getSlideCycleCount()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setModeCycleCount(I)V

    goto/16 :goto_5

    .line 1731
    :cond_19
    const/16 v26, 0x8

    move/from16 v0, v26

    if-ne v7, v0, :cond_1a

    .line 1732
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 1733
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    goto/16 :goto_5

    .line 1734
    :cond_1a
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v7, v0, :cond_1b

    .line 1735
    const/4 v5, 0x6

    .line 1736
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    goto/16 :goto_5

    .line 1737
    :cond_1b
    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_7

    .line 1738
    const/16 v26, 0x7

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mPreferenceKeyMode:I

    .line 1739
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLastInputType:I

    goto/16 :goto_5

    .line 1756
    :cond_1c
    sget-object v26, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->LIMITED_KEYMODE_DISABLE_HALF_ALPHABET:[I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mLimitedKeyMode:[I

    goto/16 :goto_6

    .line 1765
    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 1767
    :cond_1e
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 1768
    .restart local v16       #hasInputTypeChanged:Z
    :cond_1f
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 1769
    .restart local v6       #contradictionSettings:Z
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 1774
    .restart local v15       #hasImeOptionsChanged:Z
    :cond_21
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setDefaultKeyboard()V

    goto/16 :goto_b

    .line 1788
    .restart local v25       #type:I
    :cond_22
    if-nez v24, :cond_d

    if-nez v20, :cond_d

    .line 1789
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getKeyboardInputted(Z)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v21

    .line 1790
    .local v21, newKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    goto/16 :goto_c

    .line 1620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1697
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 1626
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 1650
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_1
        0x80 -> :sswitch_0
        0x90 -> :sswitch_0
        0xc0 -> :sswitch_2
        0xd0 -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch

    .line 1659
    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected setShiftByEditorInfo(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/4 v0, 0x1

    .line 2720
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    if-eqz v2, :cond_0

    .line 2721
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2745
    :cond_0
    :goto_0
    return-void

    .line 2726
    :cond_1
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableAutoCaps:Z

    if-eqz v2, :cond_3

    sget v2, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 2727
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getShiftKeyState(Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    .line 2732
    .local v1, shift:I
    :goto_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2733
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v2, :cond_0

    .line 2734
    if-ne v1, v0, :cond_4

    .line 2735
    .local v0, isShift:Z
    :goto_2
    if-nez p1, :cond_2

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->isShifted()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2736
    :cond_2
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v2, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setShifted(Z)Z

    goto :goto_0

    .line 2729
    .end local v0           #isShift:Z
    .end local v1           #shift:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #shift:I
    goto :goto_1

    .line 2734
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 2740
    :cond_5
    if-nez p1, :cond_6

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mShiftOn:I

    if-eq v1, v2, :cond_0

    .line 2741
    :cond_6
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->setShifted(I)V

    goto :goto_0
.end method

.method public setUndoKey(Z)V
    .locals 0
    .parameter "undo"

    .prologue
    .line 2857
    return-void
.end method

.method public showInputModeSwitchDialog()Z
    .locals 15

    .prologue
    .line 3277
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

    .line 3278
    .local v0, baseInputView:Ljp/co/omronsoft/iwnnime/ml/BaseInputView;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3279
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3280
    const v13, 0x7f06009b

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3283
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 3284
    .local v12, r:Landroid/content/res/Resources;
    const v13, 0x7f0600a1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3285
    .local v3, itemFullHirakana:Ljava/lang/CharSequence;
    const v13, 0x7f0600a2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3286
    .local v4, itemFullKatakana:Ljava/lang/CharSequence;
    const v13, 0x7f0600a3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3287
    .local v7, itemHalfKatakana:Ljava/lang/CharSequence;
    const v13, 0x7f0600a4

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3288
    .local v2, itemFullAlphabet:Ljava/lang/CharSequence;
    const v13, 0x7f0600a5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3289
    .local v6, itemHalfAlphabet:Ljava/lang/CharSequence;
    const v13, 0x7f0600a6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3290
    .local v5, itemFullNumber:Ljava/lang/CharSequence;
    const v13, 0x7f0600a7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3293
    .local v8, itemHalfNumber:Ljava/lang/CharSequence;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3294
    const/4 v13, 0x4

    new-array v9, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aput-object v3, v9, v13

    const/4 v13, 0x1

    aput-object v6, v9, v13

    const/4 v13, 0x2

    aput-object v5, v9, v13

    const/4 v13, 0x3

    aput-object v8, v9, v13

    .line 3296
    .local v9, itemTitles:[Ljava/lang/CharSequence;
    const/4 v13, 0x4

    new-array v10, v13, [I

    fill-array-data v10, :array_0

    .line 3327
    .local v10, itemValues:[I
    :goto_0
    sget v13, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    invoke-direct {p0, v10, v13}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->findIndexOfValue([II)I

    move-result v13

    new-instance v14, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;

    invoke-direct {v14, p0, v10}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;[I)V

    invoke-virtual {v1, v9, v13, v14}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3370
    const v13, 0x7f06009f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3371
    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->showDialog(Landroid/app/AlertDialog$Builder;)V

    .line 3372
    const/4 v13, 0x1

    return v13

    .line 3299
    .end local v9           #itemTitles:[Ljava/lang/CharSequence;
    .end local v10           #itemValues:[I
    :cond_0
    const v13, 0x7f0600a8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3300
    .local v11, itemVoice:Ljava/lang/CharSequence;
    iget-boolean v13, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHalfAlphabet:Z

    if-eqz v13, :cond_2

    .line 3301
    sget-boolean v13, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableVoiceInput:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    if-nez v13, :cond_1

    .line 3302
    const/16 v13, 0x8

    new-array v9, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aput-object v3, v9, v13

    const/4 v13, 0x1

    aput-object v4, v9, v13

    const/4 v13, 0x2

    aput-object v7, v9, v13

    const/4 v13, 0x3

    aput-object v2, v9, v13

    const/4 v13, 0x4

    aput-object v6, v9, v13

    const/4 v13, 0x5

    aput-object v5, v9, v13

    const/4 v13, 0x6

    aput-object v8, v9, v13

    const/4 v13, 0x7

    aput-object v11, v9, v13

    .line 3310
    .restart local v9       #itemTitles:[Ljava/lang/CharSequence;
    :goto_1
    const/16 v13, 0x8

    new-array v10, v13, [I

    fill-array-data v10, :array_1

    .restart local v10       #itemValues:[I
    goto :goto_0

    .line 3306
    .end local v9           #itemTitles:[Ljava/lang/CharSequence;
    .end local v10           #itemValues:[I
    :cond_1
    const/4 v13, 0x7

    new-array v9, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aput-object v3, v9, v13

    const/4 v13, 0x1

    aput-object v4, v9, v13

    const/4 v13, 0x2

    aput-object v7, v9, v13

    const/4 v13, 0x3

    aput-object v2, v9, v13

    const/4 v13, 0x4

    aput-object v6, v9, v13

    const/4 v13, 0x5

    aput-object v5, v9, v13

    const/4 v13, 0x6

    aput-object v8, v9, v13

    .restart local v9       #itemTitles:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 3314
    .end local v9           #itemTitles:[Ljava/lang/CharSequence;
    :cond_2
    sget-boolean v13, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableVoiceInput:Z

    if-eqz v13, :cond_3

    iget-boolean v13, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableHardware12Keyboard:Z

    if-nez v13, :cond_3

    .line 3315
    const/4 v13, 0x7

    new-array v9, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aput-object v3, v9, v13

    const/4 v13, 0x1

    aput-object v4, v9, v13

    const/4 v13, 0x2

    aput-object v7, v9, v13

    const/4 v13, 0x3

    aput-object v2, v9, v13

    const/4 v13, 0x4

    aput-object v5, v9, v13

    const/4 v13, 0x5

    aput-object v8, v9, v13

    const/4 v13, 0x6

    aput-object v11, v9, v13

    .line 3321
    .restart local v9       #itemTitles:[Ljava/lang/CharSequence;
    :goto_2
    const/4 v13, 0x7

    new-array v10, v13, [I

    fill-array-data v10, :array_2

    .restart local v10       #itemValues:[I
    goto/16 :goto_0

    .line 3318
    .end local v9           #itemTitles:[Ljava/lang/CharSequence;
    .end local v10           #itemValues:[I
    :cond_3
    const/4 v13, 0x6

    new-array v9, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aput-object v3, v9, v13

    const/4 v13, 0x1

    aput-object v4, v9, v13

    const/4 v13, 0x2

    aput-object v7, v9, v13

    const/4 v13, 0x3

    aput-object v2, v9, v13

    const/4 v13, 0x4

    aput-object v5, v9, v13

    const/4 v13, 0x5

    aput-object v8, v9, v13

    .restart local v9       #itemTitles:[Ljava/lang/CharSequence;
    goto :goto_2

    .line 3296
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 3310
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 3321
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public showLongPressMenu()V
    .locals 11

    .prologue
    .line 3633
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

    .line 3634
    .local v0, baseInputView:Ljp/co/omronsoft/iwnnime/ml/BaseInputView;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3635
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3636
    const v9, 0x7f06009b

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3639
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 3640
    .local v8, r:Landroid/content/res/Resources;
    const v9, 0x7f06009c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3641
    .local v7, itemSettingMenu:Ljava/lang/CharSequence;
    const v9, 0x7f06009d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3642
    .local v3, itemInputMethod:Ljava/lang/CharSequence;
    const v9, 0x7f0600b0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3643
    .local v6, itemMushroom:Ljava/lang/CharSequence;
    const v9, 0x7f06009e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3644
    .local v5, itemKeyboardType:Ljava/lang/CharSequence;
    const v9, 0x7f06009f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3647
    .local v4, itemInputMode:Ljava/lang/CharSequence;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3648
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->isEditing()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3649
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableMushroom:Z

    if-eqz v9, :cond_0

    .line 3650
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    iput-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mMenuItem:[I

    .line 3651
    const/4 v9, 0x3

    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v4, v2, v9

    const/4 v9, 0x1

    aput-object v6, v2, v9

    const/4 v9, 0x2

    aput-object v3, v2, v9

    .line 3682
    .local v2, dialogItem:[Ljava/lang/CharSequence;
    :goto_0
    new-instance v9, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;

    invoke-direct {v9, p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;)V

    invoke-virtual {v1, v2, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3730
    const v9, 0x7f0600a0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3732
    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->showDialog(Landroid/app/AlertDialog$Builder;)V

    .line 3734
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->initializeFlick()V

    .line 3735
    return-void

    .line 3653
    .end local v2           #dialogItem:[Ljava/lang/CharSequence;
    :cond_0
    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    iput-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mMenuItem:[I

    .line 3654
    const/4 v9, 0x2

    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v4, v2, v9

    const/4 v9, 0x1

    aput-object v3, v2, v9

    .restart local v2       #dialogItem:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 3656
    .end local v2           #dialogItem:[Ljava/lang/CharSequence;
    :cond_1
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableMushroom:Z

    if-eqz v9, :cond_2

    .line 3657
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_2

    iput-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mMenuItem:[I

    .line 3658
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v7, v2, v9

    const/4 v9, 0x1

    aput-object v4, v2, v9

    const/4 v9, 0x2

    aput-object v6, v2, v9

    const/4 v9, 0x3

    aput-object v3, v2, v9

    .restart local v2       #dialogItem:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 3660
    .end local v2           #dialogItem:[Ljava/lang/CharSequence;
    :cond_2
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    iput-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mMenuItem:[I

    .line 3661
    const/4 v9, 0x3

    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v7, v2, v9

    const/4 v9, 0x1

    aput-object v4, v2, v9

    const/4 v9, 0x2

    aput-object v3, v2, v9

    .restart local v2       #dialogItem:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 3664
    .end local v2           #dialogItem:[Ljava/lang/CharSequence;
    :cond_3
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->isEditing()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3665
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableMushroom:Z

    if-eqz v9, :cond_4

    .line 3666
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_4

    iput-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mMenuItem:[I

    .line 3667
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v5, v2, v9

    const/4 v9, 0x1

    aput-object v4, v2, v9

    const/4 v9, 0x2

    aput-object v6, v2, v9

    const/4 v9, 0x3

    aput-object v3, v2, v9

    .restart local v2       #dialogItem:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 3669
    .end local v2           #dialogItem:[Ljava/lang/CharSequence;
    :cond_4
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_5

    iput-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mMenuItem:[I

    .line 3670
    const/4 v9, 0x3

    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v5, v2, v9

    const/4 v9, 0x1

    aput-object v4, v2, v9

    const/4 v9, 0x2

    aput-object v3, v2, v9

    .restart local v2       #dialogItem:[Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 3672
    .end local v2           #dialogItem:[Ljava/lang/CharSequence;
    :cond_5
    iget-boolean v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mEnableMushroom:Z

    if-eqz v9, :cond_6

    .line 3673
    const/4 v9, 0x5

    new-array v9, v9, [I

    fill-array-data v9, :array_6

    iput-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mMenuItem:[I

    .line 3674
    const/4 v9, 0x5

    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v7, v2, v9

    const/4 v9, 0x1

    aput-object v5, v2, v9

    const/4 v9, 0x2

    aput-object v4, v2, v9

    const/4 v9, 0x3

    aput-object v6, v2, v9

    const/4 v9, 0x4

    aput-object v3, v2, v9

    .restart local v2       #dialogItem:[Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 3676
    .end local v2           #dialogItem:[Ljava/lang/CharSequence;
    :cond_6
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_7

    iput-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mMenuItem:[I

    .line 3677
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v7, v2, v9

    const/4 v9, 0x1

    aput-object v5, v2, v9

    const/4 v9, 0x2

    aput-object v4, v2, v9

    const/4 v9, 0x3

    aput-object v3, v2, v9

    .restart local v2       #dialogItem:[Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 3650
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 3653
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 3657
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 3660
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 3666
    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 3669
    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 3673
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 3676
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public undoKeyMode()V
    .locals 2

    .prologue
    .line 2863
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mUndoKeyMode:I

    sget v1, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyMode:I

    if-eq v0, v1, :cond_0

    .line 2864
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mUndoKeyMode:I

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    .line 2866
    :cond_0
    return-void
.end method
