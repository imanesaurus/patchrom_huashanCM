.class public final Lcom/android/inputmethod/latin/makedict/FusionDictionary;
.super Ljava/lang/Object;
.source "FusionDictionary.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/makedict/FusionDictionary$1;,
        Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;,
        Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroupComparator;,
        Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;,
        Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;,
        Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;,
        Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/android/inputmethod/latin/makedict/Word;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static ARRAYS_ARE_EQUAL:I

.field private static CHARACTER_NOT_FOUND:I

.field private static final CHARGROUP_COMPARATOR:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroupComparator;


# instance fields
.field public final mOptions:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;

.field public final mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->$assertionsDisabled:Z

    .line 479
    sput v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->ARRAYS_ARE_EQUAL:I

    .line 520
    new-instance v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroupComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroupComparator;-><init>(Lcom/android/inputmethod/latin/makedict/FusionDictionary$1;)V

    sput-object v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->CHARGROUP_COMPARATOR:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroupComparator;

    .line 534
    const/4 v0, -0x1

    sput v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->CHARACTER_NOT_FOUND:I

    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;)V
    .locals 0
    .parameter "root"
    .parameter "options"

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .line 272
    iput-object p2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mOptions:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;

    .line 273
    return-void
.end method

.method private add([IILjava/util/ArrayList;ZZ)V
    .locals 27
    .parameter "word"
    .parameter "frequency"
    .parameter
    .parameter "isNotAWord"
    .parameter "isBlacklistEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p3, shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    sget-boolean v7, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-ltz p2, :cond_0

    const/16 v7, 0xff

    move/from16 v0, p2

    if-le v0, v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 384
    :cond_1
    move-object/from16 v0, p1

    array-length v7, v0

    const/16 v8, 0x30

    if-lt v7, v8, :cond_2

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring a word that is too long: word.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->w(Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 389
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    move-object/from16 v23, v0

    .line 390
    .local v23, currentNode:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    const/16 v22, 0x0

    .line 392
    .local v22, charIndex:I
    const/4 v3, 0x0

    .line 393
    .local v3, currentGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    const/16 v24, 0x0

    .line 394
    .local v24, differentCharIndex:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    aget v8, p1, v22

    invoke-static {v7, v8}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->findIndexOfChar(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;I)I

    move-result v26

    .line 395
    .local v26, nodeIndex:I
    :goto_1
    sget v7, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->CHARACTER_NOT_FOUND:I

    move/from16 v0, v26

    if-eq v7, v0, :cond_3

    .line 396
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #currentGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    check-cast v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .line 397
    .restart local v3       #currentGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    iget-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v7, v0, v1}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->compareArrays([I[II)I

    move-result v24

    .line 398
    sget v7, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->ARRAYS_ARE_EQUAL:I

    move/from16 v0, v24

    if-eq v7, v0, :cond_4

    iget-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v7, v7

    move/from16 v0, v24

    if-ge v0, v7, :cond_4

    .line 407
    :cond_3
    const/4 v7, -0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_5

    .line 409
    aget v7, p1, v22

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->findInsertionIndex(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;I)I

    move-result v25

    .line 410
    .local v25, insertionIndex:I
    new-instance v2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    move-object/from16 v0, p1

    array-length v7, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v3

    .end local v3           #currentGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    const/4 v5, 0x0

    move-object/from16 v4, p3

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;IZZ)V

    .line 413
    .local v2, newGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v7, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 400
    .end local v2           #newGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    .end local v25           #insertionIndex:I
    .restart local v3       #currentGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    :cond_4
    iget-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    if-eqz v7, :cond_3

    .line 401
    iget-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v7, v7

    add-int v22, v22, v7

    .line 402
    move-object/from16 v0, p1

    array-length v7, v0

    move/from16 v0, v22

    if-ge v0, v7, :cond_3

    .line 403
    iget-object v0, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    move-object/from16 v23, v0

    .line 404
    aget v7, p1, v22

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->findIndexOfChar(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;I)I

    move-result v26

    goto :goto_1

    .line 417
    :cond_5
    iget-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v7, v7

    move/from16 v0, v24

    if-ne v0, v7, :cond_7

    .line 418
    add-int v7, v22, v24

    move-object/from16 v0, p1

    array-length v8, v0

    if-lt v7, v8, :cond_6

    .line 422
    const/4 v6, 0x0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->update(ILjava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    goto/16 :goto_0

    .line 427
    :cond_6
    new-instance v4, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    add-int v7, v22, v24

    move-object/from16 v0, p1

    array-length v8, v0

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v6, p3

    move/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;IZZ)V

    .line 431
    .local v4, newNode:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    new-instance v7, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-direct {v7}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;-><init>()V

    iput-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .line 432
    iget-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    iget-object v7, v7, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 435
    .end local v4           #newNode:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    :cond_7
    if-nez v24, :cond_b

    .line 438
    const/4 v8, 0x0

    iget-boolean v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsNotAWord:Z

    if-eqz v7, :cond_9

    if-eqz p4, :cond_9

    const/4 v9, 0x1

    :goto_2
    iget-boolean v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsBlacklistEntry:Z

    if-nez v7, :cond_8

    if-eqz p5, :cond_a

    :cond_8
    const/4 v10, 0x1

    :goto_3
    move-object v5, v3

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->update(ILjava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    :cond_a
    const/4 v10, 0x0

    goto :goto_3

    .line 444
    :cond_b
    new-instance v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-direct {v13}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;-><init>()V

    .line 445
    .local v13, newChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    new-instance v5, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    iget-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    iget-object v8, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v8, v8

    move/from16 v0, v24

    invoke-static {v7, v0, v8}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v6

    iget-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    iget-object v8, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    iget v9, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    iget-boolean v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsNotAWord:Z

    iget-boolean v11, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsBlacklistEntry:Z

    iget-object v12, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-direct/range {v5 .. v12}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;IZZLcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)V

    .line 451
    .local v5, newOldWord:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    iget-object v7, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    add-int v7, v22, v24

    move-object/from16 v0, p1

    array-length v8, v0

    if-lt v7, v8, :cond_c

    .line 455
    new-instance v6, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    iget-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    const/4 v8, 0x0

    move/from16 v0, v24

    invoke-static {v7, v8, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v8, p3

    move/from16 v10, p2

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v6 .. v13}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;IZZLcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)V

    .line 472
    .local v6, newParent:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    :goto_4
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 460
    .end local v6           #newParent:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    :cond_c
    new-instance v6, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    iget-object v7, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    const/4 v8, 0x0

    move/from16 v0, v24

    invoke-static {v7, v8, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;IZZLcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)V

    .line 464
    .restart local v6       #newParent:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    new-instance v14, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    add-int v7, v22, v24

    move-object/from16 v0, p1

    array-length v8, v0

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v15

    const/16 v17, 0x0

    move-object/from16 v16, p3

    move/from16 v18, p2

    move/from16 v19, p4

    move/from16 v20, p5

    invoke-direct/range {v14 .. v20}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;IZZ)V

    .line 468
    .local v14, newWord:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    add-int v7, v22, v24

    aget v7, p1, v7

    iget-object v8, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    aget v8, v8, v24

    if-le v7, v8, :cond_d

    const/16 v21, 0x1

    .line 470
    .local v21, addIndex:I
    :goto_5
    iget-object v7, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v7, v0, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 468
    .end local v21           #addIndex:I
    :cond_d
    const/16 v21, 0x0

    goto :goto_5
