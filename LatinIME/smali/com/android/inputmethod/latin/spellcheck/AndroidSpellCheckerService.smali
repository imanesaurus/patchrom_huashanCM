.class public final Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;
.super Landroid/service/textservice/SpellCheckerService;
.source "AndroidSpellCheckerService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final mLanguageToScript:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

.field private final mDictionaryCollectionsList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/inputmethod/latin/DictionaryCollection;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDictionaryPools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendedThreshold:F

.field private mSuggestionThreshold:F

.field private mUseContactsDictionary:Z

.field private final mUseContactsLock:Ljava/lang/Object;

.field private mUserDictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/UserBinaryDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    const-class v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->TAG:Ljava/lang/String;

    .line 65
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    .line 97
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "en"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "fr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "de"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "nl"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "cs"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "es"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "it"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "hr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "pt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "hu"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "ru"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "da"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "fi"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "nb"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "sv"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService;-><init>()V

    .line 66
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSynchronizedTreeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 67
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSynchronizedTreeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUseContactsLock:Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryCollectionsList:Ljava/util/HashSet;

    .line 209
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUseContactsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    return-object p1
.end method

.method private closeAllDictionaries()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 367
    .local v0, oldPools:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;>;"
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSynchronizedTreeMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 368
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 369
    .local v1, oldUserDictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/UserBinaryDictionary;>;"
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSynchronizedTreeMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 370
    new-instance v2, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;

    const-string v3, "spellchecker_close_dicts"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;-><init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;->start()V

    .line 393
    return-void
.end method

.method public static getCapitalizationType(Ljava/lang/String;)I
    .locals 6
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 443
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v3

    .line 444
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 445
    .local v2, len:I
    const/4 v0, 0x1

    .line 446
    .local v0, capsCount:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 447
    if-eq v4, v0, :cond_3

    if-eq v1, v0, :cond_3

    .line 454
    :cond_2
    if-ne v4, v0, :cond_5

    move v3, v4

    goto :goto_0

    .line 448
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 446
    :cond_4
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_1

    .line 455
    :cond_5
    if-ne v2, v0, :cond_0

    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static getScriptFromLocale(Ljava/util/Locale;)I
    .locals 4
    .parameter "locale"

    .prologue
    .line 128
    sget-object v1, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 129
    .local v0, script:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We have been called with an unsupported language: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". Framework bug?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private startUsingContactsDictionaryLocked()V
    .locals 5

    .prologue
    .line 150
    iget-object v3, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    if-nez v3, :cond_0

    .line 152
    new-instance v3, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsBinaryDictionary;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsBinaryDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryCollectionsList:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 157
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/inputmethod/latin/DictionaryCollection;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 159
    .local v1, dictRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/inputmethod/latin/DictionaryCollection;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/DictionaryCollection;

    .line 160
    .local v0, dict:Lcom/android/inputmethod/latin/DictionaryCollection;
    if-nez v0, :cond_1

    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/DictionaryCollection;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    goto :goto_0

    .line 166
    .end local v0           #dict:Lcom/android/inputmethod/latin/DictionaryCollection;
    .end local v1           #dictRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/inputmethod/latin/DictionaryCollection;>;"
    :cond_2
    return-void
.end method

.method private stopUsingContactsDictionaryLocked()V
    .locals 5

    .prologue
    .line 169
    iget-object v4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    if-nez v4, :cond_0

    .line 185
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    .line 172
    .local v0, contactsDict:Lcom/android/inputmethod/latin/Dictionary;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    .line 173
    iget-object v4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryCollectionsList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 175
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/inputmethod/latin/DictionaryCollection;>;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 177
    .local v2, dictRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/inputmethod/latin/DictionaryCollection;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/DictionaryCollection;

    .line 178
    .local v1, dict:Lcom/android/inputmethod/latin/DictionaryCollection;
    if-nez v1, :cond_1

    .line 179
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/DictionaryCollection;->removeDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    goto :goto_1

    .line 184
    .end local v1           #dict:Lcom/android/inputmethod/latin/DictionaryCollection;
    .end local v2           #dictRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/inputmethod/latin/DictionaryCollection;>;"
    :cond_2
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_0
.end method


