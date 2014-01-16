.class public Lcom/vipercn/viper4android_v2/activity/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;,
        Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckProfileExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "szProfileName"
    .parameter "szProfileDir"

    .prologue
    .line 412
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v2, fProfileDirHandle:Ljava/io/File;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v6, szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ".prf"

    invoke-static {v2, v7, v6}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, bFoundProfile:Z
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 432
    .end local v0           #bFoundProfile:Z
    .end local v2           #fProfileDirHandle:Ljava/io/File;
    .end local v3           #idx:I
    .end local v6           #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return v0

    .line 419
    .restart local v0       #bFoundProfile:Z
    .restart local v2       #fProfileDirHandle:Ljava/io/File;
    .restart local v3       #idx:I
    .restart local v6       #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, szFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 421
    .local v5, szName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 423
    const/4 v0, 0x1

    .line 424
    goto :goto_1

    .line 417
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 430
    .end local v0           #bFoundProfile:Z
    .end local v2           #fProfileDirHandle:Ljava/io/File;
    .end local v3           #idx:I
    .end local v4           #szFileName:Ljava/lang/String;
    .end local v5           #szName:Ljava/lang/String;
    .end local v6           #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static CopyAssetsToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "ctx"
    .parameter "szSourceName"
    .parameter "szDstName"

    .prologue
    const/4 v9, 0x0

    .line 745
    invoke-static {p0}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 746
    .local v7, szBasePath:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 773
    :goto_0
    return v9

    .line 747
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, myInput:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 751
    .local v3, myOutput:Ljava/io/OutputStream;
    move-object v6, p2

    .line 754
    .local v6, outFileName:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .local v1, hfOutput:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 757
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 758
    .end local v3           #myOutput:Ljava/io/OutputStream;
    .local v4, myOutput:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 759
    const/16 v10, 0x1000

    new-array v8, v10, [B

    .line 760
    .local v8, tBuffer:[B
    const/4 v5, 0x0

    .line 761
    .local v5, nLength:I
    :goto_1
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_2

    .line 763
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 764
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 765
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 773
    const/4 v9, 0x1

    goto :goto_0

    .line 762
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 767
    .end local v5           #nLength:I
    .end local v8           #tBuffer:[B
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 769
    .end local v1           #hfOutput:Ljava/io/File;
    .end local v4           #myOutput:Ljava/io/OutputStream;
    .local v0, e:Ljava/lang/Exception;
    .restart local v3       #myOutput:Ljava/io/OutputStream;
    :goto_2
    const-string v10, "ViPER4Android_Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "CopyAssetsToLocal() failed, msg = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 767
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static DownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "szURL"
    .parameter "szFileName"
    .parameter "szStorePath"

    .prologue
    const/4 v7, 0x0

    .line 276
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 277
    .local v5, myURL:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 278
    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 279
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 280
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v8

    if-gtz v8, :cond_1

    .line 297
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #myURL:Ljava/net/URL;
    :cond_0
    :goto_0
    return v7

    .line 281
    .restart local v1       #conn:Ljava/net/URLConnection;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #myURL:Ljava/net/URL;
    :cond_1
    if-eqz v4, :cond_0

    .line 282
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 284
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 287
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 288
    .local v6, numread:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    .line 291
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 293
    const/4 v7, 0x1

    goto :goto_0

    .line 289
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 295
    .end local v0           #buf:[B
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #myURL:Ljava/net/URL;
    .end local v6           #numread:I
    :catch_0
    move-exception v2

    .line 297
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static FileChecksum(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "szFilePathName"
    .parameter "szChecksum"

    .prologue
    const/4 v8, 0x0

    .line 304
    const-wide/16 v4, 0x0

    .line 308
    .local v4, lChecksum:J
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, fis:Ljava/io/FileInputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 312
    .local v0, buf:[B
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 313
    .local v6, numread:I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_2

    .line 317
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 318
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, szNewChecksum:Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x1

    .line 324
    .end local v0           #buf:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v6           #numread:I
    .end local v7           #szNewChecksum:Ljava/lang/String;
    :cond_1
    :goto_0
    return v8

    .line 314
    .restart local v0       #buf:[B
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v6       #numread:I
    :cond_2
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_1
    if-ge v3, v6, :cond_0

    .line 315
    aget-byte v9, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v9, v9

    add-long/2addr v4, v9

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 322
    .end local v0           #buf:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #idx:I
    .end local v6           #numread:I
    :catch_0
    move-exception v1

    .line 324
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static FileExists(Ljava/lang/String;)Z
    .locals 4
    .parameter "szFileName"

    .prologue
    const/4 v3, 0x1

    .line 239
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 240
    .local v1, bExist:Z
    if-nez v1, :cond_0

    .line 242
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetVBoXUsable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    sput-boolean v3, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    .line 245
    sput-boolean v3, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 246
    invoke-static {p0}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetVBoXExecutablePath()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, VBoX:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " exists "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ExecuteWithoutShell(Ljava/lang/String;Ljava/io/File;)I

    move-result v2

    if-nez v2, :cond_0

    .line 252
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static GetBasePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 736
    .local v0, cont:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, szBasePath:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 738
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, ""

    .line 739
    .end local v1           #szBasePath:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static GetFileLength(Ljava/lang/String;)J
    .locals 3
    .parameter "szFileName"

    .prologue
    .line 263
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 267
    :goto_0
    return-wide v1

    .line 265
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static GetFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "path"
    .parameter "fileExt"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 334
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 345
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v2       #files:[Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 336
    aget-object v4, v2, v3

    invoke-static {v4, p1, p2}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 340
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i:I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, filePath:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, fileName:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static GetProfileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "szProfileDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, fProfileDirHandle:Ljava/io/File;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v5, szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ".prf"

    invoke-static {v1, v7, v5}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 391
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v6, szProfileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 403
    .end local v1           #fProfileDirHandle:Ljava/io/File;
    .end local v2           #idx:I
    .end local v5           #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #szProfileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v6

    .line 394
    .restart local v1       #fProfileDirHandle:Ljava/io/File;
    .restart local v2       #idx:I
    .restart local v5       #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #szProfileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, szFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, szName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v1           #fProfileDirHandle:Ljava/io/File;
    .end local v2           #idx:I
    .end local v3           #szFileName:Ljava/lang/String;
    .end local v4           #szName:Ljava/lang/String;
    .end local v5           #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #szProfileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method public static GetProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "szProfileFileName"

    .prologue
    .line 352
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 353
    .local v2, fisInput:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v3, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 354
    .local v3, isrInput:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 355
    .local v0, brInput:Ljava/io/BufferedReader;
    const-string v6, ""

    .line 358
    .local v6, szProfileName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, szLine:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 370
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 371
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 372
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 378
    .end local v0           #brInput:Ljava/io/BufferedReader;
    .end local v2           #fisInput:Ljava/io/FileInputStream;
    .end local v3           #isrInput:Ljava/io/InputStreamReader;
    .end local v5           #szLine:Ljava/lang/String;
    .end local v6           #szProfileName:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 360
    .restart local v0       #brInput:Ljava/io/BufferedReader;
    .restart local v2       #fisInput:Ljava/io/FileInputStream;
    .restart local v3       #isrInput:Ljava/io/InputStreamReader;
    .restart local v5       #szLine:Ljava/lang/String;
    .restart local v6       #szProfileName:Ljava/lang/String;
    :cond_1
    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 362
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, szChunks:[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 364
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "profile_name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 366
    const/4 v7, 0x1

    aget-object v6, v4, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v0           #brInput:Ljava/io/BufferedReader;
    .end local v2           #fisInput:Ljava/io/FileInputStream;
    .end local v3           #isrInput:Ljava/io/InputStreamReader;
    .end local v4           #szChunks:[Ljava/lang/String;
    .end local v5           #szLine:Ljava/lang/String;
    .end local v6           #szProfileName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Ljava/lang/Exception;
    const-string v6, ""

    goto :goto_1
.end method

.method public static InstallDrv_FX(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "ctx"
    .parameter "szDriverName"

    .prologue
    .line 1222
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetVBoXUsable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/vipercn/viper4android_v2/activity/Utils;->InstallDrv_FX_RootTools(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1223
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/vipercn/viper4android_v2/activity/Utils;->InstallDrv_FX_VBoX(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static InstallDrv_FX_RootTools(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 17
    .parameter "ctx"
    .parameter "szDriverName"

    .prologue
    .line 833
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 834
    const/4 v4, 0x0

    .line 982
    :goto_0
    return v4

    .line 837
    :cond_0
    const-string v12, "libv4a_fx_ics.so"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v12}, Lcom/vipercn/viper4android_v2/activity/Utils;->CopyAssetsToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 838
    const/4 v4, 0x0

    goto :goto_0

    .line 841
    :cond_1
    const/4 v12, 0x1

    sput-boolean v12, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    .line 842
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 843
    :cond_2
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .line 847
    :cond_3
    const-string v9, ""

    .line 848
    .local v9, szChmod:Ljava/lang/String;
    const-string v12, "chmod"

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 849
    const-string v9, "chmod"

    .line 860
    :cond_4
    :goto_1
    if-eqz v9, :cond_5

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 861
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 852
    :cond_6
    const-string v12, "busybox"

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "chmod"

    const-string v13, "busybox"

    invoke-static {v12, v13}, Lcom/stericson/RootTools/RootTools;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 853
    const-string v9, "busybox chmod"

    goto :goto_1

    .line 856
    :cond_7
    const-string v12, "toolbox"

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "chmod"

    const-string v13, "toolbox"

    invoke-static {v12, v13}, Lcom/stericson/RootTools/RootTools;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 857
    const-string v9, "toolbox chmod"

    goto :goto_1

    .line 864
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetESPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "v4a_audio_system.conf"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 865
    .local v10, szSystemConf:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetESPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "v4a_audio_vendor.conf"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 868
    .local v11, szVendorConf:Ljava/lang/String;
    const/4 v2, 0x0

    .line 869
    .local v2, bExistsVendor:Z
    const-string v12, "/system/vendor/etc/audio_effects.conf"

    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/Utils;->FileExists(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 870
    const/4 v2, 0x1

    .line 873
    :cond_9
    if-eqz v2, :cond_f

    .line 876
    const-string v12, "/system/etc/audio_effects.conf"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v10, v13, v14}, Lcom/stericson/RootTools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 877
    const-string v12, "/system/vendor/etc/audio_effects.conf"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v11, v13, v14}, Lcom/stericson/RootTools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 886
    :goto_2
    const/4 v3, 0x1

    .line 887
    .local v3, bModifyResult:Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/vipercn/viper4android_v2/activity/Utils;->ModifyFXConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    and-int/2addr v3, v12

    .line 888
    if-eqz v2, :cond_a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vipercn/viper4android_v2/activity/Utils;->ModifyFXConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    and-int/2addr v3, v12

    .line 889
    :cond_a
    if-nez v3, :cond_12

    .line 894
    :try_start_0
    new-instance v7, Lcom/stericson/RootTools/RootTools;

    invoke-direct {v7}, Lcom/stericson/RootTools/RootTools;-><init>()V

    .line 895
    .local v7, rtTools:Lcom/stericson/RootTools/RootTools;
    if-eqz v2, :cond_10

    .line 897
    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_b

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 898
    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_c

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 899
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_d

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".out"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 900
    :cond_d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_e

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".out"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 908
    :cond_e
    :goto_3
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 882
    .end local v3           #bModifyResult:Z
    .end local v7           #rtTools:Lcom/stericson/RootTools/RootTools;
    :cond_f
    const-string v12, "/system/etc/audio_effects.conf"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v10, v13, v14}, Lcom/stericson/RootTools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto/16 :goto_2

    .line 904
    .restart local v3       #bModifyResult:Z
    .restart local v7       #rtTools:Lcom/stericson/RootTools/RootTools;
    :cond_10
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v7, v10, v12}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_11

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 905
    :cond_11
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_e

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".out"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 911
    .end local v7           #rtTools:Lcom/stericson/RootTools/RootTools;
    :catch_0
    move-exception v6

    .line 913
    .local v6, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 918
    .end local v6           #e:Ljava/lang/Exception;
    :cond_12
    const/4 v4, 0x1

    .line 919
    .local v4, bOperationSucceed:Z
    invoke-static/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 920
    .local v8, szBaseDrvPathName:Ljava/lang/String;
    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "libv4a_fx_ics.so"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 924
    :goto_4
    if-eqz v2, :cond_1b

    .line 927
    :try_start_2
    const-string v12, "/system"

    const-string v13, "RW"

    invoke-static {v12, v13}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    and-int/2addr v4, v12

    .line 928
    if-eqz v4, :cond_13

    const-string v12, "/system/lib/soundfx/libv4a_fx_ics.so"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v8, v12, v13, v14}, Lcom/stericson/RootTools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v12

    and-int/2addr v4, v12

    .line 929
    :cond_13
    if-eqz v4, :cond_14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/system/etc/audio_effects.conf"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/stericson/RootTools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v12

    and-int/2addr v4, v12

    .line 930
    :cond_14
    if-eqz v4, :cond_15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/system/vendor/etc/audio_effects.conf"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/stericson/RootTools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v12

    and-int/2addr v4, v12

    .line 932
    :cond_15
    new-instance v5, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 933
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " 644 /system/etc/audio_effects.conf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 934
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " 644 /system/vendor/etc/audio_effects.conf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 935
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " 644 /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 932
    aput-object v15, v13, v14

    invoke-direct {v5, v12, v13}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 936
    .local v5, ccSetPermission:Lcom/stericson/RootTools/execution/CommandCapture;
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v12

    invoke-virtual {v12}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 937
    const-string v12, "/system"

    const-string v13, "RO"

    invoke-static {v12, v13}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 961
    .end local v5           #ccSetPermission:Lcom/stericson/RootTools/execution/CommandCapture;
    :goto_5
    :try_start_3
    new-instance v7, Lcom/stericson/RootTools/RootTools;

    invoke-direct {v7}, Lcom/stericson/RootTools/RootTools;-><init>()V

    .line 962
    .restart local v7       #rtTools:Lcom/stericson/RootTools/RootTools;
    if-eqz v2, :cond_1e

    .line 964
    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_16

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 965
    :cond_16
    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_17

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 966
    :cond_17
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_18

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".out"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 967
    :cond_18
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_19

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".out"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 975
    :cond_19
    :goto_6
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 977
    .end local v7           #rtTools:Lcom/stericson/RootTools/RootTools;
    :catch_1
    move-exception v6

    .line 979
    .restart local v6       #e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 921
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/libv4a_fx_ics.so"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 942
    :cond_1b
    :try_start_4
    const-string v12, "/system"

    const-string v13, "RW"

    invoke-static {v12, v13}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    and-int/2addr v4, v12

    .line 943
    if-eqz v4, :cond_1c

    const-string v12, "/system/lib/soundfx/libv4a_fx_ics.so"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v8, v12, v13, v14}, Lcom/stericson/RootTools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v12

    and-int/2addr v4, v12

    .line 944
    :cond_1c
    if-eqz v4, :cond_1d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/system/etc/audio_effects.conf"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/stericson/RootTools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v12

    and-int/2addr v4, v12

    .line 946
    :cond_1d
    new-instance v5, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 947
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " 644 /system/etc/audio_effects.conf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 948
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " 644 /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 946
    aput-object v15, v13, v14

    invoke-direct {v5, v12, v13}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 949
    .restart local v5       #ccSetPermission:Lcom/stericson/RootTools/execution/CommandCapture;
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v12

    invoke-virtual {v12}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 950
    const-string v12, "/system"

    const-string v13, "RO"

    invoke-static {v12, v13}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    .line 953
    .end local v5           #ccSetPermission:Lcom/stericson/RootTools/execution/CommandCapture;
    :catch_2
    move-exception v6

    .line 955
    .restart local v6       #e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 971
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #rtTools:Lcom/stericson/RootTools/RootTools;
    :cond_1e
    const/4 v12, 0x0

    :try_start_5
    invoke-virtual {v7, v10, v12}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_1f

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 972
    :cond_1f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_19

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".out"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_6
.end method

.method private static InstallDrv_FX_VBoX(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .parameter "ctx"
    .parameter "szDriverName"

    .prologue
    const/high16 v13, 0x40a0

    const/high16 v12, 0x3f80

    const/4 v8, 0x0

    .line 989
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return v8

    .line 993
    :cond_1
    const-string v9, "libv4a_fx_ics.so"

    invoke-static {p0, p1, v9}, Lcom/vipercn/viper4android_v2/activity/Utils;->CopyAssetsToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 997
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetVBoXExecutablePath()Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, VBoX:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->OpenRootShell(Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1002
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetESPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "v4a_audio_system.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1003
    .local v6, szSystemConf:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetESPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "v4a_audio_vendor.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1006
    .local v7, szVendorConf:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1007
    .local v1, bExistsVendor:Z
    const-string v9, "/system/vendor/etc/audio_effects.conf"

    invoke-static {v9}, Lcom/vipercn/viper4android_v2/activity/Utils;->FileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1008
    const/4 v1, 0x1

    .line 1011
    :cond_2
    if-eqz v1, :cond_4

    .line 1014
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " cp /system/etc/audio_effects.conf "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    .line 1015
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

    .line 1016
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " cp /system/vendor/etc/audio_effects.conf "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    .line 1017
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

    .line 1027
    :goto_1
    const/4 v2, 0x1

    .line 1028
    .local v2, bModifyResult:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".out"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/vipercn/viper4android_v2/activity/Utils;->ModifyFXConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v2, v9

    .line 1029
    if-eqz v1, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".out"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/vipercn/viper4android_v2/activity/Utils;->ModifyFXConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v2, v9

    .line 1030
    :cond_3
    if-nez v2, :cond_6

    .line 1033
    if-eqz v1, :cond_5

    .line 1035
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1036
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1037
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1038
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1046
    :goto_2
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1022
    .end local v2           #bModifyResult:Z
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " cp /system/etc/audio_effects.conf "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    .line 1023
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

    goto/16 :goto_1

    .line 1042
    .restart local v2       #bModifyResult:Z
    :cond_5
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1043
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1051
    :cond_6
    invoke-static {p0}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1052
    .local v5, szBaseDrvPathName:Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "libv4a_fx_ics.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1054
    :goto_3
    const/4 v4, 0x0

    .local v4, nShellCmdReturn:I
    const/4 v3, 0x0

    .line 1055
    .local v3, bSuccess:Z
    if-eqz v1, :cond_16

    .line 1058
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " mount -o remount,rw /system"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1059
    if-eqz v3, :cond_7

    if-eqz v4, :cond_9

    .line 1061
    :cond_7
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1062
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1063
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1064
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1065
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot remount /system"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1053
    .end local v3           #bSuccess:Z
    .end local v4           #nShellCmdReturn:I
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/libv4a_fx_ics.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 1069
    .restart local v3       #bSuccess:Z
    .restart local v4       #nShellCmdReturn:I
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " rm /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1070
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command return = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " cp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1072
    if-eqz v3, :cond_a

    if-eqz v4, :cond_b

    .line 1074
    :cond_a
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1075
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1076
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1077
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1078
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot copy V4A driver to /system"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1082
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " cp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".out"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /system/etc/audio_effects.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1083
    if-eqz v3, :cond_c

    if-eqz v4, :cond_d

    .line 1085
    :cond_c
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1086
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1087
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1088
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1089
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot copy audio config to /system"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1093
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " cp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".out"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /system/vendor/etc/audio_effects.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1094
    if-eqz v3, :cond_e

    if-eqz v4, :cond_f

    .line 1096
    :cond_e
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1097
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1098
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1099
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1100
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot copy audio config to /system/vendor"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1105
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " chmod 644 /system/etc/audio_effects.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1106
    if-eqz v3, :cond_10

    if-eqz v4, :cond_11

    .line 1108
    :cond_10
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1109
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1110
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1111
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1112
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot change config\'s permission [/system]"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1116
    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " chmod 644 /system/vendor/etc/audio_effects.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1117
    if-eqz v3, :cond_12

    if-eqz v4, :cond_13

    .line 1119
    :cond_12
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1120
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1121
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1122
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1123
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot change config\'s permission [/system/vendor]"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1127
    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " chmod 644 /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1128
    if-eqz v3, :cond_14

    if-eqz v4, :cond_15

    .line 1130
    :cond_14
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1131
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1132
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1133
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1134
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot change driver\'s permission"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1138
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " sync"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1139
    const-string v8, "ViPER4Android"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Command return = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " mount -o remount,ro /system"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1141
    const-string v8, "ViPER4Android"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Command return = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :goto_4
    if-eqz v1, :cond_21

    .line 1203
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1204
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1205
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".out"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1206
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".out"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1214
    :goto_5
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 1216
    const-string v8, "/system/lib/soundfx/libv4a_fx_ics.so"

    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/Utils;->FileExists(Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_0

    .line 1146
    :cond_16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " mount -o remount,rw /system"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1147
    if-eqz v3, :cond_17

    if-eqz v4, :cond_18

    .line 1149
    :cond_17
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1150
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1151
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot remount /system"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1155
    :cond_18
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " rm /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1156
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command return = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " cp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1158
    if-eqz v3, :cond_19

    if-eqz v4, :cond_1a

    .line 1160
    :cond_19
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1161
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1162
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot copy V4A driver to /system"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1166
    :cond_1a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " cp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".out"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /system/etc/audio_effects.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1167
    if-eqz v3, :cond_1b

    if-eqz v4, :cond_1c

    .line 1169
    :cond_1b
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1170
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1171
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot copy audio config to /system"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1176
    :cond_1c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " chmod 644 /system/etc/audio_effects.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1177
    if-eqz v3, :cond_1d

    if-eqz v4, :cond_1e

    .line 1179
    :cond_1d
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1180
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1181
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot change config\'s permission [/system]"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1185
    :cond_1e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " chmod 644 /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v3

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1186
    if-eqz v3, :cond_1f

    if-eqz v4, :cond_20

    .line 1188
    :cond_1f
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1189
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1190
    const-string v9, "ViPER4Android"

    const-string v10, "Cannot change driver\'s permission"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0

    .line 1194
    :cond_20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " sync"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1195
    const-string v8, "ViPER4Android"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Command return = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " mount -o remount,ro /system"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v4

    .line 1197
    const-string v8, "ViPER4Android"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Command return = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1210
    :cond_21
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1211
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".out"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto/16 :goto_5
.end method

.method public static LoadProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 21
    .parameter "szProfileName"
    .parameter "szProfileDir"
    .parameter "szPreferenceName"
    .parameter "ctx"

    .prologue
    .line 441
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v6, fProfileDirHandle:Ljava/io/File;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v16, szProfileFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v19, ".prf"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 444
    const-string v17, ""

    .line 445
    .local v17, szProfileFileName:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_0

    .line 455
    :goto_1
    const-string v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    .line 497
    .end local v6           #fProfileDirHandle:Ljava/io/File;
    .end local v8           #idx:I
    .end local v16           #szProfileFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #szProfileFileName:Ljava/lang/String;
    :goto_2
    return v19

    .line 447
    .restart local v6       #fProfileDirHandle:Ljava/io/File;
    .restart local v8       #idx:I
    .restart local v16       #szProfileFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #szProfileFileName:Ljava/lang/String;
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 448
    .local v12, szFileName:Ljava/lang/String;
    invoke-static {v12}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 449
    .local v14, szName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 451
    move-object/from16 v17, v12

    .line 452
    goto :goto_1

    .line 445
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 457
    .end local v12           #szFileName:Ljava/lang/String;
    .end local v14           #szName:Ljava/lang/String;
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 458
    .local v10, preferences:Landroid/content/SharedPreferences;
    if-eqz v10, :cond_6

    .line 460
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 461
    .local v7, fisInput:Ljava/io/FileInputStream;
    new-instance v9, Ljava/io/InputStreamReader;

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-direct {v9, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 462
    .local v9, isrInput:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 463
    .local v4, brInput:Ljava/io/BufferedReader;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 466
    .local v5, e:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 467
    .local v13, szLine:Ljava/lang/String;
    if-nez v13, :cond_4

    .line 486
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 488
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 489
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 491
    const/16 v19, 0x1

    goto :goto_2

    .line 468
    :cond_4
    const-string v19, "#"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 470
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 471
    .local v11, szChunks:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 472
    const/16 v19, 0x1

    aget-object v19, v11, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, "boolean"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 474
    const/16 v19, 0x0

    aget-object v15, v11, v19

    .line 475
    .local v15, szParameter:Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 476
    .local v3, bValue:Z
    invoke-interface {v5, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 495
    .end local v3           #bValue:Z
    .end local v4           #brInput:Ljava/io/BufferedReader;
    .end local v5           #e:Landroid/content/SharedPreferences$Editor;
    .end local v6           #fProfileDirHandle:Ljava/io/File;
    .end local v7           #fisInput:Ljava/io/FileInputStream;
    .end local v8           #idx:I
    .end local v9           #isrInput:Ljava/io/InputStreamReader;
    .end local v10           #preferences:Landroid/content/SharedPreferences;
    .end local v11           #szChunks:[Ljava/lang/String;
    .end local v13           #szLine:Ljava/lang/String;
    .end local v15           #szParameter:Ljava/lang/String;
    .end local v16           #szProfileFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #szProfileFileName:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 497
    .local v5, e:Ljava/lang/Exception;
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 478
    .restart local v4       #brInput:Ljava/io/BufferedReader;
    .local v5, e:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #fProfileDirHandle:Ljava/io/File;
    .restart local v7       #fisInput:Ljava/io/FileInputStream;
    .restart local v8       #idx:I
    .restart local v9       #isrInput:Ljava/io/InputStreamReader;
    .restart local v10       #preferences:Landroid/content/SharedPreferences;
    .restart local v11       #szChunks:[Ljava/lang/String;
    .restart local v13       #szLine:Ljava/lang/String;
    .restart local v16       #szProfileFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #szProfileFileName:Ljava/lang/String;
    :cond_5
    const/16 v19, 0x1

    aget-object v19, v11, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, "string"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 480
    const/16 v19, 0x0

    aget-object v15, v11, v19

    .line 481
    .restart local v15       #szParameter:Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v18, v11, v19

    .line 482
    .local v18, szValue:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v5, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 493
    .end local v4           #brInput:Ljava/io/BufferedReader;
    .end local v5           #e:Landroid/content/SharedPreferences$Editor;
    .end local v7           #fisInput:Ljava/io/FileInputStream;
    .end local v9           #isrInput:Ljava/io/InputStreamReader;
    .end local v11           #szChunks:[Ljava/lang/String;
    .end local v13           #szLine:Ljava/lang/String;
    .end local v15           #szParameter:Ljava/lang/String;
    .end local v18           #szValue:Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_2
.end method

.method public static ModifyFXConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter "szInputFile"
    .parameter "szOutputFile"

    .prologue
    .line 630
    const-string v14, "ViPER4Android_Utils"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Editing audio configuration, input = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", output = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetFileLength(Ljava/lang/String;)J

    move-result-wide v10

    .line 636
    .local v10, lInputFileLength:J
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 637
    .local v7, fisInput:Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 638
    .local v8, fosOutput:Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/InputStreamReader;

    const-string v14, "ASCII"

    invoke-direct {v9, v7, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 639
    .local v9, isrInput:Ljava/io/InputStreamReader;
    new-instance v12, Ljava/io/OutputStreamWriter;

    const-string v14, "ASCII"

    invoke-direct {v12, v8, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 640
    .local v12, oswOutput:Ljava/io/OutputStreamWriter;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 641
    .local v4, brInput:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 644
    .local v5, bwOutput:Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 645
    .local v1, bConfigModified:Z
    long-to-int v14, v10

    invoke-virtual {v4, v14}, Ljava/io/BufferedReader;->mark(I)V

    .line 648
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 649
    .local v13, szLine:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 660
    :goto_0
    const/4 v3, 0x0

    .line 661
    .local v3, bLibraryAppend:Z
    const/4 v2, 0x0

    .line 662
    .local v2, bEffectAppend:Z
    if-eqz v1, :cond_3

    .line 665
    invoke-virtual {v4}, Ljava/io/BufferedReader;->reset()V

    .line 668
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 669
    if-nez v13, :cond_2

    .line 672
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 674
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 675
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 676
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 677
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 678
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 679
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 681
    const/4 v14, 0x1

    .line 728
    .end local v1           #bConfigModified:Z
    .end local v2           #bEffectAppend:Z
    .end local v3           #bLibraryAppend:Z
    .end local v4           #brInput:Ljava/io/BufferedReader;
    .end local v5           #bwOutput:Ljava/io/BufferedWriter;
    .end local v7           #fisInput:Ljava/io/FileInputStream;
    .end local v8           #fosOutput:Ljava/io/FileOutputStream;
    .end local v9           #isrInput:Ljava/io/InputStreamReader;
    .end local v10           #lInputFileLength:J
    .end local v12           #oswOutput:Ljava/io/OutputStreamWriter;
    .end local v13           #szLine:Ljava/lang/String;
    :goto_2
    return v14

    .line 650
    .restart local v1       #bConfigModified:Z
    .restart local v4       #brInput:Ljava/io/BufferedReader;
    .restart local v5       #bwOutput:Ljava/io/BufferedWriter;
    .restart local v7       #fisInput:Ljava/io/FileInputStream;
    .restart local v8       #fosOutput:Ljava/io/FileOutputStream;
    .restart local v9       #isrInput:Ljava/io/InputStreamReader;
    .restart local v10       #lInputFileLength:J
    .restart local v12       #oswOutput:Ljava/io/OutputStreamWriter;
    .restart local v13       #szLine:Ljava/lang/String;
    :cond_1
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 652
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "41d3c987-e6cf-11e3-a88a-11aba5d5c51b"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 654
    const-string v14, "ViPER4Android_Utils"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Source file has been modified, line = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v1, 0x1

    goto :goto_0

    .line 670
    .restart local v2       #bEffectAppend:Z
    .restart local v3       #bLibraryAppend:Z
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 725
    .end local v1           #bConfigModified:Z
    .end local v2           #bEffectAppend:Z
    .end local v3           #bLibraryAppend:Z
    .end local v4           #brInput:Ljava/io/BufferedReader;
    .end local v5           #bwOutput:Ljava/io/BufferedWriter;
    .end local v7           #fisInput:Ljava/io/FileInputStream;
    .end local v8           #fosOutput:Ljava/io/FileOutputStream;
    .end local v9           #isrInput:Ljava/io/InputStreamReader;
    .end local v10           #lInputFileLength:J
    .end local v12           #oswOutput:Ljava/io/OutputStreamWriter;
    .end local v13           #szLine:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 727
    .local v6, e:Ljava/lang/Exception;
    const-string v14, "ViPER4Android_Utils"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v14, 0x0

    goto :goto_2

    .line 686
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v1       #bConfigModified:Z
    .restart local v2       #bEffectAppend:Z
    .restart local v3       #bLibraryAppend:Z
    .restart local v4       #brInput:Ljava/io/BufferedReader;
    .restart local v5       #bwOutput:Ljava/io/BufferedWriter;
    .restart local v7       #fisInput:Ljava/io/FileInputStream;
    .restart local v8       #fosOutput:Ljava/io/FileOutputStream;
    .restart local v9       #isrInput:Ljava/io/InputStreamReader;
    .restart local v10       #lInputFileLength:J
    .restart local v12       #oswOutput:Ljava/io/OutputStreamWriter;
    .restart local v13       #szLine:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->reset()V

    .line 689
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 690
    if-nez v13, :cond_4

    .line 712
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 714
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 715
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 716
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 717
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 718
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 719
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 722
    and-int v14, v3, v2

    goto/16 :goto_2

    .line 691
    :cond_4
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "libraries {"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-nez v3, :cond_5

    .line 694
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 695
    const-string v14, "  v4a_fx {\n"

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 696
    const-string v14, "    path /system/lib/soundfx/libv4a_fx_ics.so\n"

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 697
    const-string v14, "  }\n"

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 698
    const/4 v3, 0x1

    goto :goto_3

    .line 700
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "effects {"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-nez v2, :cond_6

    .line 703
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 704
    const-string v14, "  v4a_standard_fx {\n"

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 705
    const-string v14, "    library v4a_fx\n"

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 706
    const-string v14, "    uuid 41d3c987-e6cf-11e3-a88a-11aba5d5c51b\n"

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 707
    const-string v14, "  }\n"

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 708
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 710
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static SaveProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .parameter "szProfileName"
    .parameter "szProfileDir"
    .parameter "szPreferenceName"
    .parameter "ctx"

    .prologue
    .line 506
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p3, p2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 507
    .local v4, preferences:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_1

    .line 509
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".prf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 510
    .local v7, szOutFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/vipercn/viper4android_v2/activity/Utils;->FileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 512
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 513
    .local v2, fosOutput:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v9, "UTF-8"

    invoke-direct {v3, v2, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 514
    .local v3, oswOutput:Ljava/io/OutputStreamWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 516
    .local v0, bwOutput:Ljava/io/BufferedWriter;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd   hh:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 517
    .local v5, sDateFormat:Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 519
    .local v6, szDate:Ljava/lang/String;
    const-string v9, "# ViPER4Android audio effect profile !\n"

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 520
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "# Created "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 521
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "profile_name="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 523
    const-string v8, ""

    .line 526
    .local v8, szValue:Ljava/lang/String;
    const-string v9, "viper4android.headphonefx.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 527
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 528
    const-string v9, "viper4android.speakerfx.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 529
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.speakerfx.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 530
    const-string v9, "viper4android.speakerfx.spkopt.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 531
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.speakerfx.spkopt.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 532
    const-string v9, "viper4android.headphonefx.playbackgain.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 533
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.playbackgain.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 534
    const-string v9, "viper4android.headphonefx.fireq.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 535
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fireq.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 536
    const-string v9, "viper4android.headphonefx.convolver.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 537
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.convolver.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 538
    const-string v9, "viper4android.headphonefx.colorfulmusic.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 539
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.colorfulmusic.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 540
    const-string v9, "viper4android.headphonefx.diffsurr.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 541
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.diffsurr.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 542
    const-string v9, "viper4android.headphonefx.vhs.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 543
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.vhs.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 544
    const-string v9, "viper4android.headphonefx.reverb.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 545
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 546
    const-string v9, "viper4android.headphonefx.dynamicsystem.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.dynamicsystem.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 548
    const-string v9, "viper4android.headphonefx.dynamicsystem.tube"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 549
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.dynamicsystem.tube=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 550
    const-string v9, "viper4android.headphonefx.fidelity.bass.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 551
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.bass.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 552
    const-string v9, "viper4android.headphonefx.fidelity.clarity.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 553
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.clarity.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 554
    const-string v9, "viper4android.headphonefx.cure.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 555
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.cure.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 558
    const-string v9, "viper4android.headphonefx.playbackgain.ratio"

    const-string v10, "50"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 559
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.playbackgain.ratio=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 560
    const-string v9, "viper4android.headphonefx.playbackgain.maxscaler"

    const-string v10, "400"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 561
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.playbackgain.maxscaler=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 562
    const-string v9, "viper4android.headphonefx.playbackgain.volume"

    const-string v10, "80"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 563
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.playbackgain.volume=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 564
    const-string v9, "viper4android.headphonefx.fireq"

    const-string v10, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 565
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fireq=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 566
    const-string v9, "viper4android.headphonefx.fireq.custom"

    const-string v10, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 567
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fireq.custom=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 568
    const-string v9, "viper4android.headphonefx.convolver.kernel"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 569
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.convolver.kernel=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 570
    const-string v9, "viper4android.headphonefx.convolver.crosschannel"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 571
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.convolver.crosschannel=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 572
    const-string v9, "viper4android.headphonefx.colorfulmusic.coeffs"

    const-string v10, "120;200"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 573
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.colorfulmusic.coeffs=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 574
    const-string v9, "viper4android.headphonefx.colorfulmusic.midimage"

    const-string v10, "150"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 575
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.colorfulmusic.midimage=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 576
    const-string v9, "viper4android.headphonefx.diffsurr.delay"

    const-string v10, "500"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 577
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.diffsurr.delay=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 578
    const-string v9, "viper4android.headphonefx.vhs.qual"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 579
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.vhs.qual=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 580
    const-string v9, "viper4android.headphonefx.reverb.roomsize"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 581
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.roomsize=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 582
    const-string v9, "viper4android.headphonefx.reverb.roomwidth"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 583
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.roomwidth=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 584
    const-string v9, "viper4android.headphonefx.reverb.damp"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 585
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.damp=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 586
    const-string v9, "viper4android.headphonefx.reverb.wet"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 587
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.wet=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 588
    const-string v9, "viper4android.headphonefx.reverb.dry"

    const-string v10, "50"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 589
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.dry=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 590
    const-string v9, "viper4android.headphonefx.dynamicsystem.coeffs"

    const-string v10, "100;5600;40;80;50;50"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 591
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.dynamicsystem.coeffs=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 592
    const-string v9, "viper4android.headphonefx.dynamicsystem.bass"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 593
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.dynamicsystem.bass=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 594
    const-string v9, "viper4android.headphonefx.fidelity.bass.mode"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 595
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.bass.mode=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 596
    const-string v9, "viper4android.headphonefx.fidelity.bass.freq"

    const-string v10, "40"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 597
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.bass.freq=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 598
    const-string v9, "viper4android.headphonefx.fidelity.bass.gain"

    const-string v10, "50"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 599
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.bass.gain=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 600
    const-string v9, "viper4android.headphonefx.fidelity.clarity.mode"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 601
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.clarity.mode=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 602
    const-string v9, "viper4android.headphonefx.fidelity.clarity.gain"

    const-string v10, "50"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 603
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.clarity.gain=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 604
    const-string v9, "viper4android.headphonefx.cure.crossfeed"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 605
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.cure.crossfeed=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 606
    const-string v9, "viper4android.headphonefx.outvol"

    const-string v10, "100"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 607
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.outvol=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 608
    const-string v9, "viper4android.headphonefx.channelpan"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 609
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.channelpan=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 610
    const-string v9, "viper4android.headphonefx.limiter"

    const-string v10, "100"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 611
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.limiter=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 612
    const-string v9, "viper4android.speakerfx.limiter"

    const-string v10, "100"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 613
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.speakerfx.limiter=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 616
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 617
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 618
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v0           #bwOutput:Ljava/io/BufferedWriter;
    .end local v2           #fosOutput:Ljava/io/FileOutputStream;
    .end local v3           #oswOutput:Ljava/io/OutputStreamWriter;
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    .end local v5           #sDateFormat:Ljava/text/SimpleDateFormat;
    .end local v6           #szDate:Ljava/lang/String;
    .end local v7           #szOutFileName:Ljava/lang/String;
    .end local v8           #szValue:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v1

    .line 623
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static UninstallDrv_FX()V
    .locals 8

    .prologue
    const/high16 v7, 0x40a0

    const/4 v5, 0x1

    .line 783
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetVBoXUsable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 786
    sput-boolean v5, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    .line 787
    sput-boolean v5, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 788
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 827
    .local v3, szDriverPathName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 789
    .end local v3           #szDriverPathName:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 793
    const-string v3, "/system/lib/soundfx/libv4a_fx_ics.so"

    .line 796
    .restart local v3       #szDriverPathName:Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    sput-boolean v4, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    .line 797
    const/4 v4, 0x1

    sput-boolean v4, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 798
    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 800
    new-instance v2, Lcom/stericson/RootTools/RootTools;

    invoke-direct {v2}, Lcom/stericson/RootTools/RootTools;-><init>()V

    .line 801
    .local v2, rtTools:Lcom/stericson/RootTools/RootTools;
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/stericson/RootTools/RootTools;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    .line 803
    .end local v2           #rtTools:Lcom/stericson/RootTools/RootTools;
    :cond_2
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 805
    :catch_0
    move-exception v1

    .line 807
    .local v1, e:Ljava/io/IOException;
    goto :goto_0

    .line 812
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #szDriverPathName:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetVBoXExecutablePath()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, VBoX:Ljava/lang/String;
    const-string v3, "/system/lib/soundfx/libv4a_fx_ics.so"

    .line 814
    .restart local v3       #szDriverPathName:Ljava/lang/String;
    invoke-static {v5}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->OpenRootShell(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " mount -o remount,rw /system"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    .line 817
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Command return = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " rm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-static {v4, v5}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    .line 819
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Command return = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " sync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    .line 821
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Command return = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " mount -o remount,ro /system"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    .line 823
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Command return = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    goto/16 :goto_0
.end method
