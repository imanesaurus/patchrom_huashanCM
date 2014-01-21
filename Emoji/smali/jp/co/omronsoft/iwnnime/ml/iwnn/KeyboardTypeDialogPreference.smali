.class public Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;
.super Landroid/preference/DialogPreference;
.source "KeyboardTypeDialogPreference.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mKeyboardTypeCommonPrefEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->mKeyboardTypeCommonPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 32
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 34
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private setKeyboardTypePreferences(II)V
    .locals 4
    .parameter "keyboardType"
    .parameter "displayMode"

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->mKeyboardTypeCommonPrefEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input_mode_type_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->mKeyboardTypeCommonPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    if-eqz p1, :cond_0

    .line 45
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, preference:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->mKeyboardTypeCommonPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v1, "input_mode_type_comm_12_0"

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-direct {p0, v4, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->setKeyboardTypePreferences(II)V

    .line 67
    .end local v0           #preference:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v0       #preference:Landroid/content/SharedPreferences;
    :cond_1
    const-string v1, "input_mode_type_comm_qwerty_0"

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-direct {p0, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->setKeyboardTypePreferences(II)V

    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "input_mode_type_comm_last_0"

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    invoke-direct {p0, v5, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->setKeyboardTypePreferences(II)V

    goto :goto_0

    .line 56
    :cond_3
    const-string v1, "input_mode_type_comm_12_1"

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    invoke-direct {p0, v4, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->setKeyboardTypePreferences(II)V

    goto :goto_0

    .line 59
    :cond_4
    const-string v1, "input_mode_type_comm_qwerty_1"

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 61
    invoke-direct {p0, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->setKeyboardTypePreferences(II)V

    goto :goto_0

    .line 62
    :cond_5
    const-string v1, "input_mode_type_comm_last_1"

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeDialogPreference;->setKeyboardTypePreferences(II)V

    goto :goto_0
.end method
