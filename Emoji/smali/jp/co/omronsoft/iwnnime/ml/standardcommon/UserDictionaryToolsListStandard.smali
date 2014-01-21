.class public Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;
.super Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;
.source "UserDictionaryToolsListStandard.java"


# instance fields
.field private mLanguage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;->mLanguage:I

    .line 33
    const-string v0, "jp.co.omronsoft.iwnnime.ml.standardcommon.UserDictionaryToolsEditStandard"

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;->mEditViewName:Ljava/lang/String;

    .line 34
    const-string v0, "jp.co.omronsoft.iwnnime.ml"

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;->mPackageName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getInstance()Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getLanguageTypeOfUserDictionary()I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;->mLanguage:I

    .line 44
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;->mLanguage:I

    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->isNoStroke(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;->mIsNoStroke:Z

    .line 47
    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;->mLanguage:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getEngineInterface(II)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    .line 49
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsListStandard;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;->setDirPath(Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method
