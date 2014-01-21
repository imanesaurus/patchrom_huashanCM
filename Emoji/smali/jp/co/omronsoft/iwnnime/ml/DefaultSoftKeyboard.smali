.class public Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;
.super Ljava/lang/Object;
.source "DefaultSoftKeyboard.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/InputViewManager;
.implements Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;
.implements Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final CATEGORYKEY_INDEX:I = 0x2

.field public static final CATEGORYKEY_INDEX_EMOJISUBTYPE:I = 0x3

.field public static CONDITION_CURSOR_OFF:I = 0x0

.field public static CONDITION_CURSOR_ON:I = 0x0

.field public static CONDITION_MODE:I = 0x0

.field public static CONDITION_MODE_FULL_ALPHA:I = 0x0

.field public static CONDITION_MODE_FULL_KATAKANA:I = 0x0

.field public static CONDITION_MODE_FULL_NUM:I = 0x0

.field public static CONDITION_MODE_HALF_ALPHA:I = 0x0

.field public static CONDITION_MODE_HALF_KATAKANA:I = 0x0

.field public static CONDITION_MODE_HALF_NUM:I = 0x0

.field public static CONDITION_MODE_HIRAGANA:I = 0x0

.field public static CONDITION_SWITCH_IME_OFF:I = 0x0

.field public static CONDITION_SWITCH_IME_ON:I = 0x0

.field public static CONDITION_VOICE_OFF:I = 0x0

.field public static CONDITION_VOICE_ON:I = 0x0

.field public static final DISPLAY_SCALE_HDPI:F = 1.5f

.field public static final DISPLAY_SCALE_LDPI:F = 0.75f

.field public static final DISPLAY_SCALE_MDPI:F = 1.0f

.field public static final DISPLAY_SCALE_XHDPI:F = 2.0f

.field public static final FLICK_NOT_PRESS:I = -0x1869f

.field public static final HARD_KEYMODE_SHIFT_LOCK_ALT_LOCK:I = 0x8

.field public static final HARD_KEYMODE_SHIFT_LOCK_ALT_OFF:I = 0x6

.field public static final HARD_KEYMODE_SHIFT_LOCK_ALT_ON:I = 0x7

.field public static final HARD_KEYMODE_SHIFT_OFF_ALT_LOCK:I = 0x9

.field public static final HARD_KEYMODE_SHIFT_OFF_ALT_OFF:I = 0x2

.field public static final HARD_KEYMODE_SHIFT_OFF_ALT_ON:I = 0x4

.field public static final HARD_KEYMODE_SHIFT_ON_ALT_LOCK:I = 0xa

.field public static final HARD_KEYMODE_SHIFT_ON_ALT_OFF:I = 0x3

.field public static final HARD_KEYMODE_SHIFT_ON_ALT_ON:I = 0x5

.field protected static final IME_OPTIONS_INIT:I = -0x1

.field public static final KEYBOARD_12KEY:I = 0x1

.field public static final KEYBOARD_LAST_USED:I = 0x2

.field public static final KEYBOARD_QWERTY:I = 0x0

.field public static final KEYBOARD_SHIFT_OFF:I = 0x0

.field public static final KEYBOARD_SHIFT_ON:I = 0x1

.field public static final KEYBOARD_SWITCH_IME_OFF:I = 0x0

.field public static final KEYBOARD_SWITCH_IME_ON:I = 0x1

.field public static final KEYBOARD_VOICE_OFF:I = 0x0

.field public static final KEYBOARD_VOICE_ON:I = 0x1

.field public static final KEYCODE_4KEY_CLEAR:I = -0xea

.field public static final KEYCODE_4KEY_DOWN:I = -0xe9

.field public static final KEYCODE_4KEY_MODE:I = -0xe7

.field public static final KEYCODE_4KEY_UP:I = -0xe8

.field public static final KEYCODE_CHANGE_LANG:I = -0x1f4

.field public static final KEYCODE_JP12_0:I = -0xd2

.field public static final KEYCODE_JP12_1:I = -0xc9

.field public static final KEYCODE_JP12_2:I = -0xca

.field public static final KEYCODE_JP12_3:I = -0xcb

.field public static final KEYCODE_JP12_4:I = -0xcc

.field public static final KEYCODE_JP12_5:I = -0xcd

.field public static final KEYCODE_JP12_6:I = -0xce

.field public static final KEYCODE_JP12_7:I = -0xcf

.field public static final KEYCODE_JP12_8:I = -0xd0

.field public static final KEYCODE_JP12_9:I = -0xd1

.field public static final KEYCODE_JP12_ASTER:I = -0xd5

.field public static final KEYCODE_JP12_BACKSPACE:I = -0xd6

.field public static final KEYCODE_JP12_CLOSE:I = -0xdc

.field public static final KEYCODE_JP12_DOWN:I = -0xec

.field public static final KEYCODE_JP12_EMOJI:I = -0xde

.field public static final KEYCODE_JP12_ENTER:I = -0xd8

.field public static final KEYCODE_JP12_HAN_ALPHA:I = -0xe5

.field public static final KEYCODE_JP12_HAN_KATA:I = -0xe3

.field public static final KEYCODE_JP12_HAN_NUM:I = -0xe4

.field public static final KEYCODE_JP12_KBD:I = -0xdd

.field public static final KEYCODE_JP12_LEFT:I = -0xda

.field public static final KEYCODE_JP12_REVERSE:I = -0xdb

.field public static final KEYCODE_JP12_RIGHT:I = -0xd9

.field public static final KEYCODE_JP12_SHARP:I = -0xd3

.field public static final KEYCODE_JP12_SPACE:I = -0xd7

.field public static final KEYCODE_JP12_TOGGLE_MODE:I = -0xe6

.field public static final KEYCODE_JP12_UP:I = -0xeb

.field public static final KEYCODE_JP12_ZEN_ALPHA:I = -0xe1

.field public static final KEYCODE_JP12_ZEN_HIRA:I = -0xdf

.field public static final KEYCODE_JP12_ZEN_KATA:I = -0xe2

.field public static final KEYCODE_JP12_ZEN_NUM:I = -0xe0

.field public static final KEYCODE_LANGUAGE_SWITCH:I = -0x19c

.field public static final KEYCODE_MENU:I = -0x79

.field public static final KEYCODE_QWERTY_ALT:I = -0x67

.field public static final KEYCODE_QWERTY_BACKSPACE:I = -0x64

.field public static final KEYCODE_QWERTY_CLOSE:I = -0x69

.field public static final KEYCODE_QWERTY_EMOJI:I = -0x6a

.field public static final KEYCODE_QWERTY_ENTER:I = -0x65

.field public static final KEYCODE_QWERTY_HAN_ALPHA:I = -0x71

.field public static final KEYCODE_QWERTY_HAN_CYRILLIC:I = -0x77

.field public static final KEYCODE_QWERTY_HAN_KATA:I = -0x6f

.field public static final KEYCODE_QWERTY_HAN_NUM:I = -0x70

.field public static final KEYCODE_QWERTY_KBD:I = -0x68

.field public static final KEYCODE_QWERTY_PINYIN:I = -0x73

.field public static final KEYCODE_QWERTY_SHIFT:I = -0x1

.field public static final KEYCODE_QWERTY_TOGGLE_MODE:I = -0x72

.field public static final KEYCODE_QWERTY_ZEN_ALPHA:I = -0x6d

.field public static final KEYCODE_QWERTY_ZEN_HIRA:I = -0x6b

.field public static final KEYCODE_QWERTY_ZEN_KATA:I = -0x6e

.field public static final KEYCODE_QWERTY_ZEN_NUM:I = -0x6c

.field public static final KEYCODE_START_VOICE_INPUT:I = -0x138

.field public static final KEYCODE_SYMBOL_CATEGORY_CHANGE:I = -0x258

.field public static final KEYCODE_SYMBOL_CATEGORY_CHANGE_NEXT:I = -0x25a

