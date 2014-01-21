.class public final Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;
.super Ljava/lang/Object;
.source "AndroidWordLevelSpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SuggestionsCache"
.end annotation


# instance fields
.field private final mUnigramSuggestionsInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    return-void
.end method

.method private static generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "query"
    .parameter "prevWord"

    .prologue
    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xfffc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 93
    return-void
.end method

.method public getSuggestionsFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;
    .locals 2
    .parameter "query"
    .parameter "prevWord"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;

    return-object v0
.end method

.method public putSuggestionsToCache(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .parameter "query"
    .parameter "prevWord"
    .parameter "suggestions"
    .parameter "flags"

    .prologue
    .line 84
    if-eqz p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;

    invoke-direct {v2, p3, p4}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;-><init>([Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
