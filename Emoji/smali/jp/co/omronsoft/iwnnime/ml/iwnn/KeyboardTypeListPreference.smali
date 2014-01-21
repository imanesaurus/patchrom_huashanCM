.class public Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;
.super Landroid/preference/ListPreference;
.source "KeyboardTypeListPreference.java"


# static fields
.field public static final PREF_KEY_INPUT_MODE_TYPE:Ljava/lang/String; = "input_mode_type_"

.field public static final PREF_KEY_LAST_KEYBOARD_TYPE_PREFIX:Ljava/lang/String; = "last_keyboard_type_"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 108
    const-string v0, "OpenWnn"

    const-string v1, "Keyboard type setting dialog is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 9
    .parameter "builder"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 39
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 41
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 42
    .local v2, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 44
    .local v3, entryValues:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 45
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 50
    :cond_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, value:Ljava/lang/String;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 55
    .local v5, preference:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 56
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, clickedDialogEntryIndex:I
    new-instance v7, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;

    invoke-direct {v7, p0, v3, v4, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;[Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {p1, v2, v0, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {p1, v8, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    return-void
.end method
