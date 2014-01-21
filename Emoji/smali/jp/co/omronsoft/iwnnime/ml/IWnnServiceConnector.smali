.class public Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;
.super Ljava/lang/Object;
.source "IWnnServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;
    }
.end annotation


# static fields
.field public static final BREAK_SEQUENCE:I = 0x2

.field private static final DEBUG:Z = false

.field public static final EISUKANA:I = 0x1

.field public static final ERR_NO_DICTIONARY:I = -0x7e

.field public static final INIT:I = 0x1

.field public static final KAOMOJI:I = 0x2

.field public static final LEARNDIC:I = 0xb

.field public static final NORMAL:I = 0x0

.field public static final RETCODE_INVALID_STATE:I = -0x7f

.field public static final RETCODE_NG:I = -0x1

.field public static final RETCODE_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "iWnn"

.field public static final USERDIC:I = 0xa


# instance fields
.field private mConnectListener:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;

.field private mContext:Landroid/content/Context;

.field private mIsBind:Z

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    .line 62
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceConn:Landroid/content/ServiceConnection;

    .line 105
    return-void
.end method

.method static synthetic access$002(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;Ljp/co/omronsoft/iwnnime/ml/IEngineService;)Ljp/co/omronsoft/iwnnime/ml/IEngineService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    return-object p1
.end method

.method static synthetic access$102(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mIsBind:Z

    return p1
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;)Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mConnectListener:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;

    return-object v0
.end method


