.class public Ljp/co/omronsoft/iwnnime/ml/KeyboardTypePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "KeyboardTypePreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardTypePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp.co.omronsoft.iwnnime.ml.SET_PORTRAIT_KEYBOARD_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardTypePreferenceActivity;->addPreferencesFromResource(I)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardTypePreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_0
.end method
