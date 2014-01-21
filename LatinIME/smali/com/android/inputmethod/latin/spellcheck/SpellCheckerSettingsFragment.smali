.class public final Lcom/android/inputmethod/latin/spellcheck/SpellCheckerSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SpellCheckerSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0600c0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerSettingsFragment;->addPreferencesFromResource(I)V

    .line 38
    return-void
.end method