.field public static final KEYCODE_SYMBOL_CATEGORY_CHANGE_PREV:I = -0x259

.field public static final KEYCODE_TOGGLE_COMMA:I = -0x74

.field public static final KEYCODE_TOGGLE_EXCLAMATION:I = -0x75

.field public static final KEYCODE_TOGGLE_GREEK_EXCLAMATION:I = -0x78

.field public static final KEYCODE_TOGGLE_INVERTED_EXCLAMATION:I = -0x76

.field public static final KEYCODE_TOGGLE_RU_ALPHABET:I = -0x140

.field public static final KEYCODE_TOGGLE_RU_CYRILLIC:I = -0x13f

.field public static final KEYCODE_TOGGLE_TW_ALPHABET:I = -0x13e

.field public static final KEYCODE_TOGGLE_TW_PINYIN:I = -0x13d

.field public static final KEYMODE_CN_ALPHABET:I = 0x2

.field public static final KEYMODE_CN_BOPOMOFO:I = 0x6

.field public static final KEYMODE_CN_FULL_NUMBER:I = 0x1

.field public static final KEYMODE_CN_HALF_NUMBER:I = 0x4

.field public static final KEYMODE_CN_PHONE:I = 0x3

.field public static final KEYMODE_CN_PINYIN:I = 0x0

.field public static final KEYMODE_CN_VOICE:I = 0x5

.field public static final KEYMODE_EN_ALPHABET:I = 0x0

.field public static final KEYMODE_EN_NUMBER:I = 0x1

.field public static final KEYMODE_EN_PHONE:I = 0x2

.field public static final KEYMODE_EN_VOICE:I = 0x3

.field public static final KEYMODE_JA_FULL_ALPHABET:I = 0x1

.field public static final KEYMODE_JA_FULL_HIRAGANA:I = 0x0

.field public static final KEYMODE_JA_FULL_KATAKANA:I = 0x3

.field public static final KEYMODE_JA_FULL_NUMBER:I = 0x2

.field public static final KEYMODE_JA_HALF_ALPHABET:I = 0x4

.field public static final KEYMODE_JA_HALF_KATAKANA:I = 0x6

.field public static final KEYMODE_JA_HALF_NUMBER:I = 0x5

.field public static final KEYMODE_JA_HALF_PHONE:I = 0x7

.field public static final KEYMODE_JA_VOICE:I = 0x8

.field public static final KEYMODE_RU_ALPHABET:I = 0x1

.field public static final KEYMODE_RU_CYRILLIC:I = 0x0

.field public static final KEYMODE_RU_NUMBER:I = 0x2

.field public static final KEYMODE_RU_PHONE:I = 0x3

.field public static final KEYMODE_RU_VOICE:I = 0x4

.field public static final LABEL_WIDTH_SIZE:I = 0x28

.field public static final LANDSCAPE:I = 0x1

.field public static final LANG_CN:I = 0x2

.field public static final LANG_EN:I = 0x0

.field public static final LANG_JA:I = 0x1

.field public static final PACKAGE_NAME_GOOGLE_VOICE_INPUT:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final PORTRAIT:I = 0x0

.field public static final QWERTY_KEYBOARD_LEFT_RIGHT_KEY_OFF:I = 0x0

.field public static final QWERTY_KEYBOARD_LEFT_RIGHT_KEY_ON:I = 0x1

.field protected static mCurrentKeyMode:I

.field protected static mEnableLeftRightKey:Z

.field protected static mEnableSwitchIme:Z

.field protected static mEnableVoiceInput:Z


# instance fields
.field protected mCapsLock:Z

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

.field private mCategorySelected:I

