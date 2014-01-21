.class public abstract Lcom/android/inputmethodcommon/InputMethodSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "InputMethodSettingsActivity.java"

# interfaces
.implements Lcom/android/inputmethodcommon/InputMethodSettingsInterface;


# instance fields
.field public final mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-direct {v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    return-void
.end method


# virtual methods
.method public initInputMethodSettings(Ljava/lang/String;II)V
    .locals 2
    .parameter "screenKey"
    .parameter "categoryTitle"
    .parameter "subtypeEnablerTitle"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->setInputMethodSettingsCategoryTitle(I)V

    .line 111
    invoke-virtual {p0, p3}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->setSubtypeEnablerTitle(I)V

    .line 112
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)Z

    .line 113
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->updateInputMethodSettings()V

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 40
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 97
    return-void
.end method

.method public setInputMethodSettingsCategoryTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setInputMethodSettingsCategoryTitle(I)V

    .line 48
    return-void
.end method

.method public setInputMethodSettingsCategoryTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setInputMethodSettingsCategoryTitle(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public setSubtypeEnablerIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerIcon(I)V

    .line 80
    return-void
.end method

.method public setSubtypeEnablerIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerIcon(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method

.method public setSubtypeEnablerTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerTitle(I)V

    .line 64
    return-void
.end method

.method public setSubtypeEnablerTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerTitle(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public updateInputMethodSettings()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 123
    return-void
.end method
