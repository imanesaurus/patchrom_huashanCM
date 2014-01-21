.class public Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsEditEn;
.super Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;
.source "UserDictionaryToolsEditEn.java"


# static fields
.field private static final LIST_VIEW_NAME:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.jajp.UserDictionaryToolsListEn"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;-><init>()V

    .line 27
    const-string v2, "jp.co.omronsoft.iwnnime.ml.jajp.UserDictionaryToolsListEn"

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsEditEn;->mListViewName:Ljava/lang/String;

    .line 28
    const-string v2, "jp.co.omronsoft.iwnnime.ml"

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsEditEn;->mPackageName:Ljava/lang/String;

    .line 29
    const/4 v1, 0x1

    .line 30
    .local v1, language:I
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 31
    .local v0, hashCode:I
    invoke-static {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getEngineInterface(II)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsEditEn;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    .line 33
    return-void
.end method
