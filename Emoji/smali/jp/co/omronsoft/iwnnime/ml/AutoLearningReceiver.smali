.class public Ljp/co/omronsoft/iwnnime/ml/AutoLearningReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoLearningReceiver.java"


# static fields
.field private static final ACTION_AUTO_LEARNING:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.AUTO_LEARNING"

.field private static final ACTION_CLEAR_LEARNING:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.CLEAR_LEARNING"

.field private static final AUTO_LEARNING_READINGS_KEYCODE:Ljava/lang/String; = "readings"

.field private static final AUTO_LEARNING_STRING_KEYCODE:Ljava/lang/String; = "string"

.field private static final CONF_FILE:Ljava/lang/String; = "/system/lib/lib_dic_morphem_ja_JP.conf.so"

.field private static final INPUT_MAX:I = 0x32

.field private static final MAX_DICTIONARY_WORD_LIST:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v12

    .line 49
    .local v12, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jp.co.omronsoft.iwnnime.ml.AUTO_LEARNING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 50
    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-direct {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;-><init>()V

    .line 51
    .local v2, mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "/system/lib/lib_dic_morphem_ja_JP.conf.so"

    const/4 v6, 0x1

    invoke-static/range {p1 .. p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getFilesDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setDictionary(IILjava/lang/String;ZLjava/lang/String;)Z

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 55
    .local v8, bundle:Landroid/os/Bundle;
    const-string v3, "string"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 56
    .local v14, input:Ljava/lang/String;
    const-string v3, "readings"

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 58
    .local v19, readingsMax:I
    add-int/lit8 v3, v19, 0x1

    new-array v0, v3, [Ljava/util/ArrayList;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/util/ArrayList;

    .line 59
    .local v20, resultLists:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    add-int/lit8 v3, v19, 0x1

    if-ge v13, v3, :cond_0

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v20, v13

    .line 59
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 63
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v23, v0

    .line 64
    .local v23, splitResult:[I
    add-int/lit8 v3, v19, 0x1

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[Ljava/lang/String;

    .line 66
    .local v21, segment:[[Ljava/lang/String;
    const/16 v18, 0x0

    .line 67
    .local v18, processLength:I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 68
    .local v15, inputLength:I
    :cond_1
    move/from16 v0, v18

    if-ge v0, v15, :cond_2

    .line 69
    add-int/lit8 v3, v18, 0x32

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v0, v18

    invoke-virtual {v14, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->splitWord(Ljava/lang/String;[I)V

    .line 71
    const/4 v3, 0x0

    aget v22, v23, v3

    .line 72
    .local v22, segmentCount:I
    const/4 v3, 0x1

    aget v17, v23, v3

    .line 74
    .local v17, length:I
    if-gtz v22, :cond_4

    .line 90
    .end local v17           #length:I
    .end local v22           #segmentCount:I
    :cond_2
    const/4 v3, 0x0

    const/16 v4, 0x2d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v12, v3, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(III)Z

    .line 92
    const/16 v3, 0x2d

    invoke-virtual {v12, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->createAutoLearningDictionary(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 161
    .end local v2           #mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v13           #i:I
    .end local v14           #input:Ljava/lang/String;
    .end local v15           #inputLength:I
    .end local v18           #processLength:I
    .end local v19           #readingsMax:I
    .end local v20           #resultLists:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21           #segment:[[Ljava/lang/String;
    .end local v23           #splitResult:[I
    :cond_3
    :goto_1
    return-void

    .line 77
    .restart local v2       #mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;
    .restart local v8       #bundle:Landroid/os/Bundle;
    .restart local v13       #i:I
    .restart local v14       #input:Ljava/lang/String;
    .restart local v15       #inputLength:I
    .restart local v17       #length:I
    .restart local v18       #processLength:I
    .restart local v19       #readingsMax:I
    .restart local v20       #resultLists:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21       #segment:[[Ljava/lang/String;
    .restart local v22       #segmentCount:I
    .restart local v23       #splitResult:[I
    :cond_4
    add-int v18, v18, v17

    .line 79
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v22

    if-ge v13, v0, :cond_1

    .line 80
    move-object/from16 v0, v21

    invoke-virtual {v2, v13, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getMorphemeText(I[[Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x0

    aget-object v3, v20, v3

    const/4 v4, 0x0

    aget-object v4, v21, v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 82
    const/16 v16, 0x0

    .local v16, j:I
    :goto_3
    add-int/lit8 v3, v19, 0x1

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 83
    aget-object v3, v20, v16

    aget-object v4, v21, v16

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    aget-object v3, v20, v16

    aget-object v4, v21, v16

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 79
    .end local v16           #j:I
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 96
    .end local v17           #length:I
    .end local v22           #segmentCount:I
    :cond_6
    const/4 v11, 0x0

    .line 97
    .local v11, count:I
    const/4 v10, 0x0

    .line 98
    .local v10, connect:Z
    const/4 v13, 0x0

    :goto_4
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_7

    .line 99
    const/16 v3, 0x1f4

    if-gt v3, v11, :cond_9

    .line 132
    :cond_7
    const/4 v13, 0x0

    :goto_5
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_8

    .line 133
    const/16 v3, 0x1f4

    if-gt v3, v11, :cond_e

    .line 152
    :cond_8
    if-lez v11, :cond_3

    .line 153
    const/16 v3, 0x2d

    invoke-virtual {v12, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->saveAutoLearningDictionary(I)Z

    goto :goto_1

    .line 103
    :cond_9
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 104
    .local v9, candidate:Ljava/lang/String;
    rem-int/lit8 v3, v13, 0x2

    if-nez v3, :cond_d

    .line 107
    if-nez v9, :cond_b

    .line 108
    const/4 v10, 0x0

    .line 98
    :cond_a
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 110
    :cond_b
    const/4 v3, 0x1

    aget-object v3, v20, v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 111
    .local v24, stroke:Ljava/lang/String;
    if-eqz v24, :cond_a

    .line 112
    new-instance v25, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v9, v1}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v25, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    move-object/from16 v0, v25

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    const v4, 0x8000

    or-int/2addr v3, v4

    move-object/from16 v0, v25

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    .line 114
    if-eqz v10, :cond_c

    .line 115
    move-object/from16 v0, v25

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    or-int/lit16 v3, v3, 0x2000

    move-object/from16 v0, v25

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    .line 117
    :cond_c
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    move-result v3

    if-nez v3, :cond_a

    .line 118
    add-int/lit8 v11, v11, 0x1

    .line 119
    const/4 v10, 0x1

    goto :goto_6

    .line 126
    .end local v24           #stroke:Ljava/lang/String;
    .end local v25           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_d
    if-eqz v9, :cond_a

    .line 127
    const/4 v10, 0x0

    goto :goto_6

    .line 137
    .end local v9           #candidate:Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 138
    .restart local v9       #candidate:Ljava/lang/String;
    if-eqz v9, :cond_10

    .line 139
    const/16 v16, 0x2

    .restart local v16       #j:I
    :goto_7
    add-int/lit8 v3, v19, 0x1

    move/from16 v0, v16

    if-ge v0, v3, :cond_10

    .line 140
    aget-object v3, v20, v16

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 141
    .restart local v24       #stroke:Ljava/lang/String;
    if-eqz v24, :cond_f

    .line 142
    new-instance v25, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v9, v1}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .restart local v25       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    move-object/from16 v0, v25

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    const v4, 0x8000

    or-int/2addr v3, v4

    move-object/from16 v0, v25

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    .line 144
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    move-result v3

    if-nez v3, :cond_f

    .line 145
    add-int/lit8 v11, v11, 0x1

    .line 139
    .end local v25           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 132
    .end local v16           #j:I
    .end local v24           #stroke:Ljava/lang/String;
    :cond_10
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_5

    .line 156
    .end local v2           #mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v9           #candidate:Ljava/lang/String;
    .end local v10           #connect:Z
    .end local v11           #count:I
    .end local v13           #i:I
    .end local v14           #input:Ljava/lang/String;
    .end local v15           #inputLength:I
    .end local v18           #processLength:I
    .end local v19           #readingsMax:I
    .end local v20           #resultLists:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21           #segment:[[Ljava/lang/String;
    .end local v23           #splitResult:[I
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jp.co.omronsoft.iwnnime.ml.CLEAR_LEARNING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    const/4 v3, 0x0

    const/16 v4, 0x2d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v12, v3, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(III)Z

    .line 159
    const/16 v3, 0x2d

    invoke-virtual {v12, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->deleteAutoLearningDictionary(I)Z

    goto/16 :goto_1
.end method
