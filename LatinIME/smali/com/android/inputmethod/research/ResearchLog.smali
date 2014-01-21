.class public Lcom/android/inputmethod/research/ResearchLog;
.super Ljava/lang/Object;
.source "ResearchLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/research/ResearchLog$NullOutputStream;
    }
.end annotation


# static fields
.field private static final NULL_JSON_WRITER:Landroid/util/JsonWriter;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field final mFile:Ljava/io/File;

.field private final mFlushCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFlushFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mHasWrittenData:Z

.field private mIsAbortSuccessful:Z

.field private mJsonWriter:Landroid/util/JsonWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    const-class v0, Lcom/android/inputmethod/research/ResearchLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/research/ResearchLog;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Lcom/android/inputmethod/research/ResearchLog$NullOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/inputmethod/research/ResearchLog$NullOutputStream;-><init>(Lcom/android/inputmethod/research/ResearchLog$1;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lcom/android/inputmethod/research/ResearchLog;->NULL_JSON_WRITER:Landroid/util/JsonWriter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "outputFile"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/android/inputmethod/research/ResearchLog;->NULL_JSON_WRITER:Landroid/util/JsonWriter;

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mHasWrittenData:Z

    .line 169
    new-instance v0, Lcom/android/inputmethod/research/ResearchLog$3;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/research/ResearchLog$3;-><init>(Lcom/android/inputmethod/research/ResearchLog;)V

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mFlushCallable:Ljava/util/concurrent/Callable;

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 92
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 93
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLog;->mFile:Ljava/io/File;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/research/ResearchLog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mHasWrittenData:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/inputmethod/research/ResearchLog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/inputmethod/research/ResearchLog;->mHasWrittenData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/inputmethod/research/ResearchLog;)Landroid/util/JsonWriter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/inputmethod/research/ResearchLog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/inputmethod/research/ResearchLog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/inputmethod/research/ResearchLog;->mIsAbortSuccessful:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/inputmethod/research/ResearchLog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLog;->scheduleFlush()V

    return-void
.end method

.method private removeAnyScheduledFlush()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mFlushFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mFlushFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mFlushFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 184
    :cond_0
    return-void
.end method

