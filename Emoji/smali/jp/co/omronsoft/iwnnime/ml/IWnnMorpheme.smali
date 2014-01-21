.class public Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;
.super Ljava/lang/Object;
.source "IWnnMorpheme.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBind:Z

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;

    .line 22
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme$1;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mServiceConn:Landroid/content/ServiceConnection;

    .line 46
    return-void
.end method

.method static synthetic access$002(Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;)Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;

    return-object p1
.end method


# virtual methods
.method public connect(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 57
    if-nez p1, :cond_1

    .line 58
    const/4 v1, 0x0

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 63
    .local v1, success:Z
    if-eqz v1, :cond_0

    .line 64
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mIsBind:Z

    .line 65
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 100
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mIsBind:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mIsBind:Z

    .line 104
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->disconnect()V

    .line 75
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 76
    return-void
.end method

.method public splitWord(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3
    .parameter "input"
    .parameter "readingsMax"

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;

    invoke-interface {v1, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;->splitWord(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnMorpheme"

    const-string v2, "splitWord"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
