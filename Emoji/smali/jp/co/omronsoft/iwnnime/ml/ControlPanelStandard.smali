.class public Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;
.super Lcom/android/inputmethodcommon/InputMethodSettingsActivity;
.source "ControlPanelStandard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;,
        Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_DICTIONARY_KEY:Ljava/lang/String; = "additional_dictionary"

.field private static final ADDITIONAL_SYMBOL_LIST_KEY:Ljava/lang/String; = "opt_add_symbol_list"

.field private static final AUTO_CAPS_KEY:Ljava/lang/String; = "auto_caps"

.field private static final AUTO_CURSOR_MOVEMENT_KEY:Ljava/lang/String; = "opt_auto_cursor_movement"

.field private static final AUTO_SPACE_KEY:Ljava/lang/String; = "opt_auto_space"

.field private static final CATEGORY_12KEY_KEY:Ljava/lang/String; = "category_12key"

.field private static final CATEGORY_CONVERSION_JA_KEY:Ljava/lang/String; = "category_conversion_ja"

.field private static final CATEGORY_CONVERSION_KEY:Ljava/lang/String; = "category_conversion"

.field private static final CATEGORY_DICTIONARY_KEY:Ljava/lang/String; = "category_dictionary"

.field private static final CATEGORY_EXTERNAL_APPLICATION_KEY:Ljava/lang/String; = "category_external_apl"

.field private static final CATEGORY_KEY_KEY:Ljava/lang/String; = "category_key"

.field public static final CATEGORY_LANGUAGE_SETTINGS_KEY:Ljava/lang/String; = "category_language_setting"

.field private static final CATEGORY_ROOT_KEY:Ljava/lang/String; = "iwnnime_pref"

.field private static final CHANGE_OTHER_IME_KEY:Ljava/lang/String; = "opt_change_otherime"

.field private static final CHOOSE_LANGUAGE_KEY:Ljava/lang/String; = "choosed_language"

.field private static final DEBUG:Z = false

.field private static final DISPLAY_LANGUAGE_SWITCH_KEY:Ljava/lang/String; = "opt_display_language_switch_key"

.field private static final DOWNLOAD_DICTIONARY_KEY:Ljava/lang/String; = "download_dictionary"

.field private static final ENABLE_HALF_ALPHABET_MODE_KEY:Ljava/lang/String; = "opt_enable_half_alphabet"

.field private static final FLICK_INPUT_KEY:Ljava/lang/String; = "flick_input"

.field public static final FLICK_SENSITIVITY_KEY:Ljava/lang/String; = "flick_sensitivity_relative"

.field private static final FLICK_TOGGLE_INPUT_KEY:Ljava/lang/String; = "flick_toggle_input"

.field private static final KANA_ROMAN_INPUT_KEY:Ljava/lang/String; = "kana_roman_input"

.field private static final KEYBOARD_TYPE_KEY:Ljava/lang/String; = "keyboard_mode_type_setting"

.field public static final LANGUAGE_SETTINGS_KEY:Ljava/lang/String; = "language_setting"

.field private static final TAG:Ljava/lang/String; = "iWnn"

.field private static final USER_DICTIONARY_EN_KEY:Ljava/lang/String; = "user_dictionary_edit_words_en"

.field private static final USER_DICTIONARY_JA_KEY:Ljava/lang/String; = "user_dictionary_edit_words_ja"

.field private static final USER_DICTIONARY_KEY:Ljava/lang/String; = "user_dictionary_edit_words"

.field private static final VIBRATION_KEY:Ljava/lang/String; = "key_vibration"

.field private static final VOICE_INPUT_CONFIRM_DIALOG:I = 0x0

.field private static final VOICE_SETTINGS_KEY:Ljava/lang/String; = "voice_input"

.field private static final WEBAPI_KEY:Ljava/lang/String; = "opt_multiwebapi"

.field private static mCurrentControlPanel:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;


# instance fields
.field private mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mOkClicked:Z

.field private mPrefChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

.field private mVoiceOn:Z

