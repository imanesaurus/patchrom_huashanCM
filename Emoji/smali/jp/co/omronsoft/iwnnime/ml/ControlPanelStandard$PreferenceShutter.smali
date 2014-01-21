.class public Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;
.super Ljava/lang/Object;
.source "ControlPanelStandard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PreferenceShutter"
.end annotation


# instance fields
.field private mIsShow:Z

.field private mParent:Landroid/preference/PreferenceGroup;

.field private mTarget:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "screen"
    .parameter "groupKey"
    .parameter "key"

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mIsShow:Z

    .line 328
    const-string v0, "opt_multiwebapi"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const-string p2, "category_conversion_ja"

    .line 333
    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mParent:Landroid/preference/PreferenceGroup;

    .line 334
    invoke-virtual {p1, p3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mTarget:Landroid/preference/Preference;

    .line 335
    return-void
.end method


# virtual methods
.method public showPreference(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 342
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mIsShow:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mParent:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mTarget:Landroid/preference/Preference;

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mIsShow:Z

    .line 347
    if-eqz p1, :cond_2

    .line 348
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mParent:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mTarget:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mParent:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutter;->mTarget:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
