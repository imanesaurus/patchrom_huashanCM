.class final Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;
.super Landroid/os/AsyncTask;
.source "UserHistoryDictionary.java"

# interfaces
.implements Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$BigramDictionaryInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/UserHistoryDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateBinaryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$BigramDictionaryInterface;"
    }
.end annotation


# instance fields
.field private final mAddLevel0Bigrams:Z

.field private final mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

.field private final mContext:Landroid/content/Context;

.field private final mLocale:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;Ljava/lang/String;Lcom/android/inputmethod/latin/UserHistoryDictionary;Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 2
    .parameter "pendingWrites"
    .parameter "locale"
    .parameter "dict"
    .parameter "prefs"
    .parameter "context"

    .prologue
    .line 296
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    .line 298
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mLocale:Ljava/lang/String;

    .line 299
    iput-object p3, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    .line 300
    iput-object p4, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mPrefs:Landroid/content/SharedPreferences;

    .line 301
    iput-object p5, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mContext:Landroid/content/Context;

    .line 302
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mAddLevel0Bigrams:Z

    .line 303
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doWriteTaskLocked()V
    .locals 12

    .prologue
    .line 332
    sget-boolean v9, Lcom/android/inputmethod/latin/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v9, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 333
    .local v5, now:J
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$300()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mLocale:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".dict"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, fileName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v3, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    .local v3, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 338
    .local v7, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v7           #out:Ljava/io/FileOutputStream;
    .local v8, out:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v9, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    invoke-static {}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$400()Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    move-result-object v10

    invoke-static {v8, p0, v9, v10}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->writeDictionaryBinary(Ljava/io/OutputStream;Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$BigramDictionaryInterface;Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V

    .line 340
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 341
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 345
    if-eqz v8, :cond_0

    .line 347
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    move-object v7, v8

    .line 355
    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mLocale:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/inputmethod/latin/SettingsValues;->setLastUserHistoryWriteTime(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 356
    sget-boolean v9, Lcom/android/inputmethod/latin/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v9, :cond_2

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v0, v9, v5

    .line 358
    .local v0, diff:J
    invoke-static {}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$500()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PROF: Write User HistoryDictionary: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mLocale:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v0           #diff:J
    :cond_2
    return-void

    .line 332
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #now:J
    .end local v7           #out:Ljava/io/FileOutputStream;
    :cond_3
    const-wide/16 v5, 0x0

    goto/16 :goto_0

    .line 342
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fileName:Ljava/lang/String;
    .restart local v5       #now:J
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 343
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$500()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IO Exception while writing file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    if-eqz v7, :cond_1

    .line 347
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 348
    :catch_1
    move-exception v9

    goto :goto_2

    .line 345
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v7, :cond_4

    .line 347
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 345
    :cond_4
    :goto_5
    throw v9

    .line 348
    :catch_2
    move-exception v10

    goto :goto_5

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v9

    goto :goto_1

    .line 345
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 342
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 286
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "v"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/UserHistoryDictionary;->isTest:Z

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    #getter for: Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$200(Lcom/android/inputmethod/latin/UserHistoryDictionary;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 311
    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->doWriteTaskLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    #getter for: Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$200(Lcom/android/inputmethod/latin/UserHistoryDictionary;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 318
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 313
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    #getter for: Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$200(Lcom/android/inputmethod/latin/UserHistoryDictionary;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    #getter for: Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$200(Lcom/android/inputmethod/latin/UserHistoryDictionary;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->doWriteTaskLocked()V

    goto :goto_0
.end method

.method public getFrequency(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "word1"
    .parameter "word2"

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    const/4 v2, 0x2

    .line 367
    .local v2, freq:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    invoke-virtual {v6, p1}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->getBigrams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    .line 389
    :goto_0
    return v2

    .line 369
    .end local v2           #freq:I
    :cond_0
    iget-object v6, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    invoke-virtual {v6, p1, p2}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->getBigramWord(Ljava/lang/String;Ljava/lang/String;)Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    move-result-object v4

    .line 370
    .local v4, nw:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    if-eqz v4, :cond_3

    .line 371
    invoke-interface {v4}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->getFcParams()Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    move-result-object v1

    .line 372
    .local v1, fcp:Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
    iget-object v6, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    invoke-virtual {v6, p1}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->getBigrams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 373
    .local v5, prevFc:B
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->getFc()B

    move-result v0

    .line 374
    .local v0, fc:B
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->isValid()Z

    move-result v3

    .line 375
    .local v3, isValid:Z
    if-lez v5, :cond_1

    if-ne v5, v0, :cond_1

    .line 376
    and-int/lit16 v2, v0, 0xff

    .restart local v2       #freq:I
    goto :goto_0

    .line 377
    .end local v2           #freq:I
    :cond_1
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$UpdateBinaryTask;->mAddLevel0Bigrams:Z

    invoke-static {v0, v3, v6}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->needsToSave(BZZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 379
    and-int/lit16 v2, v0, 0xff

    .restart local v2       #freq:I
    goto :goto_0

    .line 382
    .end local v2           #freq:I
    :cond_2
    const/4 v2, -0x1

    .restart local v2       #freq:I
    goto :goto_0

    .line 386
    .end local v0           #fc:B
    .end local v1           #fcp:Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
    .end local v2           #freq:I
    .end local v3           #isValid:Z
    .end local v5           #prevFc:B
    :cond_3
    const/4 v2, -0x1

    .restart local v2       #freq:I
    goto :goto_0
.end method
