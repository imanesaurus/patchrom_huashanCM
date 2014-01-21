.class public final Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
.super Ljava/lang/Object;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuggestionsGatherer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    }
.end annotation


# instance fields
.field private mBestScore:I

.field private mBestSuggestion:Ljava/lang/String;

.field private mLength:I

.field private final mMaxLength:I

.field private final mOriginalText:Ljava/lang/String;

.field private final mRecommendedThreshold:F

.field private final mScores:[I

.field private final mSuggestionThreshold:F

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;FFI)V
    .locals 1
    .parameter "originalText"
    .parameter "suggestionThreshold"
    .parameter "recommendedThreshold"
    .parameter "maxLength"

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    .line 231
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestScore:I

    .line 235
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    .line 236
    iput p2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestionThreshold:F

    .line 237
    iput p3, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mRecommendedThreshold:F

    .line 238
    iput p4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    .line 239
    add-int/lit8 v0, p4, 0x1

    invoke-static {v0}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    .line 240
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    .line 241
    return-void
.end method


# virtual methods
.method public declared-synchronized addWord([C[IIII)Z
    .locals 10
    .parameter "word"
    .parameter "spaceIndices"
    .parameter "wordOffset"
    .parameter "wordLength"
    .parameter "score"

    .prologue
    const/4 v9, 0x1

    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    invoke-static {v5, v6, v7, p5}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    .line 248
    .local v3, positionIndex:I
    if-ltz v3, :cond_1

    move v1, v3

    .line 250
    .local v1, insertIndex:I
    :goto_0
    if-nez v1, :cond_2

    iget v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v5, v6, :cond_2

    .line 295
    :cond_0
    :goto_1
    monitor-exit p0

    return v9

    .line 248
    .end local v1           #insertIndex:I
    :cond_1
    neg-int v5, v3

    add-int/lit8 v1, v5, -0x1

    goto :goto_0

    .line 267
    .restart local v1       #insertIndex:I
    :cond_2
    :try_start_1
    iget v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    if-ge v1, v5, :cond_0

    .line 275
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p3, p4}, Ljava/lang/String;-><init>([CII)V

    .line 276
    .local v4, wordString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    invoke-static {v5, v4, p5}, Lcom/android/inputmethod/latin/BinaryDictionary;->calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v2

    .line 278
    .local v2, normalizedScore:F
    iget v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestionThreshold:F

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 283
    iget v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    if-ge v5, v6, :cond_3

    .line 284
    iget v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    sub-int v0, v5, v1

    .line 285
    .local v0, copyLen:I
    iget v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    .line 286
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    add-int/lit8 v7, v1, 0x1

    invoke-static {v5, v1, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 293
    .end local v0           #copyLen:I
    :goto_2
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    aput p5, v5, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 245
    .end local v1           #insertIndex:I
    .end local v2           #normalizedScore:F
    .end local v3           #positionIndex:I
    .end local v4           #wordString:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 289
    .restart local v1       #insertIndex:I
    .restart local v2       #normalizedScore:F
    .restart local v3       #positionIndex:I
    .restart local v4       #wordString:Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 291
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public getResults(ILjava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    .locals 10
    .parameter "capitalizeType"
    .parameter "locale"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 301
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    if-nez v6, :cond_2

    .line 305
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, gatheredSuggestions:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 355
    .local v3, hasRecommendedSuggestions:Z
    :goto_0
    new-instance v6, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;

    invoke-direct {v6, v2, v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;-><init>([Ljava/lang/String;Z)V

    return-object v6

    .line 309
    .end local v2           #gatheredSuggestions:[Ljava/lang/String;
    .end local v3           #hasRecommendedSuggestions:Z
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$000()[Ljava/lang/String;

    move-result-object v2

    .line 310
    .restart local v2       #gatheredSuggestions:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    iget v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestScore:I

    invoke-static {v6, v8, v9}, Lcom/android/inputmethod/latin/BinaryDictionary;->calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v5

    .line 312
    .local v5, normalizedScore:F
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mRecommendedThreshold:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    .line 313
    .restart local v3       #hasRecommendedSuggestions:Z
    :goto_1
    goto :goto_0

    .end local v3           #hasRecommendedSuggestions:Z
    :cond_1
    move v3, v7

    .line 312
    goto :goto_1

    .line 323
    .end local v2           #gatheredSuggestions:[Ljava/lang/String;
    .end local v5           #normalizedScore:F
    :cond_2
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 324
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/android/inputmethod/latin/StringUtils;->removeDupes(Ljava/util/ArrayList;)V

    .line 325
    const/4 v6, 0x2

    if-ne v6, p1, :cond_3

    .line 326
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 329
    iget-object v8, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 326
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 331
    .end local v4           #i:I
    :cond_3
    if-ne v3, p1, :cond_4

    .line 332
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 334
    iget-object v8, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/inputmethod/latin/StringUtils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 340
    .end local v4           #i:I
    :cond_4
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$000()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 342
    .restart local v2       #gatheredSuggestions:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    iget v8, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    add-int/lit8 v8, v8, -0x1

    aget v0, v6, v8

    .line 343
    .local v0, bestScore:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 344
    .local v1, bestSuggestion:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v5

    .line 347
    .restart local v5       #normalizedScore:F
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mRecommendedThreshold:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_5

    .restart local v3       #hasRecommendedSuggestions:Z
    :goto_4
    goto/16 :goto_0

    .end local v3           #hasRecommendedSuggestions:Z
    :cond_5
    move v3, v7

    goto :goto_4
.end method
