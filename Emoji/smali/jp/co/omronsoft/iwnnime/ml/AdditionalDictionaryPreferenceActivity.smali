.class public Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AdditionalDictionaryPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_DICTIONARY_NAME_KEY:Ljava/lang/String; = "additional_dic_name"

.field private static final ALLOW_EXTENSION:Ljava/lang/String; = ".d01"

.field private static final MAX_ADDITIONAL_DIC:I = 0xa

.field private static final MAX_DICTIONARY_NAME_LENGTH:I = 0x32

.field private static final MAX_DICTIONARY_WORD_LENGTH:I = 0x32

.field private static final MAX_DICTIONARY_WORD_LIST:I = 0x1f4

.field private static final SD_ADDITIONAL_DIC_PATH:Ljava/lang/String; = "/iwnn/additional_dic"

.field private static final TAG:Ljava/lang/String; = "iWnn"


# instance fields
.field private mLanguage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->mLanguage:I

    .line 64
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->showAdditionalDictionaryList(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;Landroid/preference/Preference;Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->saveLocalDictionary(Landroid/preference/Preference;Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)V

    return-void
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->initializeLocalDictionary(Landroid/preference/Preference;)V

    return-void
.end method

.method private addWordToLocalDictionary(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "stroke"
    .parameter "candidate"

    .prologue
    .line 354
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 355
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-direct {v1, p2, p1}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addWordsFromFile(Landroid/preference/Preference;Ljava/lang/String;)Z
    .locals 18
    .parameter "pref"
    .parameter "path"

    .prologue
    .line 260
    const/4 v2, 0x0

    .line 262
    .local v2, buf:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 263
    .end local v2           #buf:Ljava/io/BufferedReader;
    .local v3, buf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 266
    const/4 v6, 0x0

    .line 267
    .local v6, count:I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, line:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 268
    const/16 v15, 0x1f4

    if-gt v15, v6, :cond_5

    .line 304
    :cond_1
    if-lez v6, :cond_8

    .line 305
    const/4 v9, 0x0

    .line 306
    .local v9, failed:Z
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v8

    .line 307
    .local v8, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->prepareLocalDictionary(Landroid/preference/Preference;Z)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 308
    invoke-direct/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getIwnnEngineDicType(Landroid/preference/Preference;)I

    move-result v15

    invoke-virtual {v8, v15}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->saveAdditionalDictionary(I)Z

    move-result v15

    if-nez v15, :cond_2

    .line 309
    const/4 v9, 0x1

    .line 312
    :cond_2
    if-nez v9, :cond_3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->prepareLocalDictionary(Landroid/preference/Preference;Z)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 313
    invoke-direct/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getIwnnEngineDicType(Landroid/preference/Preference;)I

    move-result v15

    invoke-virtual {v8, v15}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->saveAdditionalDictionary(I)Z

    move-result v15

    if-nez v15, :cond_3

    .line 314
    const/4 v9, 0x1

    .line 318
    :cond_3
    if-nez v9, :cond_8

    .line 319
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const v16, 0x7f060087

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 323
    .local v12, message:Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 324
    const/4 v15, 0x1

    .line 334
    if-eqz v3, :cond_4

    .line 335
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    move-object v2, v3

    .line 344
    .end local v3           #buf:Ljava/io/BufferedReader;
    .end local v6           #count:I
    .end local v8           #engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .end local v9           #failed:Z
    .end local v11           #line:Ljava/lang/String;
    .end local v12           #message:Ljava/lang/String;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    :goto_2
    return v15

    .line 272
    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v3       #buf:Ljava/io/BufferedReader;
    .restart local v6       #count:I
    .restart local v11       #line:Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v15, "\t"

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 273
    .local v14, tab:I
    if-lez v14, :cond_0

    const/16 v15, 0x32

    if-lt v15, v14, :cond_0

    .line 277
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    .line 278
    .local v10, last:I
    sub-int v15, v10, v14

    add-int/lit8 v5, v15, -0x1

    .line 279
    .local v5, candidateLength:I
    const/16 v15, 0x32

    if-lt v15, v5, :cond_0

    .line 283
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 284
    .local v13, stroke:Ljava/lang/String;
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v11, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, candidate:Ljava/lang/String;
    const/4 v9, 0x0

    .line 286
    .restart local v9       #failed:Z
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->prepareLocalDictionary(Landroid/preference/Preference;Z)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 287
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->addWordToLocalDictionary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 288
    const/4 v9, 0x1

    .line 289
    const-string v15, "iWnn"

    const-string v16, "addWordsFromFile() : Fail to add word first"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_6
    if-nez v9, :cond_7

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->prepareLocalDictionary(Landroid/preference/Preference;Z)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 294
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->addWordToLocalDictionary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 295
    const-string v15, "iWnn"

    const-string v16, "addWordsFromFile() : Fail to add word second"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 299
    :cond_7
    if-nez v9, :cond_0

    .line 300
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 337
    .end local v4           #candidate:Ljava/lang/String;
    .end local v5           #candidateLength:I
    .end local v10           #last:I
    .end local v13           #stroke:Ljava/lang/String;
    .end local v14           #tab:I
    .restart local v8       #engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .restart local v12       #message:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 338
    .local v7, e:Ljava/io/IOException;
    const-string v16, "iWnn"

    const-string v17, "Fail to close BufferedReader"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 334
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .end local v9           #failed:Z
    .end local v12           #message:Ljava/lang/String;
    :cond_8
    if-eqz v3, :cond_9

    .line 335
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_9
    move-object v2, v3

    .line 342
    .end local v3           #buf:Ljava/io/BufferedReader;
    .end local v6           #count:I
    .end local v11           #line:Ljava/lang/String;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    :cond_a
    :goto_3
    const v15, 0x7f060088

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 344
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 337
    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v3       #buf:Ljava/io/BufferedReader;
    .restart local v6       #count:I
    .restart local v11       #line:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 338
    .restart local v7       #e:Ljava/io/IOException;
    const-string v15, "iWnn"

    const-string v16, "Fail to close BufferedReader"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 340
    .end local v3           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 328
    .end local v6           #count:I
    .end local v7           #e:Ljava/io/IOException;
    .end local v11           #line:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 329
    .local v7, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v15, "iWnn"

    const-string v16, "Not found a dictionary file"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 334
    if-eqz v2, :cond_a

    .line 335
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 337
    :catch_3
    move-exception v7

    .line 338
    .local v7, e:Ljava/io/IOException;
    const-string v15, "iWnn"

    const-string v16, "Fail to close BufferedReader"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 330
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 331
    .restart local v7       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v15, "iWnn"

    const-string v16, "Fail to read line"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 334
    if-eqz v2, :cond_a

    .line 335
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 337
    :catch_5
    move-exception v7

    .line 338
    const-string v15, "iWnn"

    const-string v16, "Fail to close BufferedReader"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 333
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 334
    :goto_6
    if-eqz v2, :cond_b

    .line 335
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 339
    :cond_b
    :goto_7
    throw v15

    .line 337
    :catch_6
    move-exception v7

    .line 338
    .restart local v7       #e:Ljava/io/IOException;
    const-string v16, "iWnn"

    const-string v17, "Fail to close BufferedReader"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 333
    .end local v2           #buf:Ljava/io/BufferedReader;
    .end local v7           #e:Ljava/io/IOException;
    .restart local v3       #buf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v15

    move-object v2, v3

    .end local v3           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    goto :goto_6

    .line 330
    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v3       #buf:Ljava/io/BufferedReader;
    :catch_7
    move-exception v7

    move-object v2, v3

    .end local v3           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    goto :goto_5

    .line 328
    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v3       #buf:Ljava/io/BufferedReader;
    :catch_8
    move-exception v7

    move-object v2, v3

    .end local v3           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private static createAdditionalDictionaryKey(II)Ljava/lang/String;
    .locals 2
    .parameter "language"
    .parameter "index"

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "additional_dic_name"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createDictionaryList()[Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;
    .locals 14

    .prologue
    .line 501
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getDictionaryFilePaths()[Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, paths:[Ljava/lang/String;
    if-nez v7, :cond_0

    .line 503
    const/4 v11, 0x0

    new-array v8, v11, [Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

    .line 539
    :goto_0
    return-object v8

    .line 506
    :cond_0
    array-length v9, v7

    .line 507
    .local v9, size:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v9, :cond_5

    .line 509
    const/4 v0, 0x0

    .line 511
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    aget-object v6, v7, v3

    .line 512
    .local v6, path:Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 514
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 515
    .local v10, title:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 516
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    .line 517
    .local v4, length:I
    if-lez v4, :cond_1

    const/16 v11, 0x32

    if-gt v4, v11, :cond_1

    .line 518
    new-instance v11, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

    invoke-direct {v11, v10, v6}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 527
    .end local v4           #length:I
    :cond_1
    if-eqz v1, :cond_2

    .line 528
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v0, v1

    .line 508
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v6           #path:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 530
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v10       #title:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 531
    .local v2, e:Ljava/io/IOException;
    const-string v11, "iWnn"

    const-string v12, "Fail to close BufferedReader"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 533
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2

    .line 521
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #path:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 522
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v11, "iWnn"

    const-string v12, "Not found a dictionary file"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 527
    if-eqz v0, :cond_3

    .line 528
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 530
    :catch_2
    move-exception v2

    .line 531
    .local v2, e:Ljava/io/IOException;
    const-string v11, "iWnn"

    const-string v12, "Fail to close BufferedReader"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 523
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 524
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v11, "iWnn"

    const-string v12, "Fail to read title"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 527
    if-eqz v0, :cond_3

    .line 528
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 530
    :catch_4
    move-exception v2

    .line 531
    const-string v11, "iWnn"

    const-string v12, "Fail to close BufferedReader"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 526
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 527
    :goto_5
    if-eqz v0, :cond_4

    .line 528
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 532
    :cond_4
    :goto_6
    throw v11

    .line 530
    :catch_5
    move-exception v2

    .line 531
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "iWnn"

    const-string v13, "Fail to close BufferedReader"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 536
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

    .line 537
    .local v8, ret:[Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 526
    .end local v8           #ret:[Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v6       #path:Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_5

    .line 523
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 521
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private createTitleList([Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)[Ljava/lang/String;
    .locals 5
    .parameter "list"

    .prologue
    .line 424
    array-length v0, p1

    .line 425
    .local v0, count:I
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 426
    .local v2, titleList:[Ljava/lang/String;
    const/4 v3, 0x0

    const v4, 0x7f060085

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 427
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 428
    add-int/lit8 v3, v1, 0x1

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_0
    return-object v2
.end method

.method private getAdditionalDictionaryKey(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 153
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->mLanguage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 154
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getCurrentLanguage(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->mLanguage:I

    .line 156
    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->mLanguage:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->createAdditionalDictionaryKey(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentLanguage(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 165
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getInstance()Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->updateLanguageInfoForUserDictionary(Landroid/content/SharedPreferences;)V

    .line 167
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getInstance()Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getLanguageTypeOfUserDictionary()I

    move-result v1

    return v1
.end method

.method private static getDictionaryFilePaths()[Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 462
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 463
    .local v5, file:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "/iwnn/additional_dic"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .local v1, dicDir:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_0

    move-object v12, v13

    .line 492
    :goto_0
    return-object v12

    .line 470
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 471
    .local v10, paths:[Ljava/lang/String;
    if-nez v10, :cond_1

    move-object v12, v13

    .line 472
    goto :goto_0

    .line 474
    :cond_1
    array-length v11, v10

    .line 475
    .local v11, size:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, base:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, ".d01"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    .line 480
    .local v4, extensionLength:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v11, :cond_3

    .line 481
    aget-object v8, v10, v6

    .line 482
    .local v8, path:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 483
    .local v9, pathLength:I
    if-ge v4, v9, :cond_2

    .line 484
    sub-int v12, v9, v4

    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, extension:Ljava/lang/String;
    const-string v12, ".d01"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 486
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v14, v10, v6

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .end local v3           #extension:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 490
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #pathLength:I
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    .end local v0           #base:Ljava/lang/String;
    .end local v4           #extensionLength:I
    .end local v6           #i:I
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #paths:[Ljava/lang/String;
    .end local v11           #size:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/SecurityException;
    move-object v12, v13

    .line 492
    goto :goto_0
.end method

.method private getIwnnEngineDicType(Landroid/preference/Preference;)I
    .locals 1
    .parameter "pref"

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    add-int/lit8 v0, v0, 0x23

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private initializeLocalDictionary(Landroid/preference/Preference;)V
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v4, 0x0

    .line 397
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    .line 399
    .local v1, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-direct {p0, p1, v4}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->prepareLocalDictionary(Landroid/preference/Preference;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getIwnnEngineDicType(Landroid/preference/Preference;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->deleteAdditionalDictionary(I)Z

    .line 403
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->prepareLocalDictionary(Landroid/preference/Preference;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getIwnnEngineDicType(Landroid/preference/Preference;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->deleteAdditionalDictionary(I)Z

    .line 407
    :cond_1
    const v3, 0x7f060084

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 410
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 411
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 412
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-direct {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getAdditionalDictionaryKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 415
    const v3, 0x7f060089

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 417
    return-void
.end method

.method public static isEnableAdditionalDictionary(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 439
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getDictionaryFilePaths()[Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, files:[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-eqz v7, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v6

    .line 444
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 445
    .local v5, sharedPref:Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    const/16 v7, 0xa

    if-gt v2, v7, :cond_2

    .line 446
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getCurrentLanguage(Landroid/content/Context;)I

    move-result v4

    .line 447
    .local v4, language:I
    invoke-static {v4, v2}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->createAdditionalDictionaryKey(II)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, key:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v5, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, dictionaryName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 454
    .end local v0           #dictionaryName:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #language:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private prepareLocalDictionary(Landroid/preference/Preference;Z)Z
    .locals 4
    .parameter "pref"
    .parameter "secondLang"

    .prologue
    .line 366
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 367
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->mLanguage:I

    .line 369
    .local v1, language:I
    if-nez v1, :cond_1

    .line 370
    if-eqz p2, :cond_0

    .line 371
    const/4 v1, 0x1

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getIwnnEngineDicType(Landroid/preference/Preference;)I

    move-result v2

    .line 380
    .local v2, type:I
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(III)Z

    .line 381
    const/4 v3, 0x1

    .end local v2           #type:I
    :goto_0
    return v3

    .line 374
    :cond_1
    if-eqz p2, :cond_0

    .line 375
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private saveLocalDictionary(Landroid/preference/Preference;Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)V
    .locals 8
    .parameter "pref"
    .parameter "dictionary"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 220
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v2

    .line 222
    .local v2, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-direct {p0, p1, v6}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->prepareLocalDictionary(Landroid/preference/Preference;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getIwnnEngineDicType(Landroid/preference/Preference;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->createAdditionalDictionary(I)Z

    .line 226
    :cond_0
    invoke-direct {p0, p1, v7}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->prepareLocalDictionary(Landroid/preference/Preference;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getIwnnEngineDicType(Landroid/preference/Preference;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->createAdditionalDictionary(I)Z

    .line 230
    :cond_1
    invoke-virtual {p2}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->path()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->addWordsFromFile(Landroid/preference/Preference;Ljava/lang/String;)Z

    move-result v0

    .line 232
    .local v0, added:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 233
    .local v3, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 234
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_3

    .line 235
    invoke-virtual {p2}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->title()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getAdditionalDictionaryKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;->title()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    return-void

    .line 238
    :cond_3
    const v5, 0x7f060084

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getAdditionalDictionaryKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getIwnnEngineDicType(Landroid/preference/Preference;)I

    move-result v4

    .line 243
    .local v4, type:I
    invoke-direct {p0, p1, v6}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->prepareLocalDictionary(Landroid/preference/Preference;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 244
    invoke-virtual {v2, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->deleteAdditionalDictionary(I)Z

    .line 246
    :cond_4
    invoke-direct {p0, p1, v7}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->prepareLocalDictionary(Landroid/preference/Preference;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    invoke-virtual {v2, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->deleteAdditionalDictionary(I)Z

    goto :goto_0
.end method

.method private static setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "summary"

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method private showAdditionalDictionaryList(Landroid/preference/Preference;)V
    .locals 4
    .parameter "pref"

    .prologue
    .line 195
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->createDictionaryList()[Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

    move-result-object v1

    .line 197
    .local v1, list:[Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 199
    const v2, 0x7f06009b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    const v2, 0x7f060086

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->createTitleList([Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;

    invoke-direct {v3, p0, p1, v1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;Landroid/preference/Preference;[Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 212
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 119
    .local v5, rootPreferenceScreen:Landroid/preference/PreferenceScreen;
    const v7, 0x7f060081

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 121
    const v7, 0x7f060083

    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, listTitle:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 123
    .local v6, sharedPref:Landroid/content/SharedPreferences;
    const v7, 0x7f060084

    invoke-virtual {p0, v7}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, noneText:Ljava/lang/String;
    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$1;

    invoke-direct {v2, p0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;)V

    .line 133
    .local v2, listener:Landroid/preference/Preference$OnPreferenceClickListener;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/16 v7, 0xa

    if-gt v0, v7, :cond_0

    .line 134
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 135
    .local v4, preference:Landroid/preference/Preference;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->getAdditionalDictionaryKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 139
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 141
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v4           #preference:Landroid/preference/Preference;
    :cond_0
    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 145
    return-void
.end method