.field private mVoicePreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mCurrentControlPanel:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mOkClicked:Z

    .line 360
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->changeShowingByAutoCursorMovement()V

    return-void
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->setSummaryOfLanguageSetting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->changeShowingByLanguage(I)V

    return-void
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    return-object v0
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->onClickForVoiceInput(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mCurrentControlPanel:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    return-object v0
.end method

.method static synthetic access$600(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mVoicePreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$702(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mOkClicked:Z

    return p1
.end method

.method private changeShowingByAutoCursorMovement()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 565
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 566
    .local v1, preference:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 567
    .local v0, enable:Z
    const-string v3, "flick_input"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "flick_toggle_input"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 568
    const/4 v0, 0x0

    .line 573
    :goto_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "opt_auto_cursor_movement"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 574
    .local v2, preferenceScreen:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 575
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 577
    :cond_0
    return-void

    .line 570
    .end local v2           #preferenceScreen:Landroid/preference/Preference;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private changeShowingByLanguage(I)V
    .locals 5
    .parameter "languageType"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 449
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    .line 450
    .local v0, psm:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;
    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceForJapanese(ZLjp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V

    .line 451
    const-string v4, "auto_caps"

    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->isChineseLanguage(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 452
    const-string v1, "opt_auto_space"

    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->isChineseLanguage(I)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 453
    return-void

    :cond_0
    move v1, v3

    .line 450
    goto :goto_0

    :cond_1
    move v1, v3

    .line 451
    goto :goto_1

    :cond_2
    move v2, v3

    .line 452
    goto :goto_2
.end method

.method public static getCurrentControlPanel()Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;
    .locals 1

    .prologue
    .line 585
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mCurrentControlPanel:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    return-object v0
.end method

.method private initInputMethodSettings()V
    .locals 3

    .prologue
    .line 594
    const-string v0, "iwnnime_pref"

    const v1, 0x7f06000a

    const v2, 0x7f0600c4

    invoke-virtual {p0, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->initInputMethodSettings(Ljava/lang/String;II)V

    .line 599
    return-void
.end method

.method private onClickForVoiceInput(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 506
    const-string v0, "voice_input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mVoiceOn:Z

    if-nez v0, :cond_0

    .line 507
    const-string v0, "voice_input"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mOkClicked:Z

    .line 509
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->showDialog(I)V

    .line 512
    :cond_0
    const-string v0, "voice_input"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mVoiceOn:Z

    .line 513
    return-void
.end method

.method private onCreateVoiceInput(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "sharedPref"

    .prologue
    .line 495
    const-string v0, "voice_input"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mVoicePreference:Landroid/preference/CheckBoxPreference;

    .line 496
    const-string v0, "voice_input"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mVoiceOn:Z

    .line 497
    return-void
.end method

.method private setSummaryOfLanguageSetting(Ljava/lang/String;)V
    .locals 0
    .parameter "localeCode"

    .prologue
    .line 487
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 369
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->initInputMethodSettings()V

    .line 370
    sput-object p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mCurrentControlPanel:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    .line 371
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->initialLanguage(Landroid/content/Context;)V

    .line 373
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->addPreferencesFromResource(I)V

    .line 375
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;

    invoke-direct {v3, p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 402
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$2;

    invoke-direct {v3, p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mPrefChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 420
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 421
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 423
    const-string v3, "user_dictionary_edit_words"

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 424
    .local v1, pref:Landroid/preference/Preference;
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getUserDictionaryGatekeeper(Landroid/content/Context;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 425
    const-string v3, "user_dictionary_edit_words_ja"

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 426
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getUserDictionaryGatekeeper(Landroid/content/Context;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 427
    const-string v3, "user_dictionary_edit_words_en"

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 428
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getUserDictionaryGatekeeper(Landroid/content/Context;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 429
    const-string v3, "opt_enable_half_alphabet"

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 430
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mPrefChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 432
    const-string v3, "choosed_language"

    const-string v4, "jp"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->setSummaryOfLanguageSetting(Ljava/lang/String;)V

    .line 434
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 436
    .local v0, languageType:I
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-direct {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;-><init>(Landroid/preference/PreferenceScreen;)V

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    .line 437
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->changeShowingByLanguage(I)V

    .line 438
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    invoke-virtual {v3, p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->changeShowingByVibration(Landroid/content/Context;)V

    .line 439
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    invoke-virtual {v3, p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->changeShowingByLanguageSwitch(Landroid/content/Context;)V

    .line 441
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->onCreateVoiceInput(Landroid/content/SharedPreferences;)V

    .line 442
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 517
    packed-switch p1, :pswitch_data_0

    .line 542
    const-string v4, "iWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown dialog "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 519
    :pswitch_0
    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$3;

    invoke-direct {v2, p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$3;-><init>(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V

    .line 528
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f06015a

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06009a

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06009b

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 533
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f06015b

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f06015d

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, message:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 538
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 475
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 476
    .local v0, pref:Landroid/content/SharedPreferences;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 477
    const/4 v1, 0x0

    sput-object v1, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mCurrentControlPanel:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    .line 478
    invoke-super {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->onDestroy()V

    .line 479
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 554
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mVoicePreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 559
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 457
    invoke-super {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->onResume()V

    .line 459
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->isEnableAdditionalDictionary(Landroid/content/Context;)Z

    move-result v0

    .line 460
    .local v0, enable:Z
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    const-string v2, "additional_dictionary"

    invoke-virtual {v1, v2, v0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 461
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->isEnableDownloadDictionary(Landroid/content/Context;)Z

    move-result v0

    .line 462
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    const-string v2, "download_dictionary"

    invoke-virtual {v1, v2, v0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 464
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    invoke-virtual {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->changeShowingByWebApi(Landroid/content/Context;)V

    .line 465
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    invoke-virtual {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->changeShowingByAdditionalSymbolList(Landroid/content/Context;)V

    .line 466
    return-void
.end method
