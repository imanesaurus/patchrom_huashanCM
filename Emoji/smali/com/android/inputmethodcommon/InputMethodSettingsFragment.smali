.class public abstract Lcom/android/inputmethodcommon/InputMethodSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "InputMethodSettingsFragment.java"

# interfaces
.implements Lcom/android/inputmethodcommon/InputMethodSettingsInterface;


# instance fields
.field private final mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-direct {v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 44
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 45
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)Z

    .line 46
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 103
    return-void
.end method

.method public setInputMethodSettingsCategoryTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setInputMethodSettingsCategoryTitle(I)V

    .line 54
    return-void
.end method

.method public setInputMethodSettingsCategoryTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setInputMethodSettingsCategoryTitle(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public setSubtypeEnablerIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerIcon(I)V

    .line 86
    return-void
.end method

.method public setSubtypeEnablerIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerIcon(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method public setSubtypeEnablerTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerTitle(I)V

    .line 70
    return-void
.end method

.method public setSubtypeEnablerTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerTitle(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
