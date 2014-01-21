.class public Ljp/co/omronsoft/iwnnime/ml/jajp/ClearLearningDictionaryDialogPreferenceJaJp;
.super Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;
.source "ClearLearningDictionaryDialogPreferenceJaJp.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected deleteHistories(Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 36
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->deleteToggleDataBase()V

    .line 37
    return-void
.end method

.method protected getLanguage()[I
    .locals 2

    .prologue
    .line 30
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 31
    .local v0, language:[I
    return-object v0

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method
