.class public final Lcom/android/inputmethod/latin/Settings;
.super Lcom/android/inputmethodcommon/InputMethodSettingsFragment;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

.field private mBigramPrediction:Landroid/preference/CheckBoxPreference;

.field private mDebugSettingsPreference:Landroid/preference/Preference;

.field private mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

.field private mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

.field private mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

.field private mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

.field private mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

.field private mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

.field private mVoicePreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->showKeypressVibrationDurationSettingsDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->showKeypressSoundVolumeSettingDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/Settings;->updateKeypressVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/Settings;->updateKeypressSoundVolumeSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    return-void
.end method

.method private ensureConsistencyOfAutoCorrectionSettings()V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, autoCorrectionOff:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, currentSetting:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v2}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshEnablingsOfKeypressSoundAndVibrationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 5
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 339
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/latin/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/latin/VibratorUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/VibratorUtils;->hasVibrator()Z

    move-result v0

    .line 342
    .local v0, hasVibratorHardware:Z
    const-string v3, "vibrate_on"

    const v4, 0x7f090008

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 344
    .local v2, vibrateOnByUser:Z
    iget-object v4, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v4, v3}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 348
    .end local v0           #hasVibratorHardware:Z
    .end local v2           #vibrateOnByUser:Z
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    .line 349
    const-string v3, "sound_on"

    const v4, 0x7f090007

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 351
    .local v1, soundOn:Z
    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-static {v3, v1}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 353
    .end local v1           #soundOn:Z
    :cond_1
    return-void

    .line 344
    .restart local v0       #hasVibratorHardware:Z
    .restart local v2       #vibrateOnByUser:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static setPreferenceEnabled(Landroid/preference/Preference;Z)V
    .locals 0
    .parameter "preference"
    .parameter "enabled"

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 101
    :cond_0
    return-void
.end method

.method private showKeypressSoundVolumeSettingDialog()V
    .locals 11

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 423
    .local v2, context:Landroid/content/Context;
    const-string v8, "audio"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 424
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 425
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 426
    .local v4, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0a00bc

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 428
    const v8, 0x104000a

    new-instance v9, Lcom/android/inputmethod/latin/Settings$6;

    invoke-direct {v9, p0, v6, v4}, Lcom/android/inputmethod/latin/Settings$6;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    const/high16 v8, 0x104

    new-instance v9, Lcom/android/inputmethod/latin/Settings$7;

    invoke-direct {v9, p0}, Lcom/android/inputmethod/latin/Settings$7;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04000a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 446
    .local v7, v:Landroid/view/View;
    invoke-static {v6, v4}, Lcom/android/inputmethod/latin/SettingsValues;->getCurrentKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)F

    move-result v8

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 448
    .local v3, currentVolumeInt:I
    const v8, 0x7f08004a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

    .line 450
    const v8, 0x7f08004b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 451
    .local v5, sb:Landroid/widget/SeekBar;
    new-instance v8, Lcom/android/inputmethod/latin/Settings$8;

    invoke-direct {v8, p0, v0}, Lcom/android/inputmethod/latin/Settings$8;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/media/AudioManager;)V

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 468
    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 469
    iget-object v8, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 471
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 472
    return-void
.end method

.method private showKeypressVibrationDurationSettingsDialog()V
    .locals 10

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 366
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 367
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 368
    .local v3, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 369
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a00bb

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 370
    const v7, 0x104000a

    new-instance v8, Lcom/android/inputmethod/latin/Settings$3;

    invoke-direct {v8, p0, v5, v3}, Lcom/android/inputmethod/latin/Settings$3;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    const/high16 v7, 0x104

    new-instance v8, Lcom/android/inputmethod/latin/Settings$4;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/Settings$4;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040010

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 387
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/inputmethod/latin/SettingsValues;->getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v2

    .line 389
    .local v2, currentMs:I
    const v7, 0x7f08004d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

    .line 390
    const v7, 0x7f08004e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 391
    .local v4, sb:Landroid/widget/SeekBar;
    new-instance v7, Lcom/android/inputmethod/latin/Settings$5;

    invoke-direct {v7, p0, v1}, Lcom/android/inputmethod/latin/Settings$5;-><init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 408
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 409
    iget-object v7, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 412
    return-void
.end method

