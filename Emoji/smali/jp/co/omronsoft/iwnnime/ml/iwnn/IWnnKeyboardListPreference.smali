.class public Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnKeyboardListPreference;
.super Landroid/preference/ListPreference;
.source "IWnnKeyboardListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v3

    .line 32
    .local v3, wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    const v0, -0xfffffe4

    .line 33
    .local v0, code:I
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    .line 35
    .local v1, ev:Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
    :try_start_0
    invoke-virtual {v3, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0           #code:I
    .end local v1           #ev:Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
    .end local v3           #wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v0       #code:I
    .restart local v1       #ev:Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
    .restart local v3       #wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    :catch_0
    move-exception v2

    .line 37
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IWnnKeyboardListPreference::onDialogClosed "

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
