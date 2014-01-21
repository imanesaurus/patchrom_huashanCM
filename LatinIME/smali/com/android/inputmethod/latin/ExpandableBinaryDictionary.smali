.class public abstract Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "ExpandableBinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$1;,
        Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;,
        Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final FORMAT_OPTIONS:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

.field private static final TAG:Ljava/lang/String;

.field private static final sSharedDictionaryControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

.field protected final mContext:Landroid/content/Context;

.field private final mFilename:Ljava/lang/String;

.field private mFusionDictionary:Lcom/android/inputmethod/latin/makedict/FusionDictionary;

.field private final mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

.field private final mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->DEBUG:Z

    .line 65
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->sSharedDictionaryControllers:Ljava/util/HashMap;

    .line 94
    new-instance v0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;-><init>(I)V

    sput-object v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->FORMAT_OPTIONS:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "filename"
    .parameter "dictType"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p3}, Lcom/android/inputmethod/latin/Dictionary;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;-><init>(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$1;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    .line 134
    iput-object p2, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    .line 136
    iput-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 137
    invoke-static {p2}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->getSharedDictionaryController(Ljava/lang/String;)Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    .line 138
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->clearFusionDictionary()V

    .line 139
    return-void
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->syncReloadDictionaryInternal()V

    return-void
.end method

.method private dictionaryFileExists()Z
    .locals 3

    .prologue
    .line 422
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private generateBinaryDictionary()V
    .locals 10

    .prologue
    .line 304
    sget-boolean v6, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 305
    sget-object v6, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Generating binary dictionary: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " request="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #getter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J
    invoke-static {v8}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$100(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " update="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #getter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J
    invoke-static {v8}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->loadDictionaryAsync()V

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, tempFileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    .local v1, file:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    .local v4, tempFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 317
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 318
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFusionDictionary:Lcom/android/inputmethod/latin/makedict/FusionDictionary;

    sget-object v7, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->FORMAT_OPTIONS:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    invoke-static {v3, v6, v7}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->writeDictionaryBinary(Ljava/io/OutputStream;Lcom/android/inputmethod/latin/makedict/FusionDictionary;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V

    .line 319
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 320
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 321
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 322
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->clearFusionDictionary()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException; {:try_start_1 .. :try_end_1} :catch_5

    .line 328
    if-eqz v3, :cond_1

    .line 330
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_0
    move-object v2, v3

    .line 336
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v6, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO exception while writing file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    if-eqz v2, :cond_2

    .line 330
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 331
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    goto :goto_1

    .line 325
    :catch_2
    move-exception v0

    .line 326
    .local v0, e:Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
    :goto_3
    :try_start_5
    sget-object v6, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 328
    if-eqz v2, :cond_2

    .line 330
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 328
    .end local v0           #e:Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_3

    .line 330
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 328
    :cond_3
    :goto_5
    throw v6

    .line 331
    :catch_3
    move-exception v7

    goto :goto_5

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    goto :goto_0

    .line 328
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 325
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 323
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method protected static getFilenameWithLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "localeStr"

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dict"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getSharedDictionaryController(Ljava/lang/String;)Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;
    .locals 3
    .parameter "filename"

    .prologue
    .line 115
    const-class v2, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->sSharedDictionaryControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    .line 116
    .local v0, controller:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    .end local v0           #controller:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;-><init>(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$1;)V

    .line 118
    .restart local v0       #controller:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;
    sget-object v1, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->sSharedDictionaryControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit v2

    return-object v0

    .line 115
    .end local v0           #controller:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isReloadRequired()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #calls: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->isOutOfDate()Z
    invoke-static {v0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$400(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final syncReloadDictionaryInternal()V
    .locals 7

    .prologue
    .line 388
    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->lock()V

    .line 390
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 391
    .local v1, time:J
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->dictionaryFileExists()Z

    move-result v0

    .line 392
    .local v0, dictionaryFileExists:Z
    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #calls: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->isOutOfDate()Z
    invoke-static {v3}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$400(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_4

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->hasContentChanged()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_3

    .line 399
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #setter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J
    invoke-static {v3, v1, v2}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$202(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;J)J

    .line 400
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->generateBinaryDictionary()V

    .line 401
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->loadBinaryDictionary()V

    .line 414
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #setter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J
    invoke-static {v3, v1, v2}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$202(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 418
    return-void

    .line 405
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    iget-object v4, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #getter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J
    invoke-static {v4}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v4

    #setter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J
    invoke-static {v3, v4, v5}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$102(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 416
    .end local v0           #dictionaryFileExists:Z
    .end local v1           #time:J
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    throw v3

    .line 408
    .restart local v0       #dictionaryFileExists:Z
    .restart local v1       #time:J
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #getter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J
    invoke-static {v3}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #getter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J
    invoke-static {v5}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 412
    :cond_5
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->loadBinaryDictionary()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected addWord(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "word"
    .parameter "shortcutTarget"
    .parameter "frequency"

    .prologue
    const/4 v3, 0x0

    .line 179
    if-nez p2, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFusionDictionary:Lcom/android/inputmethod/latin/makedict/FusionDictionary;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v2, v3}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->add(Ljava/lang/String;ILjava/util/ArrayList;Z)V

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 184
    .local v0, shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    new-instance v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    invoke-direct {v1, p2, p3}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFusionDictionary:Lcom/android/inputmethod/latin/makedict/FusionDictionary;

    invoke-virtual {v1, p1, p3, v0, v3}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->add(Ljava/lang/String;ILjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method asyncReloadDictionaryIfRequired()V
    .locals 3

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->isReloadRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 360
    :cond_0
    sget-boolean v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 361
    sget-object v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting AsyncReloadDictionaryTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    new-instance v0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;-><init>(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$1;)V

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;->start()V

    goto :goto_0
.end method

.method public clearFusionDictionary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 168
    .local v0, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary;

    new-instance v2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-direct {v2}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;-><init>()V

    new-instance v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;

    invoke-direct {v3, v0, v4, v4}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;-><init>(Ljava/util/HashMap;ZZ)V

    invoke-direct {v1, v2, v3}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;-><init>(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFusionDictionary:Lcom/android/inputmethod/latin/makedict/FusionDictionary;

    .line 170
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->lock()V

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->close()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    throw v0
.end method

.method public getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    .locals 2
    .parameter "composer"
    .parameter "prevWord"
    .parameter "proximityInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/keyboard/ProximityInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->asyncReloadDictionaryIfRequired()V

    .line 203
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 212
    :goto_0
    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract hasContentChanged()Z
.end method

.method protected isValidBigramLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word1"
    .parameter "word2"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidBigram(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->asyncReloadDictionaryIfRequired()V

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->isValidWordInner(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected isValidWordInner(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "word"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->isValidWordLocked(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 229
    :goto_0
    return v0

    .line 226
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    throw v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidWordLocked(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method protected loadBinaryDictionary()V
    .locals 12

    .prologue
    .line 272
    sget-boolean v1, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 273
    sget-object v1, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading binary dictionary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #getter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J
    invoke-static {v4}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$100(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #getter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J
    invoke-static {v4}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    new-instance v10, Ljava/io/File;

    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-direct {v10, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 283
    .local v5, length:J
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mDictType:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJZLjava/util/Locale;Ljava/lang/String;)V

    .line 287
    .local v0, newBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-eqz v1, :cond_1

    .line 290
    iget-object v11, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 291
    .local v11, oldBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->lock()V

    .line 292
    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 293
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 294
    invoke-virtual {v11}, Lcom/android/inputmethod/latin/BinaryDictionary;->close()V

    .line 298
    .end local v11           #oldBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;
    :goto_0
    return-void

    .line 296
    :cond_1
    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;

    goto :goto_0
.end method

.method protected loadDictionary()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J
    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$102(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;J)J

    .line 264
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->asyncReloadDictionaryIfRequired()V

    .line 265
    return-void
.end method

.method protected abstract loadDictionaryAsync()V
.end method

.method protected setBigram(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "prevWord"
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFusionDictionary:Lcom/android/inputmethod/latin/makedict/FusionDictionary;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    return-void
.end method

.method protected setRequiresReload(Z)V
    .locals 6
    .parameter "requiresRebuild"

    .prologue
    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 347
    .local v0, time:J
    iget-object v2, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #setter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J
    invoke-static {v2, v0, v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$102(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;J)J

    .line 348
    iget-object v2, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #setter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J
    invoke-static {v2, v0, v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$102(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;J)J

    .line 349
    sget-boolean v2, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 350
    sget-object v2, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reload request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;

    #getter for: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J
    invoke-static {v4}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    return-void
.end method

.method protected final syncReloadDictionaryIfRequired()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->isReloadRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->syncReloadDictionaryInternal()V

    goto :goto_0
.end method
