.class final Lcom/android/inputmethod/latin/BinaryDictionaryGetter;
.super Ljava/lang/Object;
.source "BinaryDictionaryGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;,
        Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;
    }
.end annotation


# static fields
.field private static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field private static final TAG:Ljava/lang/String;

.field private static VERSION_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 62
    const-string v0, "version"

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->VERSION_KEY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getCacheDirectoryForLocale(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "locale"
    .parameter "context"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, relativeDirectoryName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, absoluteDirectoryName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    sget-object v3, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create the directory for locale"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    return-object v0
.end method

.method public static getCacheFileName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "id"
    .parameter "locale"
    .parameter "context"

    .prologue
    .line 162
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCacheDirectoryForLocale(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;
    .locals 2
    .parameter "context"

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedWordLists(Ljava/lang/String;Landroid/content/Context;)[Ljava/io/File;
    .locals 23
    .parameter "locale"
    .parameter "context"

    .prologue
    .line 277
    invoke-static/range {p1 .. p1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v10

    .line 278
    .local v10, directoryList:[Ljava/io/File;
    if-nez v10, :cond_1

    sget-object v19, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 303
    :cond_0
    :goto_0
    return-object v19

    .line 279
    :cond_1
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 280
    .local v5, cacheFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;>;"
    move-object v3, v10

    .local v3, arr$:[Ljava/io/File;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v13, v12

    .end local v3           #arr$:[Ljava/io/File;
    .end local v12           #i$:I
    .end local v16           #len$:I
    .local v13, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_6

    aget-object v9, v3, v13

    .line 281
    .local v9, directory:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-nez v22, :cond_3

    .line 280
    .end local v13           #i$:I
    :cond_2
    add-int/lit8 v12, v13, 0x1

    .restart local v12       #i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_1

    .line 282
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, dirLocale:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v8, v0}, Lcom/android/inputmethod/latin/LocaleUtils;->getMatchLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 284
    .local v18, matchLevel:I
    invoke-static/range {v18 .. v18}, Lcom/android/inputmethod/latin/LocaleUtils;->isMatch(I)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 285
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v21

    .line 286
    .local v21, wordLists:[Ljava/io/File;
    if-eqz v21, :cond_2

    .line 287
    move-object/from16 v4, v21

    .local v4, arr$:[Ljava/io/File;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    aget-object v20, v4, v12

    .line 288
    .local v20, wordList:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCategoryFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, category:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;

    .line 290
    .local v7, currentBestMatch:Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;
    if-eqz v7, :cond_4

    iget v0, v7, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;->mMatchLevel:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 291
    :cond_4
    new-instance v22, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;-><init>(Ljava/io/File;I)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 297
    .end local v4           #arr$:[Ljava/io/File;
    .end local v6           #category:Ljava/lang/String;
    .end local v7           #currentBestMatch:Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;
    .end local v8           #dirLocale:Ljava/lang/String;
    .end local v9           #directory:Ljava/io/File;
    .end local v12           #i$:I
    .end local v17           #len$:I
    .end local v18           #matchLevel:I
    .end local v20           #wordList:Ljava/io/File;
    .end local v21           #wordLists:[Ljava/io/File;
    .restart local v13       #i$:I
    :cond_6
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_7

    sget-object v19, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    goto :goto_0

    .line 298
    :cond_7
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v19, v0

    .line 299
    .local v19, result:[Ljava/io/File;
    const/4 v14, 0x0

    .line 300
    .local v14, index:I
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13           #i$:I
    .local v12, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;

    .line 301
    .local v11, entry:Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;
    add-int/lit8 v15, v14, 0x1

    .end local v14           #index:I
    .local v15, index:I
    iget-object v0, v11, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;->mFile:Ljava/io/File;

    move-object/from16 v22, v0

    aput-object v22, v19, v14

    move v14, v15

    .end local v15           #index:I
    .restart local v14       #index:I
    goto :goto_3
.end method

.method private static getCategoryFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 243
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, id:Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, idArray:[Ljava/lang/String;
    const/4 v2, 0x2

    array-length v3, v1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 246
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method public static getDictionaryFiles(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 18
    .parameter "locale"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/AssetFileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/DictionaryFactory;->isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v11

    .line 430
    .local v11, hasDefaultWordList:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->cacheWordListsFromContentProvider(Ljava/util/Locale;Landroid/content/Context;Z)Ljava/util/List;

    .line 432
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCachedWordLists(Ljava/lang/String;Landroid/content/Context;)[Ljava/io/File;

    move-result-object v3

    .line 433
    .local v3, cachedWordLists:[Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getMainDictId(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 434
    .local v14, mainDictId:Ljava/lang/String;
    new-instance v5, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;-><init>(Landroid/content/Context;)V

    .line 436
    .local v5, dictPackSettings:Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;
    const/4 v10, 0x0

    .line 437
    .local v10, foundMainDict:Z
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 439
    .local v9, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    move-object v2, v3

    .local v2, arr$:[Ljava/io/File;
    array-length v13, v2

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_4

    aget-object v6, v2, v12

    .line 440
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 441
    .local v15, wordListId:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->hackCanUseDictionaryFile(Ljava/util/Locale;Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v4, 0x1

    .line 442
    .local v4, canUse:Z
    :goto_1
    if-eqz v4, :cond_0

    invoke-static {v15}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->isMainWordListId(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 443
    const/4 v10, 0x1

    .line 445
    :cond_0
    invoke-virtual {v5, v15}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->isWordListActive(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 439
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 441
    .end local v4           #canUse:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 446
    .restart local v4       #canUse:Z
    :cond_2
    if-eqz v4, :cond_3

    .line 447
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileName(Ljava/lang/String;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 449
    :cond_3
    sget-object v16, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    const-string v17, "Found a cached dictionary file but cannot read or use it"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 453
    .end local v4           #canUse:Z
    .end local v6           #f:Ljava/io/File;
    .end local v15           #wordListId:Ljava/lang/String;
    :cond_4
    if-nez v10, :cond_5

    invoke-virtual {v5, v14}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->isWordListActive(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/DictionaryFactory;->getMainDictionaryResourceId(Landroid/content/res/Resources;Ljava/util/Locale;)I

    move-result v8

    .line 456
    .local v8, fallbackResId:I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->loadFallbackResource(Landroid/content/Context;I)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v7

    .line 457
    .local v7, fallbackAsset:Lcom/android/inputmethod/latin/AssetFileAddress;
    if-eqz v7, :cond_5

    .line 458
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v7           #fallbackAsset:Lcom/android/inputmethod/latin/AssetFileAddress;
    .end local v8           #fallbackResId:I
    :cond_5
    return-object v9
.end method

.method private static getMainDictId(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "locale"

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "main:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "id"
    .parameter "context"

    .prologue
    .line 173
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dicts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "fname"

    .prologue
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 110
    .local v2, fnameLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 111
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 112
    .local v0, codePoint:I
    const/16 v5, 0x25

    if-eq v5, v0, :cond_0

    .line 113
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 110
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_0

    .line 115
    :cond_0
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x7

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, encodedCodePoint:I
    add-int/lit8 v3, v3, 0x6

    .line 117
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    .end local v0           #codePoint:I
    .end local v1           #encodedCodePoint:I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static hackCanUseDictionaryFile(Ljava/util/Locale;Ljava/io/File;)Z
    .locals 16
    .parameter "locale"
    .parameter "f"

    .prologue
    .line 366
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 399
    :cond_0
    :goto_0
    return v1

    .line 368
    :cond_1
    const/4 v11, 0x0

    .line 371
    .local v11, inStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_4

    .line 372
    .end local v11           #inStream:Ljava/io/FileInputStream;
    .local v12, inStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;

    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;-><init>(Ljava/nio/ByteBuffer;)V

    .line 375
    .local v7, buffer:Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;
    invoke-virtual {v7}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v13

    .line 376
    .local v13, magic:I
    const v1, -0x643ec502

    if-eq v13, v1, :cond_2

    .line 377
    const/4 v1, 0x0

    .line 401
    if-eqz v12, :cond_0

    .line 403
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 404
    .end local v7           #buffer:Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;
    .end local v12           #inStream:Ljava/io/FileInputStream;
    .end local v13           #magic:I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 379
    .restart local v7       #buffer:Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    .restart local v13       #magic:I
    :cond_2
    :try_start_3
    invoke-virtual {v7}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->readInt()I

    move-result v9

    .line 380
    .local v9, formatVersion:I
    invoke-virtual {v7}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->readInt()I

    move-result v10

    .line 381
    .local v10, headerSize:I
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v14

    .line 382
    .local v14, options:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v7, v10, v14}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->populateOptions(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILjava/util/HashMap;)V

    .line 384
    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->VERSION_KEY:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_6

    .line 385
    .local v15, version:Ljava/lang/String;
    if-nez v15, :cond_3

    .line 387
    const/4 v1, 0x0

    .line 401
    if-eqz v12, :cond_0

    .line 403
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 391
    :cond_3
    :try_start_5
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_5} :catch_6

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_4

    const/4 v1, 0x1

    .line 401
    :goto_1
    if-eqz v12, :cond_0

    .line 403
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 391
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 392
    .end local v7           #buffer:Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;
    .end local v9           #formatVersion:I
    .end local v10           #headerSize:I
    .end local v12           #inStream:Ljava/io/FileInputStream;
    .end local v13           #magic:I
    .end local v14           #options:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #version:Ljava/lang/String;
    .restart local v11       #inStream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    .line 393
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v1, 0x0

    .line 401
    if-eqz v11, :cond_0

    .line 403
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 394
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    .line 395
    .local v8, e:Ljava/io/IOException;
    :goto_3
    const/4 v1, 0x0

    .line 401
    if-eqz v11, :cond_0

    .line 403
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 396
    .end local v8           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 397
    .local v8, e:Ljava/lang/NumberFormatException;
    :goto_4
    const/4 v1, 0x0

    .line 401
    if-eqz v11, :cond_0

    .line 403
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 398
    .end local v8           #e:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v8

    .line 399
    .local v8, e:Ljava/nio/BufferUnderflowException;
    :goto_5
    const/4 v1, 0x0

    .line 401
    if-eqz v11, :cond_0

    .line 403
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 401
    .end local v8           #e:Ljava/nio/BufferUnderflowException;
    :catchall_0
    move-exception v1

    :goto_6
    if-eqz v11, :cond_5

    .line 403
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 401
    :cond_5
    :goto_7
    throw v1

    .line 404
    :catch_5
    move-exception v2

    goto :goto_7

    .line 401
    .end local v11           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12           #inStream:Ljava/io/FileInputStream;
    .restart local v11       #inStream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 398
    .end local v11           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    move-object v11, v12

    .end local v12           #inStream:Ljava/io/FileInputStream;
    .restart local v11       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 396
    .end local v11           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v11, v12

    .end local v12           #inStream:Ljava/io/FileInputStream;
    .restart local v11       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 394
    .end local v11           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v11, v12

    .end local v12           #inStream:Ljava/io/FileInputStream;
    .restart local v11       #inStream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 392
    .end local v11           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v8

    move-object v11, v12

    .end local v12           #inStream:Ljava/io/FileInputStream;
    .restart local v11       #inStream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static isFileNameCharacter(I)Z
    .locals 2
    .parameter "codePoint"

    .prologue
    const/4 v0, 0x1

    .line 73
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-le p0, v1, :cond_0

    .line 75
    :cond_2
    const/16 v1, 0x61

    if-lt p0, v1, :cond_3

    const/16 v1, 0x7a

    if-le p0, v1, :cond_0

    .line 76
    :cond_3
    const/16 v1, 0x5f

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMainWordListId(Ljava/lang/String;)Z
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 355
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, idArray:[Ljava/lang/String;
    const/4 v2, 0x2

    array-length v3, v0

    if-eq v2, v3, :cond_0

    .line 357
    :goto_0
    return v1

    :cond_0
    const-string v2, "main"

    aget-object v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static loadFallbackResource(Landroid/content/Context;I)Lcom/android/inputmethod/latin/AssetFileAddress;
    .locals 6
    .parameter "context"
    .parameter "fallbackResId"

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 184
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 185
    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found the resource but cannot read it. Is it compressed? resId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x0

    .line 189
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileNameAndOffset(Ljava/lang/String;JJ)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeFilesWithIdExcept(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 17
    .parameter "context"
    .parameter "id"
    .parameter "fileToKeep"

    .prologue
    .line 316
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    .line 317
    .local v3, canonicalFileToKeep:Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v5

    .line 318
    .local v5, directoryList:[Ljava/io/File;
    if-nez v5, :cond_1

    .line 336
    .end local v3           #canonicalFileToKeep:Ljava/io/File;
    .end local v5           #directoryList:[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 319
    .restart local v3       #canonicalFileToKeep:Ljava/io/File;
    .restart local v5       #directoryList:[Ljava/io/File;
    :cond_1
    move-object v1, v5

    .local v1, arr$:[Ljava/io/File;
    array-length v10, v1

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v1           #arr$:[Ljava/io/File;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_0

    aget-object v4, v1, v9

    .line 321
    .local v4, directory:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_3

    .line 319
    .end local v9           #i$:I
    :cond_2
    add-int/lit8 v8, v9, 0x1

    .restart local v8       #i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_1

    .line 322
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 323
    .local v13, wordLists:[Ljava/io/File;
    if-eqz v13, :cond_2

    .line 324
    move-object v2, v13

    .local v2, arr$:[Ljava/io/File;
    array-length v11, v2

    .local v11, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v11, :cond_2

    aget-object v12, v2, v8

    .line 325
    .local v12, wordList:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, fileId:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 327
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 328
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 333
    .end local v2           #arr$:[Ljava/io/File;
    .end local v3           #canonicalFileToKeep:Ljava/io/File;
    .end local v4           #directory:Ljava/io/File;
    .end local v5           #directoryList:[Ljava/io/File;
    .end local v7           #fileId:Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v12           #wordList:Ljava/io/File;
    .end local v13           #wordLists:[Ljava/io/File;
    :catch_0
    move-exception v6

    .line 334
    .local v6, e:Ljava/io/IOException;
    sget-object v14, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException trying to cleanup files : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "name"

    .prologue
    const/4 v9, 0x1

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 92
    .local v2, nameLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 94
    .local v0, codePoint:I
    invoke-static {v0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->isFileNameCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 92
    :goto_1
    invoke-virtual {p0, v1, v9}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0

    .line 98
    :cond_0
    const/4 v4, 0x0

    check-cast v4, Ljava/util/Locale;

    const-string v5, "%%%1$06x"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 101
    .end local v0           #codePoint:I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
