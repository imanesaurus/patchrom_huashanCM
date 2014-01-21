.class public abstract Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;
.super Landroid/preference/DialogPreference;
.source "IWnnClearLearningDictionaryDialogPreference.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 36
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract deleteHistories(Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;)V
.end method

.method protected abstract getLanguage()[I
.end method

.method protected onDialogClosed(Z)V
    .locals 9
    .parameter "positiveResult"

    .prologue
    const/4 v8, 0x0

    .line 59
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;->getLanguage()[I

    move-result-object v2

    .line 62
    .local v2, language:[I
    array-length v4, v2

    .line 63
    .local v4, size:I
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 64
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 65
    aget v6, v2, v1

    invoke-virtual {v0, v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLocaleString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, localeString:Ljava/lang/String;
    aget v6, v2, v1

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v0, v6, v8, v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(III)Z

    .line 67
    aget v6, v2, v1

    invoke-virtual {v0, v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->initializeLearnDictionary(I)Z

    .line 70
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    .local v5, symbolEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;
    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;->deleteHistories(Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v3           #localeString:Ljava/lang/String;
    .end local v5           #symbolEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;
    :cond_0
    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnClearLearningDictionaryDialogPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0600ad

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 78
    .end local v0           #engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .end local v1           #i:I
    .end local v2           #language:[I
    .end local v4           #size:I
    :cond_1
    return-void
.end method
