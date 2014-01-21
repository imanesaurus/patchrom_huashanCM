.class public Lcom/android/inputmethod/research/MainLogBuffer;
.super Lcom/android/inputmethod/research/LogBuffer;
.source "MainLogBuffer.java"


# instance fields
.field mMinWordPeriod:I

.field private final mResearchLog:Lcom/android/inputmethod/research/ResearchLog;

.field private mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field mWordsUntilSafeToSample:I


# virtual methods
.method public isSafeToLog()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 84
    iget v6, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mWordsUntilSafeToSample:I

    if-lez v6, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v5

    .line 87
    :cond_1
    iget-object v6, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    iget-object v6, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->getMainDictionary()Lcom/android/inputmethod/latin/Dictionary;

    move-result-object v0

    .line 96
    .local v0, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    if-eqz v0, :cond_0

    .line 101
    iget-object v6, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mLogUnits:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 102
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 103
    iget-object v6, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mLogUnits:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/research/LogUnit;

    .line 104
    .local v3, logUnit:Lcom/android/inputmethod/research/LogUnit;
    invoke-virtual {v3}, Lcom/android/inputmethod/research/LogUnit;->getWord()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, word:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 107
    invoke-virtual {v3}, Lcom/android/inputmethod/research/LogUnit;->hasDigit()Z

    move-result v6

    if-nez v6, :cond_0

    .line 102
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 118
    .end local v3           #logUnit:Lcom/android/inputmethod/research/LogUnit;
    .end local v4           #word:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected onShiftOut(Lcom/android/inputmethod/research/LogUnit;)V
    .locals 2
    .parameter "logUnit"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/research/ResearchLog;->publish(Lcom/android/inputmethod/research/LogUnit;Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public resetWordCounter()V
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mMinWordPeriod:I

    iput v0, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mWordsUntilSafeToSample:I

    .line 68
    return-void
.end method

.method public shiftIn(Lcom/android/inputmethod/research/LogUnit;)V
    .locals 1
    .parameter "newLogUnit"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/inputmethod/research/LogBuffer;->shiftIn(Lcom/android/inputmethod/research/LogUnit;)V

    .line 59
    invoke-virtual {p1}, Lcom/android/inputmethod/research/LogUnit;->hasWord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mWordsUntilSafeToSample:I

    if-lez v0, :cond_0

    .line 61
    iget v0, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mWordsUntilSafeToSample:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/research/MainLogBuffer;->mWordsUntilSafeToSample:I

    .line 64
    :cond_0
    return-void
.end method
