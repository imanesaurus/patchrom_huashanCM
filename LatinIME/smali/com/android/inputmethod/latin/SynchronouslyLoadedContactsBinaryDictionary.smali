.class public final Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsBinaryDictionary;
.super Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
.source "SynchronouslyLoadedContactsBinaryDictionary.java"


# instance fields
.field private mClosed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 0
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsBinaryDictionary;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsBinaryDictionary;->mClosed:Z

    .line 54
    invoke-super {p0}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "codes"
    .parameter "prevWordForBigrams"
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
    .line 37
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsBinaryDictionary;->syncReloadDictionaryIfRequired()V

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsBinaryDictionary;->syncReloadDictionaryIfRequired()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsBinaryDictionary;->isValidWordInner(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
