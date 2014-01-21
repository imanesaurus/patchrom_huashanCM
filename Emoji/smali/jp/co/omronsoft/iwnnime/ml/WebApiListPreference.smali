.class public Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;
.super Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;
.source "WebApiListPreference.java"


# static fields
.field private static final MAX_ADD_WEBAPI_LIST:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public static isEnableWebApi(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    .line 98
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->getValues()Ljava/util/Set;

    move-result-object v1

    .line 100
    .local v1, oldValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->onDialogClosed(Z)V

    .line 102
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->getValues()Ljava/util/Set;

    move-result-object v3

    .line 104
    .local v3, selectedValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 105
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->setValues(Ljava/util/Set;)V

    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f06006b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060051

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06009a

    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference$1;

    invoke-direct {v6, p0, v3}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;Ljava/util/Set;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06009b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 119
    .local v2, optionsDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 122
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #optionsDialog:Landroid/app/AlertDialog;
    :cond_1
    return-void
.end method

.method public onMultiChoiceItemsClick(IZ)V
    .locals 5
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->onMultiChoiceItemsClick(IZ)V

    .line 128
    const/4 v0, 0x1

    .line 129
    .local v0, enabled:Z
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->getCheckedCount()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 130
    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060052

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x1020019

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object v1, v2

    check-cast v1, Landroid/widget/Button;

    .line 139
    .local v1, positiveButton:Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 11
    .parameter "builder"

    .prologue
    .line 43
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 45
    .local v8, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "jp.co.omronsoft.iwnnime.ml.GET_CANDIDATES_FROM_PLURALITY"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v6, intent:Landroid/content/Intent;
    const/4 v10, 0x0

    invoke-virtual {v8, v6, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 47
    .local v9, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v10, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v10, v8}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 50
    .local v5, infoSize:I
    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 51
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 53
    .local v2, entryValues:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 54
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 55
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 58
    .local v0, actInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v4, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 59
    .local v7, label:Ljava/lang/CharSequence;
    if-nez v7, :cond_0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 66
    :cond_0
    :goto_1
    aput-object v7, v1, v3

    .line 68
    if-eqz v0, :cond_2

    .line 69
    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v10, v2, v3

    .line 53
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const-string v7, ""

    goto :goto_1

    .line 71
    :cond_2
    const-string v10, ""

    aput-object v10, v2, v3

    goto :goto_2

    .line 75
    .end local v0           #actInfo:Landroid/content/pm/ActivityInfo;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v7           #label:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 78
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 79
    return-void
.end method
