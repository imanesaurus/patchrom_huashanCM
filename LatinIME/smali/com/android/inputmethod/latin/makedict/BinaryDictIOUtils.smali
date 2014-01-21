.class public final Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils;
.super Ljava/lang/Object;
.source "BinaryDictIOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static readUnigramsAndBigramsBinary(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .parameter "buffer"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/PendingAttribute;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/inputmethod/latin/makedict/UnsupportedFormatException;
        }
    .end annotation

    .prologue
    .line 141
    .local p1, words:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, frequencies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, bigrams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;>;"
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readHeader(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;

    move-result-object v6

    .line 142
    .local v6, header:Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;
    iget v1, v6, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mHeaderSize:I

    iget-object v5, v6, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mFormatOptions:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils;->readUnigramsAndBigramsBinaryInner(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V

    .line 144
    return-void
.end method

.method private static readUnigramsAndBigramsBinaryInner(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V
    .locals 15
    .parameter "buffer"
    .parameter "headerSize"
    .parameter
    .parameter
    .parameter
    .parameter "formatOptions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/PendingAttribute;",
            ">;>;",
            "Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, words:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, frequencies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p4, bigrams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;>;"
    const/16 v12, 0x31

    new-array v10, v12, [I

    .line 58
    .local v10, pushedChars:[I
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 59
    .local v11, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;>;"
    const/4 v4, 0x0

    .line 61
    .local v4, index:I
    new-instance v7, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;

    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-direct {v7, v0, v12}, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;-><init>(II)V

    .line 62
    .local v7, initPos:Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    invoke-virtual {v11, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 65
    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;

    .line 72
    .local v9, p:Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v12

    iget v13, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    if-eq v12, v13, :cond_1

    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    invoke-interface {p0, v12}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position(I)V

    .line 73
    :cond_1
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mLength:I

    if-eq v4, v12, :cond_2

    iget v4, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mLength:I

    .line 75
    :cond_2
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 76
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readCharGroupCount(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v12

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    .line 77
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    iget v13, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    invoke-static {v13}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->getGroupCountSize(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    .line 78
    const/4 v12, 0x0

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mPosition:I

    .line 80
    :cond_3
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    if-nez v12, :cond_4

    .line 81
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_4
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    sub-int v12, v12, p1

    move-object/from16 v0, p5

    invoke-static {p0, v12, v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->readCharGroup(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Lcom/android/inputmethod/latin/makedict/CharGroupInfo;

    move-result-object v6

    .line 86
    .local v6, info:Lcom/android/inputmethod/latin/makedict/CharGroupInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mCharacters:[I

    array-length v12, v12

    if-ge v3, v12, :cond_5

    .line 87
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    iget-object v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mCharacters:[I

    aget v12, v12, v3

    aput v12, v10, v4

    .line 86
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_1

    .line 89
    :cond_5
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mPosition:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mPosition:I

    .line 91
    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mFlags:I

    move-object/from16 v0, p5

    invoke-static {v12, v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->isMovedGroup(ILcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)Z

    move-result v8

    .line 93
    .local v8, isMovedGroup:Z
    if-nez v8, :cond_6

    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mFrequency:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    .line 95
    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mOriginalAddress:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v10, v14, v4}, Ljava/lang/String;-><init>([III)V

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mOriginalAddress:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mFrequency:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mBigrams:Ljava/util/ArrayList;

    if-eqz v12, :cond_6

    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mOriginalAddress:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mBigrams:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_6
    iget v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mPosition:I

    iget v13, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    if-ne v12, v13, :cond_9

    .line 101
    move-object/from16 v0, p5

    iget-boolean v12, v0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    if-eqz v12, :cond_8

    .line 102
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedInt24()I

    move-result v2

    .line 103
    .local v2, forwardLinkAddress:I
    if-eqz v2, :cond_7

    .line 105
    const/4 v12, -0x1

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    .line 106
    iput v2, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    .line 118
    .end local v2           #forwardLinkAddress:I
    :goto_2
    if-nez v8, :cond_0

    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mChildrenAddress:I

    invoke-static {v12}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;->hasChildrenAddress(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 119
    new-instance v1, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;

    iget v12, v6, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mChildrenAddress:I

    add-int v12, v12, p1

    invoke-direct {v1, v12, v4}, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;-><init>(II)V

    .line 120
    .local v1, childrenPos:Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    invoke-virtual {v11, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 108
    .end local v1           #childrenPos:Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    .restart local v2       #forwardLinkAddress:I
    :cond_7
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 111
    .end local v2           #forwardLinkAddress:I
    :cond_8
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 115
    :cond_9
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->position()I

    move-result v12

    iput v12, v9, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    goto :goto_2

    .line 123
    .end local v3           #i:I
    .end local v6           #info:Lcom/android/inputmethod/latin/makedict/CharGroupInfo;
    .end local v8           #isMovedGroup:Z
    .end local v9           #p:Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
    :cond_a
    return-void
.end method
