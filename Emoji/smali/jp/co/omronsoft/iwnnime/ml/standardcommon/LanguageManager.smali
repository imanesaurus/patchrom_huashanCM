.class public Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;
.super Ljava/lang/Object;
.source "LanguageManager.java"


# static fields
.field private static DEBUG:Z

.field private static final LIST_LANGUAGE_TYPE:[I

.field private static final LIST_LOCALE_CODE:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static sSelf:Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;


# instance fields
.field private mLanguageTypeOfUserDictionary:I

.field private mLocaleCodeOfUserDictionary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    const/4 v2, 0x0

    .line 29
    sput-boolean v2, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->DEBUG:Z

    .line 31
    const-string v0, "iWnn"

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->TAG:Ljava/lang/String;

    .line 40
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "en_us"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "en_uk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "it"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "zh_cn_p"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "zh_tw_z"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fr_ca"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->LIST_LOCALE_CODE:[Ljava/lang/String;

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->LIST_LANGUAGE_TYPE:[I

    .line 83
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->sSelf:Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;

    return-void

    .line 61
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getChosenLanguageType(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 160
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Landroid/content/SharedPreferences;)I

    move-result v1

    return v1
.end method

.method public static getChosenLanguageType(Landroid/content/SharedPreferences;)I
    .locals 3
    .parameter "pref"

    .prologue
    .line 171
    const-string v1, "choosed_language"

    const-string v2, "ja"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, localeCode:Ljava/lang/String;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getChosenLanguageType(Ljava/lang/String;)I
    .locals 2
    .parameter "localeCode"

    .prologue
    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->LIST_LOCALE_CODE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 183
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->LIST_LOCALE_CODE:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->LIST_LANGUAGE_TYPE:[I

    aget v1, v1, v0

    .line 187
    :goto_1
    return v1

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getInstance()Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->sSelf:Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;

    return-object v0
.end method

.method public static getUserDictionaryGatekeeper(Landroid/content/Context;)Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1
    .parameter "context"

    .prologue
    .line 237
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager$1;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static isChineseLanguage(I)Z
    .locals 1
    .parameter "languageType"

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, ret:Z
    packed-switch p0, :pswitch_data_0

    .line 227
    :goto_0
    return v0

    .line 222
    :pswitch_0
    const/4 v0, 0x1

    .line 223
    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isNoStroke(I)Z
    .locals 1
    .parameter "languageType"

    .prologue
    .line 197
    const/4 v0, 0x1

    .line 198
    .local v0, ret:Z
    sparse-switch p0, :sswitch_data_0

    .line 208
    :goto_0
    return v0

    .line 203
    :sswitch_0
    const/4 v0, 0x0

    .line 204
    goto :goto_0

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getLanguageTypeOfUserDictionary()I
    .locals 3

    .prologue
    .line 149
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLanguageTypeOfUserDictionary()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->mLanguageTypeOfUserDictionary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->mLanguageTypeOfUserDictionary:I

    return v0
.end method

.method public getLocaleCodeOfUserDictionary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocaleCodeOfUserDictionary()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->mLocaleCodeOfUserDictionary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->mLocaleCodeOfUserDictionary:Ljava/lang/String;

    return-object v0
.end method

.method public setEngineToUserDictionaryMode(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 127
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->TAG:Ljava/lang/String;

    const-string v2, "setEngineToUserDictionaryMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 129
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->mLanguageTypeOfUserDictionary:I

    const/16 v2, 0xa

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(III)Z

    .line 131
    return-void
.end method

.method public updateLanguageInfoForUserDictionary(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "pref"

    .prologue
    .line 113
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->TAG:Ljava/lang/String;

    const-string v2, "updateLanguageInfoForUserDictionary()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    const-string v1, "choosed_language"

    const-string v2, "ja"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, localeCode:Ljava/lang/String;
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLocaleCodeOfUserDictionary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->mLocaleCodeOfUserDictionary:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->mLanguageTypeOfUserDictionary:I

    .line 119
    return-void
.end method
