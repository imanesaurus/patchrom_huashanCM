.class public final Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSession;
.super Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;
.source "AndroidSpellCheckerSession.java"


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSession;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSession;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;-><init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)V

    .line 36
    return-void
.end method

.method private fixWronglyInvalidatedWordWithSingleQuote(Landroid/view/textservice/TextInfo;Landroid/view/textservice/SentenceSuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 30
    .parameter "ti"
    .parameter "ssi"

    .prologue
    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v27

    .line 41
    .local v27, typedText:Ljava/lang/String;
    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 42
    const/16 v28, 0x0

    .line 112
    :goto_0
    return-object v28

    .line 44
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v3

    .line 45
    .local v3, N:I
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 46
    .local v5, additionalOffsets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 47
    .local v4, additionalLengths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 49
    .local v7, additionalSuggestionsInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/textservice/SuggestionsInfo;>;"
    const/4 v8, 0x0

    .line 50
    .local v8, currentWord:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v3, :cond_5

    .line 51
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v21

    .line 52
    .local v21, si:Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v9

    .line 53
    .local v9, flags:I
    and-int/lit8 v28, v9, 0x1

    if-nez v28, :cond_2

    .line 50
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 56
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v19

    .line 57
    .local v19, offset:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v12

    .line 58
    .local v12, length:I
    add-int v28, v19, v12

    move-object/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 59
    .local v25, subText:Ljava/lang/String;
    move-object/from16 v20, v8

    .line 60
    .local v20, prevWord:Ljava/lang/String;
    move-object/from16 v8, v25

    .line 61
    const-string v28, "\'"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 64
    const-string v28, "\'"

    const/16 v29, -0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v24

    .line 66
    .local v24, splitTexts:[Ljava/lang/String;
    if-eqz v24, :cond_1

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    .line 69
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v22, v0

    .line 70
    .local v22, splitNum:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    move/from16 v0, v22

    if-ge v11, v0, :cond_1

    .line 71
    aget-object v23, v24, v11

    .line 72
    .local v23, splitText:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 70
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 75
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSession;->mSuggestionsCache:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;->getSuggestionsFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;

    move-result-object v28

    if-eqz v28, :cond_3

    .line 78
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v14

    .line 80
    .local v14, newLength:I
    const/4 v13, 0x0

    .line 81
    .local v13, newFlags:I
    new-instance v17, Landroid/view/textservice/SuggestionsInfo;

    const/16 v28, 0x0

    sget-object v29, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSession;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .line 83
    .local v17, newSi:Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v28

    invoke-virtual/range {v21 .. v21}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v29

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 88
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 93
    .end local v9           #flags:I
    .end local v11           #j:I
    .end local v12           #length:I
    .end local v13           #newFlags:I
    .end local v14           #newLength:I
    .end local v17           #newSi:Landroid/view/textservice/SuggestionsInfo;
    .end local v19           #offset:I
    .end local v20           #prevWord:Ljava/lang/String;
    .end local v21           #si:Landroid/view/textservice/SuggestionsInfo;
    .end local v22           #splitNum:I
    .end local v23           #splitText:Ljava/lang/String;
    .end local v24           #splitTexts:[Ljava/lang/String;
    .end local v25           #subText:Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 94
    .local v6, additionalSize:I
    if-gtz v6, :cond_6

    .line 95
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 97
    :cond_6
    add-int v26, v3, v6

    .line 98
    .local v26, suggestionsSize:I
    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 99
    .local v16, newOffsets:[I
    move/from16 v0, v26

    new-array v15, v0, [I

    .line 100
    .local v15, newLengths:[I
    move/from16 v0, v26

    new-array v0, v0, [Landroid/view/textservice/SuggestionsInfo;

    move-object/from16 v18, v0

    .line 102
    .local v18, newSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v3, :cond_7

    .line 103
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v28

    aput v28, v16, v10

    .line 104
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v28

    aput v28, v15, v10

    .line 105
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v28

    aput-object v28, v18, v10

    .line 102
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 107
    :cond_7
    :goto_5
    move/from16 v0, v26

    if-ge v10, v0, :cond_8

    .line 108
    sub-int v28, v10, v3

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    aput v28, v16, v10

    .line 109
    sub-int v28, v10, v3

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    aput v28, v15, v10

    .line 110
    sub-int v28, v10, v3

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/textservice/SuggestionsInfo;

    aput-object v28, v18, v10

    .line 107
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 112
    :cond_8
    new-instance v28, Landroid/view/textservice/SentenceSuggestionsInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 5
    .parameter "textInfos"
    .parameter "suggestionsLimit"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object v1

    .line 120
    .local v1, retval:[Landroid/view/textservice/SentenceSuggestionsInfo;
    if-eqz v1, :cond_0

    array-length v3, v1

    array-length v4, p1

    if-eq v3, v4, :cond_1

    .line 130
    :cond_0
    return-object v1

    .line 123
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 124
    aget-object v3, p1, v0

    aget-object v4, v1, v0

    invoke-direct {p0, v3, v4}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSession;->fixWronglyInvalidatedWordWithSingleQuote(Landroid/view/textservice/TextInfo;Landroid/view/textservice/SentenceSuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object v2

    .line 126
    .local v2, tempSsi:Landroid/view/textservice/SentenceSuggestionsInfo;
    if-eqz v2, :cond_2

    .line 127
    aput-object v2, v1, v0

    .line 123
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;
    .locals 8
    .parameter "textInfos"
    .parameter "suggestionsLimit"
    .parameter "sequentialWords"

    .prologue
    .line 136
    array-length v1, p1

    .line 137
    .local v1, length:I
    new-array v4, v1, [Landroid/view/textservice/SuggestionsInfo;

    .line 138
    .local v4, retval:[Landroid/view/textservice/SuggestionsInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 140
    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 141
    add-int/lit8 v5, v0, -0x1

    aget-object v5, p1, v5

    invoke-virtual {v5}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, prevWordCandidate:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    .line 148
    .end local v3           #prevWordCandidate:Ljava/lang/String;
    .local v2, prevWord:Ljava/lang/String;
    :goto_1
    aget-object v5, p1, v0

    invoke-virtual {p0, v5, v2, p2}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSession;->onGetSuggestions(Landroid/view/textservice/TextInfo;Ljava/lang/String;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v5

    aput-object v5, v4, v0

    .line 149
    aget-object v5, v4, v0

    aget-object v6, p1, v0

    invoke-virtual {v6}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v6

    aget-object v7, p1, v0

    invoke-virtual {v7}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #prevWord:Ljava/lang/String;
    .restart local v3       #prevWordCandidate:Ljava/lang/String;
    :cond_0
    move-object v2, v3

    .line 144
    goto :goto_1

    .line 146
    .end local v3           #prevWordCandidate:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #prevWord:Ljava/lang/String;
    goto :goto_1

    .line 152
    .end local v2           #prevWord:Ljava/lang/String;
    :cond_2
    return-object v4
.end method