.end method

.method private static compareArrays([I[II)I
    .locals 3
    .parameter "src"
    .parameter "dst"
    .parameter "dstOffset"

    .prologue
    .line 499
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 500
    add-int v1, p2, v0

    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 504
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 501
    .restart local v0       #i:I
    :cond_1
    aget v1, p0, v0

    add-int v2, p2, v0

    aget v2, p1, v2

    if-ne v1, v2, :cond_0

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_2
    array-length v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_3

    array-length v0, p0

    goto :goto_1

    .line 504
    :cond_3
    sget v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->ARRAYS_ARE_EQUAL:I

    goto :goto_1
.end method

.method public static countCharGroups(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)I
    .locals 5
    .parameter "node"

    .prologue
    .line 601
    iget-object v4, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 602
    .local v2, nodeSize:I
    move v3, v2

    .line 603
    .local v3, size:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 604
    iget-object v4, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .line 605
    .local v0, group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    iget-object v4, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    if-eqz v4, :cond_0

    .line 606
    iget-object v4, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-static {v4}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->countCharGroups(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)I

    move-result v4

    add-int/2addr v3, v4

    .line 603
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 608
    .end local v0           #group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    :cond_1
    return v3
.end method

.method private static findIndexOfChar(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;I)I
    .locals 3
    .parameter "node"
    .parameter "character"

    .prologue
    .line 544
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->findInsertionIndex(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;I)I

    move-result v0

    .line 545
    .local v0, insertionIndex:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    sget v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->CHARACTER_NOT_FOUND:I

    .line 546
    .end local v0           #insertionIndex:I
    :cond_0
    :goto_0
    return v0

    .restart local v0       #insertionIndex:I
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    iget-object v1, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq p1, v1, :cond_0

    sget v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->CHARACTER_NOT_FOUND:I

    goto :goto_0
.end method

.method private static findInsertionIndex(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;I)I
    .locals 9
    .parameter "node"
    .parameter "character"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 526
    iget-object v7, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    .line 527
    .local v7, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;>;"
    new-instance v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v4

    move-object v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;IZZ)V

    .line 530
    .local v0, reference:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    sget-object v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->CHARGROUP_COMPARATOR:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroupComparator;

    invoke-static {v7, v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v8

    .line 531
    .local v8, result:I
    if-ltz v8, :cond_0

    .end local v8           #result:I
    :goto_0
    return v8

    .restart local v8       #result:I
    :cond_0
    neg-int v1, v8

    add-int/lit8 v8, v1, -0x1

    goto :goto_0
.end method

.method public static findWordInTree(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    .locals 9
    .parameter "node"
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 554
    const/4 v3, 0x0

    .local v3, index:I
    move-object v0, v6

    .line 555
    check-cast v0, Ljava/lang/StringBuilder;

    .line 558
    .local v0, checker:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    .line 560
    .local v1, codePointCountInS:I
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->findIndexOfChar(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;I)I

    move-result v4

    .line 561
    .local v4, indexOfGroup:I
    sget v7, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->CHARACTER_NOT_FOUND:I

    if-ne v7, v4, :cond_2

    .line 581
    :cond_1
    :goto_0
    return-object v6

    .line 562
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .line 564
    .local v2, currentGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    iget-object v8, v2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v8, v8

    if-lt v7, v8, :cond_1

    .line 565
    move v5, v3

    .line 566
    .local v5, newIndex:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_3

    sub-int v7, v5, v3

    iget-object v8, v2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 567
    iget-object v7, v2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    sub-int v8, v5, v3

    aget v7, v7, v8

    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 568
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 570
    :cond_3
    move v3, v5

    .line 573
    if-ge v3, v1, :cond_4

    .line 574
    iget-object p0, v2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .line 576
    :cond_4
    if-eqz p0, :cond_5

    if-lt v3, v1, :cond_0

    .line 578
    :cond_5
    if-lt v3, v1, :cond_1

    .line 579
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->isTerminal()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, v2

    .line 581
    goto :goto_0
.end method

.method private static getCodePoints(Ljava/lang/String;)[I
    .locals 8
    .parameter "word"

    .prologue
    const/4 v7, 0x0

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 286
    .local v0, characters:[C
    array-length v4, v0

    .line 287
    .local v4, length:I
    invoke-static {v0, v7, v4}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v6

    new-array v2, v6, [I

    .line 288
    .local v2, codePoints:[I
    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 289
    .local v1, codePoint:I
    const/4 v3, 0x0

    .line 290
    .local v3, dsti:I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 291
    .local v5, srci:I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 292
    aput v1, v2, v3

    .line 293
    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 291
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 295
    :cond_0
    aput v1, v2, v3

    .line 296
    return-object v2
.end method

.method private static hasBigramsInternal(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)Z
    .locals 5
    .parameter "node"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 631
    if-nez p0, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v2

    .line 632
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 633
    iget-object v4, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .line 634
    .local v0, group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    iget-object v4, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 635
    :cond_2
    iget-object v4, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-static {v4}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->hasBigramsInternal(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_0

    .line 632
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;ILjava/util/ArrayList;Z)V
    .locals 6
    .parameter "word"
    .parameter "frequency"
    .parameter
    .parameter "isNotAWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p3, shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    invoke-static {p1}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->getCodePoints(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->add([IILjava/util/ArrayList;ZZ)V

    .line 315
    return-void
.end method

.method public hasBigrams()Z
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-static {v0}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->hasBigramsInternal(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/inputmethod/latin/makedict/Word;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    new-instance v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;

    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    iget-object v1, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public setBigram(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->findWordInTree(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    move-result-object v6

    .line 356
    .local v6, charGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    if-eqz v6, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-static {v0, p2}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->findWordInTree(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    move-result-object v7

    .line 358
    .local v7, charGroup2:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    if-nez v7, :cond_0

    .line 359
    invoke-static {p2}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->getCodePoints(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->add([IILjava/util/ArrayList;ZZ)V

    .line 362
    :cond_0
    invoke-virtual {v6, p2, p3}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->addBigram(Ljava/lang/String;I)V

    .line 366
    return-void

    .line 364
    .end local v7           #charGroup2:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "First word of bigram not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
