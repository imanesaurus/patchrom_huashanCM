.class public Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
.super Ljava/lang/Object;
.source "DownloadDictionaryPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadDictionary"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
        ">;"
    }
.end annotation


# instance fields
.field private mCache:Z

.field private mConvertBase:I

.field private mConvertHigh:I

.field private mEnable:Z

.field private mFile:Ljava/lang/String;

.field private mLimit:I

.field private mMorphoBase:I

.field private mMorphoHigh:I

.field private mName:Ljava/lang/String;

.field private mPredictBase:I

.field private mPredictHigh:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIZI)V
    .locals 1
    .parameter "name"
    .parameter "file"
    .parameter "convertHigh"
    .parameter "convertBase"
    .parameter "predictHigh"
    .parameter "predictBase"
    .parameter "morphoHigh"
    .parameter "morphoBase"
    .parameter "cache"
    .parameter "limit"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mEnable:Z

    .line 136
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mName:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mFile:Ljava/lang/String;

    .line 138
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mConvertHigh:I

    .line 139
    iput p4, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mConvertBase:I

    .line 140
    iput p5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mPredictHigh:I

    .line 141
    iput p6, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mPredictBase:I

    .line 142
    iput p7, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mMorphoHigh:I

    .line 143
    iput p8, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mMorphoBase:I

    .line 144
    iput-boolean p9, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mCache:Z

    .line 145
    iput p10, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mLimit:I

    .line 146
    return-void
.end method


# virtual methods
.method public cache()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mCache:Z

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    check-cast p1, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .end local p1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->compareTo(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 166
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mFile:Ljava/lang/String;

    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public convertBase()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mConvertBase:I

    return v0
.end method

.method public convertHigh()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mConvertHigh:I

    return v0
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mEnable:Z

    .line 195
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mEnable:Z

    .line 188
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 171
    instance-of v0, p1, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mFile:Ljava/lang/String;

    check-cast p1, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .end local p1
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public file()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mFile:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mFile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mEnable:Z

    return v0
.end method

.method public limit()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mLimit:I

    return v0
.end method

.method public morphoBase()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mMorphoBase:I

    return v0
.end method

.method public morphoHigh()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mMorphoHigh:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public predictBase()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mPredictBase:I

    return v0
.end method

.method public predictHigh()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->mPredictHigh:I

    return v0
.end method
