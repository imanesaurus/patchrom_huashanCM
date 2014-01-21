.class public Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
.super Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
.source "IWnnLanguageSwitcher.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DICTIONARY_VERSION:Ljava/lang/String; = "6.0.0"

.field private static final DICTIONARY_VERSION_KEY:Ljava/lang/String; = "dic_version"

.field private static final LOCALE_CS_CZ:Ljava/util/Locale; = null

.field private static final LOCALE_DE_DE:Ljava/util/Locale; = null

.field private static final LOCALE_EN_GB:Ljava/util/Locale; = null

.field private static final LOCALE_EN_US:Ljava/util/Locale; = null

.field private static final LOCALE_ES_ES:Ljava/util/Locale; = null

.field private static final LOCALE_FR_CA:Ljava/util/Locale; = null

.field private static final LOCALE_FR_FR:Ljava/util/Locale; = null

.field private static final LOCALE_IT_IT:Ljava/util/Locale; = null

.field private static final LOCALE_JA_JP:Ljava/util/Locale; = null

.field private static final LOCALE_NB_NO:Ljava/util/Locale; = null

.field private static final LOCALE_NL_NL:Ljava/util/Locale; = null

.field private static final LOCALE_PL_PL:Ljava/util/Locale; = null

.field private static final LOCALE_PT_PT:Ljava/util/Locale; = null

.field private static final LOCALE_RU_RU:Ljava/util/Locale; = null

.field private static final LOCALE_SV_SE:Ljava/util/Locale; = null

.field private static final LOCALE_ZH_CN:Ljava/util/Locale; = null

.field private static final LOCALE_ZH_TW:Ljava/util/Locale; = null

.field private static final PRIVATE_IME_OPTION_DISABLE_VOICE_INPUT:Ljava/lang/String; = "com.google.android.inputmethod.latin.noMicrophoneKey"

.field private static final PRIVATE_IME_OPTION_DISABLE_VOICE_INPUT_COMPAT:Ljava/lang/String; = "nm"

.field private static final SUBTYPE_EXTRAVALUE_REQUIRE_NETWORK_CONNECTIVITY:Ljava/lang/String; = "requireNetworkConnectivity"

.field private static final TAG:Ljava/lang/String; = "iWnn"


# instance fields
.field private mSelectedLocale:Ljava/util/Locale;

.field private mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

.field private mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/util/Locale;

    const-string v1, "cs"

    const-string v2, "CZ"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_CS_CZ:Ljava/util/Locale;

    .line 63
    sget-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_DE_DE:Ljava/util/Locale;

    .line 65
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_EN_GB:Ljava/util/Locale;

    .line 67
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_EN_US:Ljava/util/Locale;

    .line 69
    new-instance v0, Ljava/util/Locale;

    const-string v1, "es"

    const-string v2, "ES"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_ES_ES:Ljava/util/Locale;

    .line 71
    sget-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_FR_FR:Ljava/util/Locale;

    .line 73
    sget-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_IT_IT:Ljava/util/Locale;

    .line 75
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_JA_JP:Ljava/util/Locale;

    .line 77
    new-instance v0, Ljava/util/Locale;

    const-string v1, "nb"

    const-string v2, "NO"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_NB_NO:Ljava/util/Locale;

    .line 79
    new-instance v0, Ljava/util/Locale;

    const-string v1, "nl"

    const-string v2, "NL"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_NL_NL:Ljava/util/Locale;

    .line 81
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pl"

    const-string v2, "PL"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_PL_PL:Ljava/util/Locale;

    .line 83
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    const-string v2, "RU"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_RU_RU:Ljava/util/Locale;

    .line 85
    new-instance v0, Ljava/util/Locale;

    const-string v1, "sv"

    const-string v2, "SE"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_SV_SE:Ljava/util/Locale;

    .line 87
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_ZH_CN:Ljava/util/Locale;

    .line 89
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_ZH_TW:Ljava/util/Locale;

    .line 91
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "PT"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_PT_PT:Ljava/util/Locale;

    .line 93
    sget-object v0, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->LOCALE_FR_CA:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;-><init>()V

    .line 56
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 58
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mSelectedLocale:Ljava/util/Locale;

    .line 100
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 102
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 114
    return-void