.method private scheduleFlush()V
    .locals 5

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLog;->removeAnyScheduledFlush()V

    .line 188
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog;->mFlushCallable:Ljava/util/concurrent/Callable;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mFlushFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 189
    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/inputmethod/research/ResearchLog$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/research/ResearchLog$2;-><init>(Lcom/android/inputmethod/research/ResearchLog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 150
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLog;->removeAnyScheduledFlush()V

    .line 151
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blockingAbort()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLog;->abort()V

    .line 156
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0xfa0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 157
    iget-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mIsAbortSuccessful:Z

    return v0
.end method

.method public declared-synchronized close(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "onClosed"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/inputmethod/research/ResearchLog$1;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/research/ResearchLog$1;-><init>(Lcom/android/inputmethod/research/ResearchLog;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 128
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLog;->removeAnyScheduledFlush()V

    .line 129
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method outputEvent([Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 24
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 212
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 319
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/inputmethod/research/ResearchLog;->NULL_JSON_WRITER:Landroid/util/JsonWriter;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 222
    new-instance v20, Landroid/util/JsonWriter;

    new-instance v21, Ljava/io/BufferedWriter;

    new-instance v22, Ljava/io/FileWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct/range {v21 .. v22}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct/range {v20 .. v21}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 224
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/research/ResearchLog;->mHasWrittenData:Z

    .line 226
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "_ct"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "_ut"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "_ty"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, p1, v21

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 230
    move-object/from16 v0, p2

    array-length v14, v0

    .line 231
    .local v14, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v14, :cond_12

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, 0x1

    aget-object v21, p1, v21

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 233
    aget-object v17, p2, v7

    .line 234
    .local v17, value:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 231
    .end local v17           #value:Ljava/lang/Object;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 236
    .restart local v17       #value:Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    check-cast v17, Ljava/lang/Number;

    .end local v17           #value:Ljava/lang/Object;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 305
    .end local v7           #i:I
    .end local v14           #length:I
    :catch_0
    move-exception v4

    .line 306
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    sget-object v20, Lcom/android/inputmethod/research/ResearchLog;->TAG:Ljava/lang/String;

    const-string v21, "Error in JsonWriter; disabling logging"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    sget-object v20, Lcom/android/inputmethod/research/ResearchLog;->NULL_JSON_WRITER:Landroid/util/JsonWriter;

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    goto/16 :goto_0

    .line 238
    .end local v4           #e:Ljava/io/IOException;
    .restart local v7       #i:I
    .restart local v14       #length:I
    .restart local v17       #value:Ljava/lang/Object;
    :cond_3
    :try_start_2
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    check-cast v17, Ljava/lang/Boolean;

    .end local v17           #value:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    goto :goto_2

    .line 240
    .restart local v17       #value:Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, v17

    instance-of v0, v0, [Landroid/view/inputmethod/CompletionInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 241
    check-cast v17, [Landroid/view/inputmethod/CompletionInfo;

    .end local v17           #value:Ljava/lang/Object;
    move-object/from16 v0, v17

    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    move-object v3, v0

    .line 242
    .local v3, ci:[Landroid/view/inputmethod/CompletionInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 243
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_5

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    aget-object v21, v3, v10

    invoke-virtual/range {v21 .. v21}, Landroid/view/inputmethod/CompletionInfo;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 243
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 246
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    goto/16 :goto_2

    .line 247
    .end local v3           #ci:[Landroid/view/inputmethod/CompletionInfo;
    .end local v10           #j:I
    .restart local v17       #value:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/content/SharedPreferences;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 248
    move-object/from16 v0, v17

    check-cast v0, Landroid/content/SharedPreferences;

    move-object v15, v0

    .line 249
    .local v15, prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 250
    invoke-interface {v15}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 251
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v21, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 252
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 253
    .local v9, innerValue:Ljava/lang/Object;
    if-nez v9, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_5

    .line 255
    :cond_7
    instance-of v0, v9, Ljava/lang/Boolean;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    check-cast v9, Ljava/lang/Boolean;

    .end local v9           #innerValue:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    goto :goto_5

    .line 257
    .restart local v9       #innerValue:Ljava/lang/Object;
    :cond_8
    instance-of v0, v9, Ljava/lang/Number;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    check-cast v9, Ljava/lang/Number;

    .end local v9           #innerValue:Ljava/lang/Object;
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    goto :goto_5

    .line 260
    .restart local v9       #innerValue:Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_5

    .line 263
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v9           #innerValue:Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto/16 :goto_2

    .line 264
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v15           #prefs:Landroid/content/SharedPreferences;
    :cond_b
    move-object/from16 v0, v17

    instance-of v0, v0, [Lcom/android/inputmethod/keyboard/Key;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 265
    check-cast v17, [Lcom/android/inputmethod/keyboard/Key;

    .end local v17           #value:Ljava/lang/Object;
    move-object/from16 v0, v17

    check-cast v0, [Lcom/android/inputmethod/keyboard/Key;

    move-object v12, v0

    .line 266
    .local v12, keyboardKeys:[Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 267
    move-object v2, v12

    .local v2, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v13, v2

    .local v13, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_6
    if-ge v8, v13, :cond_c

    aget-object v11, v2, v8

    .line 268
    .local v11, keyboardKey:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "code"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    iget v0, v11, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "altCode"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    invoke-virtual {v11}, Lcom/android/inputmethod/keyboard/Key;->getAltCode()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "x"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    iget v0, v11, Lcom/android/inputmethod/keyboard/Key;->mX:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "y"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    iget v0, v11, Lcom/android/inputmethod/keyboard/Key;->mY:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "w"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    iget v0, v11, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "h"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    iget v0, v11, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 267
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 277
    .end local v11           #keyboardKey:Lcom/android/inputmethod/keyboard/Key;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    goto/16 :goto_2

    .line 278
    .end local v2           #arr$:[Lcom/android/inputmethod/keyboard/Key;
    .end local v8           #i$:I
    .end local v12           #keyboardKeys:[Lcom/android/inputmethod/keyboard/Key;
    .end local v13           #len$:I
    .restart local v17       #value:Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 279
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/inputmethod/latin/SuggestedWords;

    move-object/from16 v19, v0

    .line 280
    .local v19, words:Lcom/android/inputmethod/latin/SuggestedWords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "typedWordValid"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "willAutoCorrect"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mWillAutoCorrect:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "isPunctuationSuggestions"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsPunctuationSuggestions:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "isObsoleteSuggestions"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsObsoleteSuggestions:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "isPrediction"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v20

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsPrediction:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    const-string v21, "words"

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 289
    invoke-virtual/range {v19 .. v19}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v16

    .line 290
    .local v16, size:I
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_7
    move/from16 v0, v16

    if-ge v10, v0, :cond_e

    .line 291
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/inputmethod/latin/SuggestedWords;->getWordInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    move-result-object v18

    .line 292
    .local v18, wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 290
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 294
    .end local v18           #wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto/16 :goto_2

    .line 296
    .end local v10           #j:I
    .end local v16           #size:I
    .end local v19           #words:Lcom/android/inputmethod/latin/SuggestedWords;
    :cond_f
    if-nez v17, :cond_10

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto/16 :goto_2

    .line 299
    :cond_10
    sget-object v21, Lcom/android/inputmethod/research/ResearchLog;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unrecognized type to be logged: "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v17, :cond_11

    const-string v20, "<null>"

    :goto_8
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto/16 :goto_2

    .line 299
    :cond_11
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    goto :goto_8

    .line 304
    .end local v17           #value:Ljava/lang/Object;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 313
    .end local v7           #i:I
    .end local v14           #length:I
    .restart local v4       #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 314
    .local v5, e1:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    sget-object v20, Lcom/android/inputmethod/research/ResearchLog;->NULL_JSON_WRITER:Landroid/util/JsonWriter;

    goto/16 :goto_3

    .end local v5           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    sget-object v21, Lcom/android/inputmethod/research/ResearchLog;->NULL_JSON_WRITER:Landroid/util/JsonWriter;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;

    throw v20

    .line 310
    :catch_2
    move-exception v20

    .line 316
    sget-object v20, Lcom/android/inputmethod/research/ResearchLog;->NULL_JSON_WRITER:Landroid/util/JsonWriter;

    goto/16 :goto_3
.end method

.method public declared-synchronized publish(Lcom/android/inputmethod/research/LogUnit;Z)V
    .locals 2
    .parameter "logUnit"
    .parameter "isIncludingPrivateData"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/inputmethod/research/ResearchLog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/inputmethod/research/ResearchLog$4;-><init>(Lcom/android/inputmethod/research/ResearchLog;Lcom/android/inputmethod/research/LogUnit;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method
