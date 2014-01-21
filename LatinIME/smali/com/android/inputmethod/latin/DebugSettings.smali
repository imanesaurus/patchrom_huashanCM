.class public final Lcom/android/inputmethod/latin/DebugSettings;
.super Landroid/preference/PreferenceFragment;
.source "DebugSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDebugMode:Landroid/preference/CheckBoxPreference;

.field private mServiceNeedsRestart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/inputmethod/latin/DebugSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/DebugSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/DebugSettings;->mServiceNeedsRestart:Z

    return-void
.end method

.method private updateDebugMode()V
    .locals 9

    .prologue
    .line 85
    iget-object v6, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    if-nez v6, :cond_0

    .line 105
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v6, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 89
    .local v3, isDebugMode:Z
    const-string v5, ""

    .line 91
    .local v5, version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DebugSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 94
    .local v2, info:Landroid/content/pm/PackageInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 98
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #packageName:Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_1

    .line 99
    iget-object v6, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v6, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/android/inputmethod/latin/DebugSettings;->TAG:Ljava/lang/String;

    const-string v7, "Could not find version info."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v6, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DebugSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v6, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v3, 0x7f060057

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DebugSettings;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/DebugSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 49
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 51
    const-string v3, "usability_study_mode"

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 52
    .local v2, usabilityStudyPref:Landroid/preference/Preference;
    instance-of v3, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 53
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 54
    .local v0, checkbox:Landroid/preference/CheckBoxPreference;
    const-string v3, "usability_study_mode"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    const v3, 0x7f0a0029

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 59
    .end local v0           #checkbox:Landroid/preference/CheckBoxPreference;
    :cond_0
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/DebugSettings;->mServiceNeedsRestart:Z

    .line 60
    const-string v3, "debug_mode"

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/DebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    .line 61
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DebugSettings;->updateDebugMode()V

    .line 62
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    .line 72
    const-string v0, "debug_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/inputmethod/latin/DebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug_mode"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DebugSettings;->updateDebugMode()V

    .line 76
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/DebugSettings;->mServiceNeedsRestart:Z

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v0, "force_non_distinct_multitouch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_keyboard_layout_20110916"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :cond_2
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/DebugSettings;->mServiceNeedsRestart:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 67
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/DebugSettings;->mServiceNeedsRestart:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 68
    :cond_0
    return-void
.end method