# virtual methods
.method public addWord(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "candidate"
    .parameter "stroke"

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v1, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->addWord(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 363
    :goto_0
    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnServiceConnector"

    const-string v2, "addWord"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public connect(Landroid/content/Context;Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;)I
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, -0x1

    .line 116
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v2

    .line 120
    :cond_1
    const/4 v1, 0x0

    .line 121
    .local v1, success:Z
    iget-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mIsBind:Z

    if-nez v3, :cond_3

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v3, Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "package"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 127
    if-eqz v1, :cond_2

    .line 128
    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mConnectListener:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;

    .line 129
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mContext:Landroid/content/Context;

    .line 134
    :cond_2
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 132
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/16 v2, -0x7f

    goto :goto_0
.end method

.method public convert(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .parameter "stroke"
    .parameter "divide"

    .prologue
    .line 329
    :try_start_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v2, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->convert(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "IWnnServiceConnector"

    const-string v3, "convert"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "result"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public deleteWord(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "candidate"
    .parameter "stroke"

    .prologue
    const/4 v2, -0x1

    .line 403
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v3, :cond_2

    .line 404
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->deleteWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 405
    .local v1, ret:I
    :goto_0
    if-gez v1, :cond_0

    .line 406
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 413
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 404
    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "IWnnServiceConnector"

    const-string v4, "deleteWord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 413
    goto :goto_1
.end method

.method public disconnect()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 744
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mIsBind:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 746
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mIsBind:Z

    .line 747
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    .line 750
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->disconnect()I

    .line 145
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 146
    return-void
.end method

.method public getDictionaryType()I
    .locals 3

    .prologue
    .line 728
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getDictionaryType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 734
    :goto_0
    return v1

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnServiceConnector"

    const-string v2, "getDictionaryType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextCandidate(I)Landroid/os/Bundle;
    .locals 4
    .parameter "numberOfCandidates"

    .prologue
    .line 230
    :try_start_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v2, p1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getNextCandidate(I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "IWnnServiceConnector"

    const-string v3, "getNextCandidate"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "result"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getNextCandidateWithAnnotation(I)Landroid/os/Bundle;
    .locals 4
    .parameter "numberOfCandidates"

    .prologue
    .line 271
    :try_start_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v2, p1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getNextCandidateWithAnnotation(I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "IWnnServiceConnector"

    const-string v3, "getNextCandidateWithAnnotation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "result"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getStatus()I
    .locals 3

    .prologue
    .line 713
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 719
    :goto_0
    return v1

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnServiceConnector"

    const-string v2, "getStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init(I)I
    .locals 3
    .parameter "initLevel"

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->init(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnServiceConnector"

    const-string v2, "init"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public initializeDictionary()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 445
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v3, :cond_2

    .line 446
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->initializeDictionary()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 447
    .local v1, ret:I
    :goto_0
    if-gez v1, :cond_0

    .line 448
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 455
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 446
    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "IWnnServiceConnector"

    const-string v4, "initializeDictionary"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 455
    goto :goto_1
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    .line 763
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public learnCandidate(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, -0x1

    .line 297
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v3, :cond_2

    .line 298
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3, p1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->learnCandidate(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 299
    .local v1, ret:I
    :goto_0
    if-gez v1, :cond_0

    .line 300
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 307
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 298
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "IWnnServiceConnector"

    const-string v4, "learnCandidate"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 307
    goto :goto_1
.end method

.method public learnCandidateNoStore(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, -0x1

    .line 533
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v3, :cond_2

    .line 534
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3, p1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->learnCandidateNoStore(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 535
    .local v1, ret:I
    :goto_0
    if-gez v1, :cond_0

    .line 536
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 543
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 534
    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "IWnnServiceConnector"

    const-string v4, "learnCandidateNoStore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 543
    goto :goto_1
.end method

.method public learnWord(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "candidate"
    .parameter "stroke"

    .prologue
    const/4 v2, -0x1

    .line 556
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v3, :cond_2

    .line 557
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->learnWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 558
    .local v1, ret:I
    :goto_0
    if-gez v1, :cond_0

    .line 559
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 566
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 557
    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "IWnnServiceConnector"

    const-string v4, "learnWord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 566
    goto :goto_1
.end method

.method public learnWordNoStore(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "candidate"
    .parameter "stroke"

    .prologue
    const/4 v2, -0x1

    .line 581
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v3, :cond_2

    .line 582
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->learnWordNoStore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 583
    .local v1, ret:I
    :goto_0
    if-gez v1, :cond_0

    .line 584
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 591
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 582
    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "IWnnServiceConnector"

    const-string v4, "learnWordNoStore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 591
    goto :goto_1
.end method

.method public predict(Ljava/lang/String;II)I
    .locals 3
    .parameter "stroke"
    .parameter "minLen"
    .parameter "maxLen"

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v1, p1, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->predict(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 202
    :goto_0
    return v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnServiceConnector"

    const-string v2, "predict"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public searchWords(Ljava/lang/String;)I
    .locals 3
    .parameter "stroke"

    .prologue
    .line 380
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->searchWords(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 386
    :goto_0
    return v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnServiceConnector"

    const-string v2, "searchWords"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setDictionary(Ljava/lang/String;IIZZZZZZ)I
    .locals 12
    .parameter "configurationFile"
    .parameter "language"
    .parameter "dictionary"
    .parameter "flexibleSearch"
    .parameter "tenKeyType"
    .parameter "emojiFilter"
    .parameter "emailFilter"
    .parameter "convertCandidates"
    .parameter "learnNumber"

    .prologue
    .line 615
    :try_start_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->setDictionary(Ljava/lang/String;IIZZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v11, 0x0

    .line 618
    .local v11, ret:I
    :goto_0
    if-gez v11, :cond_0

    .line 619
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 626
    .end local v11           #ret:I
    :cond_0
    :goto_1
    return v11

    .line 616
    :cond_1
    const/4 v11, -0x1

    goto :goto_0

    .line 623
    :catch_0
    move-exception v10

    .line 624
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "IWnnServiceConnector"

    const-string v1, "setDictionary"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    .end local v10           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v11, -0x1

    goto :goto_1
.end method

.method public setDictionaryDecoratedPict(Ljava/lang/String;IIZZZZZZZ)I
    .locals 13
    .parameter "configurationFile"
    .parameter "language"
    .parameter "dictionary"
    .parameter "flexibleSearch"
    .parameter "tenKeyType"
    .parameter "emojiFilter"
    .parameter "decoemojiFilter"
    .parameter "emailFilter"
    .parameter "convertCandidates"
    .parameter "learnNumber"

    .prologue
    .line 653
    :try_start_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->setDictionaryDecoratedPict(Ljava/lang/String;IIZZZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x0

    .line 657
    .local v12, ret:I
    :goto_0
    if-gez v12, :cond_0

    .line 658
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 665
    .end local v12           #ret:I
    :cond_0
    :goto_1
    return v12

    .line 654
    :cond_1
    const/4 v12, -0x1

    goto :goto_0

    .line 662
    :catch_0
    move-exception v11

    .line 663
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "IWnnServiceConnector"

    const-string v1, "setDictionaryDecoratedPict"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v12, -0x1

    goto :goto_1
.end method

.method public setLearnDictionary()I
    .locals 3

    .prologue
    .line 488
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->setLearnDictionary()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    const/4 v1, 0x0

    .line 495
    :goto_0
    return v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnServiceConnector"

    const-string v2, "setLearnDictionary"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setNormalDictionary()I
    .locals 3

    .prologue
    .line 508
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->setNormalDictionary()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    const/4 v1, 0x0

    .line 515
    :goto_0
    return v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnServiceConnector"

    const-string v2, "setNormalDictionary"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setUserDictionary()I
    .locals 3

    .prologue
    .line 468
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->setUserDictionary()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    const/4 v1, 0x0

    .line 475
    :goto_0
    return v1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnServiceConnector"

    const-string v2, "setUserDictionary"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public startInput()I
    .locals 3

    .prologue
    .line 697
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->startInput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    const/4 v1, 0x0

    .line 704
    :goto_0
    return v1

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IWnnServiceConnector"

    const-string v2, "startInput"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public undo()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 676
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v3, :cond_2

    .line 677
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->undo()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 678
    .local v1, ret:I
    :goto_0
    if-gez v1, :cond_0

    .line 679
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 686
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 677
    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "IWnnServiceConnector"

    const-string v4, "undo"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 686
    goto :goto_1
.end method

.method public writeoutDictionary()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 424
    :try_start_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v3, :cond_2

    .line 425
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->writeoutDictionary()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 426
    .local v1, ret:I
    :goto_0
    if-gez v1, :cond_0

    .line 427
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 434
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 425
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "IWnnServiceConnector"

    const-string v4, "writeoutDictionary"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 434
    goto :goto_1
.end method
