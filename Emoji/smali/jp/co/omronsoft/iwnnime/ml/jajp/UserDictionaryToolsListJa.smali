.class public Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;
.super Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;
.source "UserDictionaryToolsListJa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa$ListComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;-><init>()V

    .line 32
    const-string v2, "jp.co.omronsoft.iwnnime.ml.jajp.UserDictionaryToolsEditJa"

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;->mEditViewName:Ljava/lang/String;

    .line 33
    const-string v2, "jp.co.omronsoft.iwnnime.ml"

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;->mPackageName:Ljava/lang/String;

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, language:I
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 36
    .local v0, hashCode:I
    invoke-static {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getEngineInterface(II)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    .line 38
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
    .line 49
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa$ListComparator;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa$ListComparator;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f0600b3

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;->setTitle(I)V

    .line 44
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;->setDirPath(Ljava/lang/String;)V

    .line 45
    return-void
.end method
