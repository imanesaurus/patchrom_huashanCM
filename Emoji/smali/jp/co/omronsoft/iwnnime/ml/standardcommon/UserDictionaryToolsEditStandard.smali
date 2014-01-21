.class public Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsEditStandard;
.super Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;
.source "UserDictionaryToolsEditStandard.java"


# static fields
.field private static final LIST_VIEW_NAME:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.standardcommon.UserDictionaryToolsListStandard"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;-><init>()V

    .line 31
    const-string v0, "jp.co.omronsoft.iwnnime.ml.standardcommon.UserDictionaryToolsListStandard"

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsEditStandard;->mListViewName:Ljava/lang/String;

    .line 32
    const-string v0, "jp.co.omronsoft.iwnnime.ml"

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsEditStandard;->mPackageName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getEngineInterface()Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getLanguage()I

    move-result v0

    .line 42
    .local v0, languageType:I
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->isNoStroke(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsEditStandard;->mIsNoStroke:Z

    .line 45
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getEngineInterface()Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/UserDictionaryToolsEditStandard;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    .line 46
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method
