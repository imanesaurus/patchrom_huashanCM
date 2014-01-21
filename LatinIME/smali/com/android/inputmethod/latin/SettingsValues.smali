.class public final Lcom/android/inputmethod/latin/SettingsValues;
.super Ljava/lang/Object;
.source "SettingsValues.java"


# static fields
.field private static final SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdditionalSubtypes:[Landroid/view/inputmethod/InputMethodSubtype;

.field public final mAutoCap:Z

.field private final mAutoCorrectEnabled:Z

.field public final mAutoCorrectionThreshold:F

.field private final mAutoCorrectionThresholdRawValue:Ljava/lang/String;

.field public final mBigramPredictionEnabled:Z

.field public final mCorrectionEnabled:Z

.field public final mDelayUpdateOldSuggestions:I

.field public final mFxVolume:F

.field public final mGestureFloatingPreviewTextEnabled:Z

.field public final mGestureInputEnabled:Z

.field public final mGesturePreviewTrailEnabled:Z

.field public final mHintToSaveText:Ljava/lang/CharSequence;

.field public final mIncludesOtherImesInLanguageSwitchList:Z

.field private final mInputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

.field public final mKeyPreviewPopupDismissDelay:I

.field private final mKeyPreviewPopupDismissDelayRawValue:Ljava/lang/String;

.field public final mKeyPreviewPopupOn:Z

.field private final mKeypressSoundVolumeRawValue:F

.field public final mKeypressVibrationDuration:I

.field private final mPhantomSpacePromotingSymbols:Ljava/lang/String;

.field public final mShowSuggestionsSetting:Ljava/lang/String;

.field public final mShowsLanguageSwitchKey:Z

.field public final mSoundOn:Z

.field public final mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

.field public final mSuggestionVisibility:I

.field private final mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

.field private final mUsabilityStudyMode:Z

.field public final mUseContactsDict:Z

.field public final mVibrateOn:Z

.field private final mVibrationDurationSettingsRawValue:I

.field private final mVoiceKeyEnabled:Z

.field private final mVoiceKeyOnMain:Z

.field private final mVoiceMode:Ljava/lang/String;

.field public final mWeakSpaceStrippers:Ljava/lang/String;

.field public final mWeakSpaceSwappers:Ljava/lang/String;

.field public final mWordSeparators:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SettingsValues;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/SettingsValues;->SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0xat 0x7ft
        0xbt 0x0t 0xat 0x7ft
        0xct 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/InputAttributes;Landroid/content/Context;)V
    .locals 10
    .parameter "prefs"
    .parameter "inputAttributes"
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 109
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x7f0b0002

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mDelayUpdateOldSuggestions:I

    .line 110
    const v7, 0x7f0a0006

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWeakSpaceStrippers:Ljava/lang/String;

    .line 111
    const v7, 0x7f0a0005

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWeakSpaceSwappers:Ljava/lang/String;

    .line 112
    const v7, 0x7f0a0007

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mPhantomSpacePromotingSymbols:Ljava/lang/String;

    .line 113
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v7, :cond_1

    .line 114
    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWeakSpaceStrippers:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 115
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 116
    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWeakSpaceStrippers:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceSwapper(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 117
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Char code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWeakSpaceStrippers:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is both a weak space swapper and stripper."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 115
    :cond_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWeakSpaceStrippers:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0

    .line 122
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_1
    const v7, 0x7f0a0004

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->parseCsvString(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)[Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, suggestPuncsSpec:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/inputmethod/latin/SettingsValues;->createSuggestPuncList([Ljava/lang/String;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 125
    const v7, 0x7f0a0008

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

    .line 127
    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWeakSpaceStrippers:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWeakSpaceSwappers:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/inputmethod/latin/SettingsValues;->mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

    invoke-static {v7, v8, v9, v3}, Lcom/android/inputmethod/latin/SettingsValues;->createWordSeparators(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWordSeparators:Ljava/lang/String;

    .line 129
    const v7, 0x7f0a009f

    invoke-virtual {p3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mHintToSaveText:Ljava/lang/CharSequence;

    .line 132
    if-nez p2, :cond_2

    .line 133
    new-instance v7, Lcom/android/inputmethod/latin/InputAttributes;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/inputmethod/latin/InputAttributes;-><init>(Landroid/view/inputmethod/EditorInfo;Z)V

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mInputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

    .line 139
    :goto_1
    const-string v7, "auto_cap"

    const/4 v8, 0x1

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCap:Z

    .line 140
    invoke-static {p3, p1, v3}, Lcom/android/inputmethod/latin/SettingsValues;->isVibrateOn(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVibrateOn:Z

    .line 141
    const-string v7, "sound_on"

    const v8, 0x7f090007

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mSoundOn:Z

    .line 143
    invoke-static {p1, v3}, Lcom/android/inputmethod/latin/SettingsValues;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mKeyPreviewPopupOn:Z

    .line 144
    const v7, 0x7f0a0012

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, voiceModeMain:Ljava/lang/String;
    const v7, 0x7f0a0014

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, voiceModeOff:Ljava/lang/String;
    const-string v7, "voice_mode"

    invoke-interface {p1, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVoiceMode:Ljava/lang/String;

    .line 147
    const-string v7, "auto_correction_threshold"

    const v8, 0x7f0a000f

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCorrectionThresholdRawValue:Ljava/lang/String;

    .line 149
    const-string v7, "show_suggestions_setting"

    const v8, 0x7f0a000d

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mShowSuggestionsSetting:Ljava/lang/String;

    .line 151
    invoke-static {p1}, Lcom/android/inputmethod/latin/SettingsValues;->getUsabilityStudyMode(Landroid/content/SharedPreferences;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mUsabilityStudyMode:Z

    .line 152
    const-string v7, "pref_include_other_imes_in_language_switch_list"

    const/4 v8, 0x0

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mIncludesOtherImesInLanguageSwitchList:Z

    .line 154
    invoke-static {p1}, Lcom/android/inputmethod/latin/SettingsValues;->showsLanguageSwitchKey(Landroid/content/SharedPreferences;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mShowsLanguageSwitchKey:Z

    .line 155
    const-string v7, "pref_key_preview_popup_dismiss_delay"

    const v8, 0x7f0b000b

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mKeyPreviewPopupDismissDelayRawValue:Ljava/lang/String;

    .line 158
    const-string v7, "pref_key_use_contacts_dict"

    const/4 v8, 0x1

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mUseContactsDict:Z

    .line 159
    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCorrectionThresholdRawValue:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/inputmethod/latin/SettingsValues;->isAutoCorrectEnabled(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCorrectEnabled:Z

    .line 160
    invoke-static {p1, v3}, Lcom/android/inputmethod/latin/SettingsValues;->isBigramPredictionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mBigramPredictionEnabled:Z

    .line 161
    const-string v7, "pref_vibration_duration_settings"

    const/4 v8, -0x1

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVibrationDurationSettingsRawValue:I

    .line 163
    const-string v7, "pref_keypress_sound_volume"

    const/high16 v8, -0x4080

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mKeypressSoundVolumeRawValue:F

    .line 166
    invoke-static {p1, v3}, Lcom/android/inputmethod/latin/SettingsValues;->getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mKeypressVibrationDuration:I

    .line 167
    invoke-static {p1, v3}, Lcom/android/inputmethod/latin/SettingsValues;->getCurrentKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)F

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mFxVolume:F

    .line 168
    invoke-static {p1, v3}, Lcom/android/inputmethod/latin/SettingsValues;->getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mKeyPreviewPopupDismissDelay:I

    .line 169
    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCorrectionThresholdRawValue:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/inputmethod/latin/SettingsValues;->getAutoCorrectionThreshold(Landroid/content/res/Resources;Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCorrectionThreshold:F

    .line 171
    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVoiceMode:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVoiceMode:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVoiceKeyEnabled:Z

    .line 172
    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVoiceMode:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVoiceMode:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVoiceKeyOnMain:Z

    .line 173
    invoke-static {p1, v3}, Lcom/android/inputmethod/latin/SettingsValues;->getPrefAdditionalSubtypes(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/AdditionalSubtype;->createAdditionalSubtypesArray(Ljava/lang/String;)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mAdditionalSubtypes:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 175
    const v7, 0x7f09000d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 177
    .local v0, gestureInputEnabledByBuildConfig:Z
    if-eqz v0, :cond_5

    const-string v7, "gesture_input"

    const/4 v8, 0x1

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mGestureInputEnabled:Z

    .line 179
    const-string v7, "pref_gesture_preview_trail"

    const/4 v8, 0x1

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mGesturePreviewTrailEnabled:Z

    .line 180
    const-string v7, "pref_gesture_floating_preview_text"

    const/4 v8, 0x1

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mGestureFloatingPreviewTextEnabled:Z

    .line 182
    iget-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCorrectEnabled:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mInputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

    iget-boolean v7, v7, Lcom/android/inputmethod/latin/InputAttributes;->mInputTypeNoAutoCorrect:Z

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_5
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    .line 183
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/SettingsValues;->createSuggestionVisibility(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestionVisibility:I

    .line 184
    return-void

    .line 135
    .end local v0           #gestureInputEnabledByBuildConfig:Z
    .end local v5           #voiceModeMain:Ljava/lang/String;
    .end local v6           #voiceModeOff:Ljava/lang/String;
    :cond_2
    iput-object p2, p0, Lcom/android/inputmethod/latin/SettingsValues;->mInputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

    goto/16 :goto_1

    .line 171
    .restart local v5       #voiceModeMain:Ljava/lang/String;
    .restart local v6       #voiceModeOff:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 172
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 177
    .restart local v0       #gestureInputEnabledByBuildConfig:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 182
    :cond_6
    const/4 v7, 0x0

    goto :goto_5
.end method

.method private static createSuggestPuncList([Ljava/lang/String;)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 11
    .parameter "puncs"

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 189
    .local v1, puncList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    if-eqz p0, :cond_0

    .line 190
    move-object v7, p0

    .local v7, arr$:[Ljava/lang/String;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v10, v7, v8

    .line 191
    .local v10, puncSpec:Ljava/lang/String;
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    invoke-static {v10}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7fffffff

    const/4 v5, 0x5

    const-string v6, "hardcoded"

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 196
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #puncSpec:Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    const/4 v4, 0x1

    move v3, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZ)V

    return-object v0
.end method

.method private createSuggestionVisibility(Landroid/content/res/Resources;)I
    .locals 7
    .parameter "res"

    .prologue
    .line 217
    iget-object v3, p0, Lcom/android/inputmethod/latin/SettingsValues;->mShowSuggestionsSetting:Ljava/lang/String;

    .line 218
    .local v3, suggestionVisiblityStr:Ljava/lang/String;
    sget-object v0, Lcom/android/inputmethod/latin/SettingsValues;->SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 219
    .local v4, visibility:I
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    return v4

    .line 218
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v4           #visibility:I
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Bug: visibility string is not configured correctly"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static createWordSeparators(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .parameter "weakSpaceStrippers"
    .parameter "weakSpaceSwappers"
    .parameter "symbolsExcludedFromWordSeparators"
    .parameter "res"

    .prologue
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a0007

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, wordSeparators:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 210
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 209
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 213
    :cond_0
    return-object v1
.end method

.method private static getAutoCorrectionThreshold(Landroid/content/res/Resources;Ljava/lang/String;)F
    .locals 7
    .parameter "res"
    .parameter "currentAutoCorrectionSetting"

    .prologue
    .line 313
    const/high16 v4, 0x7f0e

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, autoCorrectionThresholdValues:[Ljava/lang/String;
    const v1, 0x7f7fffff

    .line 318
    .local v1, autoCorrectionThreshold:F
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    .local v0, arrayIndex:I
    if-ltz v0, :cond_0

    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 320
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 331
    .end local v0           #arrayIndex:I
    :cond_0
    :goto_0
    return v1

    .line 323
    :catch_0
    move-exception v3

    .line 325
    .local v3, e:Ljava/lang/NumberFormatException;
    const v1, 0x7f7fffff

    .line 326
    sget-object v4, Lcom/android/inputmethod/latin/SettingsValues;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot load auto correction threshold setting. currentAutoCorrectionSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", autoCorrectionThresholdValues: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCurrentKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)F
    .locals 3
    .parameter "prefs"
    .parameter "res"

    .prologue
    .line 394
    const-string v1, "pref_keypress_sound_volume"

    const/high16 v2, -0x4080

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 395
    .local v0, volume:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 399
    .end local v0           #volume:F
    :goto_0
    return v0

    .restart local v0       #volume:F
    :cond_0
    const v1, 0x7f0e0011

    const-string v2, "-1.0f"

    invoke-static {p1, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDeviceOverrideValue(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public static getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .locals 3
    .parameter "prefs"
    .parameter "res"

    .prologue
    .line 407
    const-string v1, "pref_vibration_duration_settings"

    const/4 v2, -0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 408
    .local v0, ms:I
    if-ltz v0, :cond_0

    .line 412
    .end local v0           #ms:I
    :goto_0
    return v0

    .restart local v0       #ms:I
    :cond_0
    const v1, 0x7f0e0010

    const-string v2, "-1"

    invoke-static {p1, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDeviceOverrideValue(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .locals 2
    .parameter "prefs"
    .parameter "res"

    .prologue
    .line 300
    const-string v0, "pref_key_preview_popup_dismiss_delay"

    const v1, 0x7f0b000b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLastUserHistoryWriteTime(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .locals 4
    .parameter "prefs"
    .parameter "locale"

    .prologue
    .line 424
    const-string v2, "last_user_dictionary_write_time"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LocaleUtils;->localeAndTimeStrToHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 426
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 429
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getPrefAdditionalSubtypes(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .parameter "prefs"
    .parameter "res"

    .prologue
    .line 385
    const v1, 0x7f0e0013

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/inputmethod/latin/AdditionalSubtype;->createPrefSubtypes([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, predefinedPrefSubtypes:Ljava/lang/String;
    const-string v1, "custom_input_styles"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUsabilityStudyMode(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "prefs"

    .prologue
    .line 419
    const-string v0, "usability_study_mode"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isAutoCorrectEnabled(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 2
    .parameter "res"
    .parameter "currentAutoCorrectionSetting"

    .prologue
    .line 280
    const v1, 0x7f0a000e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, autoCorrectionOff:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isBigramPredictionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .locals 2
    .parameter "prefs"
    .parameter "res"

    .prologue
    .line 307
    const-string v0, "next_word_prediction"

    const v1, 0x7f090006

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFullscreenModeAllowed(Landroid/content/res/Resources;)Z
    .locals 1
    .parameter "res"

    .prologue
    .line 376
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .locals 3
    .parameter "prefs"
    .parameter "res"

    .prologue
    const v2, 0x7f090005

    .line 289
    const v1, 0x7f090003

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 291
    .local v0, showPopupOption:Z
    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 292
    :goto_0
    return v1

    :cond_0
    const-string v1, "popup_on"

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private static isVibrateOn(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .locals 3
    .parameter "context"
    .parameter "prefs"
    .parameter "res"

    .prologue
    .line 228
    invoke-static {p0}, Lcom/android/inputmethod/latin/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/latin/VibratorUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/VibratorUtils;->hasVibrator()Z

    move-result v0

    .line 229
    .local v0, hasVibrator:Z
    if-eqz v0, :cond_0

    const-string v1, "vibrate_on"

    const v2, 0x7f090008

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setLastUserHistoryWriteTime(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "prefs"
    .parameter "locale"

    .prologue
    .line 434
    const-string v3, "last_user_dictionary_write_time"

    const-string v4, ""

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, oldStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LocaleUtils;->localeAndTimeStrToHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 436
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-static {v0}, Lcom/android/inputmethod/latin/LocaleUtils;->localeAndTimeHashMapToStr(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, newStr:Ljava/lang/String;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "last_user_dictionary_write_time"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 439
    return-void
.end method

.method public static showsLanguageSwitchKey(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "prefs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    const-string v4, "pref_suppress_language_switch_key"

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    const-string v4, "pref_suppress_language_switch_key"

    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 354
    .local v1, suppressLanguageSwitchKey:Z
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 355
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_suppress_language_switch_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    const-string v4, "pref_show_language_switch_key"

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #suppressLanguageSwitchKey:Z
    :cond_1
    const-string v2, "pref_show_language_switch_key"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public getAdditionalSubtypes()[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mAdditionalSubtypes:[Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0
.end method

.method public getInputAttributesDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mInputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/InputAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApplicationSpecifiedCompletionsOn()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mInputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    return v0
.end method

.method public isLanguageSwitchKeyEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 363
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SettingsValues;->mShowsLanguageSwitchKey:Z

    if-nez v1, :cond_0

    .line 370
    :goto_0
    return v0

    .line 366
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SettingsValues;->mIncludesOtherImesInLanguageSwitchList:Z

    if-eqz v1, :cond_1

    .line 367
    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/ImfUtils;->hasMultipleEnabledIMEsOrSubtypes(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_0

    .line 370
    :cond_1
    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/ImfUtils;->hasMultipleEnabledSubtypesInThisIme(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isPhantomSpacePromotingSymbol(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mPhantomSpacePromotingSymbols:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isSameInputType(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 1
    .parameter "editorInfo"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mInputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/InputAttributes;->isSameInputType(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    return v0
.end method

.method public isSuggestionStripVisibleInOrientation(I)Z
    .locals 3
    .parameter "orientation"

    .prologue
    const/4 v0, 0x1

    .line 244
    iget v1, p0, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestionVisibility:I

    const v2, 0x7f0a000a

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestionVisibility:I

    const v2, 0x7f0a000b

    if-ne v1, v2, :cond_1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuggestionsRequested(I)Z
    .locals 1
    .parameter "displayOrientation"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mInputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionStripVisibleInOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolExcludedFromWordSeparators(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isVoiceKeyEnabled(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 4
    .parameter "editorInfo"

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v1

    .line 336
    .local v1, shortcutImeEnabled:Z
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 337
    .local v0, inputType:I
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVoiceKeyEnabled:Z

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/latin/InputTypeUtils;->isPasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .end local v0           #inputType:I
    :cond_1
    move v0, v2

    .line 336
    goto :goto_0
.end method

.method public isVoiceKeyOnMain()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mVoiceKeyOnMain:Z

    return v0
.end method

.method public isWeakSpaceStripper(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWeakSpaceStrippers:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isWeakSpaceSwapper(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWeakSpaceSwappers:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isWordSeparator(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mWordSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public shouldInsertSpacesAutomatically()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/inputmethod/latin/SettingsValues;->mInputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/InputAttributes;->mShouldInsertSpacesAutomatically:Z

    return v0
.end method