.method private updateCustomInputStylesSummary()V
    .locals 11

    .prologue
    .line 309
    const-string v10, "custom_input_styles"

    invoke-virtual {p0, v10}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 311
    .local v1, customInputStyles:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 312
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 313
    .local v6, res:Landroid/content/res/Resources;
    invoke-static {v5, v6}, Lcom/android/inputmethod/latin/SettingsValues;->getPrefAdditionalSubtypes(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, prefSubtype:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/inputmethod/latin/AdditionalSubtype;->createAdditionalSubtypesArray(Ljava/lang/String;)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 316
    .local v9, subtypes:[Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v7, styles:Ljava/lang/StringBuilder;
    move-object v0, v9

    .local v0, arr$:[Landroid/view/inputmethod/InputMethodSubtype;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v8, v0, v2

    .line 318
    .local v8, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_0
    invoke-static {v8, v6}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeDisplayName(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v8           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    return-void
.end method

.method private updateKeyPreviewPopupDelaySummary()V
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    .line 326
    .local v1, lp:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 327
    .local v0, entries:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateKeypressSoundVolumeSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/SettingsValues;->getCurrentKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    :cond_0
    return-void
.end method

.method private updateKeypressVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/SettingsValues;->getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0028

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    :cond_0
    return-void
.end method

.method private updateShowCorrectionSuggestionsSummary()V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    return-void
.end method

.method private updateVoiceModeSummary()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "icicle"

    .prologue
    .line 112
    invoke-super/range {p0 .. p1}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v20, 0x7f0a008d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->setInputMethodSettingsCategoryTitle(I)V

    .line 114
    const v20, 0x7f0a009e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->setSubtypeEnablerTitle(I)V

    .line 115
    const v20, 0x7f060056

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 118
    .local v16, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Settings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 123
    .local v3, context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/inputmethod/latin/SubtypeLocale;->init(Landroid/content/Context;)V

    .line 124
    const-string v20, "voice_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 125
    const-string v20, "show_suggestions_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v15

    .line 128
    .local v15, prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 130
    const-string v20, "auto_correction_threshold"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

    .line 132
    const-string v20, "next_word_prediction"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mBigramPrediction:Landroid/preference/CheckBoxPreference;

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/Settings;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 135
    const-string v20, "general_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 137
    .local v6, generalSettings:Landroid/preference/PreferenceGroup;
    const-string v20, "correction_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceGroup;

    .line 139
    .local v19, textCorrectionGroup:Landroid/preference/PreferenceGroup;
    const-string v20, "misc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceGroup;

    .line 142
    .local v12, miscSettings:Landroid/preference/PreferenceGroup;
    const-string v20, "debug_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mDebugSettingsPreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :cond_0
    const v20, 0x7f090002

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 156
    .local v18, showVoiceKeyOption:Z
    if-nez v18, :cond_1

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    :cond_1
    const-string v20, "pref_advanced_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 162
    .local v2, advancedSettings:Landroid/preference/PreferenceGroup;
    invoke-static {v3}, Lcom/android/inputmethod/latin/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/latin/VibratorUtils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/inputmethod/latin/VibratorUtils;->hasVibrator()Z

    move-result v20

    if-nez v20, :cond_2

    .line 163
    const-string v20, "vibrate_on"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    if-eqz v2, :cond_2

    .line 165
    const-string v20, "pref_vibration_duration_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_2
    const v20, 0x7f090003

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    .line 171
    .local v17, showKeyPreviewPopupOption:Z
    const-string v20, "pref_key_preview_popup_dismiss_delay"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    .line 173
    if-nez v17, :cond_7

    .line 174
    const-string v20, "popup_on"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    if-eqz v2, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    :cond_3
    :goto_0
    const-string v20, "pref_include_other_imes_in_language_switch_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-static {v15}, Lcom/android/inputmethod/latin/SettingsValues;->showsLanguageSwitchKey(Landroid/content/SharedPreferences;)Z

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 198
    const-string v20, "configure_dictionaries_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 200
    .local v4, dictionaryLink:Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 202
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v13

    .line 203
    .local v13, number:I
    if-gtz v13, :cond_4

    .line 204
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    :cond_4
    const v20, 0x7f09000d

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 209
    .local v8, gestureInputEnabledByBuildConfig:Z
    const-string v20, "pref_gesture_preview_trail"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 210
    .local v10, gesturePreviewTrail:Landroid/preference/Preference;
    const-string v20, "pref_gesture_floating_preview_text"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 212
    .local v7, gestureFloatingPreviewText:Landroid/preference/Preference;
    if-nez v8, :cond_9

    .line 213
    const-string v20, "gesture_input"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    invoke-virtual {v12, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    invoke-virtual {v12, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    :goto_1
    const-string v20, "pref_vibration_duration_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeypressVibrationDurationSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/inputmethod/latin/Settings$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Settings$1;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/inputmethod/latin/Settings;->updateKeypressVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 236
    :cond_5
    const-string v20, "pref_keypress_sound_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/inputmethod/latin/Settings$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Settings$2;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/inputmethod/latin/Settings;->updateKeypressSoundVolumeSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 249
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/inputmethod/latin/Settings;->refreshEnablingsOfKeypressSoundAndVibrationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 250
    return-void

    .line 179
    .end local v4           #dictionaryLink:Landroid/preference/PreferenceScreen;
    .end local v7           #gestureFloatingPreviewText:Landroid/preference/Preference;
    .end local v8           #gestureInputEnabledByBuildConfig:Z
    .end local v10           #gesturePreviewTrail:Landroid/preference/Preference;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v13           #number:I
    :cond_7
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const v21, 0x7f0a0043

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    const/16 v20, 0x1

    const v21, 0x7f0a0044

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    .line 183
    .local v5, entries:[Ljava/lang/String;
    const v20, 0x7f0b000b

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 185
    .local v14, popupDismissDelayDefaultValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v14, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_8

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 191
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings;->mKeyPreviewPopupDismissDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-static/range {v15 .. v16}, Lcom/android/inputmethod/latin/SettingsValues;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    goto/16 :goto_0

    .line 217
    .end local v5           #entries:[Ljava/lang/String;
    .end local v14           #popupDismissDelayDefaultValue:Ljava/lang/String;
    .restart local v4       #dictionaryLink:Landroid/preference/PreferenceScreen;
    .restart local v7       #gestureFloatingPreviewText:Landroid/preference/Preference;
    .restart local v8       #gestureInputEnabledByBuildConfig:Z
    .restart local v10       #gesturePreviewTrail:Landroid/preference/Preference;
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v13       #number:I
    :cond_9
    const-string v20, "gesture_input"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 218
    .local v9, gestureInputEnabledByUser:Z
    invoke-static {v10, v9}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 219
    invoke-static {v7, v9}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 270
    invoke-super {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->onDestroy()V

    .line 271
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 254
    invoke-super {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->onResume()V

    .line 255
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v0

    .line 256
    .local v0, isShortcutImeEnabled:Z
    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoiceModeSummary()V

    .line 261
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateShowCorrectionSuggestionsSummary()V

    .line 262
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateKeyPreviewPopupDelaySummary()V

    .line 263
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateCustomInputStylesSummary()V

    .line 264
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 275
    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 276
    const-string v2, "popup_on"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    const-string v2, "pref_key_preview_popup_dismiss_delay"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "popup_on"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 294
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 295
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoiceModeSummary()V

    .line 296
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateShowCorrectionSuggestionsSummary()V

    .line 297
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateKeyPreviewPopupDelaySummary()V

    .line 298
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/inputmethod/latin/Settings;->refreshEnablingsOfKeypressSoundAndVibrationSettings(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 299
    return-void

    .line 279
    :cond_1
    const-string v2, "pref_show_language_switch_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    const-string v2, "pref_include_other_imes_in_language_switch_list"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {p1}, Lcom/android/inputmethod/latin/SettingsValues;->showsLanguageSwitchKey(Landroid/content/SharedPreferences;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 282
    :cond_2
    const-string v2, "gesture_input"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 285
    .local v0, gestureInputEnabledByConfig:Z
    if-eqz v0, :cond_0

    .line 286
    const-string v2, "gesture_input"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 288
    .local v1, gestureInputEnabledByUser:Z
    const-string v2, "pref_gesture_preview_trail"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    .line 290
    const-string v2, "pref_gesture_floating_preview_text"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/Settings;->setPreferenceEnabled(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method
