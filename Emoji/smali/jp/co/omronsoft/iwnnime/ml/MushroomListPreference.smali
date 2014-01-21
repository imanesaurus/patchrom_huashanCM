.class public Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;
.super Landroid/preference/ListPreference;
.source "MushroomListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    .line 27
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, oldValue:Ljava/lang/String;
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "use"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;->setValue(Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f06006b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060070

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f06009a

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference$1;

    invoke-direct {v5, p0}, Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/MushroomListPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f06009b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 46
    .local v2, optionsDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 49
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #optionsDialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method