.end method

.method private contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "keyStr"
    .parameter "splitStr"

    .prologue
    .line 727
    if-eqz p2, :cond_1

    .line 728
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 729
    .local v3, option:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 730
    const/4 v4, 0x1

    .line 734
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #option:Ljava/lang/String;
    :goto_1
    return v4

    .line 728
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #option:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #option:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;
    .locals 2
    .parameter "subtype"

    .prologue
    .line 620
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, locale:Ljava/lang/String;
    const-string v1, "en_US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    const-string v0, "en_us"

    .line 636
    :cond_0
    :goto_0
    return-object v0

    .line 624
    :cond_1
    const-string v1, "en_GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    const-string v0, "en_uk"

    goto :goto_0

    .line 626
    :cond_2
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 627
    const-string v0, "zh_cn_p"

    goto :goto_0

    .line 628
    :cond_3
    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 629
    const-string v0, "zh_tw_z"

    goto :goto_0

    .line 630
    :cond_4
    const-string v1, "fr_CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 631
    const-string v0, "fr_ca"

    goto :goto_0

    .line 632
    :cond_5
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    const-string v0, "ja"

    goto :goto_0
.end method

.method public static initialLanguage(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 588
    return-void
.end method

.method public static isEnabledImeId(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/String;)Z
    .locals 4
    .parameter "manager"
    .parameter "id"

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 502
    .local v1, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 503
    .local v2, infoListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 504
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    const/4 v3, 0x1

    .line 509
    :goto_1
    return v3

    .line 503
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static isMatchCountry(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 1
    .parameter "country"
    .parameter "locale"

    .prologue
    .line 488
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isMatchLanguage(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 1
    .parameter "language"
    .parameter "locale"

    .prologue
    .line 478
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private resetExtendedInfo()V
    .locals 9

    .prologue
    .line 645
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 646
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v7, "dic_version"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, dicVersion:Ljava/lang/String;
    const-string v7, "6.0.0"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 648
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v4

    .line 649
    .local v4, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getConfTable()[Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, confFileList:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_1

    .line 651
    new-instance v0, Ljava/io/File;

    aget-object v7, v1, v5

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, confFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 653
    aget-object v7, v1, v5

    invoke-virtual {v4, v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->resetExtendedInfo(Ljava/lang/String;)Z

    .line 650
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 656
    .end local v0           #confFile:Ljava/io/File;
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 657
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "dic_version"

    const-string v8, "6.0.0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    .end local v1           #confFileList:[Ljava/lang/String;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .end local v5           #i:I
    :cond_2
    return-void
.end method

.method public static selectLanguage(Ljava/util/Locale;ZLjp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)Ljava/lang/String;
    .locals 7
    .parameter "locale"
    .parameter "imeInit"
    .parameter "self"

    .prologue
    .line 532
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, language:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, country:Ljava/lang/String;
    const/4 v4, 0x0

    .line 536
    .local v4, wnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;
    const/4 v2, 0x0

    .line 538
    .local v2, localeCode:Ljava/lang/String;
    if-eqz p1, :cond_0

    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    .end local v4           #wnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;
    invoke-direct {v4, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;-><init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V

    .line 539
    .restart local v4       #wnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;
    :cond_0
    const-string v2, "ja"

    .line 541
    if-nez p1, :cond_1

    move-object v3, v2

    .line 566
    .end local v2           #localeCode:Ljava/lang/String;
    .local v3, localeCode:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 545
    .end local v3           #localeCode:Ljava/lang/String;
    .restart local v2       #localeCode:Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    iget-object v5, p2, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    if-nez v5, :cond_2

    .line 546
    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    .end local v4           #wnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;
    invoke-direct {v4, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;-><init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V

    .line 547
    .restart local v4       #wnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;
    const-string v2, "ja"

    .line 556
    :cond_2
    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    .line 560
    iget-object v5, p2, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    if-eqz v5, :cond_3

    .line 561
    iget-object v5, p2, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->close(Z)V

    .line 563
    :cond_3
    iput-object v4, p2, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    :cond_4
    move-object v3, v2

    .line 566
    .end local v2           #localeCode:Ljava/lang/String;
    .restart local v3       #localeCode:Ljava/lang/String;
    goto :goto_0
.end method

.method private switchToTargetIME(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 6
    .parameter "imiId"
    .parameter "subtype"

    .prologue
    .line 857
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 859
    .local v2, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 860
    .local v3, token:Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 881
    :goto_0
    return-void

    .line 863
    :cond_0
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v4}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static updateChoosedLanguage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "localeCode"
    .parameter "context"

    .prologue
    .line 576
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 577
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 578
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "choosed_language"

    const-string v3, "ja"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 579
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 580
    return-void
.end method


# virtual methods
.method public checkIfSubtypeBelongsToThisImeAndEnabled(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 7
    .parameter "context"
    .parameter "ims"

    .prologue
    const/4 v5, 0x0

    .line 753
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 755
    .local v1, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getInputMethodInfoOfThisIme(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 757
    .local v2, myImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 758
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 759
    .local v3, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, p2}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 760
    const/4 v5, 0x1

    .line 763
    .end local v3           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    return v5
.end method

.method protected close()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->close(Z)V

    .line 430
    return-void
.end method

.method public getDisableVoiceInputInPrivateImeOptions(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3
    .parameter "editor"

    .prologue
    const/4 v0, 0x0

    .line 712
    if-eqz p1, :cond_1

    .line 713
    const-string v1, "com.google.android.inputmethod.latin.noMicrophoneKey"

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nm"

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 716
    :cond_1
    return v0
.end method

.method public getInputMethodInfoOfThisIme(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 7
    .parameter "context"

    .prologue
    .line 766
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 767
    .local v2, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 769
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 770
    return-object v1

    .line 772
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find input method id for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public handleLanguageSwitchKey()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 743
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 744
    .local v1, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 745
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v5, "opt_change_otherime"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 746
    .local v0, includesOtherImes:Z
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getWindow()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v3, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 748
    .local v3, token:Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    .line 749
    return-void
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 318
    const-string v0, "iWnn"

    const-string v1, "IWnnLanguageSwitcher::hideWindow()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->hideWindow()V

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->hideWindow()V

    goto :goto_0
.end method

.method public hideWindowOpenWnn()V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->hideWindow()V

    .line 334
    return-void
.end method

.method public isAvailableShortcutIME()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 685
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->isEnableShortcutIME()Z

    move-result v5

    if-nez v5, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v3

    .line 688
    :cond_1
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v5, :cond_2

    move v3, v4

    .line 689
    goto :goto_0

    .line 691
    :cond_2
    const-string v5, "requireNetworkConnectivity"

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 693
    .local v1, contain:Z
    if-eqz v1, :cond_3

    .line 694
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 695
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 696
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 697
    goto :goto_0

    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_3
    move v3, v4

    .line 701
    goto :goto_0
.end method

.method public isEnableShortcutIME()Z
    .locals 2

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, ret:Z
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->updateShortcutIME()V

    .line 671
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_0

    .line 672
    const/4 v0, 0x1

    .line 674
    :cond_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 290
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 291
    const-string v0, "iWnn"

    const-string v1, "IWnnLanguageSwitcher::onConfigurationChanged()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onConfigurationChangedOpenWnn(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 306
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 307
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->updateXLargeMode()V

    .line 126
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->updateTabletMode(Landroid/content/Context;)V

    .line 128
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->initialLanguage(Landroid/content/Context;)V

    .line 129
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Landroid/content/Context;)I

    move-result v1

    .line 130
    .local v1, languageType:I
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 131
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLocale(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->setLanguage(Ljava/util/Locale;ZZ)V

    .line 133
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onCreate()V

    .line 134
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onCreate()V

    .line 136
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->init(Landroid/content/Context;)V

    .line 137
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 139
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->resetExtendedInfo()V

    .line 140
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onCreateCandidatesView()Landroid/view/View;

    .line 160
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "iWnn"

    const-string v1, "IWnnLanguageSwitcher::onCreateInputView()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_1

    .line 175
    const-string v0, "iWnn"

    const-string v1, "IWnnLanguageSwitcher::onCreateInputView()  InputConnection is not active"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onCreateInputView()Landroid/view/View;

    .line 181
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOpenWnn()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method protected onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 4
    .parameter "newSubtype"

    .prologue
    const/4 v3, 0x1

    .line 596
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 598
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 603
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onFinishInput()V

    .line 605
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Ljava/lang/String;)I

    move-result v1

    .line 606
    .local v1, languageType:I
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 607
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLocale(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->setLanguage(Ljava/util/Locale;ZZ)V

    .line 609
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->restartSelf(Landroid/view/inputmethod/EditorInfo;)V

    .line 611
    .end local v0           #engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .end local v1           #languageType:I
    :cond_1
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    const-string v0, "iWnn"

    const-string v1, "IWnnLanguageSwitcher::onEvaluateFullscreenMode()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvaluateFullscreenMode()Z

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onEvaluateFullscreenMode()Z

    move-result v0

    goto :goto_0
.end method

.method public onEvaluateFullscreenModeOpenWnn()Z
    .locals 1

    .prologue
    .line 388
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvaluateFullscreenMode()Z

    move-result v0

    return v0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 2

    .prologue
    .line 397
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 398
    const-string v0, "iWnn"

    const-string v1, "IWnnLanguageSwitcher::onEvaluateInputViewShown()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvaluateInputViewShown()Z

    move-result v0

    .line 401
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onEvaluateInputViewShown()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    .line 362
    const-string v0, "iWnn"

    const-string v1, "OpenWnn::onEvent()  InputConnection is not active"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    const/4 v0, 0x0

    .line 365
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFinishInput()V
    .locals 2

    .prologue
    .line 410
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    const-string v0, "iWnn"

    const-string v1, "IWnnLanguageSwitcher::onFinishInput()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onFinishInput()V

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onFinishInput()V

    goto :goto_0
.end method

.method public onFinishInputOpenWnn()V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onFinishInput()V

    .line 425
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 188
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v4

    if-nez v4, :cond_0

    .line 189
    const-string v3, "iWnn"

    const-string v4, "IWnnLanguageSwitcher::onKeyDown()  Unprocessing onCreate() "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 225
    :goto_0
    return v3

    .line 191
    :cond_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v4, :cond_1

    .line 192
    const-string v3, "iWnn"

    const-string v4, "IWnnLanguageSwitcher::onKeyDown()  InputConnection is not active"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 195
    :cond_1
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mDirectInputMode:Z

    if-nez v4, :cond_2

    .line 196
    packed-switch p1, :pswitch_data_0

    .line 225
    :cond_2
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 198
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    if-eqz v4, :cond_3

    .line 200
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->isConvertingForFuncKey()Z

    move-result v0

    .line 201
    .local v0, convertingForFuncKey:Z
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->setConvertingForFuncKey(Z)V

    .line 202
    if-eqz v0, :cond_3

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    if-eqz v4, :cond_3

    .line 203
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    invoke-virtual {v4, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v2

    .line 204
    .local v2, len:I
    if-lez v2, :cond_3

    .line 206
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v4, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->setConvertingForFuncKey(Z)V

    goto :goto_0

    .line 213
    .end local v0           #convertingForFuncKey:Z
    .end local v2           #len:I
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 215
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 235
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    const-string v0, "iWnn"

    const-string v1, "IWnnLanguageSwitcher::onStartInput()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 241
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 6
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v5, 0x1

    .line 250
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v4

    if-nez v4, :cond_0

    .line 251
    const-string v4, "iWnn"

    const-string v5, "IWnnLanguageSwitcher::onStartInputView()  Unprocessing onCreate() "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 273
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 258
    .local v3, pref:Landroid/content/SharedPreferences;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    if-eqz v4, :cond_1

    .line 259
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v4, v3, p1}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->setPreferences(Landroid/content/SharedPreferences;Landroid/view/inputmethod/EditorInfo;)V

    .line 262
    :cond_1
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 264
    .local v2, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Ljava/lang/String;)I

    move-result v1

    .line 266
    .local v1, languageType:I
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 267
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLocale(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p0, v4, v5, v5}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->setLanguage(Ljava/util/Locale;ZZ)V

    .line 269
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v4, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 270
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->setPreferences(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public onStartInputViewOpenWnn(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 282
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 7
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 342
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 343
    const-string v0, "iWnn"

    const-string v1, "IWnnLanguageSwitcher::onUpdateSelection()  Unprocessing onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-super/range {p0 .. p6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onUpdateSelection(IIIIII)V

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onUpdateSelection(IIIIII)V

    goto :goto_0
.end method

.method public onUpdateSelectionOpenWnn(IIIIII)V
    .locals 0
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 356
    invoke-super/range {p0 .. p6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onUpdateSelection(IIIIII)V

    .line 357
    return-void
.end method

.method public selectLanguage(Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 1
    .parameter "locale"
    .parameter "imeInit"

    .prologue
    .line 520
    invoke-static {p1, p2, p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->selectLanguage(Ljava/util/Locale;ZLjp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLanguage(Ljava/util/Locale;ZZ)V
    .locals 6
    .parameter "locale"
    .parameter "requestInitialize"
    .parameter "prefChange"

    .prologue
    const/4 v4, 0x1

    .line 442
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mSelectedLocale:Ljava/util/Locale;

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mSelectedLocale:Ljava/util/Locale;

    invoke-virtual {v5, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v4

    .line 445
    .local v1, isEqual:Z
    :goto_0
    if-nez v1, :cond_0

    .line 446
    invoke-virtual {p0, p1, v4}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->selectLanguage(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, localeCode:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 450
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 451
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->close()V

    .line 452
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mSelectedLocale:Ljava/util/Locale;

    .line 454
    if-eqz p3, :cond_0

    .line 455
    invoke-static {v2, p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->updateChoosedLanguage(Ljava/lang/String;Landroid/content/Context;)V

    .line 460
    .end local v0           #engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .end local v2           #localeCode:Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_2

    .line 461
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mWnn:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->onCreate()V

    .line 462
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->onCreateInputView()Landroid/view/View;

    move-result-object v3

    .line 463
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 464
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->setInputView(Landroid/view/View;)V

    .line 466
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->setCandidatesView(Landroid/view/View;)V

    .line 468
    .end local v3           #v:Landroid/view/View;
    :cond_2
    return-void

    .line 442
    .end local v1           #isEqual:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchToDefaultIME()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 814
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 815
    .local v8, pm:Landroid/content/pm/PackageManager;
    const-string v12, "input_method"

    invoke-virtual {p0, v12}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 816
    .local v7, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 817
    .local v1, enableImiList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    .line 818
    .local v0, changeImi:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v9, 0x0

    .line 819
    .local v9, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 820
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 821
    .local v5, imiPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.google.android.googlequicksearchbox"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 824
    const/4 v12, 0x1

    invoke-virtual {v7, v4, v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 825
    .local v2, enableSubtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    .line 826
    .local v10, subtypeCnt:I
    if-nez v0, :cond_1

    .line 827
    move-object v0, v4

    .line 828
    if-lez v10, :cond_1

    .line 829
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 832
    .restart local v9       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    if-lez v10, :cond_0

    .line 835
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodSubtype;

    .line 836
    .local v11, tempSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    .line 837
    .local v6, locale:Ljava/lang/String;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    sget-object v12, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 839
    :cond_2
    move-object v0, v4

    .line 840
    move-object v9, v11

    .line 846
    .end local v2           #enableSubtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v5           #imiPackageName:Ljava/lang/String;
    .end local v6           #locale:Ljava/lang/String;
    .end local v10           #subtypeCnt:I
    .end local v11           #tempSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    if-eqz v0, :cond_4

    .line 847
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v9}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->switchToTargetIME(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 849
    :cond_4
    return-void
.end method

.method public switchToLastInputMethod()V
    .locals 5

    .prologue
    .line 884
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 885
    .local v0, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 886
    .local v1, token:Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 907
    :goto_0
    return-void

    .line 889
    :cond_0
    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;

    invoke-direct {v2, p0, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public switchToShortcutIME()V
    .locals 3

    .prologue
    .line 800
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v2, :cond_0

    .line 807
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, imiId:Ljava/lang/String;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 806
    .local v1, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-direct {p0, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->switchToTargetIME(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_0
.end method

.method public updateShortcutIME()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 782
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 783
    .local v2, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v3

    .line 784
    .local v3, shortcuts:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 785
    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 786
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 787
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 788
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 789
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    :cond_0
    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 792
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v4           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    return-void
.end method