.field protected mCurrentCycleTable:[Ljava/lang/String;

.field protected mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field protected mCurrentKeyboardType:I

.field protected mCurrentLanguage:I

.field protected mDisableKeyInput:Z

.field protected mDisplayMode:I

.field protected mEnableHalfAlphabet:Z

.field protected mEnableHardware12Keyboard:Z

.field protected mEnableMushroom:Z

.field private mEnterKeyIcon:Landroid/graphics/drawable/Drawable;

.field private mEnterKeyIconPreview:Landroid/graphics/drawable/Drawable;

.field private mEnterKeyLabel:Ljava/lang/CharSequence;

.field protected mFlickDirection:I

.field protected mFlickPressKey:I

.field protected mHardKeyboardHidden:Z

.field protected mHasFlickStarted:Z

.field protected mIsKeyProcessFinish:Z

.field protected mIsSymbolKeyboard:Z

.field protected mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

.field protected mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

.field protected mLastImeOptions:I

.field protected mLastInputType:I

.field protected mMainView:Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

.field protected mNoInput:Z

.field protected mPrevInputKeyCode:I

.field private mPrevLabelResIdEnterKey:I

.field private mPrevResIdEnterKey:I

.field protected mShiftOn:I

.field protected mSound:Landroid/media/AudioManager;

.field protected mSubView:Landroid/view/ViewGroup;

.field protected mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field private mSymbolMode:I

.field private mSymbolOnKeyboardAction:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

.field protected mTextView:Landroid/widget/TextView;

.field protected mVibrator:Landroid/os/Vibrator;

.field protected mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

.field protected mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 381
    sput v1, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_HIRAGANA:I

    .line 383
    const/4 v0, 0x2

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_FULL_ALPHA:I

    .line 385
    const/4 v0, 0x3

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_FULL_NUM:I

    .line 387
    const/4 v0, 0x4

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_FULL_KATAKANA:I

    .line 389
    const/4 v0, 0x5

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_HALF_ALPHA:I

    .line 391
    const/4 v0, 0x6

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_HALF_NUM:I

    .line 393
    const/4 v0, 0x7

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_HALF_KATAKANA:I

    .line 395
    const/16 v0, 0xf

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE:I

    .line 397
    const/16 v0, 0x10

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_VOICE_OFF:I

    .line 399
    const/16 v0, 0x20

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_VOICE_ON:I

    .line 401
    const/16 v0, 0x40

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_SWITCH_IME_OFF:I

    .line 403
    const/16 v0, 0x80

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_SWITCH_IME_ON:I

    .line 405
    const/16 v0, 0x100

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_CURSOR_OFF:I

    .line 407
    const/16 v0, 0x200

    sput v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_CURSOR_ON:I

    .line 447
    const/4 v0, 0x0

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableVoiceInput:Z

    .line 450
    sput-boolean v1, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableSwitchIme:Z

    .line 453
    sput-boolean v1, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableLeftRightKey:Z

    return-void
.end method

.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V
    .locals 5
    .parameter "wnn"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisableKeyInput:Z

    .line 250
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisplayMode:I

    .line 268
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    .line 416
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mHardKeyboardHidden:Z

    .line 419
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableHardware12Keyboard:Z

    .line 425
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mIsSymbolKeyboard:Z

    .line 432
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mNoInput:Z

    .line 435
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mVibrator:Landroid/os/Vibrator;

    .line 438
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSound:Landroid/media/AudioManager;

    .line 444
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableMushroom:Z

    .line 456
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableHalfAlphabet:Z

    .line 459
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 462
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyIconPreview:Landroid/graphics/drawable/Drawable;

    .line 465
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyLabel:Ljava/lang/CharSequence;

    .line 471
    const v0, -0x1869f

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickPressKey:I

    .line 483
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevInputKeyCode:I

    .line 486
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevResIdEnterKey:I

    .line 489
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevLabelResIdEnterKey:I

    .line 492
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mLastInputType:I

    .line 501
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    .line 513
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    .line 519
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mLastImeOptions:I

    .line 522
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolOnKeyboardAction:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    .line 643
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    .line 644
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->playSoundAndVibration(I)V

    return-void
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategorySelected:I

    return v0
.end method

.method static synthetic access$102(Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategorySelected:I

    return p1
.end method

.method public static checkKeyboardCondition(III)Z
    .locals 3
    .parameter "target"
    .parameter "on"
    .parameter "off"

    .prologue
    .line 2029
    const/4 v0, 0x0

    .line 2030
    .local v0, check:I
    const/4 v1, 0x0

    .line 2032
    .local v1, result:Z
    and-int v2, p1, p0

    or-int/2addr v0, v2

    .line 2033
    and-int v2, p2, p0

    or-int/2addr v0, v2

    .line 2034
    if-eqz v0, :cond_0

    .line 2035
    const/4 v1, 0x1

    .line 2038
    :cond_0
    return v1
.end method

.method public static checkModeCondition(I)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 2045
    const/4 v0, 0x0

    .line 2046
    .local v0, check:I
    const/4 v1, 0x0

    .line 2048
    .local v1, result:Z
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE:I

    and-int/2addr v2, p0

    or-int/2addr v0, v2

    .line 2049
    if-eqz v0, :cond_0

    .line 2050
    const/4 v1, 0x1

    .line 2053
    :cond_0
    return v1
.end method

.method public static getKeyboardCondition(I)Z
    .locals 4
    .parameter "target"

    .prologue
    .line 1987
    const/4 v0, 0x0

    .line 1988
    .local v0, check:I
    const/4 v1, 0x0

    .line 1990
    .local v1, result:Z
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_VOICE_ON:I

    sget v3, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_VOICE_OFF:I

    invoke-static {p0, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->checkKeyboardCondition(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1991
    sget-boolean v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableVoiceInput:Z

    if-eqz v2, :cond_5

    .line 1992
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_VOICE_ON:I

    or-int/2addr v0, v2

    .line 1998
    :cond_0
    :goto_0
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_SWITCH_IME_ON:I

    sget v3, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_SWITCH_IME_OFF:I

    invoke-static {p0, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->checkKeyboardCondition(III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1999
    sget-boolean v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableSwitchIme:Z

    if-eqz v2, :cond_6

    .line 2000
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_SWITCH_IME_ON:I

    or-int/2addr v0, v2

    .line 2006
    :cond_1
    :goto_1
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_CURSOR_ON:I

    sget v3, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_CURSOR_OFF:I

    invoke-static {p0, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->checkKeyboardCondition(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2007
    sget-boolean v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableLeftRightKey:Z

    if-eqz v2, :cond_7

    .line 2008
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_CURSOR_ON:I

    or-int/2addr v0, v2

    .line 2014
    :cond_2
    :goto_2
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->checkModeCondition(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2015
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getModeCondition()I

    move-result v2

    or-int/2addr v0, v2

    .line 2018
    :cond_3
    if-ne p0, v0, :cond_4

    .line 2019
    const/4 v1, 0x1

    .line 2022
    :cond_4
    return v1

    .line 1994
    :cond_5
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_VOICE_OFF:I

    or-int/2addr v0, v2

    goto :goto_0

    .line 2002
    :cond_6
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_SWITCH_IME_OFF:I

    or-int/2addr v0, v2

    goto :goto_1

    .line 2010
    :cond_7
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_CURSOR_OFF:I

    or-int/2addr v0, v2

    goto :goto_2
.end method

.method public static getModeCondition()I
    .locals 2

    .prologue
    .line 2060
    const/4 v0, 0x0

    .line 2062
    .local v0, result:I
    sget v1, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    packed-switch v1, :pswitch_data_0

    .line 2089
    :goto_0
    return v0

    .line 2064
    :pswitch_0
    sget v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_HIRAGANA:I

    .line 2065
    goto :goto_0

    .line 2067
    :pswitch_1
    sget v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_FULL_ALPHA:I

    .line 2068
    goto :goto_0

    .line 2070
    :pswitch_2
    sget v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_FULL_NUM:I

    .line 2071
    goto :goto_0

    .line 2073
    :pswitch_3
    sget v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_FULL_KATAKANA:I

    .line 2074
    goto :goto_0

    .line 2076
    :pswitch_4
    sget v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_HALF_ALPHA:I

    .line 2077
    goto :goto_0

    .line 2079
    :pswitch_5
    sget v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_HALF_NUM:I

    .line 2080
    goto :goto_0

    .line 2082
    :pswitch_6
    sget v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->CONDITION_MODE_HALF_KATAKANA:I

    .line 2083
    goto :goto_0

    .line 2062
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private playKeyClick(I)V
    .locals 3
    .parameter "primaryCode"

    .prologue
    .line 1340
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSound:Landroid/media/AudioManager;

    .line 1341
    .local v0, audio:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 1365
    :goto_0
    return-void

    .line 1346
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1361
    const/4 v1, 0x5

    .line 1364
    .local v1, sound:I
    :goto_1
    const/high16 v2, -0x4080

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    goto :goto_0

    .line 1349
    .end local v1           #sound:I
    :sswitch_0
    const/4 v1, 0x7

    .line 1350
    .restart local v1       #sound:I
    goto :goto_1

    .line 1353
    .end local v1           #sound:I
    :sswitch_1
    const/16 v1, 0x8

    .line 1354
    .restart local v1       #sound:I
    goto :goto_1

    .line 1358
    .end local v1           #sound:I
    :sswitch_2
    const/4 v1, 0x6

    .line 1359
    .restart local v1       #sound:I
    goto :goto_1

    .line 1346
    :sswitch_data_0
    .sparse-switch
        -0xd8 -> :sswitch_1
        -0xd7 -> :sswitch_2
        -0xd6 -> :sswitch_0
        -0x65 -> :sswitch_1
        -0x64 -> :sswitch_0
        0x20 -> :sswitch_2
        0x3000 -> :sswitch_2
    .end sparse-switch
.end method

.method private playSoundAndVibration(I)V
    .locals 8
    .parameter "x"

    .prologue
    const/4 v7, 0x1

    const v6, -0x1869f

    const/4 v5, 0x0

    .line 1303
    if-eqz p1, :cond_1

    .line 1304
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    .line 1306
    :try_start_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1307
    .local v1, vibrateTime:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mVibrator:Landroid/os/Vibrator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    .end local v1           #vibrateTime:I
    :cond_0
    :goto_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSound:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 1313
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->playKeyClick(I)V

    .line 1317
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1318
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->isEnableFlickMode(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1319
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickDirection:I

    .line 1320
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->isFlickKey(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1321
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickPressKey:I

    .line 1322
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v2, v7, p1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickDetectMode(ZI)V

    .line 1323
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v2, v7}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedKeyGuide(Z)V

    .line 1334
    :cond_2
    :goto_1
    return-void

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultSoftKeyboard::onPress vibration "

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

    .line 1325
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickPressKey:I

    .line 1326
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v2, v5, v5}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickDetectMode(ZI)V

    goto :goto_1

    .line 1329
    :cond_4
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickPressKey:I

    .line 1330
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickedKeyGuide(Z)V

    .line 1331
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v2, v5, v5}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickDetectMode(ZI)V

    goto :goto_1
.end method

.method private restoreEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    .locals 4
    .parameter "keyboard"

    .prologue
    const/4 v3, 0x0

    .line 1373
    if-eqz p1, :cond_1

    .line 1374
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getEnterKeyIndex(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v0

    .line 1375
    .local v0, enterIndex:I
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 1377
    .local v1, enterKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1378
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyLabel:Ljava/lang/CharSequence;

    iput-object v2, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1379
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1380
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyIconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1381
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v2, :cond_1

    .line 1382
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->copyEnterKeyState()V

    .line 1387
    .end local v0           #enterIndex:I
    .end local v1           #enterKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_1
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevResIdEnterKey:I

    .line 1388
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevLabelResIdEnterKey:I

    .line 1389
    return-void
.end method

.method private saveEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    .locals 3
    .parameter "keyboard"

    .prologue
    .line 1397
    if-eqz p1, :cond_0

    .line 1398
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getEnterKeyIndex(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v0

    .line 1399
    .local v0, enterIndex:I
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 1400
    .local v1, enterKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget-object v2, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyLabel:Ljava/lang/CharSequence;

    .line 1401
    iget-object v2, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 1402
    iget-object v2, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyIconPreview:Landroid/graphics/drawable/Drawable;

    .line 1404
    .end local v0           #enterIndex:I
    .end local v1           #enterKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_0
    return-void
.end method

.method private setCategoryKey()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x2

    const v7, 0x7f06013e

    .line 2113
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-nez v4, :cond_1

    .line 2229
    :cond_0
    :goto_0
    return-void

    .line 2116
    :cond_1
    const/4 v0, 0x2

    .line 2117
    .local v0, categoryIndex:I
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isSubtypeExtraEmojiInput()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableSwitchIme()I

    move-result v4

    if-ne v4, v10, :cond_2

    .line 2118
    const/4 v0, 0x3

    .line 2121
    :cond_2
    const-string v4, "Nyu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSymbolKeyboard = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const-string v4, "Nyu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mKeyboardView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    const-string v4, "Nyu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCategorySelected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategorySelected:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 2126
    .local v3, newKeys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 2127
    .local v2, newCategoryKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iput-object v11, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 2128
    const/4 v4, 0x0

    iput v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    .line 2130
    const v1, 0x7f060157

    .line 2132
    .local v1, labelResId:I
    const/4 v4, 0x0

    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevResIdEnterKey:I

    .line 2133
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevLabelResIdEnterKey:I

    .line 2135
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategorySelected:I

    packed-switch v4, :pswitch_data_0

    .line 2221
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 2225
    :goto_1
    iput-object v11, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 2226
    iput-object v11, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 2228
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v4, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_0

    .line 2137
    :pswitch_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060140

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 2140
    :pswitch_1
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v9, :cond_3

    .line 2141
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060141

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 2142
    :cond_3
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v8, :cond_4

    .line 2143
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060148

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 2144
    :cond_4
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v10, :cond_5

    .line 2145
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060151

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 2147
    :cond_5
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 2151
    :pswitch_2
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v9, :cond_6

    .line 2152
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060142

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 2153
    :cond_6
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v8, :cond_7

    .line 2154
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060149

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2155
    :cond_7
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v10, :cond_8

    .line 2156
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060152

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2158
    :cond_8
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2162
    :pswitch_3
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v9, :cond_9

    .line 2163
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060143

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2164
    :cond_9
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v8, :cond_a

    .line 2165
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06014a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2167
    :cond_a
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2171
    :pswitch_4
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v9, :cond_b

    .line 2172
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060144

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2173
    :cond_b
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v8, :cond_c

    .line 2174
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06014b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2176
    :cond_c
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2180
    :pswitch_5
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v9, :cond_d

    .line 2181
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060145

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2182
    :cond_d
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v8, :cond_e

    .line 2183
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06014c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2185
    :cond_e
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2189
    :pswitch_6
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v9, :cond_f

    .line 2190
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060146

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2191
    :cond_f
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v8, :cond_10

    .line 2192
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06014d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2194
    :cond_10
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2198
    :pswitch_7
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v9, :cond_11

    .line 2199
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060147

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2200
    :cond_11
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v8, :cond_12

    .line 2201
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06014e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2203
    :cond_12
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2207
    :pswitch_8
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v8, :cond_13

    .line 2208
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06014f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2210
    :cond_13
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2214
    :pswitch_9
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    if-ne v4, v8, :cond_14

    .line 2215
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060150

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2217
    :cond_14
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2135
    nop

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

.method private setEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    .locals 19
    .parameter "newKeyboard"

    .prologue
    .line 1435
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-nez v14, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    invoke-static/range {p1 .. p1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getEnterKeyIndex(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v2

    .line 1439
    .local v2, enterIndex:I
    invoke-virtual/range {p1 .. p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v12

    .line 1440
    .local v12, newKeys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 1441
    .local v11, newEnterKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    const/4 v14, 0x0

    iput-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1442
    const/4 v14, 0x0

    iput v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    .line 1443
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 1444
    .local v1, edit:Landroid/view/inputmethod/EditorInfo;
    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1445
    .local v7, inputType:I
    const/4 v6, 0x0

    .line 1446
    .local v6, iconResId:I
    const/4 v5, 0x0

    .line 1447
    .local v5, iconPreviewResId:I
    const/4 v10, 0x0

    .line 1448
    .local v10, labelResId:I
    const/4 v8, 0x1

    .line 1450
    .local v8, isActionKey:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mNoInput:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getFunfun()I

    move-result v14

    if-nez v14, :cond_5

    .line 1451
    iget v14, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v15, 0x400000ff

    and-int/2addr v14, v15

    packed-switch v14, :pswitch_data_0

    .line 1479
    const/4 v8, 0x0

    .line 1487
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevResIdEnterKey:I

    if-ne v14, v6, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevLabelResIdEnterKey:I

    if-ne v14, v10, :cond_2

    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1492
    :cond_2
    move-object/from16 v0, p0

    iput v6, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevResIdEnterKey:I

    .line 1493
    move-object/from16 v0, p0

    iput v10, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevLabelResIdEnterKey:I

    .line 1495
    if-nez v6, :cond_6

    if-nez v5, :cond_6

    if-nez v10, :cond_6

    .line 1496
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyLabel:Ljava/lang/CharSequence;

    iput-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1497
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1498
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnterKeyIconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1523
    :goto_2
    iput-boolean v8, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isActionKey:Z

    .line 1525
    iget-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_3

    .line 1526
    iget-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    iget-object v0, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1531
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 1532
    .local v13, oldKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1533
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v13

    .line 1535
    :cond_4
    move-object/from16 v0, p1

    if-ne v13, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getWidth()I

    move-result v14

    if-lez v14, :cond_0

    .line 1536
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v14, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_0

    .line 1454
    .end local v13           #oldKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    :pswitch_0
    const v10, 0x7f060155

    .line 1455
    goto :goto_1

    .line 1458
    :pswitch_1
    const v10, 0x7f060156

    .line 1459
    goto :goto_1

    .line 1462
    :pswitch_2
    const v10, 0x7f060154

    .line 1463
    goto/16 :goto_1

    .line 1466
    :pswitch_3
    const v6, 0x7f02013f

    .line 1467
    const v5, 0x7f020140

    .line 1468
    goto/16 :goto_1

    .line 1471
    :pswitch_4
    const v10, 0x7f060158

    .line 1472
    goto/16 :goto_1

    .line 1475
    :pswitch_5
    const v10, 0x7f060159

    .line 1476
    goto/16 :goto_1

    .line 1483
    :cond_5
    const v10, 0x7f060157

    .line 1484
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1499
    :cond_6
    if-nez v10, :cond_a

    .line 1500
    const/4 v14, 0x0

    iput-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1501
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v9

    .line 1502
    .local v9, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    const/4 v3, 0x0

    .line 1503
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 1504
    .local v4, iconPreview:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1505
    invoke-virtual {v9, v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1506
    invoke-virtual {v9, v5}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1508
    :cond_7
    if-eqz v3, :cond_8

    .line 1509
    iput-object v3, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1513
    :goto_3
    if-eqz v4, :cond_9

    .line 1514
    iput-object v4, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 1511
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 1516
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 1519
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #iconPreview:Landroid/graphics/drawable/Drawable;
    .end local v9           #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1520
    const/4 v14, 0x0

    iput-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1521
    const/4 v14, 0x0

    iput-object v14, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 1451
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z
    .locals 4
    .parameter "keyboard"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 849
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mIsSymbolKeyboard:Z

    if-eqz v0, :cond_1

    .line 892
    :cond_0
    :goto_0
    return v1

    .line 853
    :cond_1
    if-eqz p1, :cond_0

    .line 858
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 859
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->restoreEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 863
    :goto_1
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->saveEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 864
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 865
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eq v0, p1, :cond_8

    .line 866
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->clearKeyboardPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 867
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 868
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mIsSymbolKeyboard:Z

    if-eqz v0, :cond_4

    .line 869
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v0, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 884
    :goto_2
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 885
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OpenWnn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHIFT = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", KBD CHANGE : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v2

    .line 886
    goto :goto_0

    .line 861
    :cond_3
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->restoreEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    goto :goto_1

    .line 871
    :cond_4
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getShiftChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getShiftChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 874
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->copyEnterKeyState()V

    goto :goto_2

    .line 877
    :cond_5
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mIsSymbolKeyboard:Z

    if-eqz v0, :cond_6

    .line 878
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 882
    :goto_3
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setShifted(Z)Z

    goto :goto_2

    .line 880
    :cond_6
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    goto :goto_3

    :cond_7
    move v0, v2

    .line 882
    goto :goto_4

    .line 888
    :cond_8
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_a

    .line 889
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    if-nez v3, :cond_9

    move v2, v1

    :cond_9
    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setShifted(Z)Z

    .line 891
    :cond_a
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHIFT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", KBD NO CHANGE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->isShifted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public changeKeyboardType(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 823
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 837
    :goto_0
    return-void

    .line 828
    :cond_0
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getTypeChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v0

    .line 829
    .local v0, kbd:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    if-eqz v0, :cond_1

    .line 830
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboardType:I

    .line 831
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    .line 835
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v3, -0xffffff1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0
.end method

.method protected clearKeyboardPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    .locals 3
    .parameter "keyboard"

    .prologue
    .line 1813
    if-eqz p1, :cond_0

    .line 1814
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1815
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1816
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 1817
    .local v1, k:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    const/4 v2, 0x0

    iput-boolean v2, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->pressed:Z

    goto :goto_0

    .line 1820
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    .end local v1           #k:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_0
    return-void
.end method

.method public closePopupKeyboard()V
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->dismissPopupKeyboard()V

    .line 1208
    :cond_0
    return-void
.end method

.method public closing()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->closing()V

    .line 1172
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisableKeyInput:Z

    .line 1173
    return-void
.end method

.method protected createKeyboards(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V
    .locals 9
    .parameter "parent"

    .prologue
    const/4 v1, 0x2

    .line 656
    const/4 v0, 0x3

    const/4 v2, 0x4

    const/4 v7, 0x7

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

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    .line 657
    return-void
.end method

.method protected disableVoiceInput()V
    .locals 2

    .prologue
    .line 1865
    const/4 v0, 0x0

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableVoiceInput:Z

    .line 1866
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_0

    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1867
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getSlideCycleCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setModeCycleCount(I)V

    .line 1869
    :cond_0
    return-void
.end method

.method public dismissPopupKeyboard()V
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->closing()V

    .line 1192
    :cond_0
    return-void
.end method

.method protected forceCloseVoiceInputKeyboard()V
    .locals 1

    .prologue
    .line 1876
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableVoiceInput:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->isVoiceInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1877
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mLastInputType:I

    .line 1879
    :cond_0
    return-void
.end method

.method public getCategorySelected()I
    .locals 1

    .prologue
    .line 2106
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategorySelected:I

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mMainView:Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

    return-object v0
.end method

.method protected getEnableQwertyLeftRightKey()I
    .locals 2

    .prologue
    .line 1938
    const/4 v0, 0x0

    .line 1939
    .local v0, ret:I
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableLeftRightKey:Z

    if-eqz v1, :cond_0

    .line 1940
    const/4 v0, 0x1

    .line 1942
    :cond_0
    return v0
.end method

.method protected getEnableSwitchIme()I
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x1

    .line 1905
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1906
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v11, "opt_display_language_switch_key"

    invoke-interface {v6, v11, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1907
    .local v9, setting:Z
    if-eqz v9, :cond_0

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-ge v11, v12, :cond_2

    :cond_0
    move v7, v10

    .line 1931
    :cond_1
    :goto_0
    return v7

    .line 1911
    :cond_2
    const/4 v7, 0x1

    .line 1912
    .local v7, ret:I
    iget-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const-string v12, "input_method"

    invoke-virtual {v11, v12}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 1913
    .local v4, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 1914
    .local v3, imiList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const-string v11, "opt_change_otherime"

    invoke-interface {v6, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1915
    .local v0, enable:Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-eq v10, v13, :cond_3

    if-nez v0, :cond_1

    .line 1916
    :cond_3
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v10}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1917
    .local v5, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1918
    .local v8, selfImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1919
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1920
    move-object v8, v2

    .line 1925
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    if-nez v8, :cond_6

    .line 1926
    const/4 v7, 0x0

    goto :goto_0

    .line 1927
    :cond_6
    invoke-virtual {v4, v8, v13}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-gt v10, v13, :cond_1

    .line 1928
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected getEnableVoiceInput()I
    .locals 2

    .prologue
    .line 1894
    const/4 v0, 0x0

    .line 1895
    .local v0, ret:I
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableVoiceInput:Z

    if-eqz v1, :cond_0

    .line 1896
    const/4 v0, 0x1

    .line 1898
    :cond_0
    return v0
.end method

.method public getKeyMode()I
    .locals 1

    .prologue
    .line 1555
    sget v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    return v0
.end method

.method protected getKeyboardInputted(Z)Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .locals 5
    .parameter "inputted"

    .prologue
    .line 738
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentLanguage:I

    aget-object v3, v3, v4

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisplayMode:I

    aget-object v3, v3, v4

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboardType:I

    aget-object v3, v3, v4

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableVoiceInput()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableSwitchIme()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableQwertyLeftRightKey()I

    move-result v4

    aget-object v3, v3, v4

    sget v4, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    aget-object v2, v3, v4

    .line 741
    .local v2, kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_0

    .line 742
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 746
    .local v1, kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :goto_0
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v3

    .line 748
    .end local v1           #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    .end local v2           #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :goto_1
    return-object v3

    .line 744
    .restart local v2       #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_0
    const/4 v3, 0x0

    aget-object v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    goto :goto_0

    .line 747
    .end local v1           #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    .end local v2           #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :catch_0
    move-exception v0

    .line 748
    .local v0, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getKeyboardType()I
    .locals 1

    .prologue
    .line 1580
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboardType:I

    return v0
.end method

.method public getKeyboardView()Ljp/co/omronsoft/iwnnime/ml/KeyboardView;
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    return-object v0
.end method

.method protected getLongpressMushroomKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 1719
    const/4 v0, 0x0

    .line 1720
    .local v0, result:Z
    if-eqz p1, :cond_0

    .line 1721
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1731
    :cond_0
    :goto_0
    return v0

    .line 1724
    :sswitch_0
    const/4 v0, 0x1

    .line 1725
    goto :goto_0

    .line 1721
    :sswitch_data_0
    .sparse-switch
        -0xde -> :sswitch_0
        -0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method protected getModeChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .locals 5
    .parameter "mode"

    .prologue
    .line 691
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentLanguage:I

    aget-object v3, v3, v4

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisplayMode:I

    aget-object v3, v3, v4

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboardType:I

    aget-object v3, v3, v4

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableVoiceInput()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableSwitchIme()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableQwertyLeftRightKey()I

    move-result v4

    aget-object v3, v3, v4

    aget-object v2, v3, p1

    .line 694
    .local v2, kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mNoInput:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_0

    .line 695
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 699
    .local v1, kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :goto_0
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v3

    .line 701
    .end local v1           #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    .end local v2           #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :goto_1
    return-object v3

    .line 697
    .restart local v2       #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_0
    const/4 v3, 0x0

    aget-object v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    goto :goto_0

    .line 700
    .end local v1           #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    .end local v2           #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :catch_0
    move-exception v0

    .line 701
    .local v0, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected getModeCycleCount()I
    .locals 1

    .prologue
    .line 1740
    const/4 v0, 0x1

    return v0
.end method

.method protected getShiftChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .locals 5
    .parameter "shift"

    .prologue
    .line 667
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentLanguage:I

    aget-object v3, v3, v4

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisplayMode:I

    aget-object v3, v3, v4

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboardType:I

    aget-object v3, v3, v4

    aget-object v3, v3, p1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableVoiceInput()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableSwitchIme()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableQwertyLeftRightKey()I

    move-result v4

    aget-object v3, v3, v4

    sget v4, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    aget-object v2, v3, v4

    .line 670
    .local v2, kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mNoInput:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_0

    .line 671
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 675
    .local v1, kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :goto_0
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v3

    .line 677
    .end local v1           #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    .end local v2           #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :goto_1
    return-object v3

    .line 673
    .restart local v2       #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_0
    const/4 v3, 0x0

    aget-object v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    goto :goto_0

    .line 676
    .end local v1           #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    .end local v2           #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :catch_0
    move-exception v0

    .line 677
    .local v0, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected getSlideCycleCount()I
    .locals 1

    .prologue
    .line 1749
    const/4 v0, 0x1

    return v0
.end method

.method protected getTypeChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .locals 5
    .parameter "type"

    .prologue
    .line 715
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentLanguage:I

    aget-object v3, v3, v4

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisplayMode:I

    aget-object v3, v3, v4

    aget-object v3, v3, p1

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableVoiceInput()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableSwitchIme()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableQwertyLeftRightKey()I

    move-result v4

    aget-object v3, v3, v4

    sget v4, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    aget-object v2, v3, v4

    .line 718
    .local v2, kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mNoInput:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_0

    .line 719
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 723
    .local v1, kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :goto_0
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v3

    .line 725
    .end local v1           #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    .end local v2           #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :goto_1
    return-object v3

    .line 721
    .restart local v2       #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_0
    const/4 v3, 0x0

    aget-object v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    goto :goto_0

    .line 724
    .end local v1           #kbd:Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    .end local v2           #kbds:[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :catch_0
    move-exception v0

    .line 725
    .local v0, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hideInputView()V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setVisibility(I)V

    .line 1185
    return-void
.end method

.method public initView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;II)Landroid/view/View;
    .locals 13
    .parameter "parent"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 900
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    .line 901
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_0
    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisplayMode:I

    .line 905
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 906
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v1

    .line 907
    .local v1, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->setPreferences(Landroid/content/SharedPreferences;)V

    .line 914
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->createKeyboards(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    .line 917
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->set5key()V

    .line 919
    const-string v8, "keyboard_skin"

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f06

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 921
    .local v5, skin:Ljava/lang/String;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "OpenWnn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keyboard_skin="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_0
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "layout"

    const-string v10, "jp.co.omronsoft.iwnnime.ml"

    invoke-virtual {v8, v5, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 924
    .local v0, id:I
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v8

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isKeepInput()Z

    move-result v8

    if-nez v8, :cond_1

    .line 925
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mIsSymbolKeyboard:Z

    .line 928
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 929
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->isShifted()Z

    move-result v4

    .line 930
    .local v4, shift:Z
    :goto_1
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    iput-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    .line 931
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v8, p0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setOnKeyboardActionListener(Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;)V

    .line 932
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v8, v4}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setShifted(Z)Z

    .line 942
    :goto_2
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-direct {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->restoreEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 943
    const/4 v8, 0x0

    iput-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 945
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030007

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

    iput-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mMainView:Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

    .line 946
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030008

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSubView:Landroid/view/ViewGroup;

    .line 948
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mTextView:Landroid/widget/TextView;

    .line 950
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mHardKeyboardHidden:Z

    if-nez v8, :cond_7

    .line 951
    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableHardware12Keyboard:Z

    if-nez v8, :cond_2

    .line 952
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mMainView:Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSubView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->addView(Landroid/view/View;)V

    .line 954
    :cond_2
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSubView:Landroid/view/ViewGroup;

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 955
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 956
    .local v3, res:Landroid/content/res/Resources;
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSubView:Landroid/view/ViewGroup;

    const v9, 0x7f0b0038

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f0b0039

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0b003a

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0b003b

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 960
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mTextView:Landroid/widget/TextView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 961
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mTextView:Landroid/widget/TextView;

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 962
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mTextView:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 963
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mTextView:Landroid/widget/TextView;

    const/16 v9, 0x28

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setWidth(I)V

    .line 965
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSubView:Landroid/view/ViewGroup;

    const v9, 0x7f080034

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 966
    .local v6, text1:Landroid/widget/TextView;
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSubView:Landroid/view/ViewGroup;

    const v9, 0x7f080035

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 967
    .local v7, text2:Landroid/widget/TextView;
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 968
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 973
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v6           #text1:Landroid/widget/TextView;
    .end local v7           #text2:Landroid/widget/TextView;
    :goto_3
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mMainView:Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

    return-object v8

    .line 901
    .end local v0           #id:I
    .end local v1           #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    .end local v4           #shift:Z
    .end local v5           #skin:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 929
    .restart local v0       #id:I
    .restart local v1       #keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .restart local v2       #pref:Landroid/content/SharedPreferences;
    .restart local v5       #skin:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 934
    :cond_5
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->isShifted()Z

    move-result v4

    .line 935
    .restart local v4       #shift:Z
    :goto_4
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    iput-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    .line 936
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v8, v4}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setShifted(Z)Z

    .line 937
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v8, p1}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->initPopupView(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    .line 938
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v8, p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 939
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getSlideCycleCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setModeCycleCount(I)V

    .line 940
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v8, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v8, p0}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setOnKeyboardActionListener(Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;)V

    goto/16 :goto_2

    .line 934
    .end local v4           #shift:Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 970
    .restart local v4       #shift:Z
    :cond_7
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mMainView:Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->addView(Landroid/view/View;)V

    goto :goto_3
.end method

.method protected initializeFlick()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1856
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mHasFlickStarted:Z

    .line 1857
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickDirection:I

    .line 1858
    const v0, -0x1869f

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickPressKey:I

    .line 1859
    return-void
.end method

.method protected inputByFlick(IZ)V
    .locals 0
    .parameter "directionIndex"
    .parameter "isCommit"

    .prologue
    .line 1649
    return-void
.end method

.method protected inputByFlickDirection(IZ)V
    .locals 0
    .parameter "direction"
    .parameter "isCommit"

    .prologue
    .line 1640
    return-void
.end method

.method public isChangeToOtherIme()Z
    .locals 1

    .prologue
    .line 1962
    const/4 v0, 0x0

    return v0
.end method

.method protected isEnableFlickMode(I)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1769
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableOtherInputMethod()Z
    .locals 7

    .prologue
    .line 1971
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 1972
    .local v4, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 1973
    .local v0, enableImiList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1974
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1975
    .local v3, imiPackageName:Ljava/lang/String;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.google.android.googlequicksearchbox"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1976
    const/4 v5, 0x1

    .line 1979
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #imiPackageName:Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected isFlickKey(I)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1759
    const/4 v0, 0x0

    return v0
.end method

.method public isPopupKeyboard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mMiniKeyboardOnScreen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected isVoiceInputMode()Z
    .locals 1

    .prologue
    .line 1887
    const/4 v0, 0x0

    return v0
.end method

.method public onFlick(II)V
    .locals 1
    .parameter "x"
    .parameter "direction"

    .prologue
    .line 1624
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickDirection:I

    if-eq v0, p2, :cond_0

    .line 1625
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mHasFlickStarted:Z

    .line 1626
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickDirection:I

    .line 1627
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickPressKey:I

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->isFlickKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->inputByFlickDirection(IZ)V

    .line 1631
    :cond_0
    return-void
.end method

.method public onKey(I[I)V
    .locals 5
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1218
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mIsKeyProcessFinish:Z

    .line 1220
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisableKeyInput:Z

    if-eqz v1, :cond_1

    .line 1221
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mIsKeyProcessFinish:Z

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickPressKey:I

    const v2, -0x1869f

    if-eq v1, v2, :cond_0

    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1226
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v1, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickDetectMode(ZI)V

    .line 1227
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mHasFlickStarted:Z

    .line 1228
    .local v0, started:Z
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mHasFlickStarted:Z

    .line 1229
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickDirection:I

    if-nez v1, :cond_2

    if-eqz v0, :cond_4

    .line 1230
    :cond_2
    iput-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mIsKeyProcessFinish:Z

    .line 1231
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickDirection:I

    invoke-virtual {p0, v1, v4}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->inputByFlickDirection(IZ)V

    .line 1233
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCapsLock:Z

    if-nez v1, :cond_3

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 1234
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setShiftByEditorInfo(Z)V

    .line 1236
    :cond_3
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevInputKeyCode:I

    goto :goto_0

    .line 1239
    :cond_4
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickPressKey:I

    if-eq p1, v1, :cond_0

    .line 1240
    iget p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mFlickPressKey:I

    goto :goto_0
.end method

.method public onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z
    .locals 6
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1653
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableMushroom:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getLongpressMushroomKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1654
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v4, -0xfffe000

    invoke-direct {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    move v1, v2

    .line 1681
    :goto_0
    return v1

    .line 1658
    :cond_0
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    :cond_1
    move v1, v3

    .line 1681
    goto :goto_0

    .line 1660
    :sswitch_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v4, -0xfffcffe

    invoke-direct {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    move v1, v2

    .line 1661
    goto :goto_0

    .line 1664
    :sswitch_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v4, -0xfffcffd

    invoke-direct {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    move v1, v2

    .line 1665
    goto :goto_0

    .line 1668
    :sswitch_2
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableHardware12Keyboard:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget-object v1, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget-object v1, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1673
    :cond_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1674
    .local v0, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    move v1, v2

    .line 1675
    goto :goto_0

    .line 1658
    :sswitch_data_0
    .sparse-switch
        -0x19c -> :sswitch_2
        -0xe9 -> :sswitch_1
        -0xe8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPress(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1295
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->playSoundAndVibration(I)V

    .line 1296
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 1286
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->deleteSurrogateText(I)V

    .line 1287
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1545
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1824
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisableKeyInput:Z

    return v0
.end method

.method public onUpdateState(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V
    .locals 5
    .parameter "parent"

    .prologue
    .line 1059
    :try_start_0
    iget-object v2, p1, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1060
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mNoInput:Z

    if-nez v2, :cond_0

    .line 1062
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mNoInput:Z

    .line 1063
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getKeyboardInputted(Z)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v1

    .line 1064
    .local v1, newKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eq v2, v1, :cond_0

    .line 1065
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    .line 1078
    .end local v1           #newKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    :cond_0
    :goto_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1079
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v2

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 1080
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->copyEnterKeyState()V

    .line 1088
    :goto_1
    return-void

    .line 1069
    :cond_1
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mNoInput:Z

    if-eqz v2, :cond_0

    .line 1071
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mNoInput:Z

    .line 1072
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getKeyboardInputted(Z)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v1

    .line 1073
    .restart local v1       #newKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eq v2, v1, :cond_0

    .line 1074
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1085
    .end local v1           #newKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    :catch_0
    move-exception v0

    .line 1086
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultSoftKeyboard::onUpdateState "

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

    .line 1082
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected processAltKey()V
    .locals 0

    .prologue
    .line 812
    return-void
.end method

.method public resetCurrentKeyboard()V
    .locals 2

    .prologue
    .line 1614
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->closing()V

    .line 1615
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisableKeyInput:Z

    .line 1616
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 1617
    .local v0, keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->restoreEnterKey(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 1618
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 1619
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    .line 1620
    return-void
.end method

.method public set5key()V
    .locals 3

    .prologue
    .line 1949
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isSubtypeExtraEmojiInput()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableSwitchIme()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1950
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v2, 0x7f050030

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 1954
    :goto_0
    return-void

    .line 1952
    :cond_0
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const v2, 0x7f05002f

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    goto :goto_0
.end method

.method public setCategory(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategoryList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategoryList:Ljava/util/ArrayList;

    .line 622
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 624
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 625
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    :cond_1
    return-void
.end method

.method public setHardKeyboardHidden(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 1589
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mHardKeyboardHidden:Z

    .line 1590
    return-void
.end method

.method public setHardware12Keyboard(Z)V
    .locals 0
    .parameter "type12Key"

    .prologue
    .line 1598
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableHardware12Keyboard:Z

    .line 1599
    return-void
.end method

.method public setKeyMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1566
    sput p1, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    .line 1567
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setKeyMode(I)V

    .line 1570
    :cond_0
    return-void
.end method

.method public setNormalKeyboard()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1776
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-nez v0, :cond_0

    .line 1790
    :goto_0
    return-void

    .line 1779
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_1

    .line 1780
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1781
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getShiftChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getShiftChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 1787
    :goto_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setOnKeyboardActionListener(Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;)V

    .line 1789
    :cond_1
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mIsSymbolKeyboard:Z

    goto :goto_0

    .line 1785
    :cond_2
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    goto :goto_1
.end method

.method public setOkToEnterKey()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1831
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-nez v4, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1834
    :cond_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getEnterKeyIndex(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v0

    .line 1835
    .local v0, enterIndex:I
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1836
    .local v3, newKeys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 1837
    .local v2, newEnterKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iput-object v5, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1838
    iput v6, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    .line 1840
    const v1, 0x7f060157

    .line 1842
    .local v1, labelResId:I
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevResIdEnterKey:I

    .line 1843
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mPrevLabelResIdEnterKey:I

    .line 1845
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1846
    iput-object v5, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1847
    iput-object v5, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1849
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v4, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateKey(I)V

    goto :goto_0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;Landroid/view/inputmethod/EditorInfo;)V
    .locals 9
    .parameter "pref"
    .parameter "editor"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1095
    :try_start_0
    const-string v5, "key_vibration"

    const/4 v8, 0x1

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1096
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mVibrator:Landroid/os/Vibrator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :goto_0
    :try_start_1
    const-string v5, "key_sound"

    const/4 v8, 0x0

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1107
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSound:Landroid/media/AudioManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1115
    :goto_1
    const-string v5, "opt_mushroom"

    const-string v8, "notuse"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "notuse"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableMushroom:Z

    .line 1117
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableSwitchIme()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 1118
    sput-boolean v7, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableSwitchIme:Z

    .line 1123
    :goto_3
    const-string v5, "opt_display_left_right_key"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableLeftRightKey:Z

    .line 1125
    const-string v5, "opt_enable_half_alphabet"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableHalfAlphabet:Z

    .line 1126
    iget-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mHardKeyboardHidden:Z

    if-nez v5, :cond_0

    .line 1127
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableHalfAlphabet:Z

    .line 1129
    :cond_0
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableHalfAlphabet:Z

    invoke-virtual {v5, v8}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setEnableHalfAlphabet(Z)V

    .line 1131
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1132
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setPreviewEnabled(Z)V

    .line 1133
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->cancelTouchEvent()V

    .line 1134
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->clearKeyboardPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 1135
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->invalidateAllKeys()V

    .line 1136
    sput-boolean v6, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableVoiceInput:Z

    .line 1165
    :goto_4
    return-void

    .line 1098
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mVibrator:Landroid/os/Vibrator;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v3

    .line 1101
    .local v3, ex:Ljava/lang/Exception;
    const-string v5, "OpenWnn"

    const-string v8, "NO VIBRATOR"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1109
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    :try_start_3
    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSound:Landroid/media/AudioManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1111
    :catch_1
    move-exception v3

    .line 1112
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v5, "OpenWnn"

    const-string v8, "NO SOUND"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    move v5, v7

    .line 1115
    goto :goto_2

    .line 1120
    :cond_4
    sput-boolean v6, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableSwitchIme:Z

    goto :goto_3

    .line 1138
    :cond_5
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->clearKeyboardPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 1139
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    const-string v8, "popup_preview"

    invoke-interface {p1, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v5, v8}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setPreviewEnabled(Z)V

    .line 1140
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0005

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1142
    .local v4, thres:I
    :try_start_4
    const-string v5, "flick_sensitivity_relative"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v4

    .line 1146
    :goto_5
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {v5, v4}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setFlickSensitivity(I)V

    .line 1147
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    iget-boolean v8, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableMushroom:Z

    invoke-virtual {v5, v8}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setEnableMushroom(Z)V

    .line 1153
    sput-boolean v6, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableVoiceInput:Z

    .line 1154
    const-string v5, "voice_input"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1155
    .local v2, enableVoiceInputSetting:Z
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->isAvailableShortcutIME()Z

    move-result v0

    .line 1156
    .local v0, availableShortcutIme:Z
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v5, p2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getDisableVoiceInputInPrivateImeOptions(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    .line 1157
    .local v1, disableVoiceInputPrivateIme:Z
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 1158
    sput-boolean v7, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mEnableVoiceInput:Z

    .line 1161
    :cond_6
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v5, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getSlideCycleCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/FlickKeyboardView;->setModeCycleCount(I)V

    .line 1162
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->clearWindowInfo()V

    goto/16 :goto_4

    .line 1143
    .end local v0           #availableShortcutIme:Z
    .end local v1           #disableVoiceInputPrivateIme:Z
    .end local v2           #enableVoiceInputSetting:Z
    :catch_2
    move-exception v5

    goto :goto_5
.end method

.method public setSelectedCategory(I)V
    .locals 0
    .parameter "select"

    .prologue
    .line 635
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategorySelected:I

    .line 636
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setCategoryKey()V

    .line 637
    return-void
.end method

.method protected setShiftByEditorInfo(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 1250
    return-void
.end method

.method protected setShifted(I)V
    .locals 4
    .parameter "shiftState"

    .prologue
    .line 1690
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v3, :cond_0

    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getShiftChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v1

    .line 1694
    .local v1, kbd:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    .line 1695
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    if-nez v3, :cond_2

    .line 1696
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCapsLock:Z

    .line 1699
    :cond_2
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    .line 1702
    if-eqz v1, :cond_0

    .line 1703
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getShiftKeyIndex()I

    move-result v0

    .line 1704
    .local v0, index:I
    if-lez v0, :cond_0

    .line 1705
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 1706
    .local v2, shiftKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCapsLock:Z

    iput-boolean v3, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->on:Z

    .line 1707
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->invalidateKey(I)V

    goto :goto_0
.end method

.method public setSymbolKeyboard()V
    .locals 3

    .prologue
    .line 1796
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_0

    .line 1797
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 1802
    :goto_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolOnKeyboardAction:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setOnKeyboardActionListener(Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;)V

    .line 1804
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mIsSymbolKeyboard:Z

    .line 1805
    return-void

    .line 1800
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    goto :goto_0
.end method

.method public setSymbolMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2097
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSymbolMode:I

    .line 2098
    return-void
.end method

.method public showCategoryChangeMenu()V
    .locals 9

    .prologue
    .line 577
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;

    .line 578
    .local v0, baseInputView:Ljp/co/omronsoft/iwnnime/ml/BaseInputView;
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 579
    .local v5, r:Landroid/content/res/Resources;
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategorySelected:I

    .line 581
    .local v6, select:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v3, categorylist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 583
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 585
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->isHistoryExists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 586
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 587
    add-int/lit8 v6, v6, -0x1

    .line 590
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v2, v7

    check-cast v2, [Ljava/lang/String;

    .line 592
    .local v2, categoryarray:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 593
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 594
    const v7, 0x7f06009b

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 595
    new-instance v7, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$2;

    invoke-direct {v7, p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 607
    const v7, 0x7f06013f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 609
    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->showDialog(Landroid/app/AlertDialog$Builder;)V

    .line 611
    return-void
.end method

.method public showInputView()V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setVisibility(I)V

    .line 1180
    :cond_0
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 1271
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 1264
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 1257
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 1278
    return-void
.end method

.method protected toggleKeyMode()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 757
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 758
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    if-eqz v2, :cond_0

    .line 759
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboardView:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setShifted(Z)Z

    .line 766
    :cond_0
    :goto_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mKeyboard:[[[[[[[[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentLanguage:I

    aget-object v2, v2, v3

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mDisplayMode:I

    aget-object v2, v2, v3

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyboardType:I

    aget-object v2, v2, v3

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableVoiceInput()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableSwitchIme()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getEnableQwertyLeftRightKey()I

    move-result v3

    aget-object v1, v2, v3

    .line 768
    .local v1, keyboardList:[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_1
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 769
    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->setKeyMode(I)V

    .line 771
    :cond_2
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    aget-object v2, v1, v2

    aget-object v2, v2, v5

    if-eqz v2, :cond_1

    .line 774
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mNoInput:Z

    if-nez v2, :cond_4

    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    aget-object v2, v1, v2

    aget-object v2, v2, v4

    if-eqz v2, :cond_4

    .line 775
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    aget-object v2, v1, v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v0

    .line 779
    .local v0, kbd:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    :goto_1
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    .line 781
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v4, -0xffffff1

    invoke-direct {v3, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 783
    return-void

    .line 762
    .end local v0           #kbd:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .end local v1           #keyboardList:[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_3
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    goto :goto_0

    .line 777
    .restart local v1       #keyboardList:[[Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
    :cond_4
    sget v2, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCurrentKeyMode:I

    aget-object v2, v1, v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v0

    .restart local v0       #kbd:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    goto :goto_1
.end method

.method protected toggleShiftLock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 789
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    if-nez v1, :cond_1

    .line 791
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getShiftChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v0

    .line 792
    .local v0, newKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    if-eqz v0, :cond_0

    .line 793
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    .line 794
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    .line 796
    :cond_0
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCapsLock:Z

    .line 806
    :goto_0
    return-void

    .line 799
    .end local v0           #newKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    :cond_1
    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getShiftChangeKeyboard(I)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v0

    .line 800
    .restart local v0       #newKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    if-eqz v0, :cond_2

    .line 801
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mShiftOn:I

    .line 802
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->changeKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)Z

    .line 804
    :cond_2
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCapsLock:Z

    goto :goto_0
.end method

.method public updateIndicator(I)V
    .locals 10
    .parameter "mode"

    .prologue
    const v9, 0x7f0a000d

    const v8, 0x7f0a000c

    const v7, 0x7f0a000e

    const v6, 0x7f0a000b

    const v5, 0x7f0a0011

    .line 982
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 983
    .local v0, res:Landroid/content/res/Resources;
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSubView:Landroid/view/ViewGroup;

    const v4, 0x7f080034

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 984
    .local v1, text1:Landroid/widget/TextView;
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mSubView:Landroid/view/ViewGroup;

    const v4, 0x7f080035

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 986
    .local v2, text2:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 1042
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1043
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1044
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1045
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1048
    :goto_0
    return-void

    .line 988
    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 989
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 990
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 991
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 994
    :pswitch_1
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 995
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 996
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 997
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1000
    :pswitch_2
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1001
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1002
    const v3, 0x7f0a0012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1003
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1006
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1007
    const v3, 0x7f0a000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1008
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1009
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1012
    :pswitch_4
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1013
    const v3, 0x7f0a0010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1014
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1015
    const v3, 0x7f0a0013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1018
    :pswitch_5
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1019
    const v3, 0x7f0a000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1020
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1021
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1024
    :pswitch_6
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1025
    const v3, 0x7f0a0010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1026
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1027
    const v3, 0x7f0a0013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1030
    :pswitch_7
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1031
    const v3, 0x7f0a000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1032
    const v3, 0x7f0a0012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1033
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1036
    :pswitch_8
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1037
    const v3, 0x7f0a0010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1038
    const v3, 0x7f0a0012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1039
    const v3, 0x7f0a0013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 986
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
