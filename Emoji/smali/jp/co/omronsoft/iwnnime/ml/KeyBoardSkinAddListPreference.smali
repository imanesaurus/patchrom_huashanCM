.class public Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;
.super Landroid/preference/ListPreference;
.source "KeyBoardSkinAddListPreference.java"


# static fields
.field public static final KEYBOARDSKINADD_ACTION:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.ADD_SKIN"


# instance fields
.field private mStandardEntry:Ljava/lang/CharSequence;

.field private mStandardEntryValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 45
    .local v0, standardEntries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 46
    .local v1, standardEntryValues:[Ljava/lang/CharSequence;
    aget-object v2, v0, v3

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->mStandardEntry:Ljava/lang/CharSequence;

    .line 47
    aget-object v2, v1, v3

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->mStandardEntryValue:Ljava/lang/CharSequence;

    .line 48
    return-void
.end method

.method private getLabel(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;
    .locals 8
    .parameter "label"
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    .line 114
    move-object v1, p2

    .line 116
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/ListPreferenceSpan;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0014

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/ListPreferenceSpan;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 124
    .local v0, span:Ljp/co/omronsoft/iwnnime/ml/ListPreferenceSpan;
    new-instance v6, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v6, spannable:Landroid/text/SpannableString;
    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 126
    return-object v6
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v3

    .line 103
    .local v3, wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    const v0, -0xfffffe4

    .line 104
    .local v0, code:I
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    .line 106
    .local v1, ev:Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
    :try_start_0
    invoke-virtual {v3, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0           #code:I
    .end local v1           #ev:Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
    .end local v3           #wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v0       #code:I
    .restart local v1       #ev:Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
    .restart local v3       #wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    :catch_0
    move-exception v2

    .line 108
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyBoardSkinAddListPreference::onDialogClosed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 17
    .parameter "builder"

    .prologue
    .line 52
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 54
    .local v9, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v13, "jp.co.omronsoft.iwnnime.ml.ADD_SKIN"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v7, intent:Landroid/content/Intent;
    const/4 v13, 0x0

    invoke-virtual {v9, v7, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 56
    .local v10, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v13, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v13, v9}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v10, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 58
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 59
    .local v6, infoSize:I
    add-int/lit8 v13, v6, 0x1

    new-array v2, v13, [Ljava/lang/CharSequence;

    .line 60
    .local v2, entries:[Ljava/lang/CharSequence;
    add-int/lit8 v13, v6, 0x1

    new-array v3, v13, [Ljava/lang/CharSequence;

    .line 62
    .local v3, entryValues:[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 63
    .local v11, standardEntries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 64
    .local v12, standardEntryValues:[Ljava/lang/CharSequence;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->mStandardEntry:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020247

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getLabel(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v14

    aput-object v14, v2, v13

    .line 65
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->mStandardEntryValue:Ljava/lang/CharSequence;

    aput-object v14, v3, v13

    .line 67
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 68
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 69
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 72
    .local v1, actInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 73
    .local v8, label:Ljava/lang/CharSequence;
    if-nez v8, :cond_0

    .line 74
    if-eqz v1, :cond_1

    .line 75
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v5, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getLabel(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v14

    aput-object v14, v2, v13

    .line 82
    if-eqz v1, :cond_2

    .line 83
    add-int/lit8 v13, v4, 0x1

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v14, v3, v13

    .line 67
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const-string v8, ""

    goto :goto_1

    .line 85
    :cond_2
    add-int/lit8 v13, v4, 0x1

    const-string v14, ""

    aput-object v14, v3, v13

    goto :goto_2

    .line 89
    .end local v1           #actInfo:Landroid/content/pm/ActivityInfo;
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #label:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 90
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljp/co/omronsoft/iwnnime/ml/KeyBoardSkinAddListPreference;->setValue(Ljava/lang/String;)V

    .line 94
    invoke-super/range {p0 .. p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 95
    return-void
.end method
