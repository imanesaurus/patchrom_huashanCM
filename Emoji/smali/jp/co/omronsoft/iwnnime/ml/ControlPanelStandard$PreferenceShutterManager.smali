.class Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;
.super Ljava/lang/Object;
.source "ControlPanelStandard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceShutterManager"
.end annotation


# static fields
.field private static final REMOVABLE_LIST:[[Ljava/lang/String; = null

.field private static final SYMBOL_JAPANESE:Ljava/lang/String; = "jp"

.field private static final SYMBOL_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mListJp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "category_dictionary"

    aput-object v2, v1, v4

    const-string v2, "user_dictionary_edit_words"

    aput-object v2, v1, v5

    const-string v2, "none"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "category_dictionary"

    aput-object v2, v1, v4

    const-string v2, "user_dictionary_edit_words_ja"

    aput-object v2, v1, v5

    const-string v2, "jp"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "category_dictionary"

    aput-object v2, v1, v4

    const-string v2, "user_dictionary_edit_words_en"

    aput-object v2, v1, v5

    const-string v2, "jp"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "category_key"

    aput-object v2, v1, v4

    const-string v2, "auto_caps"

    aput-object v2, v1, v5

    const-string v2, "none"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "category_key"

    aput-object v3, v2, v4

    const-string v3, "opt_auto_space"

    aput-object v3, v2, v5

    const-string v3, "none"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "category_key"

    aput-object v3, v2, v4

    const-string v3, "keyboard_mode_type_setting"

    aput-object v3, v2, v5

    const-string v3, "jp"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "category_key"

    aput-object v3, v2, v4

    const-string v3, "key_vibration"

    aput-object v3, v2, v5

    const-string v3, "none"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "iwnnime_pref"

    aput-object v3, v2, v4

    const-string v3, "category_12key"

    aput-object v3, v2, v5

    const-string v3, "jp"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "category_conversion"

    aput-object v3, v2, v4

    const-string v3, "opt_multiwebapi"

    aput-object v3, v2, v5

    const-string v3, "jp"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "category_dictionary"

    aput-object v3, v2, v4

    const-string v3, "additional_dictionary"

    aput-object v3, v2, v5

    const-string v3, "jp"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "category_dictionary"

    aput-object v3, v2, v4

    const-string v3, "download_dictionary"

    aput-object v3, v2, v5

    const-string v3, "jp"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "category_key"

    aput-object v3, v2, v4

    const-string v3, "kana_roman_input"

    aput-object v3, v2, v5

    const-string v3, "jp"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "category_external_apl"

    aput-object v3, v2, v4

    const-string v3, "opt_add_symbol_list"

    aput-object v3, v2, v5

    const-string v3, "none"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "category_key"

    aput-object v3, v2, v4

    const-string v3, "opt_display_language_switch_key"

    aput-object v3, v2, v5

    const-string v3, "none"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "category_key"

    aput-object v3, v2, v4

    const-string v3, "opt_change_otherime"

    aput-object v3, v2, v5

    const-string v3, "none"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->REMOVABLE_LIST:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .parameter "screen"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->mMap:Ljava/util/HashMap;

    .line 200
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->mListJp:Ljava/util/ArrayList;

    .line 207
    sget-object v5, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->REMOVABLE_LIST:[[Ljava/lang/String;

    array-length v4, v5

    .line 208
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 209
    sget-object v5, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->REMOVABLE_LIST:[[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 210
    .local v0, groupKey:Ljava/lang/String;
    sget-object v5, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->REMOVABLE_LIST:[[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget-object v2, v5, v6

    .line 211
    .local v2, key:Ljava/lang/String;
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;

    invoke-direct {v3, p1, v0, v2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;-><init>(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v3, ps:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v5, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->REMOVABLE_LIST:[[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const-string v6, "jp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->mListJp:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0           #groupKey:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #ps:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;
    :cond_1
    return-void
.end method


# virtual methods
.method public changeShowingByAdditionalSymbolList(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 270
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->getAdditionalSymbolListInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 271
    .local v1, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 272
    .local v0, enable:Z
    :goto_0
    const-string v2, "opt_add_symbol_list"

    invoke-virtual {p0, v2, v0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 273
    return-void

    .line 271
    .end local v0           #enable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeShowingByKana_Roman_Input(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 280
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 281
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 283
    .local v0, languageType:I
    if-nez v0, :cond_0

    .line 284
    const-string v2, "kana_roman_input"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 286
    :cond_0
    return-void
.end method

.method public changeShowingByLanguageSwitch(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 304
    const-string v0, "opt_display_language_switch_key"

    invoke-virtual {p0, v0, v2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 305
    const-string v0, "opt_change_otherime"

    invoke-virtual {p0, v0, v2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 307
    :cond_0
    return-void
.end method

.method public changeShowingByVibration(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 293
    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 294
    .local v1, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    .line 295
    .local v0, enable:Z
    const-string v2, "key_vibration"

    invoke-virtual {p0, v2, v0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 296
    return-void
.end method

.method public changeShowingByWebApi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 256
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 257
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 259
    .local v1, languageType:I
    if-nez v1, :cond_0

    .line 260
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->isEnableWebApi(Landroid/content/Context;)Z

    move-result v0

    .line 261
    .local v0, enable:Z
    const-string v3, "opt_multiwebapi"

    invoke-virtual {p0, v3, v0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 263
    .end local v0           #enable:Z
    :cond_0
    return-void
.end method

.method public showPreferenceByKey(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "show"

    .prologue
    .line 225
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;

    .line 226
    .local v0, shutter:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->showPreference(Z)V

    .line 229
    :cond_0
    return-void
.end method

.method public showPreferenceForJapanese(ZLjp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V
    .locals 5
    .parameter "show"
    .parameter "context"

    .prologue
    .line 237
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->mListJp:Ljava/util/ArrayList;

    .line 238
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 239
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 240
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;

    invoke-virtual {v3, p1}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->showPreference(Z)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    const-string v4, "user_dictionary_edit_words"

    if-nez p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v4, v3}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 244
    invoke-virtual {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->changeShowingByKana_Roman_Input(Landroid/content/Context;)V

    .line 245
    if-eqz p1, :cond_1

    .line 246
    invoke-virtual {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->changeShowingByWebApi(Landroid/content/Context;)V

    .line 247
    #calls: Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->changeShowingByAutoCursorMovement()V
    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$000(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V

    .line 249
    :cond_1
    return-void

    .line 243
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
