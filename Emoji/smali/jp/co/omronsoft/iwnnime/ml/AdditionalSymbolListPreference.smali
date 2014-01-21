.class public Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolListPreference;
.super Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;
.source "AdditionalSymbolListPreference.java"


# static fields
.field private static final MAX_ADD_SYMBOL_LIST:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onMultiChoiceItemsClick(IZ)V
    .locals 5
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->onMultiChoiceItemsClick(IZ)V

    .line 78
    const/4 v0, 0x1

    .line 79
    .local v0, enabled:Z
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolListPreference;->getCheckedCount()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060073

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 88
    :cond_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x1020019

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object v1, v2

    check-cast v1, Landroid/widget/Button;

    .line 89
    .local v1, positiveButton:Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 10
    .parameter "builder"

    .prologue
    .line 35
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 37
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolList;->getAdditionalSymbolListInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 39
    .local v8, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 41
    .local v5, infoSize:I
    if-lez v5, :cond_4

    .line 42
    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 43
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 45
    .local v2, entryValues:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 46
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 47
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 50
    .local v0, actInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 51
    .local v6, label:Ljava/lang/CharSequence;
    if-nez v6, :cond_0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 58
    :cond_0
    :goto_1
    aput-object v6, v1, v3

    .line 60
    if-eqz v0, :cond_2

    .line 61
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v9, v2, v3

    .line 45
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 63
    :cond_2
    const-string v9, ""

    aput-object v9, v2, v3

    goto :goto_2

    .line 67
    .end local v0           #actInfo:Landroid/content/pm/ActivityInfo;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #label:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/AdditionalSymbolListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 71
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #entryValues:[Ljava/lang/CharSequence;
    .end local v3           #i:I
    :cond_4
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 72
    return-void
.end method
