.class public final Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;
.super Ljava/lang/Object;
.source "UserHistoryDictionaryBigramList.java"


# static fields
.field private static final EMPTY_BIGRAM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBigramMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->TAG:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->EMPTY_BIGRAM_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mSize:I

    return-void
.end method


# virtual methods
.method public addBigram(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "word1"
    .parameter "word2"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->addBigram(Ljava/lang/String;Ljava/lang/String;B)V

    .line 46
    return-void
.end method

.method public addBigram(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "word1"
    .parameter "word2"
    .parameter "fcValue"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 62
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mSize:I

    .line 64
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    return-void

    .line 59
    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    :cond_1
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 60
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBigrams(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .parameter "word1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 104
    :goto_0
    return-object v1

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, lowerWord1:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    goto :goto_0

    .line 104
    :cond_1
    sget-object v1, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->EMPTY_BIGRAM_MAP:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeBigram(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "word1"
    .parameter "word2"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->getBigrams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 109
    .local v0, set:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mSize:I

    .line 115
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mSize:I

    return v0
.end method

.method public updateBigram(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "word1"
    .parameter "word2"
    .parameter "fcValue"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 81
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    :cond_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
