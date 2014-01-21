.class public final Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;
.super Ljava/lang/Object;
.source "BinaryDictInputOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;,
        Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;,
        Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CHARACTER_BUFFER:[I

.field private static sGetWordBuffer:[I

.field private static wordCache:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x30

    .line 46
    const-class v0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->$assertionsDisabled:Z

    .line 1233
    new-array v0, v1, [I

    sput-object v0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->CHARACTER_BUFFER:[I

    .line 1343
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->wordCache:Ljava/util/TreeMap;

    .line 1375
    new-array v0, v1, [I

    sput-object v0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->sGetWordBuffer:[I

    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method private static checkFormatVersion(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I
    .locals 5
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 1551
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getFormatVersion(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v0

    .line 1552
    .local v0, version:I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-le v0, v4, :cond_1

    .line 1554
    :cond_0
    new-instance v1, Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This file has version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but this implementation does not support versions above "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1558
    :cond_1
    return v0
.end method

.method private static computeActualNodeSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Lcom/android/inputmethod/latin/makedict/FusionDictionary;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z
    .locals 13
    .parameter "node"
    .parameter "dict"
    .parameter "formatOptions"

    .prologue
    .line 528
    const/4 v2, 0x0

    .line 529
    .local v2, changed:Z
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupCountSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)I

    move-result v9

    .line 530
    .local v9, size:I
    iget-object v10, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .line 531
    .local v3, group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    iget v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    iget v11, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    add-int/2addr v11, v9

    if-eq v10, v11, :cond_0

    .line 532
    const/4 v2, 0x1

    .line 533
    iget v10, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    add-int/2addr v10, v9

    iput v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    .line 535
    :cond_0
    invoke-static {v3, p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupHeaderSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v4

    .line 536
    .local v4, groupSize:I
    invoke-virtual {v3}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->isTerminal()Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 537
    :cond_1
    iget-object v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    if-nez v10, :cond_3

    iget-boolean v10, p2, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v10, :cond_3

    .line 538
    add-int/lit8 v4, v4, 0x3

    .line 551
    :cond_2
    :goto_1
    iget-object v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getShortcutListSize(Ljava/util/ArrayList;)I

    move-result v10

    add-int/2addr v4, v10

    .line 552
    iget-object v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    .line 553
    iget-object v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    .line 554
    .local v1, bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    iget v10, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    add-int/2addr v10, v4

    add-int/2addr v10, v9

    add-int/lit8 v8, v10, 0x1

    .line 556
    .local v8, offsetBasePoint:I
    iget-object v10, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-static {p1, v10}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->findAddressOfWord(Lcom/android/inputmethod/latin/makedict/FusionDictionary;Ljava/lang/String;)I

    move-result v0

    .line 557
    .local v0, addressOfBigram:I
    sub-int v7, v0, v8

    .line 558
    .local v7, offset:I
    invoke-static {v7}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getByteSize(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v4, v10

    .line 559
    goto :goto_2

    .line 539
    .end local v0           #addressOfBigram:I
    .end local v1           #bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #offset:I
    .end local v8           #offsetBasePoint:I
    :cond_3
    iget-object v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    if-eqz v10, :cond_2

    .line 540
    iget v10, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    add-int/2addr v10, v4

    add-int v8, v10, v9

    .line 541
    .restart local v8       #offsetBasePoint:I
    iget-object v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    iget v10, v10, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    sub-int v7, v10, v8

    .line 543
    .restart local v7       #offset:I
    iget-object v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    iget v11, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    iget-object v12, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    iget v12, v12, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    sub-int/2addr v11, v12

    iput v11, v10, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedParentAddress:I

    .line 545
    iget-boolean v10, p2, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v10, :cond_4

    .line 546
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 548
    :cond_4
    invoke-static {v7}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getByteSize(I)I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 561
    .end local v7           #offset:I
    .end local v8           #offsetBasePoint:I
    :cond_5
    iput v4, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedSize:I

    .line 562
    add-int/2addr v9, v4

    .line 563
    goto/16 :goto_0

    .line 564
    .end local v3           #group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    .end local v4           #groupSize:I
    :cond_6
    iget-boolean v10, p2, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v10, :cond_7

    .line 565
    add-int/lit8 v9, v9, 0x3

    .line 567
    :cond_7
    iget v10, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    if-eq v10, v9, :cond_8

    .line 568
    iput v9, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 569
    const/4 v2, 0x1

    .line 571
    :cond_8
    return v2
.end method

.method private static computeAddresses(Lcom/android/inputmethod/latin/makedict/FusionDictionary;Ljava/util/ArrayList;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Ljava/util/ArrayList;
    .locals 12
    .parameter "dict"
    .parameter
    .parameter "formatOptions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;",
            ">;",
            "Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, flatNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .local v4, n:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    invoke-static {v4, p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->setNodeMaximumSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V

    goto :goto_0

    .line 622
    .end local v4           #n:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    :cond_0
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->stackNodes(Ljava/util/ArrayList;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v6

    .line 624
    .local v6, offset:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compressing the array addresses. Original size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 625
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(Recursively seen size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 627
    const/4 v8, 0x0

    .line 628
    .local v8, passes:I
    const/4 v1, 0x0

    .line 630
    .local v1, changesDone:Z
    :cond_1
    const/4 v1, 0x0

    .line 631
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .line 632
    .restart local v4       #n:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    iget v7, v4, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 633
    .local v7, oldNodeSize:I
    invoke-static {v4, p0, p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->computeActualNodeSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Lcom/android/inputmethod/latin/makedict/FusionDictionary;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z

    move-result v0

    .line 634
    .local v0, changed:Z
    iget v5, v4, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 635
    .local v5, newNodeSize:I
    if-ge v7, v5, :cond_2

    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Increased size ?!"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 636
    :cond_2
    or-int/2addr v1, v0

    .line 637
    goto :goto_1

    .line 638
    .end local v0           #changed:Z
    .end local v4           #n:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    .end local v5           #newNodeSize:I
    .end local v7           #oldNodeSize:I
    :cond_3
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->stackNodes(Ljava/util/ArrayList;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    .line 639
    add-int/lit8 v8, v8, 0x1

    .line 640
    const/16 v9, 0x18

    if-le v8, v9, :cond_4

    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Too many passes - probably a bug"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 641
    :cond_4
    if-nez v1, :cond_1

    .line 643
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .line 644
    .local v3, lastNode:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compression complete in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " passes."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 645
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "After address compression : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    iget v11, v3, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 648
    return-object p1
.end method

.method private static findAddressOfWord(Lcom/android/inputmethod/latin/makedict/FusionDictionary;Ljava/lang/String;)I
    .locals 1
    .parameter "dict"
    .parameter "word"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->findWordInTree(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    return v0
.end method

.method static flattenTree(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)Ljava/util/ArrayList;
    .locals 4
    .parameter "root"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->countCharGroups(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)I

    move-result v1

    .line 468
    .local v1, treeSize:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Counted nodes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 470
    .local v0, flatTree:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;>;"
    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->flattenTreeInner(Ljava/util/ArrayList;Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method private static flattenTreeInner(Ljava/util/ArrayList;Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;",
            ">;",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    .line 493
    .local v0, branches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 494
    .local v3, nodeSize:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .line 495
    .local v1, group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    iget-object v4, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    invoke-static {p0, v4}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->flattenTreeInner(Ljava/util/ArrayList;Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)Ljava/util/ArrayList;

    goto :goto_0

    .line 497
    .end local v1           #group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    :cond_1
    return-object p0
.end method

.method private static getByteSize(I)I
    .locals 2
    .parameter "address"

    .prologue
    .line 443
    sget-boolean v0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const v0, 0xffffff

    if-le p0, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 444
    :cond_0
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->hasChildrenAddress(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    const/4 v0, 0x0

    .line 451
    :goto_0
    return v0

    .line 446
    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    .line 447
    const/4 v0, 0x1

    goto :goto_0

    .line 448
    :cond_2
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_3

    .line 449
    const/4 v0, 0x2

    goto :goto_0

    .line 451
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static getCharGroupMaximumSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I
    .locals 2
    .parameter "group"
    .parameter "options"

    .prologue
    .line 358
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupHeaderSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v0

    .line 360
    .local v0, size:I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->isTerminal()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 361
    :cond_0
    add-int/lit8 v0, v0, 0x3

    .line 362
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getShortcutListSize(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 368
    :cond_1
    return v0
.end method

.method private static getChildrenAddressSize(ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I
    .locals 2
    .parameter "optionFlags"
    .parameter "formatOptions"

    .prologue
    const/4 v0, 0x3

    .line 1183
    iget-boolean v1, p1, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v1, :cond_0

    .line 1193
    :goto_0
    :sswitch_0
    return v0

    .line 1184
    :cond_0
    and-int/lit16 v1, p0, 0xc0

    sparse-switch v1, :sswitch_data_0

    .line 1193
    const/4 v0, 0x0

    goto :goto_0

    .line 1186
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1188
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1184
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getFormatVersion(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I
    .locals 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1537
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedShort()I

    move-result v0

    .line 1538
    .local v0, magic_v1:I
    const/16 v2, 0x78b1

    if-ne v2, v0, :cond_0

    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v2

    .line 1541
    :goto_0
    return v2

    .line 1539
    :cond_0
    shl-int/lit8 v2, v0, 0x10

    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedShort()I

    move-result v3

    add-int v1, v2, v3

    .line 1540
    .local v1, magic_v2:I
    const v2, -0x643ec502

    if-ne v2, v1, :cond_1

    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedShort()I

    move-result v2

    goto :goto_0

    .line 1541
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static getGroupCharactersSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;)I
    .locals 2
    .parameter "group"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharArraySize([I)I
    invoke-static {v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$000([I)I

    move-result v0

    .line 290
    .local v0, size:I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->hasSeveralChars()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 291
    :cond_0
    return v0
.end method

.method public static getGroupCountSize(I)I
    .locals 3
    .parameter "count"

    .prologue
    .line 300
    const/16 v0, 0x7f

    if-lt v0, p0, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    .line 302
    :cond_0
    const/16 v0, 0x7fff

    if-lt v0, p0, :cond_1

    .line 303
    const/4 v0, 0x2

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t have more than 32767 groups in a node (found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getGroupCountSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)I
    .locals 1
    .parameter "node"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupCountSize(I)I

    move-result v0

    return v0
.end method

.method private static getGroupHeaderSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I
    .locals 1
    .parameter "group"
    .parameter "options"

    .prologue
    .line 420
    invoke-static {p1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->supportsDynamicUpdate(Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupCharactersSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 424
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupCharactersSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getShortcutListSize(Ljava/util/ArrayList;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, shortcutList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    if-nez p0, :cond_1

    const/4 v2, 0x0

    .line 347
    :cond_0
    return v2

    .line 343
    :cond_1
    const/4 v2, 0x2

    .line 344
    .local v2, size:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    .line 345
    .local v1, shortcut:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    invoke-static {v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getShortcutSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private static getShortcutSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;)I
    .locals 6
    .parameter "shortcut"

    .prologue
    .line 324
    const/4 v3, 0x1

    .line 325
    .local v3, size:I
    iget-object v4, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    .line 326
    .local v4, word:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 327
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 328
    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 329
    .local v0, codePoint:I
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I
    invoke-static {v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$100(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 327
    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0

    .line 331
    .end local v0           #codePoint:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 332
    return v3
.end method

.method public static hasChildrenAddress(I)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 395
    const/high16 v0, -0x8000

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMovedGroup(ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z
    .locals 2
    .parameter "flags"
    .parameter "options"

    .prologue
    const/4 v0, 0x1

    .line 402
    iget-boolean v1, p1, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v1, :cond_0

    and-int/lit8 v1, p0, 0x40

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final makeBigramFlags(ZIIILjava/lang/String;)I
    .locals 8
    .parameter "more"
    .parameter "offset"
    .parameter "bigramFrequency"
    .parameter "unigramFrequency"
    .parameter "word"

    .prologue
    const/4 v6, 0x0

    .line 783
    if-eqz p0, :cond_0

    const/16 v5, 0x80

    move v7, v5

    :goto_0
    if-gez p1, :cond_1

    const/16 v5, 0x40

    :goto_1
    add-int v0, v7, v5

    .line 785
    .local v0, bigramFlags:I
    invoke-static {p1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getByteSize(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 796
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Strange offset size"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0           #bigramFlags:I
    :cond_0
    move v7, v6

    .line 783
    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    .line 787
    .restart local v0       #bigramFlags:I
    :pswitch_0
    or-int/lit8 v0, v0, 0x10

    .line 798
    :goto_2
    if-le p3, p2, :cond_2

    .line 799
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unigram freq is superior to bigram freq for \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\". Bigram freq is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", unigram freq for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->e(Ljava/lang/String;)V

    .line 802
    move p2, p3

    .line 827
    :cond_2
    rsub-int v5, p3, 0xff

    int-to-float v5, v5

    const/high16 v7, 0x4184

    div-float v4, v5, v7

    .line 830
    .local v4, stepSize:F
    add-int/lit8 v5, p3, 0x1

    int-to-float v5, v5

    const/high16 v7, 0x4000

    div-float v7, v4, v7

    add-float v3, v5, v7

    .line 831
    .local v3, firstStepStart:F
    int-to-float v5, p2

    sub-float/2addr v5, v3

    div-float/2addr v5, v4

    float-to-int v1, v5

    .line 837
    .local v1, discretizedFrequency:I
    if-lez v1, :cond_3

    move v2, v1

    .line 838
    .local v2, finalBigramFrequency:I
    :goto_3
    and-int/lit8 v5, v2, 0xf

    add-int/2addr v0, v5

    .line 839
    return v0

    .line 790
    .end local v1           #discretizedFrequency:I
    .end local v2           #finalBigramFrequency:I
    .end local v3           #firstStepStart:F
    .end local v4           #stepSize:F
    :pswitch_1
    or-int/lit8 v0, v0, 0x20

    .line 791
    goto :goto_2

    .line 793
    :pswitch_2
    or-int/lit8 v0, v0, 0x30

    .line 794
    goto :goto_2

    .restart local v1       #discretizedFrequency:I
    .restart local v3       #firstStepStart:F
    .restart local v4       #stepSize:F
    :cond_3
    move v2, v6

    .line 837
    goto :goto_3

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static makeCharGroupFlags(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;IILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)B
    .locals 4
    .parameter "group"
    .parameter "groupAddress"
    .parameter "childrenOffset"
    .parameter "formatOptions"

    .prologue
    .line 726
    const/4 v1, 0x0

    .line 727
    .local v1, flags:B
    iget-object v2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/16 v2, 0x20

    int-to-byte v1, v2

    .line 728
    :cond_0
    iget v2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    if-ltz v2, :cond_1

    .line 729
    or-int/lit8 v2, v1, 0x10

    int-to-byte v1, v2

    .line 731
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    if-eqz v2, :cond_8

    .line 732
    iget-boolean v2, p3, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    .line 734
    .local v0, byteSize:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 745
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Node with a strange address"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    .end local v0           #byteSize:I
    :cond_2
    invoke-static {p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getByteSize(I)I

    move-result v0

    goto :goto_0

    .line 736
    .restart local v0       #byteSize:I
    :pswitch_0
    or-int/lit8 v2, v1, 0x40

    int-to-byte v1, v2

    .line 750
    .end local v0           #byteSize:I
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 754
    or-int/lit8 v2, v1, 0x8

    int-to-byte v1, v2

    .line 756
    :cond_4
    iget-object v2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 760
    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    .line 762
    :cond_5
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsNotAWord:Z

    if-eqz v2, :cond_6

    .line 763
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 765
    :cond_6
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsBlacklistEntry:Z

    if-eqz v2, :cond_7

    .line 766
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 768
    :cond_7
    return v1

    .line 739
    .restart local v0       #byteSize:I
    :pswitch_1
    or-int/lit16 v2, v1, 0x80

    int-to-byte v1, v2

    .line 740
    goto :goto_1

    .line 742
    :pswitch_2
    or-int/lit16 v2, v1, 0xc0

    int-to-byte v1, v2

    .line 743
    goto :goto_1

    .line 747
    .end local v0           #byteSize:I
    :cond_8
    iget-boolean v2, p3, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v2, :cond_3

    .line 748
    or-int/lit16 v2, v1, 0xc0

    int-to-byte v1, v2

    goto :goto_1

    .line 734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static final makeOptionsValue(Lcom/android/inputmethod/latin/makedict/FusionDictionary;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I
    .locals 5
    .parameter "dictionary"
    .parameter "formatOptions"

    .prologue
    const/4 v3, 0x0

    .line 847
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mOptions:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;

    .line 848
    .local v1, options:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->hasBigrams()Z

    move-result v0

    .line 849
    .local v0, hasBigrams:Z
    iget-boolean v2, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;->mFrenchLigatureProcessing:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    :goto_0
    iget-boolean v4, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;->mGermanUmlautProcessing:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v4, v2

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    :goto_2
    add-int/2addr v2, v4

    iget-boolean v4, p1, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    :cond_0
    add-int/2addr v2, v3

    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private static final makeShortcutFlags(ZI)I
    .locals 2
    .parameter "more"
    .parameter "frequency"

    .prologue
    .line 863
    if-eqz p0, :cond_0

    const/16 v0, 0x80

    :goto_0
    and-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static populateOptions(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILjava/util/HashMap;)V
    .locals 3
    .parameter "buffer"
    .parameter "headerSize"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1603
    .local p2, options:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 1604
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->readString(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Ljava/lang/String;
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$600(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Ljava/lang/String;

    move-result-object v0

    .line 1605
    .local v0, key:Ljava/lang/String;
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->readString(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Ljava/lang/String;
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$600(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Ljava/lang/String;

    move-result-object v1

    .line 1606
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1608
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static readCharGroup(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Lcom/android/inputmethod/latin/makedict/CharGroupInfo;
    .locals 22
    .parameter "buffer"
    .parameter "originalGroupAddress"
    .parameter "options"

    .prologue
    .line 1236
    move/from16 v4, p1

    .line 1237
    .local v4, addressPointer:I
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v5

    .line 1238
    .local v5, flags:I
    add-int/lit8 v4, v4, 0x1

    .line 1240
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readParentAddress(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v8

    .line 1241
    .local v8, parentAddress:I
    invoke-static/range {p2 .. p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->supportsDynamicUpdate(Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1242
    add-int/lit8 v4, v4, 0x3

    .line 1246
    :cond_0
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_6

    .line 1247
    const/4 v15, 0x0

    .line 1248
    .local v15, index:I
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->readChar(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$500(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v14

    .line 1249
    .local v14, character:I
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I
    invoke-static {v14}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$100(I)I

    move-result v2

    add-int/2addr v4, v2

    move/from16 v16, v15

    .line 1250
    .end local v15           #index:I
    .local v16, index:I
    :goto_0
    const/4 v2, -0x1

    if-eq v2, v14, :cond_1

    .line 1254
    sget-object v2, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->CHARACTER_BUFFER:[I

    add-int/lit8 v15, v16, 0x1

    .end local v16           #index:I
    .restart local v15       #index:I
    aput v14, v2, v16

    .line 1255
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->readChar(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$500(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v14

    .line 1256
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I
    invoke-static {v14}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$100(I)I

    move-result v2

    add-int/2addr v4, v2

    move/from16 v16, v15

    .end local v15           #index:I
    .restart local v16       #index:I
    goto :goto_0

    .line 1258
    :cond_1
    sget-object v2, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->CHARACTER_BUFFER:[I

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v6

    .line 1265
    .end local v16           #index:I
    .local v6, characters:[I
    :goto_1
    and-int/lit8 v2, v5, 0x10

    if-eqz v2, :cond_7

    .line 1266
    add-int/lit8 v4, v4, 0x1

    .line 1267
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v7

    .line 1271
    .local v7, frequency:I
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readChildrenAddress(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v9

    .line 1272
    .local v9, childrenAddress:I
    const/high16 v2, -0x8000

    if-eq v9, v2, :cond_2

    .line 1273
    add-int/2addr v9, v4

    .line 1275
    :cond_2
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getChildrenAddressSize(ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v2

    add-int/2addr v4, v2

    .line 1276
    const/4 v10, 0x0

    .line 1277
    .local v10, shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_4

    .line 1278
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v18

    .line 1279
    .local v18, pointerBefore:I
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .restart local v10       #shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedShort()I

    .line 1282
    :cond_3
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v20

    .line 1283
    .local v20, targetFlags:I
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->readString(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$600(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Ljava/lang/String;

    move-result-object v21

    .line 1284
    .local v21, word:Ljava/lang/String;
    new-instance v2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    and-int/lit8 v3, v20, 0xf

    move-object/from16 v0, v21

    invoke-direct {v2, v0, v3}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    move/from16 v0, v20

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_3

    .line 1288
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v2

    sub-int v2, v2, v18

    add-int/2addr v4, v2

    .line 1290
    .end local v18           #pointerBefore:I
    .end local v20           #targetFlags:I
    .end local v21           #word:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    .line 1291
    .local v11, bigrams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;"
    and-int/lit8 v2, v5, 0x4

    if-eqz v2, :cond_9

    .line 1292
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #bigrams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .restart local v11       #bigrams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;"
    :cond_5
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v13

    .line 1295
    .local v13, bigramFlags:I
    add-int/lit8 v4, v4, 0x1

    .line 1296
    and-int/lit8 v2, v13, 0x40

    if-nez v2, :cond_8

    const/16 v19, 0x1

    .line 1298
    .local v19, sign:I
    :goto_3
    move v12, v4

    .line 1299
    .local v12, bigramAddress:I
    and-int/lit8 v2, v13, 0x30

    sparse-switch v2, :sswitch_data_0

    .line 1315
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Has bigrams with no address"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1260
    .end local v6           #characters:[I
    .end local v7           #frequency:I
    .end local v9           #childrenAddress:I
    .end local v10           #shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    .end local v11           #bigrams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;"
    .end local v12           #bigramAddress:I
    .end local v13           #bigramFlags:I
    .end local v14           #character:I
    .end local v19           #sign:I
    :cond_6
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->readChar(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$500(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v14

    .line 1261
    .restart local v14       #character:I
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I
    invoke-static {v14}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$100(I)I

    move-result v2

    add-int/2addr v4, v2

    .line 1262
    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    aput v14, v6, v2

    .restart local v6       #characters:[I
    goto/16 :goto_1

    .line 1269
    :cond_7
    const/4 v7, -0x1

    .restart local v7       #frequency:I
    goto :goto_2

    .line 1296
    .restart local v9       #childrenAddress:I
    .restart local v10       #shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    .restart local v11       #bigrams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;"
    .restart local v13       #bigramFlags:I
    :cond_8
    const/16 v19, -0x1

    goto :goto_3

    .line 1301
    .restart local v12       #bigramAddress:I
    .restart local v19       #sign:I
    :sswitch_0
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v2

    mul-int v2, v2, v19

    add-int/2addr v12, v2

    .line 1302
    add-int/lit8 v4, v4, 0x1

    .line 1317
    :goto_4
    new-instance v2, Lcom/android/inputmethod/latin/makedict/PendingAttribute;

    and-int/lit8 v3, v13, 0xf

    invoke-direct {v2, v3, v12}, Lcom/android/inputmethod/latin/makedict/PendingAttribute;-><init>(II)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    and-int/lit16 v2, v13, 0x80

    if-nez v2, :cond_5

    .line 1322
    .end local v12           #bigramAddress:I
    .end local v13           #bigramFlags:I
    .end local v19           #sign:I
    :cond_9
    new-instance v2, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;-><init>(III[IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v2

    .line 1305
    .restart local v12       #bigramAddress:I
    .restart local v13       #bigramFlags:I
    .restart local v19       #sign:I
    :sswitch_1
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedShort()I

    move-result v2

    mul-int v2, v2, v19

    add-int/2addr v12, v2

    .line 1306
    add-int/lit8 v4, v4, 0x2

    .line 1307
    goto :goto_4

    .line 1309
    :sswitch_2
    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface/range {p0 .. p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedShort()I

    move-result v3

    add-int v17, v2, v3

    .line 1311
    .local v17, offset:I
    mul-int v2, v19, v17

    add-int/2addr v12, v2

    .line 1312
    add-int/lit8 v4, v4, 0x3

    .line 1313
    goto :goto_4

    .line 1299
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public static readCharGroupCount(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I
    .locals 3
    .parameter "buffer"

    .prologue
    .line 1330
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v0

    .line 1331
    .local v0, msb:I
    const/16 v1, 0x7f

    if-lt v1, v0, :cond_0

    .line 1334
    .end local v0           #msb:I
    :goto_0
    return v0

    .restart local v0       #msb:I
    :cond_0
    and-int/lit8 v1, v0, 0x7f

    shl-int/lit8 v1, v1, 0x8

    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private static readChildrenAddress(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I
    .locals 3
    .parameter "buffer"
    .parameter "optionFlags"
    .parameter "options"

    .prologue
    const/high16 v1, -0x8000

    .line 1199
    iget-boolean v2, p2, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v2, :cond_2

    .line 1200
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedInt24()I

    move-result v0

    .line 1201
    .local v0, address:I
    if-nez v0, :cond_1

    move v0, v1

    .line 1218
    .end local v0           #address:I
    :cond_0
    :goto_0
    return v0

    .line 1202
    .restart local v0       #address:I
    :cond_1
    const/high16 v1, 0x80

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 1203
    const v1, 0x7fffff

    and-int/2addr v1, v0

    neg-int v0, v1

    goto :goto_0

    .line 1209
    .end local v0           #address:I
    :cond_2
    and-int/lit16 v2, p1, 0xc0

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 1218
    goto :goto_0

    .line 1211
    :sswitch_0
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 1213
    :sswitch_1
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedShort()I

    move-result v0

    goto :goto_0

    .line 1215
    :sswitch_2
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedInt24()I

    move-result v0

    goto :goto_0

    .line 1209
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch
.end method

.method public static readHeader(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;
    .locals 10
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1569
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->checkFormatVersion(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v4

    .line 1570
    .local v4, version:I
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedShort()I

    move-result v3

    .line 1572
    .local v3, optionsFlags:I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1574
    .local v0, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 1575
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v2

    .line 1582
    .local v2, headerSize:I
    :goto_0
    if-gez v2, :cond_1

    .line 1583
    new-instance v5, Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;

    const-string v6, "header size can\'t be negative."

    invoke-direct {v5, v6}, Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1577
    .end local v2           #headerSize:I
    :cond_0
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readInt()I

    move-result v2

    .line 1578
    .restart local v2       #headerSize:I
    invoke-static {p0, v2, v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->populateOptions(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILjava/util/HashMap;)V

    .line 1579
    invoke-interface {p0, v2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    goto :goto_0

    .line 1586
    :cond_1
    new-instance v1, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;

    new-instance v9, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2

    move v8, v6

    :goto_1
    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    invoke-direct {v9, v0, v8, v5}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;-><init>(Ljava/util/HashMap;ZZ)V

    new-instance v5, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_4

    :goto_3
    invoke-direct {v5, v4, v6}, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;-><init>(IZ)V

    invoke-direct {v1, v2, v9, v5}, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;-><init>(ILcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V

    .line 1592
    .local v1, header:Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;
    return-object v1

    .end local v1           #header:Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;
    :cond_2
    move v8, v7

    .line 1586
    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    move v6, v7

    goto :goto_3
.end method

.method private static readParentAddress(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I
    .locals 3
    .parameter "buffer"
    .parameter "formatOptions"

    .prologue
    .line 1224
    invoke-static {p1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->supportsDynamicUpdate(Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1225
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedInt24()I

    move-result v0

    .line 1226
    .local v0, parentAddress:I
    const/high16 v2, 0x80

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    .line 1227
    .local v1, sign:I
    :goto_0
    const v2, 0x7fffff

    and-int/2addr v2, v0

    mul-int/2addr v2, v1

    .line 1229
    .end local v0           #parentAddress:I
    .end local v1           #sign:I
    :goto_1
    return v2

    .line 1226
    .restart local v0       #parentAddress:I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1229
    .end local v0           #parentAddress:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static reconstructBigramFrequency(II)I
    .locals 5
    .parameter "unigramFrequency"
    .parameter "bigramFrequency"

    .prologue
    .line 1701
    rsub-int v2, p0, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x4184

    div-float v1, v2, v3

    .line 1703
    .local v1, stepSize:F
    int-to-float v2, p0

    int-to-float v3, p1

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float v0, v2, v3

    .line 1705
    .local v0, resultFreqFloat:F
    float-to-int v2, v0

    return v2
.end method

.method private static setNodeMaximumSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V
    .locals 5
    .parameter "node"
    .parameter "options"

    .prologue
    .line 379
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupCountSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)I

    move-result v3

    .line 380
    .local v3, size:I
    iget-object v4, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .line 381
    .local v0, g:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getCharGroupMaximumSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v1

    .line 382
    .local v1, groupSize:I
    iput v1, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedSize:I

    .line 383
    add-int/2addr v3, v1

    .line 384
    goto :goto_0

    .line 385
    .end local v0           #g:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    .end local v1           #groupSize:I
    :cond_0
    iget-boolean v4, p1, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v4, :cond_1

    .line 386
    add-int/lit8 v3, v3, 0x3

    .line 388
    :cond_1
    iput v3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 389
    return-void
.end method

.method private static stackNodes(Ljava/util/ArrayList;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I
    .locals 10
    .parameter
    .parameter "formatOptions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;",
            ">;",
            "Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;",
            ")I"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, flatNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;>;"
    const/4 v6, 0x0

    .line 584
    .local v6, nodeOffset:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .line 585
    .local v5, n:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    iput v6, v5, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    .line 586
    invoke-static {v5}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupCountSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)I

    move-result v1

    .line 587
    .local v1, groupCountSize:I
    const/4 v2, 0x0

    .line 588
    .local v2, groupOffset:I
    iget-object v8, v5, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .line 589
    .local v0, g:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    add-int v8, v1, v6

    add-int/2addr v8, v2

    iput v8, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    .line 590
    iget v8, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedSize:I

    add-int/2addr v2, v8

    goto :goto_1

    .line 592
    .end local v0           #g:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    :cond_0
    add-int v9, v1, v2

    iget-boolean v8, p1, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x3

    :goto_2
    add-int v7, v9, v8

    .line 595
    .local v7, nodeSize:I
    iget v8, v5, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    if-eq v7, v8, :cond_2

    .line 596
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Bug : Stored and computed node size differ"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 592
    .end local v7           #nodeSize:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 598
    .restart local v7       #nodeSize:I
    :cond_2
    iget v8, v5, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    add-int/2addr v6, v8

    .line 599
    goto :goto_0

    .line 600
    .end local v1           #groupCountSize:I
    .end local v2           #groupOffset:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #n:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    .end local v7           #nodeSize:I
    :cond_3
    return v6
.end method

.method public static supportsDynamicUpdate(Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z
    .locals 2
    .parameter "options"

    .prologue
    .line 409
    iget v0, p0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeDictionaryBinary(Ljava/io/OutputStream;Lcom/android/inputmethod/latin/makedict/FusionDictionary;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V
    .locals 22
    .parameter "destination"
    .parameter "dict"
    .parameter "formatOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
        }
    .end annotation

    .prologue
    .line 1090
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mVersion:I

    move/from16 v18, v0

    .line 1091
    .local v18, version:I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 1093
    :cond_0
    new-instance v19, Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Requested file format version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", but this implementation only supports versions "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " through "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1099
    :cond_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v19, 0x100

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1102
    .local v7, headerBuffer:Ljava/io/ByteArrayOutputStream;
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 1104
    const/16 v19, -0x65

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1105
    const/16 v19, -0x3f

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1106
    const/16 v19, 0x3a

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1107
    const/16 v19, -0x2

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1109
    shr-int/lit8 v19, v18, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1110
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1119
    :goto_0
    invoke-static/range {p1 .. p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->makeOptionsValue(Lcom/android/inputmethod/latin/makedict/FusionDictionary;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v15

    .line 1120
    .local v15, options:I
    shr-int/lit8 v19, v15, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1121
    and-int/lit16 v0, v15, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1122
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 1123
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    .line 1125
    .local v8, headerSizeOffset:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 1126
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1125
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1113
    .end local v8           #headerSizeOffset:I
    .end local v9           #i:I
    .end local v15           #options:I
    :cond_2
    const/16 v19, 0x78

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1114
    const/16 v19, -0x4f

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1116
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1129
    .restart local v8       #headerSizeOffset:I
    .restart local v9       #i:I
    .restart local v15       #options:I
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mOptions:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;->mAttributes:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1130
    .local v12, key:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mOptions:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;->mAttributes:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1131
    .local v17, value:Ljava/lang/String;
    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    invoke-static {v7, v12}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$400(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1132
    move-object/from16 v0, v17

    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    invoke-static {v7, v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$400(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 1134
    .end local v12           #key:Ljava/lang/String;
    .end local v17           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v16

    .line 1135
    .local v16, size:I
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1137
    .local v4, bytes:[B
    shr-int/lit8 v19, v16, 0x18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v4, v8

    .line 1138
    add-int/lit8 v19, v8, 0x1

    shr-int/lit8 v20, v16, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v19

    .line 1139
    add-int/lit8 v19, v8, 0x2

    shr-int/lit8 v20, v16, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v19

    .line 1140
    add-int/lit8 v19, v8, 0x3

    shr-int/lit8 v20, v16, 0x0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v19

    .line 1141
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1146
    .end local v4           #bytes:[B
    .end local v8           #headerSizeOffset:I
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v16           #size:I
    :goto_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1149
    const-string v19, "Flattening the tree..."

    invoke-static/range {v19 .. v19}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->flattenTree(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1152
    .local v6, flatNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;>;"
    const-string v19, "Computing addresses..."

    invoke-static/range {v19 .. v19}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v6, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->computeAddresses(Lcom/android/inputmethod/latin/makedict/FusionDictionary;Ljava/util/ArrayList;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Ljava/util/ArrayList;

    .line 1154
    const-string v19, "Checking array..."

    invoke-static/range {v19 .. v19}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .line 1159
    .local v13, lastNode:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    iget v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v19, v0

    iget v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    move/from16 v20, v0

    add-int v3, v19, v20

    .line 1160
    .local v3, bufferSize:I
    new-array v2, v3, [B

    .line 1161
    .local v2, buffer:[B
    const/4 v11, 0x0

    .line 1163
    .local v11, index:I
    const-string v19, "Writing file..."

    invoke-static/range {v19 .. v19}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 1164
    const/4 v5, 0x0

    .line 1165
    .local v5, dataEndOffset:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .line 1166
    .local v14, n:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v2, v14, v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->writePlacedNode(Lcom/android/inputmethod/latin/makedict/FusionDictionary;[BLcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v5

    goto :goto_4

    .line 1143
    .end local v2           #buffer:[B
    .end local v3           #bufferSize:I
    .end local v5           #dataEndOffset:I
    .end local v6           #flatNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    .end local v13           #lastNode:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    .end local v14           #n:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_3

    .line 1171
    .restart local v2       #buffer:[B
    .restart local v3       #bufferSize:I
    .restart local v5       #dataEndOffset:I
    .restart local v6       #flatNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #index:I
    .restart local v13       #lastNode:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 1173
    invoke-virtual/range {p0 .. p0}, Ljava/io/OutputStream;->close()V

    .line 1174
    const-string v19, "Done"

    invoke-static/range {v19 .. v19}, Lcom/android/inputmethod/latin/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 1175
    return-void
.end method

.method private static final writeParentAddress([BIILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I
    .locals 4
    .parameter "buffer"
    .parameter "index"
    .parameter "address"
    .parameter "formatOptions"

    .prologue
    const/4 v1, 0x0

    .line 869
    invoke-static {p3}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->supportsDynamicUpdate(Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    if-nez p2, :cond_1

    .line 871
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p1, 0x2

    aput-byte v1, p0, v3

    aput-byte v1, p0, v2

    aput-byte v1, p0, p1

    .line 880
    :goto_0
    add-int/lit8 p1, p1, 0x3

    .line 882
    .end local p1
    :cond_0
    return p1

    .line 873
    .restart local p1
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 874
    .local v0, absAddress:I
    sget-boolean v2, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    const v2, 0x7fffff

    if-le v0, v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 875
    :cond_2
    if-gez p2, :cond_3

    const/16 v1, 0x80

    :cond_3
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 877
    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 878
    add-int/lit8 v1, p1, 0x2

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    goto :goto_0
.end method

.method private static writePlacedNode(Lcom/android/inputmethod/latin/makedict/FusionDictionary;[BLcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I
    .locals 32
    .parameter "dict"
    .parameter "buffer"
    .parameter "node"
    .parameter "formatOptions"

    .prologue
    .line 900
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v17, v0

    .line 902
    .local v17, index:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 903
    .local v15, groupCount:I
    invoke-static/range {p2 .. p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupCountSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)I

    move-result v11

    .line 904
    .local v11, countSize:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedParentAddress:I

    move/from16 v21, v0

    .line 905
    .local v21, parentAddress:I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v0, v11, :cond_0

    .line 906
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .local v18, index:I
    int-to-byte v0, v15

    move/from16 v29, v0

    aput-byte v29, p1, v17

    move/from16 v17, v18

    .line 915
    .end local v18           #index:I
    .restart local v17       #index:I
    :goto_0
    move/from16 v14, v17

    .line 916
    .local v14, groupAddress:I
    const/16 v16, 0x0

    .local v16, i:I
    move/from16 v18, v17

    .end local v17           #index:I
    .restart local v18       #index:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v15, :cond_d

    .line 917
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .line 918
    .local v13, group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    iget v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    move/from16 v29, v0

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Bug: write index is not the same as the cached address of the group : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " <> "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 907
    .end local v13           #group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    .end local v14           #groupAddress:I
    .end local v16           #i:I
    .end local v18           #index:I
    .restart local v17       #index:I
    :cond_0
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v0, v11, :cond_1

    .line 910
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    shr-int/lit8 v29, v15, 0x8

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, p1, v17

    .line 911
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    and-int/lit16 v0, v15, 0xff

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, p1, v18

    goto :goto_0

    .line 913
    :cond_1
    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Strange size from getGroupCountSize : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 921
    .end local v17           #index:I
    .restart local v13       #group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    .restart local v14       #groupAddress:I
    .restart local v16       #i:I
    .restart local v18       #index:I
    :cond_2
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupHeaderSize(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v29

    add-int v14, v14, v29

    .line 928
    iget v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    move/from16 v29, v0

    if-ltz v29, :cond_3

    add-int/lit8 v14, v14, 0x1

    .line 929
    :cond_3
    iget-object v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    move-object/from16 v29, v0

    if-nez v29, :cond_6

    const/high16 v10, -0x8000

    .line 932
    .local v10, childrenOffset:I
    :goto_2
    move-object/from16 v0, p3

    invoke-static {v13, v14, v10, v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->makeCharGroupFlags(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;IILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)B

    move-result v12

    .line 933
    .local v12, flags:B
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aput-byte v12, p1, v18

    .line 935
    if-nez v21, :cond_7

    .line 936
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v21

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->writeParentAddress([BIILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v17

    .line 943
    :goto_3
    iget-object v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v17

    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->writeCharArray([I[BI)I
    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$200([I[BI)I

    move-result v17

    .line 944
    invoke-virtual {v13}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->hasSeveralChars()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 945
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    const/16 v29, 0x1f

    aput-byte v29, p1, v17

    move/from16 v17, v18

    .line 947
    .end local v18           #index:I
    .restart local v17       #index:I
    :cond_4
    iget v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    move/from16 v29, v0

    if-ltz v29, :cond_5

    .line 948
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    iget v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, p1, v17

    move/from16 v17, v18

    .line 952
    .end local v18           #index:I
    .restart local v17       #index:I
    :cond_5
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    .line 953
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v10}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->writeVariableSignedAddress([BII)I

    move-result v22

    .line 957
    .local v22, shift:I
    :goto_4
    add-int v17, v17, v22

    .line 958
    add-int v14, v14, v22

    .line 961
    iget-object v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    .line 962
    move/from16 v19, v17

    .line 963
    .local v19, indexOfShortcutByteSize:I
    add-int/lit8 v17, v17, 0x2

    .line 964
    add-int/lit8 v14, v14, 0x2

    .line 965
    iget-object v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 966
    .local v25, shortcutIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_9

    .line 967
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    .line 968
    .local v27, target:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    add-int/lit8 v14, v14, 0x1

    .line 969
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->makeShortcutFlags(ZI)I

    move-result v24

    .line 971
    .local v24, shortcutFlags:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, p1, v17

    .line 972
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v29

    #calls: Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->writeString([BILjava/lang/String;)I
    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->access$300([BILjava/lang/String;)I

    move-result v26

    .line 973
    .local v26, shortcutShift:I
    add-int v17, v18, v26

    .line 974
    .end local v18           #index:I
    .restart local v17       #index:I
    add-int v14, v14, v26

    .line 975
    goto :goto_5

    .line 929
    .end local v10           #childrenOffset:I
    .end local v12           #flags:B
    .end local v17           #index:I
    .end local v19           #indexOfShortcutByteSize:I
    .end local v22           #shift:I
    .end local v24           #shortcutFlags:I
    .end local v25           #shortcutIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    .end local v26           #shortcutShift:I
    .end local v27           #target:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .restart local v18       #index:I
    :cond_6
    iget-object v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v29, v0

    sub-int v10, v29, v14

    goto/16 :goto_2

    .line 938
    .end local v18           #index:I
    .restart local v10       #childrenOffset:I
    .restart local v12       #flags:B
    .restart local v17       #index:I
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v29, v0

    iget v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    add-int v29, v29, v21

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v29

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->writeParentAddress([BIILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)I

    move-result v17

    goto/16 :goto_3

    .line 955
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v10}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->writeVariableAddress([BII)I

    move-result v22

    .restart local v22       #shift:I
    goto/16 :goto_4

    .line 976
    .restart local v19       #indexOfShortcutByteSize:I
    .restart local v25       #shortcutIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    :cond_9
    sub-int v23, v17, v19

    .line 977
    .local v23, shortcutByteSize:I
    const v29, 0xffff

    move/from16 v0, v23

    move/from16 v1, v29

    if-le v0, v1, :cond_a

    .line 978
    new-instance v29, Ljava/lang/RuntimeException;

    const-string v30, "Shortcut list too large"

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 980
    :cond_a
    shr-int/lit8 v29, v23, 0x8

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, p1, v19

    .line 981
    add-int/lit8 v29, v19, 0x1

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    aput-byte v30, p1, v29

    .line 984
    .end local v19           #indexOfShortcutByteSize:I
    .end local v23           #shortcutByteSize:I
    .end local v25           #shortcutIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    :cond_b
    iget-object v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    .line 985
    iget-object v0, v13, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 986
    .local v8, bigramIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_c

    .line 987
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    .line 988
    .local v6, bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->mRoot:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    move-object/from16 v29, v0

    iget-object v0, v6, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/inputmethod/latin/makedict/FusionDictionary;->findWordInTree(Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    move-result-object v27

    .line 990
    .local v27, target:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    .line 991
    .local v5, addressOfBigram:I
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    move/from16 v28, v0

    .line 992
    .local v28, unigramFrequencyForThisWord:I
    add-int/lit8 v14, v14, 0x1

    .line 993
    sub-int v20, v5, v14

    .line 994
    .local v20, offset:I
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    iget v0, v6, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    move/from16 v30, v0

    iget-object v0, v6, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v20

    move/from16 v2, v30

    move/from16 v3, v28

    move-object/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->makeBigramFlags(ZIIILjava/lang/String;)I

    move-result v7

    .line 996
    .local v7, bigramFlags:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    int-to-byte v0, v7

    move/from16 v29, v0

    aput-byte v29, p1, v17

    .line 997
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->writeVariableAddress([BII)I

    move-result v9

    .line 998
    .local v9, bigramShift:I
    add-int v17, v18, v9

    .line 999
    .end local v18           #index:I
    .restart local v17       #index:I
    add-int/2addr v14, v9

    .line 1000
    goto :goto_6

    .line 916
    .end local v5           #addressOfBigram:I
    .end local v6           #bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .end local v7           #bigramFlags:I
    .end local v8           #bigramIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    .end local v9           #bigramShift:I
    .end local v20           #offset:I
    .end local v27           #target:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    .end local v28           #unigramFrequencyForThisWord:I
    :cond_c
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17           #index:I
    .restart local v18       #index:I
    goto/16 :goto_1

    .line 1004
    .end local v10           #childrenOffset:I
    .end local v12           #flags:B
    .end local v13           #group:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    .end local v22           #shift:I
    :cond_d
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 1005
    add-int/lit8 v29, v18, 0x1

    add-int/lit8 v30, v18, 0x2

    const/16 v31, 0x0

    aput-byte v31, p1, v30

    aput-byte v31, p1, v29

    aput-byte v31, p1, v18

    .line 1007
    add-int/lit8 v17, v18, 0x3

    .line 1009
    .end local v18           #index:I
    .restart local v17       #index:I
    :goto_7
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Not the same size : written "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v31, v0

    sub-int v31, v17, v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " bytes out of a node that should have "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " bytes"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1013
    :cond_e
    return v17

    .end local v17           #index:I
    .restart local v18       #index:I
    :cond_f
    move/from16 v17, v18

    .end local v18           #index:I
    .restart local v17       #index:I
    goto :goto_7
.end method

.method private static writeVariableAddress([BII)I
    .locals 4
    .parameter "buffer"
    .parameter "index"
    .parameter "address"

    .prologue
    .line 683
    invoke-static {p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getByteSize(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 699
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has a strange size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    :pswitch_0
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, index:I
    int-to-byte v1, p2

    aput-byte v1, p0, p1

    .line 686
    const/4 v1, 0x1

    move p1, v0

    .line 697
    .end local v0           #index:I
    .restart local p1
    :goto_0
    return v1

    .line 688
    :pswitch_1
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #index:I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 689
    add-int/lit8 p1, v0, 0x1

    .end local v0           #index:I
    .restart local p1
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 690
    const/4 v1, 0x2

    goto :goto_0

    .line 692
    :pswitch_2
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #index:I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 693
    add-int/lit8 p1, v0, 0x1

    .end local v0           #index:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 694
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #index:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 695
    const/4 v1, 0x3

    move p1, v0

    .end local v0           #index:I
    .restart local p1
    goto :goto_0

    .line 697
    :pswitch_3
    const/4 v1, 0x0

    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static writeVariableSignedAddress([BII)I
    .locals 5
    .parameter "buffer"
    .parameter "index"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 713
    invoke-static {p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->hasChildrenAddress(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 714
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x2

    aput-byte v2, p0, v4

    aput-byte v2, p0, v3

    aput-byte v2, p0, p1

    .line 721
    :goto_0
    const/4 v2, 0x3

    return v2

    .line 716
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 717
    .local v0, absAddress:I
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    if-gez p2, :cond_1

    const/16 v2, 0x80

    :cond_1
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 718
    add-int/lit8 p1, v1, 0x1

    .end local v1           #index:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 719
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #index:I
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v1

    .end local v1           #index:I
    .restart local p1
    goto :goto_0
.end method
