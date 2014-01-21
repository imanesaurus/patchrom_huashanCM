.class public abstract Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;
.super Landroid/service/textservice/SpellCheckerService$Session;
.source "AndroidWordLevelSpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;,
        Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

.field private mLocale:Ljava/util/Locale;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mScript:I

.field private final mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

.field protected final mSuggestionsCache:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)V
    .locals 4
    .parameter "service"

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService$Session;-><init>()V

    .line 50
    new-instance v1, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;

    invoke-direct {v1}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;

    .line 97
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    .line 98
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, cres:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$1;-><init>(Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mObserver:Landroid/database/ContentObserver;

    .line 106
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    return-void
.end method

.method private static isLetterCheckableByLanguage(II)Z
    .locals 3
    .parameter "codePoint"
    .parameter "script"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible value of script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    const/16 v2, 0x2af

    if-gt p0, v2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0

    .line 145
    :pswitch_1
    const/16 v2, 0x400

    if-lt p0, v2, :cond_2

    const/16 v2, 0x52f

    if-gt p0, v2, :cond_2

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static shouldFilterOut(Ljava/lang/String;I)Z
    .locals 9
    .parameter "text"
    .parameter "script"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v5

    .line 170
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 172
    .local v1, firstCodePoint:I
    invoke-static {v1, p1}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->isLetterCheckableByLanguage(II)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x27

    if-ne v7, v1, :cond_0

    .line 176
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 177
    .local v3, length:I
    const/4 v4, 0x0

    .line 178
    .local v4, letterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 179
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 183
    .local v0, codePoint:I
    const/16 v7, 0x40

    if-eq v7, v0, :cond_0

    const/16 v7, 0x2f

    if-eq v7, v0, :cond_0

    .line 184
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->isLetterCheckableByLanguage(II)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 178
    :cond_3
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    goto :goto_1

    .line 188
    .end local v0           #codePoint:I
    :cond_4
    mul-int/lit8 v7, v4, 0x4

    mul-int/lit8 v8, v3, 0x3

    if-lt v7, v8, :cond_0

    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, cres:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, localeString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getDictionaryPool(Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .line 113
    invoke-static {v0}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mLocale:Ljava/util/Locale;

    .line 114
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getScriptFromLocale(Ljava/util/Locale;)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mScript:I

    .line 115
    return-void
.end method

.method public onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
    .locals 1
    .parameter "textInfo"
    .parameter "suggestionsLimit"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->onGetSuggestions(Landroid/view/textservice/TextInfo;Ljava/lang/String;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onGetSuggestions(Landroid/view/textservice/TextInfo;Ljava/lang/String;I)Landroid/view/textservice/SuggestionsInfo;
    .locals 27
    .parameter "textInfo"
    .parameter "prevWord"
    .parameter "suggestionsLimit"

    .prologue
    .line 206
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v17

    .line 207
    .local v17, inText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;->getSuggestionsFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;

    move-result-object v8

    .line 209
    .local v8, cachedSuggestionsParams:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;
    if-eqz v8, :cond_1

    .line 213
    new-instance v3, Landroid/view/textservice/SuggestionsInfo;

    iget v4, v8, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;->mFlags:I

    iget-object v5, v8, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;->mSuggestions:[Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .line 322
    .end local v8           #cachedSuggestionsParams:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;
    .end local v17           #inText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 217
    .restart local v8       #cachedSuggestionsParams:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;
    .restart local v17       #inText:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mScript:I

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->shouldFilterOut(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_5

    .line 218
    const/4 v12, 0x0

    .line 220
    .local v12, dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->pollWithDefaultTimeout()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v12

    .line 221
    invoke-static {v12}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->isAValidDictionary(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 222
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 228
    if-eqz v12, :cond_0

    .line 229
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v12}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    sget-object v4, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 316
    .end local v8           #cachedSuggestionsParams:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;
    .end local v12           #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .end local v17           #inText:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 321
    .local v13, e:Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while spellcheking: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v3

    goto :goto_0

    .line 224
    .end local v13           #e:Ljava/lang/RuntimeException;
    .restart local v8       #cachedSuggestionsParams:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;
    .restart local v12       #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .restart local v17       #inText:Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v3, v12, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 228
    :goto_1
    if-eqz v12, :cond_0

    .line 229
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v12}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    sget-object v4, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 224
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 228
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_4

    .line 229
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v12}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 230
    sget-object v4, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_4
    throw v3

    .line 235
    .end local v12           #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_5
    const-string v3, "\u2019"

    const-string v4, "\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 242
    .local v25, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->newSuggestionsGatherer(Ljava/lang/String;I)Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;

    move-result-object v2

    .line 244
    .local v2, suggestionsGatherer:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
    new-instance v11, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v11}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    .line 245
    .local v11, composer:Lcom/android/inputmethod/latin/WordComposer;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v19

    .line 246
    .local v19, length:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_7

    .line 247
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 249
    .local v10, codePoint:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mScript:I

    invoke-static {v10, v3}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo;->getXYForCodePointAndScript(II)I

    move-result v26

    .line 251
    .local v26, xy:I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-ne v3, v0, :cond_6

    .line 252
    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v11, v10, v3, v4}, Lcom/android/inputmethod/latin/WordComposer;->add(III)V

    .line 246
    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v15

    goto :goto_2

    .line 255
    :cond_6
    const v3, 0xffff

    and-int v3, v3, v26

    shr-int/lit8 v4, v26, 0x10

    invoke-virtual {v11, v10, v3, v4}, Lcom/android/inputmethod/latin/WordComposer;->add(III)V

    goto :goto_3

    .line 259
    .end local v10           #codePoint:I
    .end local v26           #xy:I
    :cond_7
    invoke-static/range {v25 .. v25}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getCapitalizationType(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v9

    .line 260
    .local v9, capitalizeType:I
    const/16 v18, 0x1

    .line 261
    .local v18, isInDict:Z
    const/4 v12, 0x0

    .line 263
    .restart local v12       #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->pollWithDefaultTimeout()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v12

    .line 264
    invoke-static {v12}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->isAValidDictionary(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 265
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    .line 283
    if-eqz v12, :cond_0

    .line 284
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v12}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 285
    sget-object v4, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 267
    :cond_8
    :try_start_9
    iget-object v3, v12, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    iget-object v4, v12, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-object/from16 v0, p2

    invoke-virtual {v3, v11, v0, v4}, Lcom/android/inputmethod/latin/Dictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;

    move-result-object v24

    .line 270
    .local v24, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 271
    .local v22, suggestion:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    .line 272
    .local v23, suggestionStr:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->addWord([C[IIII)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 283
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #suggestion:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    .end local v23           #suggestionStr:Ljava/lang/String;
    .end local v24           #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    :catchall_1
    move-exception v3

    if-eqz v12, :cond_9

    .line 284
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v12}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 285
    sget-object v4, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_9
    throw v3
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    .line 275
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v24       #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    :cond_a
    :try_start_b
    iget-object v3, v12, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 276
    if-nez v18, :cond_b

    if-eqz v9, :cond_b

    .line 280
    iget-object v3, v12, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v18

    .line 283
    :cond_b
    if-eqz v12, :cond_c

    .line 284
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v3, v12}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 285
    sget-object v3, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v9, v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->getResults(ILjava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;

    move-result-object v20

    .line 306
    .local v20, result:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    if-eqz v18, :cond_d

    const/4 v3, 0x1

    move v4, v3

    :goto_5
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mHasRecommendedSuggestions:Z

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/inputmethod/compat/SuggestionsInfoCompatUtils;->getValueOf_RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS()I

    move-result v3

    :goto_6
    or-int v14, v4, v3

    .line 313
    .local v14, flags:I
    new-instance v21, Landroid/view/textservice/SuggestionsInfo;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mSuggestions:[Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v14, v3}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .line 314
    .local v21, retval:Landroid/view/textservice/SuggestionsInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mSuggestions:[Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1, v4, v14}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;->putSuggestionsToCache(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    move-object/from16 v3, v21

    .line 315
    goto/16 :goto_0

    .line 306
    .end local v14           #flags:I
    .end local v21           #retval:Landroid/view/textservice/SuggestionsInfo;
    :cond_d
    const/4 v3, 0x2

    move v4, v3

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    goto :goto_6
.end method
