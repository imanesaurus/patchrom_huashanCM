.class public Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;
.super Landroid/app/Service;
.source "IWnnMorphemeService.java"


# static fields
.field private static final CONF_FILE:Ljava/lang/String; = "/system/lib/lib_dic_morphem_ja_JP.conf.so"

.field private static final DEBUG:Z = false

.field private static final INPUT_MAX:I = 0x32

.field private static final TAG:Ljava/lang/String; = "iWnn"


# instance fields
.field private mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

.field private mMorphemeService:Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService$1;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->mMorphemeService:Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub;

    .line 103
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 131
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->mMorphemeService:Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 110
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    .line 111
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const-string v3, "/system/lib/lib_dic_morphem_ja_JP.conf.so"

    const/4 v4, 0x1

    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getFilesDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setDictionary(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v6

    .line 116
    .local v6, result:Z
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->unmountDictionary()I

    .line 123
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->destroyWnnInfo()V

    .line 124
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 125
    return-void
.end method
