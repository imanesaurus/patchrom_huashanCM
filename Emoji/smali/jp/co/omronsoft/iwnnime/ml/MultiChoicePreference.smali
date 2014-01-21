.class public Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;
.super Landroid/preference/DialogPreference;
.source "MultiChoicePreference.java"


# instance fields
.field private mChecked:[Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntries:[Ljava/lang/CharSequence;

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void

    .line 42
    nop

    :array_0
    .array-data 0x4
        0xb2t 0x0t 0x1t 0x1t
        0xf8t 0x1t 0x1t 0x1t
    .end array-data
.end method


# virtual methods
.method public getCheckedCount()I
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, checkedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mChecked:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 160
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mChecked:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mValues:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mValues:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 127
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-eqz p1, :cond_0

    .line 132
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v1, newValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 134
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mChecked:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->setValues(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public onMultiChoiceItemsClick(IZ)V
    .locals 1
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 149
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mChecked:[Z

    aput-boolean p2, v0, p1

    .line 150
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 97
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    .line 121
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v4, v4

    new-array v4, v4, [Z

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mChecked:[Z

    .line 102
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 104
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mValues:Ljava/util/Set;

    .line 106
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mValues:Ljava/util/Set;

    if-eqz v4, :cond_2

    .line 107
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mValues:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    .local v3, value:Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 110
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 111
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mChecked:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    goto :goto_1

    .line 116
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #index:I
    .end local v3           #value:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mChecked:[Z

    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference$1;

    invoke-direct {v6, p0}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;)V

    invoke-virtual {p1, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entries"

    .prologue
    .line 55
    invoke-virtual {p1}, [Ljava/lang/CharSequence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntries:[Ljava/lang/CharSequence;

    .line 56
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entryValues"

    .prologue
    .line 64
    invoke-virtual {p1}, [Ljava/lang/CharSequence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 65
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->mValues:Ljava/util/Set;

    .line 75
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method
