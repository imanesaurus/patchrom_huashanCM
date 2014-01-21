.class public final Lcom/android/inputmethod/latin/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static appendToCsvIfNotExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "csv"

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    .end local p0
    :goto_0
    return-object p0

    .line 50
    .restart local p0
    :cond_0
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/StringUtils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p1

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static codePointCount(Ljava/lang/String;)I
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    goto :goto_0
.end method

.method public static containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "key"
    .parameter "array"

    .prologue
    .line 37
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 38
    .local v1, element:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 40
    .end local v1           #element:Ljava/lang/String;
    :goto_1
    return v4

    .line 37
    .restart local v1       #element:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "csv"

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/StringUtils;->containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;ILjava/util/Locale;Z)I
    .locals 16
    .parameter "cs"
    .parameter "reqModes"
    .parameter "locale"
    .parameter "hasSpaceBefore"

    .prologue
    .line 222
    move/from16 v0, p1

    and-int/lit16 v14, v0, 0x6000

    if-nez v14, :cond_1

    .line 225
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x1000

    .line 425
    :cond_0
    :goto_0
    return v8

    .line 236
    :cond_1
    const/16 v2, 0xab

    .line 239
    .local v2, CODE_LEFT_DOUBLE_ANGLE_QUOTE:I
    if-eqz p3, :cond_6

    .line 240
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    add-int/lit8 v9, v14, 0x1

    .line 260
    .local v9, i:I
    :cond_2
    move v10, v9

    .line 261
    .local v10, j:I
    const/16 v12, 0x20

    .line 262
    .local v12, prevChar:C
    if-eqz p3, :cond_3

    add-int/lit8 v10, v10, -0x1

    .line 263
    :cond_3
    :goto_1
    if-lez v10, :cond_4

    .line 264
    add-int/lit8 v14, v10, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 265
    invoke-static {v12}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v14

    if-nez v14, :cond_8

    const/16 v14, 0x9

    if-eq v12, v14, :cond_8

    .line 268
    :cond_4
    if-lez v10, :cond_5

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 272
    :cond_5
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x7000

    goto :goto_0

    .line 242
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v12           #prevChar:C
    :cond_6
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .restart local v9       #i:I
    :goto_2
    if-lez v9, :cond_2

    .line 243
    add-int/lit8 v14, v9, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 244
    .local v7, c:C
    const/16 v14, 0x22

    if-eq v7, v14, :cond_7

    const/16 v14, 0x27

    if-eq v7, v14, :cond_7

    const/16 v14, 0xab

    if-eq v7, v14, :cond_7

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v14

    const/16 v15, 0x15

    if-ne v14, v15, :cond_2

    .line 242
    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 266
    .end local v7           #c:C
    .restart local v10       #j:I
    .restart local v12       #prevChar:C
    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 275
    :cond_9
    if-ne v9, v10, :cond_a

    .line 278
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x1000

    goto :goto_0

    .line 280
    :cond_a
    move/from16 v0, p1

    and-int/lit16 v14, v0, 0x4000

    if-nez v14, :cond_b

    .line 284
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x3000

    goto :goto_0

    .line 298
    :cond_b
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 299
    :goto_3
    if-lez v10, :cond_c

    .line 303
    add-int/lit8 v14, v10, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 304
    .restart local v7       #c:C
    const/16 v14, 0x22

    if-eq v7, v14, :cond_d

    const/16 v14, 0x27

    if-eq v7, v14, :cond_d

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v14

    const/16 v15, 0x16

    if-eq v14, v15, :cond_d

    .line 311
    .end local v7           #c:C
    :cond_c
    if-gtz v10, :cond_e

    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x1000

    goto/16 :goto_0

    .line 299
    .restart local v7       #c:C
    :cond_d
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 312
    .end local v7           #c:C
    :cond_e
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 318
    .restart local v7       #c:C
    const/16 v14, 0x3f

    if-eq v7, v14, :cond_f

    const/16 v14, 0x21

    if-ne v7, v14, :cond_10

    .line 319
    :cond_f
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x5000

    goto/16 :goto_0

    .line 329
    :cond_10
    const/16 v1, 0x589

    .line 331
    .local v1, CODE_ARMENIAN_FULL_STOP:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "hy"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 332
    const/16 v14, 0x3a

    if-eq v7, v14, :cond_11

    const/16 v14, 0x589

    if-ne v7, v14, :cond_12

    .line 333
    :cond_11
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x5000

    goto/16 :goto_0

    .line 334
    :cond_12
    const/16 v14, 0x2e

    if-ne v7, v14, :cond_15

    .line 335
    if-gtz v10, :cond_13

    .line 336
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x3000

    goto/16 :goto_0

    .line 339
    :cond_13
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 340
    const/16 v14, 0x2e

    if-ne v7, v14, :cond_14

    .line 341
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x5000

    goto/16 :goto_0

    .line 343
    :cond_14
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x3000

    goto/16 :goto_0

    .line 347
    :cond_15
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x3000

    goto/16 :goto_0

    .line 351
    :cond_16
    const/16 v14, 0x2e

    if-ne v7, v14, :cond_17

    if-gtz v10, :cond_18

    .line 352
    :cond_17
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x3000

    goto/16 :goto_0

    .line 378
    :cond_18
    const/4 v5, 0x0

    .line 379
    .local v5, START:I
    const/4 v6, 0x1

    .line 380
    .local v6, WORD:I
    const/4 v4, 0x2

    .line 381
    .local v4, PERIOD:I
    const/4 v3, 0x3

    .line 382
    .local v3, LETTER:I
    move/from16 v0, p1

    and-int/lit16 v8, v0, 0x7000

    .line 384
    .local v8, caps:I
    move/from16 v0, p1

    and-int/lit16 v11, v0, 0x3000

    .line 385
    .local v11, noCaps:I
    const/4 v13, 0x0

    .line 386
    .local v13, state:I
    :goto_4
    if-lez v10, :cond_1d

    .line 387
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 388
    packed-switch v13, :pswitch_data_0

    goto :goto_4

    .line 390
    :pswitch_0
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 391
    const/4 v13, 0x1

    goto :goto_4

    .line 392
    :cond_19
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_0

    move v8, v11

    .line 393
    goto/16 :goto_0

    .line 399
    :pswitch_1
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 400
    const/4 v13, 0x1

    goto :goto_4

    .line 401
    :cond_1a
    const/16 v14, 0x2e

    if-ne v7, v14, :cond_0

    .line 402
    const/4 v13, 0x2

    goto :goto_4

    .line 408
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 409
    const/4 v13, 0x3

    goto :goto_4

    .line 415
    :pswitch_3
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 416
    const/4 v13, 0x3

    goto :goto_4

    .line 417
    :cond_1b
    const/16 v14, 0x2e

    if-ne v7, v14, :cond_1c

    .line 418
    const/4 v13, 0x2

    goto :goto_4

    :cond_1c
    move v8, v11

    .line 420
    goto/16 :goto_0

    .line 425
    :cond_1d
    if-eqz v13, :cond_1e

    const/4 v14, 0x3

    if-ne v14, v13, :cond_0

    :cond_1e
    move v8, v11

    goto/16 :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static removeDupes(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 150
    :cond_0
    return-void

    .line 135
    :cond_1
    const/4 v1, 0x1

    .line 137
    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 140
    .local v0, cur:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 141
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 142
    .local v3, previous:Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    add-int/lit8 v1, v1, -0x1

    .line 148
    .end local v3           #previous:Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 149
    goto :goto_0

    .line 140
    .restart local v3       #previous:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static removeFromCsvIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"
    .parameter "csv"

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string p1, ""

    .line 62
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 56
    .restart local p1
    :cond_1
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, elements:[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/inputmethod/latin/StringUtils;->containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 59
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 60
    .local v1, element:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    const-string v6, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static toCodePointArray(Ljava/lang/String;)[I
    .locals 8
    .parameter "string"

    .prologue
    const/4 v7, 0x0

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 170
    .local v0, characters:[C
    array-length v4, v0

    .line 171
    .local v4, length:I
    invoke-static {v0, v7, v4}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v6

    new-array v2, v6, [I

    .line 172
    .local v2, codePoints:[I
    if-gtz v4, :cond_0

    .line 173
    new-array v2, v7, [I

    .line 183
    .end local v2           #codePoints:[I
    :goto_0
    return-object v2

    .line 175
    .restart local v2       #codePoints:[I
    :cond_0
    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 176
    .local v1, codePoint:I
    const/4 v3, 0x0

    .line 177
    .local v3, dsti:I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 178
    .local v5, srci:I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 179
    aput v1, v2, v3

    .line 180
    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 178
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    :cond_1
    aput v1, v2, v3

    goto :goto_0
.end method

.method public static toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "locale"

    .prologue
    const/4 v3, 0x1

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_0

    .line 165
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
