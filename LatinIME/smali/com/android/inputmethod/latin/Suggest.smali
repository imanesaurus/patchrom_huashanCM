.class public final Lcom/android/inputmethod/latin/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Suggest$SuggestedWordInfoComparator;,
        Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final TAG:Ljava/lang/String;

.field private static final sSuggestedWordInfoComparator:Lcom/android/inputmethod/latin/Suggest$SuggestedWordInfoComparator;


# instance fields
.field private mAutoCorrectionThreshold:F

.field private mContactsDict:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

.field private final mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocale:Ljava/util/Locale;

.field private mMainDictionary:Lcom/android/inputmethod/latin/Dictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Suggest;->TAG:Ljava/lang/String;

    .line 54
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/Suggest;->DBG:Z

    .line 378
    new-instance v0, Lcom/android/inputmethod/latin/Suggest$SuggestedWordInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Suggest$SuggestedWordInfoComparator;-><init>(Lcom/android/inputmethod/latin/Suggest$1;)V

    sput-object v0, Lcom/android/inputmethod/latin/Suggest;->sSuggestedWordInfoComparator:Lcom/android/inputmethod/latin/Suggest$SuggestedWordInfoComparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;JJLjava/util/Locale;)V
    .locals 10
    .parameter "context"
    .parameter "dictionary"
    .parameter "startOffset"
    .parameter "length"
    .parameter "locale"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryForTest(Landroid/content/Context;Ljava/io/File;JJZLjava/util/Locale;)Lcom/android/inputmethod/latin/Dictionary;

    move-result-object v9

    .line 78
    .local v9, mainDict:Lcom/android/inputmethod/latin/Dictionary;
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mLocale:Ljava/util/Locale;

    .line 79
    iput-object v9, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 80
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "main"

    invoke-static {v1, v2, v9}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V
    .locals 1
    .parameter "context"
    .parameter "locale"
    .parameter "listener"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->initAsynchronously(Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V

    .line 71
    iput-object p2, p0, Lcom/android/inputmethod/latin/Suggest;->mLocale:Ljava/util/Locale;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/Suggest;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/inputmethod/latin/Suggest;Lcom/android/inputmethod/latin/Dictionary;)Lcom/android/inputmethod/latin/Dictionary;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDictionary:Lcom/android/inputmethod/latin/Dictionary;

    return-object p1
.end method

.method private static addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter
    .parameter "key"
    .parameter "dict"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, dictionaries:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    move-object v0, v1

    .line 94
    .local v0, oldDict:Lcom/android/inputmethod/latin/Dictionary;
    :goto_0
    if-eqz v0, :cond_0

    if-eq p2, v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    .line 97
    :cond_0
    return-void

    .line 91
    .end local v0           #oldDict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    move-object v0, v1

    goto :goto_0
.end method

.method private getSuggestedWordsForBatchInput(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;I)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 21
    .parameter "wordComposer"
    .parameter "prevWordForBigram"
    .parameter "proximityInfo"
    .parameter "sessionId"

    .prologue
    .line 293
    new-instance v18, Lcom/android/inputmethod/latin/BoundedTreeSet;

    sget-object v4, Lcom/android/inputmethod/latin/Suggest;->sSuggestedWordInfoComparator:Lcom/android/inputmethod/latin/Suggest$SuggestedWordInfoComparator;

    const/16 v6, 0x12

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v6}, Lcom/android/inputmethod/latin/BoundedTreeSet;-><init>(Ljava/util/Comparator;I)V

    .line 297
    .local v18, suggestionsSet:Lcom/android/inputmethod/latin/BoundedTreeSet;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 301
    .local v16, key:Ljava/lang/String;
    const-string v4, "history"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/inputmethod/latin/Dictionary;

    .line 305
    .local v11, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getSuggestionsWithSessionId(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;I)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/BoundedTreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 309
    .end local v11           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    .end local v16           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/inputmethod/latin/BoundedTreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 310
    .local v20, wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mSourceDict:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 313
    .end local v20           #wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_2
    invoke-static/range {v18 .. v18}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    .line 315
    .local v5, suggestionsContainer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 316
    .local v17, suggestionsCount:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->wasShiftedNoLock()Z

    move-result v15

    .line 317
    .local v15, isFirstCharCapitalized:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isAllUpperCase()Z

    move-result v14

    .line 318
    .local v14, isAllUpperCase:Z
    if-nez v15, :cond_3

    if-eqz v14, :cond_4

    .line 319
    :cond_3
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    .line 320
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 321
    .restart local v20       #wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mLocale:Ljava/util/Locale;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v4, v14, v15, v6}, Lcom/android/inputmethod/latin/Suggest;->getTransformedSuggestedWordInfo(Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;Ljava/util/Locale;ZZI)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    move-result-object v19

    .line 324
    .local v19, transformedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    move-object/from16 v0, v19

    invoke-virtual {v5, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 328
    .end local v12           #i:I
    .end local v19           #transformedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    .end local v20           #wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_4
    invoke-static {v5}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->removeDups(Ljava/util/ArrayList;)V

    .line 331
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZ)V

    return-object v4
