.class public final Lcom/android/inputmethod/latin/UserHistoryDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserHistoryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String;

.field public static final PROFILE_SAVE_RESTORE:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION3:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

.field private static final sLangDictCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/inputmethod/latin/UserHistoryDictionary;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field isTest:Z

.field private final mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

.field private final mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLocale:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private profTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->TAG:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->NAME:Ljava/lang/String;

    .line 51
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    .line 53
    new-instance v0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;-><init>(IZ)V

    sput-object v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->VERSION3:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    .line 81
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->sLangDictCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "context"
    .parameter "locale"
    .parameter "sp"

    .prologue
    .line 103
    const-string v0, "history"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->isTest:Z

    .line 104
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mPrefs:Landroid/content/SharedPreferences;

    .line 106
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->loadDictionary()V

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic access$008(Lcom/android/inputmethod/latin/UserHistoryDictionary;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->profTotal:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->profTotal:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/UserHistoryDictionary;)Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/UserHistoryDictionary;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->VERSION3:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private flushPendingWrites()V
    .locals 6

    .prologue
    .line 196
    new-instance v0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    iget-object v2, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;-><init>(Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;Ljava/lang/String;Lcom/android/inputmethod/latin/UserHistoryDictionary;Landroid/content/SharedPreferences;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)Lcom/android/inputmethod/latin/UserHistoryDictionary;
    .locals 6
    .parameter "context"
    .parameter "locale"
    .parameter "sp"

    .prologue
    .line 85
    const-class v3, Lcom/android/inputmethod/latin/UserHistoryDictionary;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/inputmethod/latin/UserHistoryDictionary;->sLangDictCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    sget-object v2, Lcom/android/inputmethod/latin/UserHistoryDictionary;->sLangDictCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 87
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/inputmethod/latin/UserHistoryDictionary;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 88
    .local v0, dict:Lcom/android/inputmethod/latin/UserHistoryDictionary;
    :goto_0
    if-eqz v0, :cond_2

    .line 89
    sget-boolean v2, Lcom/android/inputmethod/latin/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v2, :cond_0

    .line 90
    sget-object v2, Lcom/android/inputmethod/latin/UserHistoryDictionary;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use cached UserHistoryDictionary for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v1           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/inputmethod/latin/UserHistoryDictionary;>;"
    :cond_0
    :goto_1
    monitor-exit v3

    return-object v0

    .line 87
    .end local v0           #dict:Lcom/android/inputmethod/latin/UserHistoryDictionary;
    .restart local v1       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/inputmethod/latin/UserHistoryDictionary;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/UserHistoryDictionary;

    move-object v0, v2

    goto :goto_0

    .line 95
    .end local v1           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/inputmethod/latin/UserHistoryDictionary;>;"
    :cond_2
    new-instance v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/inputmethod/latin/UserHistoryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 97
    .restart local v0       #dict:Lcom/android/inputmethod/latin/UserHistoryDictionary;
    sget-object v2, Lcom/android/inputmethod/latin/UserHistoryDictionary;->sLangDictCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 85
    .end local v0           #dict:Lcom/android/inputmethod/latin/UserHistoryDictionary;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private loadDictionaryAsyncLocked()V
    .locals 21

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/inputmethod/latin/SettingsValues;->getLastUserHistoryWriteTime(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide v8

    .line 222
    .local v8, last:J
    const-wide/16 v18, 0x0

    cmp-long v3, v8, v18

    if-nez v3, :cond_3

    const/4 v5, 0x1

    .line 223
    .local v5, initializing:Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 224
    .local v6, now:J
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->profTotal:I

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/inputmethod/latin/UserHistoryDictionary;->NAME:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, ".dict"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 226
    .local v15, fileName:Ljava/lang/String;
    move-object/from16 v4, p0

    .line 227
    .local v4, dictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;
    new-instance v2, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;-><init>(Lcom/android/inputmethod/latin/UserHistoryDictionary;Lcom/android/inputmethod/latin/ExpandableDictionary;ZJJ)V

    .line 255
    .local v2, listener:Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;
    const/16 v16, 0x0

    .line 257
    .local v16, inStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v14, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v3, v0

    new-array v10, v3, [B

    .line 259
    .local v10, buffer:[B
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .local v17, inStream:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/io/FileInputStream;->read([B)I

    .line 261
    new-instance v3, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;

    invoke-direct {v3, v10}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;-><init>([B)V

    invoke-static {v3, v2}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->readDictionaryBinary(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 268
    if-eqz v17, :cond_0

    .line 270
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 275
    :cond_0
    :goto_1
    sget-boolean v3, Lcom/android/inputmethod/latin/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v3, :cond_1

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v11, v18, v6

    .line 277
    .local v11, diff:J
    sget-object v3, Lcom/android/inputmethod/latin/UserHistoryDictionary;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PROF: Load UserHistoryDictionary: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms. load "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->profTotal:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "entries."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11           #diff:J
    :cond_1
    move-object/from16 v16, v17

    .line 281
    .end local v10           #buffer:[B
    .end local v14           #file:Ljava/io/File;
    .end local v17           #inStream:Ljava/io/FileInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return-void

    .line 222
    .end local v2           #listener:Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;
    .end local v4           #dictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;
    .end local v5           #initializing:Z
    .end local v6           #now:J
    .end local v15           #fileName:Ljava/lang/String;
    .end local v16           #inStream:Ljava/io/FileInputStream;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 263
    .restart local v2       #listener:Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;
    .restart local v4       #dictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;
    .restart local v5       #initializing:Z
    .restart local v6       #now:J
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v13

    .line 264
    .local v13, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    sget-object v3, Lcom/android/inputmethod/latin/UserHistoryDictionary;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "when loading: file not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    if-eqz v16, :cond_4

    .line 270
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 275
    :cond_4
    :goto_4
    sget-boolean v3, Lcom/android/inputmethod/latin/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v3, :cond_2

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v11, v18, v6

    .line 277
    .restart local v11       #diff:J
    sget-object v3, Lcom/android/inputmethod/latin/UserHistoryDictionary;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PROF: Load UserHistoryDictionary: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms. load "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->profTotal:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "entries."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .end local v13           #e:Ljava/io/FileNotFoundException;
    :goto_5
    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 265
    .end local v11           #diff:J
    :catch_1
    move-exception v13

    .line 266
    .local v13, e:Ljava/io/IOException;
    :goto_6
    :try_start_5
    sget-object v3, Lcom/android/inputmethod/latin/UserHistoryDictionary;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IOException when open bytebuffer: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    if-eqz v16, :cond_5

    .line 270
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 275
    :cond_5
    :goto_7
    sget-boolean v3, Lcom/android/inputmethod/latin/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v3, :cond_2

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v11, v18, v6

    .line 277
    .restart local v11       #diff:J
    sget-object v3, Lcom/android/inputmethod/latin/UserHistoryDictionary;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PROF: Load UserHistoryDictionary: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms. load "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->profTotal:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "entries."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 268
    .end local v11           #diff:J
    .end local v13           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_8
    if-eqz v16, :cond_6

    .line 270
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 275
    :cond_6
    :goto_9
    sget-boolean v18, Lcom/android/inputmethod/latin/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v18, :cond_7

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v11, v18, v6

    .line 277
    .restart local v11       #diff:J
    sget-object v18, Lcom/android/inputmethod/latin/UserHistoryDictionary;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PROF: Load UserHistoryDictionary: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ms. load "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->profTotal:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "entries."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v11           #diff:J
    :cond_7
    throw v3

    .line 271
    :catch_2
    move-exception v18

    goto :goto_9

    .local v13, e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v3

    goto/16 :goto_4

    .local v13, e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    goto/16 :goto_7

    .end local v13           #e:Ljava/io/IOException;
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .restart local v10       #buffer:[B
    .restart local v14       #file:Ljava/io/File;
    .restart local v17       #inStream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    goto/16 :goto_1

    .line 268
    :catchall_1
    move-exception v3

    move-object/from16 v16, v17

    .end local v17           #inStream:Ljava/io/FileInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    goto :goto_8

    .line 265
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .restart local v17       #inStream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v13

    move-object/from16 v16, v17

    .end local v17           #inStream:Ljava/io/FileInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 263
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .restart local v17       #inStream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v13

    move-object/from16 v16, v17

    .end local v17           #inStream:Ljava/io/FileInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method


# virtual methods
.method public addToUserHistory(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4
    .parameter "word1"
    .parameter "word2"
    .parameter "isValid"

    .prologue
    const/16 v2, 0x30

    const/4 v0, -0x1

    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-super {p0, p2, v1, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->addBigram(Ljava/lang/String;Ljava/lang/String;B)V

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 163
    :cond_2
    if-nez p1, :cond_3

    .line 164
    const/4 v0, 0x2

    .line 169
    .local v0, freq:I
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->addBigram(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1

    .line 166
    .end local v0           #freq:I
    :cond_3
    :try_start_2
    new-instance v1, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    invoke-direct {v1, p3}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(Z)V

    invoke-super {p0, p1, p2, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .restart local v0       #freq:I
    goto :goto_2

    .line 172
    .end local v0           #freq:I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public cancelAddingUserHistory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "word1"
    .parameter "word2"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->removeBigram(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->removeBigram(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 188
    :goto_0
    return v0

    .line 185
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->flushPendingWrites()V

    .line 121
    return-void
.end method

.method protected getWordsInner(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    .locals 1
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
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 137
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public loadDictionaryAsync()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->loadDictionaryAsyncLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 208
    return-void

    .line 206
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
