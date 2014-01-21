.class public final Lcom/android/inputmethod/latin/DictionaryCollection;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "DictionaryCollection.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected final mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/Dictionary;-><init>(Ljava/lang/String;)V

    .line 33
    const-class v0, Lcom/android/inputmethod/latin/DictionaryCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->TAG:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newCopyOnWriteArrayList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/Dictionary;-><init>(Ljava/lang/String;)V

    .line 33
    const-class v0, Lcom/android/inputmethod/latin/DictionaryCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->TAG:Ljava/lang/String;

    .line 53
    invoke-static {p2}, Lcom/android/inputmethod/latin/CollectionUtils;->newCopyOnWriteArrayList(Ljava/util/Collection;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 55
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/Dictionary;-><init>(Ljava/lang/String;)V

    .line 33
    const-class v0, Lcom/android/inputmethod/latin/DictionaryCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->TAG:Ljava/lang/String;

    .line 43
    if-nez p2, :cond_0

    .line 44
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newCopyOnWriteArrayList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p2}, Lcom/android/inputmethod/latin/CollectionUtils;->newCopyOnWriteArrayList([Ljava/lang/Object;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 3
    .parameter "newDict"

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This collection already contains this dictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 103
    .local v0, dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_0

    .line 104
    .end local v0           #dict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_0
    return-void
.end method

.method public getFrequency(Ljava/lang/CharSequence;)I
    .locals 4
    .parameter "word"

    .prologue
    .line 85
    const/4 v1, -0x1

    .line 86
    .local v1, maxFreq:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/latin/Dictionary;->getFrequency(Ljava/lang/CharSequence;)I

    move-result v2

    .line 88
    .local v2, tempFreq:I
    if-lt v2, v1, :cond_0

    .line 89
    move v1, v2

    .line 86
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 92
    .end local v2           #tempFreq:I
    :cond_1
    return v1
.end method

.method public getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    .locals 6
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
    .line 60
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    .local v0, dictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/inputmethod/latin/Dictionary;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    .line 73
    :cond_0
    return-object v4

    .line 64
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/inputmethod/latin/Dictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;

    move-result-object v4

    .line 66
    .local v4, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 67
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 68
    .local v2, length:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/inputmethod/latin/Dictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;

    move-result-object v3

    .line 71
    .local v3, sugg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "word"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 80
    :goto_1
    return v1

    .line 78
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public removeDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 3
    .parameter "dict"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryCollection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This collection does not contain this dictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
