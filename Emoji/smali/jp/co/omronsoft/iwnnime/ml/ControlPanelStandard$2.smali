.class Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$2;
.super Ljava/lang/Object;
.source "ControlPanelStandard.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 404
    const-string v1, "opt_enable_half_alphabet"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$500()Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    move-result-object v1

    const-string v2, "opt_display_language_switch_key"

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 407
    .local v0, pref:Landroid/preference/Preference;
    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 408
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 410
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$500()Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    move-result-object v1

    const-string v2, "opt_change_otherime"

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 411
    .restart local v0       #pref:Landroid/preference/Preference;
    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 412
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 416
    :cond_1
    return v3
.end method