# virtual methods
.method public createDictAndProximity(Ljava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .locals 10
    .parameter "locale"

    .prologue
    const/4 v9, 0x1

    .line 406
    invoke-static {p1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getScriptFromLocale(Ljava/util/Locale;)I

    move-result v3

    .line 407
    .local v3, script:I
    invoke-static {v3}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo;->getProximityForScript(I)[I

    move-result-object v5

    const/16 v6, 0x10

    const/16 v7, 0xb

    const/4 v8, 0x3

    invoke-static {v5, v6, v7, v8}, Lcom/android/inputmethod/keyboard/ProximityInfo;->createSpellCheckerProximityInfo([IIII)Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v2

    .line 412
    .local v2, proximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;
    invoke-static {p0, p1, v9}, Lcom/android/inputmethod/latin/DictionaryFactory;->createMainDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;Z)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v0

    .line 415
    .local v0, dictionaryCollection:Lcom/android/inputmethod/latin/DictionaryCollection;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, localeStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/latin/UserBinaryDictionary;

    .line 417
    .local v4, userDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;
    if-nez v4, :cond_0

    .line 418
    new-instance v4, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserBinaryDictionary;

    .end local v4           #userDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;
    invoke-direct {v4, p0, v1, v9}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 419
    .restart local v4       #userDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/DictionaryCollection;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 422
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUseContactsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 423
    :try_start_0
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUseContactsDictionary:Z

    if-eqz v5, :cond_1

    .line 424
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    if-nez v5, :cond_1

    .line 428
    new-instance v5, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsBinaryDictionary;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsBinaryDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    .line 432
    :cond_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    invoke-virtual {v0, v5}, Lcom/android/inputmethod/latin/DictionaryCollection;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 433
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryCollectionsList:Ljava/util/HashSet;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 435
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    new-instance v5, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    invoke-direct {v5, v0, v2}, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;-><init>(Lcom/android/inputmethod/latin/Dictionary;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    return-object v5

    .line 435
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public createSession()Landroid/service/textservice/SpellCheckerService$Session;
    .locals 1

    .prologue
    .line 191
    invoke-static {p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSessionFactory;->newInstance(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)Landroid/service/textservice/SpellCheckerService$Session;

    move-result-object v0

    return-object v0
.end method

.method public getDictionaryPool(Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    .locals 3
    .parameter "locale"

    .prologue
    .line 396
    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .line 397
    .local v1, pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    if-nez v1, :cond_0

    .line 398
    invoke-static {p1}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 399
    .local v0, localeObject:Ljava/util/Locale;
    new-instance v1, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .end local v1           #pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, v0}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;-><init>(ILcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/util/Locale;)V

    .line 400
    .restart local v1       #pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .end local v0           #localeObject:Ljava/util/Locale;
    :cond_0
    return-object v1
.end method

.method public newSuggestionsGatherer(Ljava/lang/String;I)Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
    .locals 3
    .parameter "text"
    .parameter "maxLength"

    .prologue
    .line 204
    new-instance v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;

    iget v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mSuggestionThreshold:F

    iget v2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mRecommendedThreshold:F

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;-><init>(Ljava/lang/String;FFI)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/service/textservice/SpellCheckerService;->onCreate()V

    .line 118
    const v1, 0x7f0a0003

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mSuggestionThreshold:F

    .line 120
    const v1, 0x7f0a0002

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mRecommendedThreshold:F

    .line 122
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 124
    const-string v1, "pref_spellcheck_use_contacts"

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 138
    const-string v0, "pref_spellcheck_use_contacts"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUseContactsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    const-string v0, "pref_spellcheck_use_contacts"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUseContactsDictionary:Z

    .line 141
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUseContactsDictionary:Z

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->startUsingContactsDictionaryLocked()V

    .line 146
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 144
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->stopUsingContactsDictionaryLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->closeAllDictionaries()V

    .line 362
    const/4 v0, 0x0

    return v0
.end method
