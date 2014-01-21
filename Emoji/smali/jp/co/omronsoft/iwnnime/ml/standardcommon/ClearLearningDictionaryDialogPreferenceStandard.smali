.class public Ljp/co/omronsoft/iwnnime/ml/standardcommon/ClearLearningDictionaryDialogPreferenceStandard;
.super Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;
.source "ClearLearningDictionaryDialogPreferenceStandard.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected deleteHistories(Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;)V
    .locals 2
    .parameter "engine"

    .prologue
    .line 45
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/ClearLearningDictionaryDialogPreferenceStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Landroid/content/Context;)I

    move-result v0

    .line 46
    .local v0, language:I
    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->deleteToggleDataBase()V

    .line 51
    :goto_0
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->deleteAdditionalSymbolHistories()V

    .line 52
    return-void

    .line 49
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->deleteDataBase(I)V

    goto :goto_0
.end method

.method protected getLanguage()[I
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/ClearLearningDictionaryDialogPreferenceStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Landroid/content/Context;)I

    move-result v0

    .line 35
    .local v0, chosenLanguage:I
    if-nez v0, :cond_0

    .line 36
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 40
    .local v1, language:[I
    :goto_0
    return-object v1

    .line 38
    .end local v1           #language:[I
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .restart local v1       #language:[I
    goto :goto_0

    .line 36
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method
