.class Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;
.super Ljava/lang/Object;
.source "AdditionalDictionaryPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalDictionary"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;",
        ">;"
    }
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "path"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->mTitle:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->mPath:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

    .end local p1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->compareTo(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 96
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->mTitle:Ljava/lang/String;

    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 101
    instance-of v0, p1, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->mTitle:Ljava/lang/String;

    check-cast p1, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

    .end local p1
    iget-object v1, p1, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->mTitle:Ljava/lang/String;

    return-object v0
.end method
