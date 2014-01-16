.class public Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;
.super Ljava/lang/Object;
.source "StaticEnvironment.java"


# static fields
.field private static m_bEnvironmentInited:Z

.field private static m_bVBoXPrepared:Z

.field private static m_szExternalStoragePath:Ljava/lang/String;

.field private static m_szV4AESKernel:Ljava/lang/String;

.field private static m_szV4AESProfile:Ljava/lang/String;

.field private static m_szV4AESRoot:Ljava/lang/String;

.field private static m_szVBoXPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bEnvironmentInited:Z

    .line 22
    sput-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CheckWritable(Ljava/lang/String;)Z
    .locals 7
    .parameter "szFileName"

    .prologue
    const/4 v3, 0x0

    .line 238
    const/16 v4, 0x10

    :try_start_0
    new-array v0, v4, [B

    .line 239
    .local v0, baBlank:[B
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, fosOutput:Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 241
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 242
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 243
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    const/4 v3, 0x1

    .line 254
    .end local v0           #baBlank:[B
    .end local v2           #fosOutput:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 246
    :catch_0
    move-exception v1

    .line 248
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FileNotFoundException, msg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 253
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException, msg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetESPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static GetV4AKernelPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    return-object v0
.end method

.method public static GetV4AProfilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    return-object v0
.end method

.method public static GetV4ARootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    return-object v0
.end method

.method public static GetVBoXExecutablePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    return-object v0
.end method

.method public static GetVBoXUsable()Z
    .locals 1

    .prologue
    .line 373
    sget-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    return v0
.end method

.method public static InitEnvironment(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 346
    sget-boolean v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bEnvironmentInited:Z

    if-eqz v2, :cond_0

    .line 369
    :goto_0
    return-void

    .line 347
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->ProceedVBoX(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->ProceedExternalStoragePath()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    :goto_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bEnvironmentInited:Z

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    .line 351
    const-string v2, ""

    sput-object v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    goto :goto_1

    .line 354
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 356
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, szExternalStoragePathName:Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    .line 359
    const-string v2, "/emulated/0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "/emulated/0/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    :cond_1
    const-string v2, "/emulated/0"

    const-string v3, "/emulated/legacy"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 362
    :cond_2
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-object v1, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 364
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ViPER4Android/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Kernel/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    goto/16 :goto_2

    .line 363
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    goto :goto_3
.end method

.method private static InstallVBox(Landroid/content/Context;)Z
    .locals 14
    .parameter "ctx"

    .prologue
    const/high16 v13, 0x3f80

    const/high16 v12, 0x3f00

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 32
    const-string v9, "ViPER4Android"

    const-string v10, "Installing vbox ..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v9, "ViPER4Android"

    const-string v10, "Extracting vbox to local"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v9, "vbox"

    const-string v10, "vbox"

    invoke-static {p0, v9, v10}, Lcom/vipercn/viper4android_v2/activity/Utils;->CopyAssetsToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 38
    const-string v8, "ViPER4Android"

    const-string v9, "Can not copy vbox to local dir"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    :goto_0
    return v7

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, szVBoxPath:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 46
    const-string v8, "ViPER4Android"

    const-string v9, "GetBasePath() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :cond_2
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "vbox"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 51
    :goto_1
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "vbox path = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v2, 0x0

    .line 56
    .local v2, bVBoXInstalled:Z
    const-string v9, "ViPER4Android"

    const-string v10, "Now install vbox with viper\'s method [toolbox]"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->OpenRootShell(Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 64
    const/4 v1, 0x1

    .line 65
    .local v1, bResult:Z
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "toolbox cat "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > /data/vbox"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 66
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command return = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v9, "toolbox chmod 777 /data/vbox"

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 68
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command return = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v9, "/data/vbox"

    invoke-static {v9, v13}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 71
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v5

    .line 72
    .local v5, nVBoXExitValue:I
    if-eqz v1, :cond_4

    if-nez v5, :cond_4

    .line 74
    const-string v9, "ViPER4Android"

    const-string v10, "Good, vbox installed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v2, 0x1

    .line 82
    :goto_2
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 89
    .end local v1           #bResult:Z
    .end local v5           #nVBoXExitValue:I
    :goto_3
    if-eqz v2, :cond_6

    move v7, v8

    .line 90
    goto/16 :goto_0

    .line 50
    .end local v2           #bVBoXInstalled:Z
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/vbox"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 79
    .restart local v1       #bResult:Z
    .restart local v2       #bVBoXInstalled:Z
    .restart local v5       #nVBoXExitValue:I
    :cond_4
    const-string v9, "ViPER4Android"

    const-string v10, "Bad, vbox install failed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x0

    goto :goto_2

    .line 86
    .end local v1           #bResult:Z
    .end local v5           #nVBoXExitValue:I
    :cond_5
    const-string v9, "ViPER4Android"

    const-string v10, "Can\'t open root shell"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 93
    :cond_6
    const-string v9, "ViPER4Android"

    const-string v10, "Now install vbox with viper\'s method [busybox]"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->OpenRootShell(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 97
    const/4 v1, 0x1

    .line 98
    .restart local v1       #bResult:Z
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "busybox cat "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > /data/vbox"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 99
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command return = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v9, "busybox chmod 777 /data/vbox"

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 101
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command return = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v9, "/data/vbox"

    invoke-static {v9, v13}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 104
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v5

    .line 105
    .restart local v5       #nVBoXExitValue:I
    if-eqz v1, :cond_7

    if-nez v5, :cond_7

    .line 107
    const-string v9, "ViPER4Android"

    const-string v10, "Good, vbox installed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, 0x1

    .line 115
    :goto_4
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 122
    .end local v1           #bResult:Z
    .end local v5           #nVBoXExitValue:I
    :goto_5
    if-eqz v2, :cond_9

    move v7, v8

    .line 123
    goto/16 :goto_0

    .line 112
    .restart local v1       #bResult:Z
    .restart local v5       #nVBoXExitValue:I
    :cond_7
    const-string v9, "ViPER4Android"

    const-string v10, "Bad, vbox install failed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x0

    goto :goto_4

    .line 119
    .end local v1           #bResult:Z
    .end local v5           #nVBoXExitValue:I
    :cond_8
    const-string v9, "ViPER4Android"

    const-string v10, "Can\'t open root shell"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 126
    :cond_9
    const-string v9, "ViPER4Android"

    const-string v10, "Now install vbox with viper\'s method [direct]"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->OpenRootShell(Z)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 130
    const/4 v1, 0x1

    .line 131
    .restart local v1       #bResult:Z
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cat "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > /data/vbox"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 132
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command return = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v9, "chmod 777 /data/vbox"

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 134
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command return = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v9, "/data/vbox"

    invoke-static {v9, v13}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 137
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v5

    .line 138
    .restart local v5       #nVBoXExitValue:I
    if-eqz v1, :cond_a

    if-nez v5, :cond_a

    .line 140
    const-string v9, "ViPER4Android"

    const-string v10, "Good, vbox installed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v2, 0x1

    .line 148
    :goto_6
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 155
    .end local v1           #bResult:Z
    .end local v5           #nVBoXExitValue:I
    :goto_7
    if-eqz v2, :cond_c

    move v7, v8

    .line 156
    goto/16 :goto_0

    .line 145
    .restart local v1       #bResult:Z
    .restart local v5       #nVBoXExitValue:I
    :cond_a
    const-string v9, "ViPER4Android"

    const-string v10, "Bad, vbox install failed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v2, 0x0

    goto :goto_6

    .line 152
    .end local v1           #bResult:Z
    .end local v5           #nVBoXExitValue:I
    :cond_b
    const-string v9, "ViPER4Android"

    const-string v10, "Can\'t open root shell"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 159
    :cond_c
    const-string v9, "ViPER4Android"

    const-string v10, "Now install vbox with roottools"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sput-boolean v8, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    .line 162
    sput-boolean v8, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 164
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 165
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    const-string v9, "/data/vbox"

    invoke-static {v6, v9, v7, v7}, Lcom/stericson/RootTools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    if-nez v9, :cond_d

    .line 169
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 171
    :goto_8
    const-string v8, "ViPER4Android"

    const-string v9, "Bad, vbox install failed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    :cond_d
    const/4 v0, 0x0

    .line 176
    .local v0, bError:Z
    new-instance v3, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    .line 177
    const-string v10, "toolbox chmod 777 /data/vbox"

    aput-object v10, v9, v7

    .line 178
    const-string v10, "busybox chmod 777 /data/vbox"

    aput-object v10, v9, v8

    const/4 v10, 0x2

    .line 179
    const-string v11, "chmod 777 /data/vbox"

    .line 176
    aput-object v11, v9, v10

    invoke-direct {v3, v7, v9}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 180
    .local v3, ccSetPermission:Lcom/stericson/RootTools/execution/CommandCapture;
    const/4 v9, 0x1

    :try_start_1
    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/stericson/RootTools/exceptions/RootDeniedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 186
    :goto_9
    :try_start_2
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 189
    :goto_a
    if-eqz v0, :cond_e

    .line 191
    const-string v8, "ViPER4Android"

    const-string v9, "Bad, vbox install failed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 181
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    goto :goto_9

    .line 182
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    const/4 v0, 0x1

    goto :goto_9

    .line 183
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .local v4, e:Ljava/util/concurrent/TimeoutException;
    const/4 v0, 0x1

    goto :goto_9

    .line 184
    .end local v4           #e:Ljava/util/concurrent/TimeoutException;
    :catch_3
    move-exception v4

    .local v4, e:Lcom/stericson/RootTools/exceptions/RootDeniedException;
    const/4 v0, 0x1

    goto :goto_9

    .line 197
    .end local v4           #e:Lcom/stericson/RootTools/exceptions/RootDeniedException;
    :cond_e
    const-string v9, "/data/vbox"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ExecuteWithoutShell(Ljava/lang/String;Ljava/io/File;)I

    move-result v9

    if-nez v9, :cond_f

    .line 199
    const-string v7, "ViPER4Android"

    const-string v9, "Good, vbox installed"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 200
    goto/16 :goto_0

    .line 204
    :cond_f
    const-string v8, "ViPER4Android"

    const-string v9, "Bad, vbox install failed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    .end local v0           #bError:Z
    .end local v3           #ccSetPermission:Lcom/stericson/RootTools/execution/CommandCapture;
    :catch_4
    move-exception v8

    goto :goto_8

    .line 187
    .restart local v0       #bError:Z
    .restart local v3       #ccSetPermission:Lcom/stericson/RootTools/execution/CommandCapture;
    :catch_5
    move-exception v9

    goto :goto_a
.end method

.method public static IsEnvironmentInited()Z
    .locals 1

    .prologue
    .line 341
    sget-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bEnvironmentInited:Z

    return v0
.end method

.method private static ProceedExternalStoragePath()V
    .locals 7

    .prologue
    .line 261
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, szExternalStoragePathName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 266
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    .line 268
    const-string v4, "/emulated/0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/emulated/0/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    :cond_0
    const-string v4, "/emulated/0"

    const-string v5, "/emulated/legacy"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 271
    :cond_1
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sput-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 273
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ViPER4Android/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Kernel/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Profile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    .line 337
    :goto_1
    return-void

    .line 272
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_3
    const/4 v1, 0x0

    .line 281
    .local v1, bPathFromSDKIsWorking:Z
    const/4 v0, 0x0

    .line 282
    .local v0, bPathFromLegacyIsWorking:Z
    const-string v2, ""

    .line 284
    .local v2, szExtPath:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, v3

    .line 286
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "v4a_test_file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Now checking for external storage writable, file = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {v2}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->CheckWritable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    .line 291
    :cond_4
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v2, v3

    .line 293
    :goto_3
    const-string v4, "/emulated/0/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 295
    const-string v4, "/emulated/0/"

    const-string v5, "/emulated/legacy/"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "v4a_test_file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Now checking for external storage writable, file = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {v2}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->CheckWritable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    .line 302
    :cond_5
    if-eqz v0, :cond_9

    .line 304
    const-string v4, "/emulated/0"

    const-string v5, "/emulated/legacy"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 305
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    sput-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 307
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ViPER4Android/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Kernel/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Profile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    .line 310
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "External storage path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android root path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android kernel path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android profile path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 285
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 292
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 306
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    goto/16 :goto_4

    .line 316
    :cond_9
    if-eqz v1, :cond_b

    .line 318
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    sput-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 320
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ViPER4Android/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Kernel/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Profile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    .line 323
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "External storage path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android root path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android kernel path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android profile path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 319
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    goto/16 :goto_5

    .line 330
    :cond_b
    const-string v4, "ViPER4Android"

    const-string v5, "Really terrible thing, external storage detection failed, v4a may malfunctioned"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    sput-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 333
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ViPER4Android/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Kernel/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Profile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    goto/16 :goto_1

    .line 332
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    goto :goto_6
.end method

.method private static ProceedVBoX(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x1

    .line 212
    const-string v0, "ViPER4Android"

    const-string v1, "Checking vbox"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v0, "/data/vbox"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ExecuteWithoutShell(Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const-string v0, "ViPER4Android"

    const-string v1, "Good, vbox is ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sput-boolean v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    .line 217
    const-string v0, "/data/vbox"

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    .line 232
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {p0}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->InstallVBox(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 225
    sput-boolean v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    .line 226
    const-string v0, "/data/vbox"

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_1
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 230
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    .line 231
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    goto :goto_0
.end method
