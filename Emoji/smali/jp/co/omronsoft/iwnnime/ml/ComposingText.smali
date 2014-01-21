.class public Ljp/co/omronsoft/iwnnime/ml/ComposingText;
.super Ljava/lang/Object;
.source "ComposingText.java"


# static fields
.field public static final LAYER0:I = 0x0

.field public static final LAYER1:I = 0x1

.field public static final LAYER2:I = 0x2

.field public static final MAX_LAYER:I = 0x3


# instance fields
.field protected mCursor:[I

.field protected mStringLayer:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/StrSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-array v1, v3, [Ljava/util/ArrayList;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    .line 58
    new-array v1, v3, [I

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 60
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 61
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method private deleteStrSegment0(IIII)V
    .locals 4
    .parameter "layer"
    .parameter "from"
    .parameter "to"
    .parameter "diff"

    .prologue
    .line 424
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v3, p1

    .line 425
    .local v2, strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    if-eqz p4, :cond_0

    .line 426
    add-int/lit8 v0, p3, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 427
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 428
    .local v1, ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    sub-int/2addr v3, p4

    iput v3, v1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    .line 429
    iget v3, v1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    sub-int/2addr v3, p4

    iput v3, v1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    .end local v0           #i:I
    .end local v1           #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_0
    move v0, p2

    .restart local v0       #i:I
    :goto_1
    if-gt v0, p3, :cond_1

    .line 433
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    :cond_1
    return-void
.end method

.method private included(II)I
    .locals 5
    .parameter "layer"
    .parameter "pos"

    .prologue
    .line 497
    if-nez p2, :cond_1

    .line 498
    const/4 v0, 0x0

    .line 509
    :cond_0
    return v0

    .line 500
    :cond_1
    add-int/lit8 v3, p1, 0x1

    .line 502
    .local v3, uplayer:I
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v4, v3

    .line 503
    .local v2, strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 504
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 505
    .local v1, ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget v4, v1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    if-gt v4, p2, :cond_2

    iget v4, v1, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    if-le p2, v4, :cond_0

    .line 503
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private modifyUpper(IIII)V
    .locals 18
    .parameter "layer"
    .parameter "mod_from"
    .parameter "mod_len"
    .parameter "org_len"

    .prologue
    .line 147
    const/4 v14, 0x2

    move/from16 v0, p1

    if-lt v0, v14, :cond_0

    .line 239
    :goto_0
    return-void

    .line 152
    :cond_0
    add-int/lit8 v11, p1, 0x1

    .line 153
    .local v11, uplayer:I
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v10, v14, v11

    .line 154
    .local v10, strUplayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_1

    .line 159
    new-instance v14, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    invoke-virtual/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-direct/range {v14 .. v17}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v11, v14, v15, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->modifyUpper(IIII)V

    goto :goto_0

    .line 164
    :cond_1
    if-nez p3, :cond_2

    const/4 v14, 0x0

    :goto_1
    add-int v6, p2, v14

    .line 165
    .local v6, mod_to:I
    if-nez p4, :cond_3

    const/4 v14, 0x0

    :goto_2
    add-int v8, p2, v14

    .line 166
    .local v8, org_to:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 167
    .local v4, last:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget v14, v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    move/from16 v0, p2

    if-ge v14, v0, :cond_4

    .line 169
    iput v6, v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    .line 170
    iget v14, v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    iget v15, v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    .line 171
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v11, v14, v15, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->modifyUpper(IIII)V

    goto :goto_0

    .line 164
    .end local v4           #last:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    .end local v6           #mod_to:I
    .end local v8           #org_to:I
    :cond_2
    add-int/lit8 v14, p3, -0x1

    goto :goto_1

    .line 165
    .restart local v6       #mod_to:I
    :cond_3
    add-int/lit8 v14, p4, -0x1

    goto :goto_2

    .line 175
    .restart local v4       #last:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    .restart local v8       #org_to:I
    :cond_4
    const/4 v12, -0x1

    .line 176
    .local v12, uplayer_mod_from:I
    const/4 v13, -0x1

    .line 177
    .local v13, uplayer_org_to:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_8

    .line 178
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 179
    .local v9, ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    move/from16 v0, p2

    if-le v14, v0, :cond_b

    .line 180
    iget v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    if-gt v14, v8, :cond_7

    .line 182
    if-gez v12, :cond_5

    .line 183
    move v12, v3

    .line 185
    :cond_5
    move v13, v3

    .line 177
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 188
    :cond_7
    move v13, v3

    .line 209
    .end local v9           #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_8
    :goto_4
    if-gez v12, :cond_9

    .line 211
    const/4 v12, 0x0

    .line 212
    const/4 v13, 0x0

    .line 215
    :cond_9
    sub-int v2, p3, p4

    .line 217
    .local v2, diff:I
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 218
    .restart local v9       #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget v5, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    .line 219
    .local v5, last_to:I
    add-int/lit8 v7, v12, 0x1

    .line 220
    .local v7, next:I
    move v3, v7

    :goto_5
    if-gt v3, v13, :cond_d

    .line 221
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 222
    .restart local v9       #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    if-le v5, v14, :cond_a

    .line 223
    iget v5, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    .line 225
    :cond_a
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 192
    .end local v2           #diff:I
    .end local v5           #last_to:I
    .end local v7           #next:I
    :cond_b
    if-nez p4, :cond_c

    iget v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    move/from16 v0, p2

    if-ne v14, v0, :cond_c

    .line 194
    add-int/lit8 v12, v3, -0x1

    .line 195
    add-int/lit8 v13, v3, -0x1

    .line 196
    goto :goto_4

    .line 199
    :cond_c
    move v12, v3

    .line 200
    move v13, v3

    .line 201
    iget v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    if-lt v14, v8, :cond_6

    goto :goto_4

    .line 227
    .restart local v2       #diff:I
    .restart local v5       #last_to:I
    .restart local v7       #next:I
    :cond_d
    if-ge v5, v6, :cond_e

    .end local v6           #mod_to:I
    :goto_6
    iput v6, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    .line 229
    iget v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    iget v15, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    .line 231
    move v3, v7

    :goto_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_f

    .line 232
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 233
    .restart local v9       #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    add-int/2addr v14, v2

    iput v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    .line 234
    iget v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/2addr v14, v2

    iput v14, v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 227
    .restart local v6       #mod_to:I
    :cond_e
    add-int v6, v5, v2

    goto :goto_6

    .line 237
    .end local v6           #mod_to:I
    :cond_f
    const/4 v14, 0x1

    sub-int v15, v13, v12

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v14, v15}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->modifyUpper(IIII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 580
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 581
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 582
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_0
    return-void
.end method

.method public debugout()V
    .locals 7

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 71
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ComposingText["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  cur = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v3, ""

    .line 74
    .local v3, tmp:Ljava/lang/String;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 76
    .local v2, ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    goto :goto_1

    .line 78
    .end local v2           #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_0
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 80
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    .end local v3           #tmp:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public delete(IZ)I
    .locals 4
    .parameter "layer"
    .parameter "rightside"

    .prologue
    .line 445
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v0, v2, p1

    .line 446
    .local v0, cursor:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p1

    .line 448
    .local v1, strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    if-nez p2, :cond_1

    if-lez v0, :cond_1

    .line 449
    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, p1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->deleteStrSegment(III)V

    .line 450
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, p1, v2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 455
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    .line 451
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 452
    invoke-virtual {p0, p1, v0, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->deleteStrSegment(III)V

    .line 453
    invoke-virtual {p0, p1, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    goto :goto_0
.end method

.method public deleteForward(I)I
    .locals 3
    .parameter "layer"

    .prologue
    .line 465
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v0, v2, p1

    .line 466
    .local v0, cursor:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p1

    .line 468
    .local v1, strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 469
    invoke-virtual {p0, p1, v0, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->deleteStrSegment(III)V

    .line 470
    invoke-virtual {p0, p1, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 472
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2
.end method

.method public deleteStrSegment(III)V
    .locals 16
    .parameter "layer"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 344
    const/4 v13, 0x3

    new-array v4, v13, [I

    fill-array-data v4, :array_0

    .line 345
    .local v4, fromL:[I
    const/4 v13, 0x3

    new-array v12, v13, [I

    fill-array-data v12, :array_1

    .line 347
    .local v12, toL:[I
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v14, 0x2

    aget-object v10, v13, v14

    .line 348
    .local v10, strLayer2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v14, 0x1

    aget-object v9, v13, v14

    .line 351
    .local v9, strLayer1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_0

    .line 352
    const/4 v13, 0x2

    aput p2, v4, v13

    .line 353
    const/4 v13, 0x2

    aput p3, v12, v13

    .line 354
    const/4 v14, 0x1

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    aput v13, v4, v14

    .line 355
    const/4 v14, 0x1

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    aput v13, v12, v14

    .line 356
    const/4 v14, 0x0

    const/4 v13, 0x1

    aget v13, v4, v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    aput v13, v4, v14

    .line 357
    const/4 v14, 0x0

    const/4 v13, 0x1

    aget v13, v12, v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    aput v13, v12, v14

    .line 368
    :goto_0
    sub-int v13, p3, p2

    add-int/lit8 v3, v13, 0x1

    .line 369
    .local v3, diff:I
    const/4 v6, 0x0

    .local v6, lv:I
    :goto_1
    const/4 v13, 0x3

    if-ge v6, v13, :cond_a

    .line 370
    aget v13, v4, v6

    if-ltz v13, :cond_2

    .line 371
    aget v13, v4, v6

    aget v14, v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v14, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->deleteStrSegment0(IIII)V

    .line 411
    :goto_2
    aget v13, v12, v6

    aget v14, v4, v6

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    .line 369
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 358
    .end local v3           #diff:I
    .end local v6           #lv:I
    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 359
    const/4 v13, 0x1

    aput p2, v4, v13

    .line 360
    const/4 v13, 0x1

    aput p3, v12, v13

    .line 361
    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    aput v13, v4, v14

    .line 362
    const/4 v14, 0x0

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    aput v13, v12, v14

    goto :goto_0

    .line 364
    :cond_1
    const/4 v13, 0x0

    aput p2, v4, v13

    .line 365
    const/4 v13, 0x0

    aput p3, v12, v13

    goto :goto_0

    .line 373
    .restart local v3       #diff:I
    .restart local v6       #lv:I
    :cond_2
    const/4 v1, -0x1

    .line 374
    .local v1, boundary_from:I
    const/4 v2, -0x1

    .line 375
    .local v2, boundary_to:I
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v8, v13, v6

    .line 376
    .local v8, strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_8

    .line 377
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 378
    .local v7, ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget v13, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-lt v13, v14, :cond_3

    iget v13, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-le v13, v14, :cond_4

    :cond_3
    iget v13, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-lt v13, v14, :cond_7

    iget v13, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-gt v13, v14, :cond_7

    .line 381
    :cond_4
    aget v13, v4, v6

    if-gez v13, :cond_5

    .line 382
    aput v5, v4, v6

    .line 383
    iget v1, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    .line 385
    :cond_5
    aput v5, v12, v6

    .line 386
    iget v2, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    .line 376
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 387
    :cond_7
    iget v13, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-gt v13, v14, :cond_b

    iget v13, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-lt v13, v14, :cond_b

    .line 389
    iget v1, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    .line 390
    iget v2, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    .line 391
    aput v5, v4, v6

    .line 392
    aput v5, v12, v6

    .line 398
    .end local v7           #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_8
    :goto_4
    add-int/lit8 v13, v6, -0x1

    aget v13, v4, v13

    if-ne v1, v13, :cond_9

    add-int/lit8 v13, v6, -0x1

    aget v13, v12, v13

    if-eq v2, v13, :cond_c

    .line 400
    :cond_9
    aget v13, v4, v6

    add-int/lit8 v13, v13, 0x1

    aget v14, v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v14, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->deleteStrSegment0(IIII)V

    .line 401
    sub-int/2addr v2, v3

    .line 402
    const/4 v13, 0x1

    new-array v11, v13, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    const/4 v13, 0x0

    new-instance v14, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    add-int/lit8 v15, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v14, v11, v13

    .line 405
    .local v11, tmp:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    aget v13, v4, v6

    aget v14, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v13, v14}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment0(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;II)V

    .line 413
    .end local v1           #boundary_from:I
    .end local v2           #boundary_to:I
    .end local v5           #i:I
    .end local v8           #strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    .end local v11           #tmp:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_a
    return-void

    .line 394
    .restart local v1       #boundary_from:I
    .restart local v2       #boundary_to:I
    .restart local v5       #i:I
    .restart local v7       #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    .restart local v8       #strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    :cond_b
    iget v13, v7, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-le v13, v14, :cond_6

    goto :goto_4

    .line 408
    .end local v7           #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_c
    aget v13, v4, v6

    aget v14, v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v14, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->deleteStrSegment0(IIII)V

    goto/16 :goto_2

    .line 344
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 345
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public getCursor(I)I
    .locals 1
    .parameter "layer"

    .prologue
    .line 563
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v0, v0, p1

    return v0
.end method

.method public getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    .locals 4
    .parameter "layer"
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p1

    .line 93
    .local v1, strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    if-gez p2, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 p2, v2, -0x1

    .line 96
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    if-gez p2, :cond_2

    :cond_1
    move-object v2, v3

    .line 101
    .end local v1           #strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    :goto_0
    return-object v2

    .line 99
    .restart local v1       #strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v1           #strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    move-object v2, v3

    .line 101
    goto :goto_0
.end method

.method public getStringLayer(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "layer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/StrSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    return-object v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertStrSegment(IILjp/co/omronsoft/iwnnime/ml/StrSegment;)V
    .locals 10
    .parameter "layer1"
    .parameter "layer2"
    .parameter "str"

    .prologue
    .line 263
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v7, v7, p1

    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 264
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v8, v7, p1

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, p1

    .line 266
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 267
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    add-int/lit8 v3, v7, -0x1

    .line 268
    .local v3, pos:I
    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget-object v7, p3, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    invoke-direct {v6, v7, v3, v3}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 269
    .local v6, tmp:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v5, v7, v1

    .line 270
    .local v5, strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v7, v7, v1

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 271
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v8, v7, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v1

    .line 272
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v2, v7, v1

    .local v2, j:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 273
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 274
    .local v4, ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget v7, v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    .line 275
    iget v7, v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    .end local v4           #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v2           #j:I
    .end local v3           #pos:I
    .end local v5           #strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    .end local v6           #tmp:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_1
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v0, v7, p2

    .line 279
    .local v0, cursor:I
    add-int/lit8 v7, v0, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p2, v7, v8, v9}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->modifyUpper(IIII)V

    .line 280
    invoke-virtual {p0, p2, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 281
    return-void
.end method

.method public insertStrSegment(ILjp/co/omronsoft/iwnnime/ml/StrSegment;)V
    .locals 3
    .parameter "layer"
    .parameter "str"

    .prologue
    .line 249
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v0, v1, p1

    .line 250
    .local v0, cursor:I
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 251
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->modifyUpper(IIII)V

    .line 252
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 253
    return-void
.end method

.method public moveCursor(II)I
    .locals 2
    .parameter "layer"
    .parameter "diff"

    .prologue
    .line 551
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v1, v1, p1

    add-int v0, v1, p2

    .line 553
    .local v0, c:I
    invoke-virtual {p0, p1, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    move-result v1

    return v1
.end method

.method public replaceStrSegment(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;)V
    .locals 3
    .parameter "layer"
    .parameter "str"

    .prologue
    .line 331
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v0, v1, p1

    .line 332
    .local v0, cursor:I
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment0(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;II)V

    .line 333
    array-length v1, p2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 334
    return-void
.end method

.method public replaceStrSegment(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V
    .locals 3
    .parameter "layer"
    .parameter "str"
    .parameter "num"

    .prologue
    .line 319
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v0, v1, p1

    .line 320
    .local v0, cursor:I
    sub-int v1, v0, p3

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment0(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;II)V

    .line 321
    array-length v1, p2

    add-int/2addr v1, v0

    sub-int/2addr v1, p3

    invoke-virtual {p0, p1, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 322
    return-void
.end method

.method protected replaceStrSegment0(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;II)V
    .locals 4
    .parameter "layer"
    .parameter "str"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 292
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p1

    .line 294
    .local v1, strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    if-ltz p3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p3, v2, :cond_1

    .line 295
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 297
    :cond_1
    if-ltz p4, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p4, v2, :cond_3

    .line 298
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 301
    :cond_3
    move v0, p3

    .local v0, i:I
    :goto_0
    if-gt v0, p4, :cond_4

    .line 302
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_4
    array-length v2, p2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 305
    aget-object v2, p2, v0

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 304
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 308
    :cond_5
    array-length v2, p2

    sub-int v3, p4, p3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p1, p3, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->modifyUpper(IIII)V

    .line 309
    return-void
.end method

.method public setCursor(II)I
    .locals 5
    .parameter "layer"
    .parameter "pos"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 520
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 521
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 523
    :cond_0
    if-gez p2, :cond_1

    .line 524
    const/4 p2, 0x0

    .line 527
    :cond_1
    if-nez p1, :cond_2

    .line 528
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aput p2, v0, v1

    .line 529
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    invoke-direct {p0, v1, p2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->included(II)I

    move-result v1

    aput v1, v0, v4

    .line 530
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v1, v1, v4

    invoke-direct {p0, v4, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->included(II)I

    move-result v1

    aput v1, v0, v3

    .line 540
    :goto_0
    return p2

    .line 531
    :cond_2
    if-ne p1, v4, :cond_4

    .line 532
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    invoke-direct {p0, v4, p2}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->included(II)I

    move-result v2

    aput v2, v0, v3

    .line 533
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aput p2, v0, v4

    .line 534
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    if-lez p2, :cond_3

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    aput v0, v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 536
    :cond_4
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aput p2, v0, v3

    .line 537
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    if-lez p2, :cond_5

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v3

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    aput v0, v2, v4

    .line 538
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v0, v0, v4

    if-lez v0, :cond_6

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    aput v0, v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 537
    goto :goto_2

    :cond_6
    move v0, v1

    .line 538
    goto :goto_3
.end method

.method public size(I)I
    .locals 1
    .parameter "layer"

    .prologue
    .line 573
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2
    .parameter "layer"

    .prologue
    .line 135
    const/4 v0, 0x0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(III)Ljava/lang/String;
    .locals 6
    .parameter "layer"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 115
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v4, v5, p1

    .line 118
    .local v4, strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    move v2, p2

    .local v2, i:I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 119
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 120
    .local v3, ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    iget-object v5, v3, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v3           #ss:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 124
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v4           #strLayer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/StrSegment;>;"
    :goto_1
    return-object v5

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, ex:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1
.end method
