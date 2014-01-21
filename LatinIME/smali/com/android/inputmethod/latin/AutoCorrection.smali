.class public final Lcom/android/inputmethod/latin/AutoCorrection;
.super Ljava/lang/Object;
.source "AutoCorrection.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/AutoCorrection;->DBG:Z

    .line 28
    const-class v0, Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/AutoCorrection;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getMaxFrequency(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;)I
    .locals 6
    .parameter
    .parameter "word"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")I"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, dictionaries:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    const/4 v3, -0x1

    .line 73
    :cond_0
    return v3

    .line 64
    :cond_1
    const/4 v3, -0x1

    .line 65
    .local v3, maxFreq:I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 67
    .local v0, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Dictionary;->getFrequency(Ljava/lang/CharSequence;)I

    move-result v4

    .line 69
    .local v4, tempFreq:I
    if-lt v4, v3, :cond_2

    .line 70
    move v3, v4

    goto :goto_0
.end method

.method public static isInTheDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z
    .locals 1
    .parameter
    .parameter "word"
    .parameter "ignoreCase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, dictionaries:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static isValidWord(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z
    .locals 6
    .parameter
    .parameter "word"
    .parameter "ignoreCase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, dictionaries:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    const/4 v4, 0x0

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v4

    .line 40
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, lowerCasedWord:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 42
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 50
    .local v0, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static shouldBlockAutoCorrectionBySafetyNet(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "typedWord"
    .parameter "suggestion"

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 121
    .local v2, typedWordLength:I
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    move v3, v4

    .line 139
    :goto_0
    return v3

    .line 124
    :cond_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    const/4 v3, 0x2

    :goto_1
    add-int/lit8 v1, v3, 0x1

    .line 126
    .local v1, maxEditDistanceOfNativeDictionary:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/inputmethod/latin/BinaryDictionary;->editDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, distance:I
    sget-boolean v3, Lcom/android/inputmethod/latin/AutoCorrection;->DBG:Z

    if-eqz v3, :cond_1

    .line 128
    sget-object v3, Lcom/android/inputmethod/latin/AutoCorrection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Autocorrected edit distance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    if-le v0, v1, :cond_4

    .line 132
    sget-boolean v3, Lcom/android/inputmethod/latin/AutoCorrection;->DBG:Z

    if-eqz v3, :cond_2

    .line 133
    sget-object v3, Lcom/android/inputmethod/latin/AutoCorrection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safety net: before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v3, Lcom/android/inputmethod/latin/AutoCorrection;->TAG:Ljava/lang/String;

    const-string v4, "(Error) The edit distance of this correction exceeds limit. Turning off auto-correction."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 124
    .end local v0           #distance:I
    .end local v1           #maxEditDistanceOfNativeDictionary:I
    :cond_3
    div-int/lit8 v3, v2, 0x2

    goto :goto_1

    .restart local v0       #distance:I
    .restart local v1       #maxEditDistanceOfNativeDictionary:I
    :cond_4
    move v3, v4

    .line 139
    goto :goto_0
.end method

.method public static suggestionExceedsAutoCorrectionThreshold(Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;Ljava/lang/CharSequence;F)Z
    .locals 7
    .parameter "suggestion"
    .parameter "consideredWord"
    .parameter "autoCorrectionThreshold"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    if-eqz p0, :cond_4

    .line 87
    iget v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mKind:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 88
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    .line 91
    .local v0, autoCorrectionSuggestionScore:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v1

    .line 94
    .local v1, normalizedScore:F
    sget-boolean v4, Lcom/android/inputmethod/latin/AutoCorrection;->DBG:Z

    if-eqz v4, :cond_2

    .line 95
    sget-object v4, Lcom/android/inputmethod/latin/AutoCorrection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Normalized "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    cmpl-float v4, v1, p2

    if-ltz v4, :cond_4

    .line 100
    sget-boolean v4, Lcom/android/inputmethod/latin/AutoCorrection;->DBG:Z

    if-eqz v4, :cond_3

    .line 101
    sget-object v4, Lcom/android/inputmethod/latin/AutoCorrection;->TAG:Ljava/lang/String;

    const-string v5, "Auto corrected by S-threshold."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/AutoCorrection;->shouldBlockAutoCorrectionBySafetyNet(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0           #autoCorrectionSuggestionScore:I
    .end local v1           #normalizedScore:F
    :cond_4
    move v2, v3

    .line 107
    goto :goto_0
.end method
