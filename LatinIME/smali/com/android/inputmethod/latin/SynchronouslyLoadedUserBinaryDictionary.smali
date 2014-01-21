.class public final Lcom/android/inputmethod/latin/SynchronouslyLoadedUserBinaryDictionary;
.super Lcom/android/inputmethod/latin/UserBinaryDictionary;
.source "SynchronouslyLoadedUserBinaryDictionary.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "locale"
    .parameter "alsoUseMoreRestrictiveLocales"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/UserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method


# virtual methods
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
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserBinaryDictionary;->syncReloadDictionaryIfRequired()V

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserBinaryDictionary;->syncReloadDictionaryIfRequired()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserBinaryDictionary;->isValidWordInner(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
