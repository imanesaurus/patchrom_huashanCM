.class public Ljp/co/omronsoft/iwnnime/ml/MushroomControl;
.super Ljava/lang/Object;
.source "MushroomControl.java"


# static fields
.field private static mMushroomControl:Ljp/co/omronsoft/iwnnime/ml/MushroomControl;


# instance fields
.field private mMushroomResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->mMushroomControl:Ljp/co/omronsoft/iwnnime/ml/MushroomControl;

    .line 28
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->mMushroomResult:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static getInstance()Ljp/co/omronsoft/iwnnime/ml/MushroomControl;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->mMushroomControl:Ljp/co/omronsoft/iwnnime/ml/MushroomControl;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->mMushroomControl:Ljp/co/omronsoft/iwnnime/ml/MushroomControl;

    .line 40
    :cond_0
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->mMushroomControl:Ljp/co/omronsoft/iwnnime/ml/MushroomControl;

    return-object v0
.end method


# virtual methods
.method public getResultString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->mMushroomResult:Ljava/lang/String;

    .line 66
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->mMushroomResult:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->mMushroomResult:Ljava/lang/String;

    .line 69
    :cond_0
    return-object v0
.end method

.method public setResultString(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 78
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->mMushroomResult:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public startMushroomLauncher(Ljava/lang/String;)V
    .locals 3
    .parameter "oldString"

    .prologue
    .line 49
    const/4 v2, 0x0

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->mMushroomResult:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v1

    .line 52
    .local v1, wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Ljp/co/omronsoft/iwnnime/ml/Mushroom;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    const/high16 v2, 0x1800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    const-string v2, "replace_key"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method
