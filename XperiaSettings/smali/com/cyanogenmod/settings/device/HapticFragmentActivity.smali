.class public Lcom/cyanogenmod/settings/device/HapticFragmentActivity;
.super Landroid/preference/PreferenceFragment;
.source "HapticFragmentActivity.java"


# static fields
.field private static sVibratorTuning:Z


# instance fields
.field private mVibratorTuning:Lcom/cyanogenmod/settings/device/VibratorTuningPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/HapticFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f05

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/cyanogenmod/settings/device/HapticFragmentActivity;->sVibratorTuning:Z

    .line 49
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/device/HapticFragmentActivity;->addPreferencesFromResource(I)V

    .line 51
    sget-boolean v2, Lcom/cyanogenmod/settings/device/HapticFragmentActivity;->sVibratorTuning:Z

    if-eqz v2, :cond_0

    .line 52
    const/high16 v2, 0x7f06

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, vibratorFilePath:Ljava/lang/String;
    const-string v2, "vibrator_tuning"

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/device/HapticFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;

    iput-object v2, p0, Lcom/cyanogenmod/settings/device/HapticFragmentActivity;->mVibratorTuning:Lcom/cyanogenmod/settings/device/VibratorTuningPreference;

    .line 54
    iget-object v2, p0, Lcom/cyanogenmod/settings/device/HapticFragmentActivity;->mVibratorTuning:Lcom/cyanogenmod/settings/device/VibratorTuningPreference;

    invoke-static {v1}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->isSupported(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->setEnabled(Z)V

    .line 56
    .end local v1           #vibratorFilePath:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, key:Ljava/lang/String;
    const-string v1, "XperiaSettings_Haptic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x1

    return v1
.end method
