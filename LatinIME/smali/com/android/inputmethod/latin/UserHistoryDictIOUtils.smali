.class public final Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;
.super Ljava/lang/Object;
.source "UserHistoryDictIOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;,
        Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$BigramDictionaryInterface;,
        Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static addWordsFromWordMap(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/PendingAttribute;",
            ">;>;",
            "Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, unigrams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p1, frequencies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p2, bigrams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 200
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 201
    .local v6, word1:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 202
    .local v5, unigramFrequency:I
    const/4 v7, 0x0

    invoke-interface {p3, v6, v7, v5}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;->setUnigram(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 204
    .local v1, attrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;"
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/makedict/PendingAttribute;

    .line 206
    .local v0, attr:Lcom/android/inputmethod/latin/makedict/PendingAttribute;
    iget v7, v0, Lcom/android/inputmethod/latin/makedict/PendingAttribute;->mAddress:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, v0, Lcom/android/inputmethod/latin/makedict/PendingAttribute;->mFrequency:I

    invoke-static {v5, v8}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->reconstructBigramFrequency(II)I

    move-result v8

    invoke-interface {p3, v6, v7, v8}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;->setBigram(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 213
    .end local v0           #attr:Lcom/android/inputmethod/latin/makedict/PendingAttribute;
    .end local v1           #attrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;"
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #unigramFrequency:I
    .end local v6           #word1:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static constructFusionDictionary(Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$BigramDictionaryInterface;Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;)Lcom/android/inputmethod/latin/makedict/FusionDictionary;
    .locals 13
    .parameter "dict"
    .parameter "bigrams"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 134
    new-instance v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary;

    new-instance v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-direct {v8}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;-><init>()V

    new-instance v9, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v9, v10, v11, v11}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;-><init>(Ljava/util/HashMap;ZZ)V

    invoke-direct {v1, v8, v9}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;-><init>(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;)V

    .line 137
    .local v1, fusionDict:Lcom/android/inputmethod/latin/makedict/FusionDictionary;
    const/4 v4, 0x0

    .line 138
    .local v4, profTotal:I
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 139
    .local v5, word1:Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->getBigrams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 140
    .local v6, word1Bigrams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 141
    .local v7, word2:Ljava/lang/String;
    invoke-interface {p0, v5, v7}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$BigramDictionaryInterface;->getFrequency(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, freq:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    .line 155
    if-nez v5, :cond_2

    .line 156
    invoke-virtual {v1, v7, v0, v12, v11}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->add(Ljava/lang/String;ILjava/util/ArrayList;Z)V

    .line 163
    :goto_1
    int-to-byte v8, v0

    invoke-virtual {p1, v5, v7, v8}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->updateBigram(Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v8, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-static {v8, v5}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->findWordInTree(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    move-result-object v8

    if-nez v8, :cond_3

    .line 159
    const/4 v8, 0x2

    invoke-virtual {v1, v5, v8, v12, v11}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->add(Ljava/lang/String;ILjava/util/ArrayList;Z)V

    .line 161
    :cond_3
    invoke-virtual {v1, v5, v7, v0}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 169
    .end local v0           #freq:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #word1:Ljava/lang/String;
    .end local v6           #word1Bigrams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    .end local v7           #word2:Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public static readDictionaryBinary(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;)V
    .locals 7
    .parameter "buffer"
    .parameter "dict"

    .prologue
    .line 177
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v3

    .line 178
    .local v3, unigrams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v2

    .line 179
    .local v2, frequencies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    .line 181
    .local v0, bigrams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;>;"
    :try_start_0
    invoke-static {p0, v3, v2, v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils;->readUnigramsAndBigramsBinary(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 190
    :goto_0
    invoke-static {v3, v2, v0, p1}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->addWordsFromWordMap(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;)V

    .line 191
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO exception while reading file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 186
    .local v1, e:Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
    sget-object v4, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v1           #e:Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
    :catch_2
    move-exception v1

    .line 188
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v4, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ArrayIndexOutOfBoundsException while reading file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeDictionaryBinary(Ljava/io/OutputStream;Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$BigramDictionaryInterface;Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V
    .locals 5
    .parameter "destination"
    .parameter "dict"
    .parameter "bigrams"
    .parameter "formatOptions"

    .prologue
    .line 118
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->constructFusionDictionary(Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$BigramDictionaryInterface;Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;)Lcom/android/inputmethod/latin/makedict/FusionDictionary;

    move-result-object v1

    .line 120
    .local v1, fusionDict:Lcom/android/inputmethod/latin/makedict/FusionDictionary;
    :try_start_0
    invoke-static {p0, v1, p3}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->writeDictionaryBinary(Ljava/io/OutputStream;Lcom/android/inputmethod/latin/makedict/FusionDictionary;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V

    .line 121
    sget-object v2, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->TAG:Ljava/lang/String;

    const-string v3, "end writing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO exception while writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 125
    .local v0, e:Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
    sget-object v2, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported fomat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