.end method

.method private getSuggestedWordsForTypingInput(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;Z)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 27
    .parameter "wordComposer"
    .parameter "prevWordForBigram"
    .parameter "proximityInfo"
    .parameter "isCorrectionEnabled"

    .prologue
    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->trailingSingleQuotesCount()I

    move-result v21

    .line 181
    .local v21, trailingSingleQuotesCount:I
    new-instance v20, Lcom/android/inputmethod/latin/BoundedTreeSet;

    sget-object v3, Lcom/android/inputmethod/latin/Suggest;->sSuggestedWordInfoComparator:Lcom/android/inputmethod/latin/Suggest$SuggestedWordInfoComparator;

    const/16 v5, 0x12

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v5}, Lcom/android/inputmethod/latin/BoundedTreeSet;-><init>(Ljava/util/Comparator;I)V

    .line 184
    .local v20, suggestionsSet:Lcom/android/inputmethod/latin/BoundedTreeSet;
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v23

    .line 185
    .local v23, typedWord:Ljava/lang/String;
    if-lez v21, :cond_0

    const/4 v3, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v5, v21

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, consideredWord:Ljava/lang/String;
    :goto_0
    const-string v3, "user_typed"

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    if-lez v21, :cond_1

    .line 192
    new-instance v25, Lcom/android/inputmethod/latin/WordComposer;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;-><init>(Lcom/android/inputmethod/latin/WordComposer;)V

    .line 193
    .local v25, wordComposerForLookup:Lcom/android/inputmethod/latin/WordComposer;
    add-int/lit8 v13, v21, -0x1

    .local v13, i:I
    :goto_1
    if-ltz v13, :cond_2

    .line 194
    invoke-virtual/range {v25 .. v25}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    .line 193
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .end local v11           #consideredWord:Ljava/lang/String;
    .end local v13           #i:I
    .end local v25           #wordComposerForLookup:Lcom/android/inputmethod/latin/WordComposer;
    :cond_0
    move-object/from16 v11, v23

    .line 185
    goto :goto_0

    .line 197
    .restart local v11       #consideredWord:Ljava/lang/String;
    :cond_1
    move-object/from16 v25, p1

    .line 200
    .restart local v25       #wordComposerForLookup:Lcom/android/inputmethod/latin/WordComposer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 201
    .local v17, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/inputmethod/latin/Dictionary;

    .line 202
    .local v12, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/inputmethod/latin/Dictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/BoundedTreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 207
    .end local v12           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    .end local v17           #key:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/inputmethod/latin/BoundedTreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 208
    const/16 v24, 0x0

    .line 217
    .local v24, whitelistedWord:Ljava/lang/CharSequence;
    :goto_3
    if-eqz v24, :cond_4

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v5

    invoke-static {v3, v11, v5}, Lcom/android/inputmethod/latin/AutoCorrection;->isInTheDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_5
    const/4 v10, 0x1

    .line 228
    .local v10, allowsToBeAutoCorrected:Z
    :goto_4
    if-eqz p4, :cond_6

    if-eqz v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/android/inputmethod/latin/BoundedTreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->hasDigits()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isMostlyCaps()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isResumed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v3

    if-nez v3, :cond_b

    .line 238
    :cond_6
    const/4 v6, 0x0

    .line 244
    .local v6, hasAutoCorrection:Z
    :goto_5
    invoke-static/range {v20 .. v20}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v18

    .line 246
    .local v18, suggestionsContainer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 247
    .local v19, suggestionsCount:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v16

    .line 248
    .local v16, isFirstCharCapitalized:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isAllUpperCase()Z

    move-result v15

    .line 249
    .local v15, isAllUpperCase:Z
    if-nez v16, :cond_7

    if-nez v15, :cond_7

    if-eqz v21, :cond_c

    .line 250
    :cond_7
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_6
    move/from16 v0, v19

    if-ge v13, v0, :cond_c

    .line 251
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 252
    .local v26, wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/Suggest;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-static {v0, v3, v15, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->getTransformedSuggestedWordInfo(Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;Ljava/util/Locale;ZZI)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    move-result-object v22

    .line 255
    .local v22, transformedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 250
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 209
    .end local v6           #hasAutoCorrection:Z
    .end local v10           #allowsToBeAutoCorrected:Z
    .end local v13           #i:I
    .end local v15           #isAllUpperCase:Z
    .end local v16           #isFirstCharCapitalized:Z
    .end local v18           #suggestionsContainer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .end local v19           #suggestionsCount:I
    .end local v22           #transformedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    .end local v24           #whitelistedWord:Ljava/lang/CharSequence;
    .end local v26           #wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_8
    const/4 v5, 0x3

    invoke-virtual/range {v20 .. v20}, Lcom/android/inputmethod/latin/BoundedTreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    iget v3, v3, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mKind:I

    if-eq v5, v3, :cond_9

    .line 210
    const/16 v24, 0x0

    .restart local v24       #whitelistedWord:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 212
    .end local v24           #whitelistedWord:Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual/range {v20 .. v20}, Lcom/android/inputmethod/latin/BoundedTreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    iget-object v0, v3, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    move-object/from16 v24, v0

    .restart local v24       #whitelistedWord:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 217
    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    .line 240
    .restart local v10       #allowsToBeAutoCorrected:Z
    :cond_b
    invoke-virtual/range {v20 .. v20}, Lcom/android/inputmethod/latin/BoundedTreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:F

    invoke-static {v3, v11, v5}, Lcom/android/inputmethod/latin/AutoCorrection;->suggestionExceedsAutoCorrectionThreshold(Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;Ljava/lang/CharSequence;F)Z

    move-result v6

    .restart local v6       #hasAutoCorrection:Z
    goto :goto_5

    .line 259
    .restart local v15       #isAllUpperCase:Z
    .restart local v16       #isFirstCharCapitalized:Z
    .restart local v18       #suggestionsContainer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .restart local v19       #suggestionsCount:I
    :cond_c
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_7
    move/from16 v0, v19

    if-ge v13, v0, :cond_d

    .line 260
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 261
    .restart local v26       #wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mSourceDict:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 264
    .end local v26           #wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_d
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 265
    const/4 v3, 0x0

    new-instance v5, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const-string v9, "user_typed"

    move-object/from16 v0, v23

    invoke-direct {v5, v0, v7, v8, v9}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 269
    :cond_e
    invoke-static/range {v18 .. v18}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->removeDups(Ljava/util/ArrayList;)V

    .line 272
    sget-boolean v3, Lcom/android/inputmethod/latin/Suggest;->DBG:Z

    if-eqz v3, :cond_f

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 273
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->getSuggestionsInfoListWithDebugInfo(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 278
    .local v4, suggestionsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    :goto_8
    new-instance v3, Lcom/android/inputmethod/latin/SuggestedWords;

    if-nez v10, :cond_10

    const/4 v5, 0x1

    :goto_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v9

    if-nez v9, :cond_11

    const/4 v9, 0x1

    :goto_a
    invoke-direct/range {v3 .. v9}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZ)V

    return-object v3

    .line 275
    .end local v4           #suggestionsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    :cond_f
    move-object/from16 v4, v18

    .restart local v4       #suggestionsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    goto :goto_8

    .line 278
    :cond_10
    const/4 v5, 0x0

    goto :goto_9

    :cond_11
    const/4 v9, 0x0

    goto :goto_a
.end method

.method private static getSuggestionsInfoListWithDebugInfo(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter "typedWord"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    const/4 v11, 0x0

    .line 341
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 342
    .local v6, typedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    const-string v7, "+"

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->setDebugString(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 344
    .local v5, suggestionsSize:I
    invoke-static {v5}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 346
    .local v4, suggestionsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v7, v5, -0x1

    if-ge v1, v7, :cond_1

    .line 350
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 351
    .local v0, cur:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    invoke-static {p0, v7, v8}, Lcom/android/inputmethod/latin/BinaryDictionary;->calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v2

    .line 354
    .local v2, normalizedScore:F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    .line 355
    const-string v7, "%d (%4.2f)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, scoreInfoString:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->setDebugString(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v3           #scoreInfoString:Ljava/lang/String;
    :cond_0
    iget v7, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #scoreInfoString:Ljava/lang/String;
    goto :goto_1

    .line 362
    .end local v0           #cur:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    .end local v2           #normalizedScore:F
    .end local v3           #scoreInfoString:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private static getTransformedSuggestedWordInfo(Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;Ljava/util/Locale;ZZI)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    .locals 6
    .parameter "wordInfo"
    .parameter "locale"
    .parameter "isAllUpperCase"
    .parameter "isFirstCharCapitalized"
    .parameter "trailingSingleQuotesCount"

    .prologue
    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 385
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :goto_0
    add-int/lit8 v0, p4, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 393
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 392
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 387
    .end local v0           #i:I
    :cond_0
    if-eqz p3, :cond_1

    .line 388
    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/StringUtils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 395
    .restart local v0       #i:I
    :cond_2
    new-instance v2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    iget v3, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    iget v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mKind:I

    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mSourceDict:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    return-object v2
.end method

.method private initAsynchronously(Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V
    .locals 0
    .parameter "context"
    .parameter "locale"
    .parameter "listener"

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->resetMainDict(Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V

    .line 86
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 399
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 400
    .local v0, dictionaries:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/inputmethod/latin/Dictionary;>;"
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 401
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    .line 402
    .local v1, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_0

    .line 404
    .end local v1           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 405
    return-void
.end method

.method public getContactsDictionary()Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDict:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    return-object v0
.end method

.method public getMainDictionary()Lcom/android/inputmethod/latin/Dictionary;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDictionary:Lcom/android/inputmethod/latin/Dictionary;

    return-object v0
.end method

.method public getSuggestedWords(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;ZI)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1
    .parameter "wordComposer"
    .parameter "prevWordForBigram"
    .parameter "proximityInfo"
    .parameter "isCorrectionEnabled"
    .parameter "sessionId"

    .prologue
    .line 166
    invoke-static {p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->onStartSuggestion(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->isBatchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordsForBatchInput(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;I)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordsForTypingInput(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;Z)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnigramDictionaries()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public hasMainDictionary()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetMainDict(Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V
    .locals 6
    .parameter "context"
    .parameter "locale"
    .parameter "listener"

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 102
    if-eqz p3, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v0

    invoke-interface {p3, v0}, Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;->onUpdateMainDictionaryAvailability(Z)V

    .line 105
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/Suggest$1;

    const-string v2, "InitializeBinaryDictionary"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/Suggest$1;-><init>(Lcom/android/inputmethod/latin/Suggest;Ljava/lang/String;Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest$1;->start()V

    .line 117
    return-void
.end method

.method public setAutoCorrectionThreshold(F)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 160
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:F

    .line 161
    return-void
.end method

.method public setContactsDictionary(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)V
    .locals 2
    .parameter "contactsDictionary"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDict:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    .line 152
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "contacts"

    invoke-static {v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 153
    return-void
.end method

.method public setUserDictionary(Lcom/android/inputmethod/latin/UserBinaryDictionary;)V
    .locals 2
    .parameter "userDictionary"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "user"

    invoke-static {v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 143
    return-void
.end method

.method public setUserHistoryDictionary(Lcom/android/inputmethod/latin/UserHistoryDictionary;)V
    .locals 2
    .parameter "userHistoryDictionary"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "history"

    invoke-static {v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 157
    return-void
.end method
