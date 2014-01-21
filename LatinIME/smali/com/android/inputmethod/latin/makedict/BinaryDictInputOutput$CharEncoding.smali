.class final Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;
.super Ljava/lang/Object;
.source "BinaryDictInputOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharEncoding"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharArraySize([I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200([I[BI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->writeCharArray([I[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300([BILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->writeString([BILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->readChar(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->readString(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static fitsOnOneByte(I)Z
    .locals 1
    .parameter "character"

    .prologue
    .line 136
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCharArraySize([I)I
    .locals 6
    .parameter "chars"

    .prologue
    .line 168
    const/4 v4, 0x0

    .line 169
    .local v4, size:I
    move-object v0, p0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .local v1, character:I
    invoke-static {v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v1           #character:I
    :cond_0
    return v4
.end method

.method private static getCharSize(I)I
    .locals 2
    .parameter "character"

    .prologue
    const/4 v0, 0x1

    .line 159
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->fitsOnOneByte(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    const/4 v1, -0x1

    if-eq v1, p0, :cond_0

    .line 161
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static readChar(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I
    .locals 2
    .parameter "buffer"

    .prologue
    .line 267
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedByte()I

    move-result v0

    .line 268
    .local v0, character:I
    invoke-static {v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->fitsOnOneByte(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    const/16 v1, 0x1f

    if-ne v1, v0, :cond_0

    .line 270
    const/4 v1, -0x1

    .line 275
    :goto_0
    return v1

    .line 272
    :cond_0
    shl-int/lit8 v0, v0, 0x10

    .line 273
    invoke-interface {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;->readUnsignedShort()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v1, v0

    .line 275
    goto :goto_0
.end method

.method private static readString(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)Ljava/lang/String;
    .locals 3
    .parameter "buffer"

    .prologue
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v1, s:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->readChar(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v0

    .line 251
    .local v0, character:I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->readChar(Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;)I

    move-result v0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static writeCharArray([I[BI)I
    .locals 7
    .parameter "codePoints"
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 182
    move-object v0, p0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, p2

    .end local p2
    .local v3, index:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v1, v0, v2

    .line 183
    .local v1, codePoint:I
    const/4 v5, 0x1

    invoke-static {v1}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 184
    add-int/lit8 p2, v3, 0x1

    .end local v3           #index:I
    .restart local p2
    int-to-byte v5, v1

    aput-byte v5, p1, v3

    .line 182
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2
    .restart local v3       #index:I
    goto :goto_0

    .line 186
    :cond_0
    add-int/lit8 p2, v3, 0x1

    .end local v3           #index:I
    .restart local p2
    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 187
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #index:I
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 188
    add-int/lit8 p2, v3, 0x1

    .end local v3           #index:I
    .restart local p2
    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    goto :goto_1

    .line 191
    .end local v1           #codePoint:I
    .end local p2
    .restart local v3       #index:I
    :cond_1
    return v3
.end method

.method private static writeString([BILjava/lang/String;)I
    .locals 7
    .parameter "buffer"
    .parameter "origin"
    .parameter "word"

    .prologue
    const/4 v6, 0x1

    .line 206
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 207
    .local v4, length:I
    move v2, p1

    .line 208
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 209
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 210
    .local v0, codePoint:I
    invoke-static {v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I

    move-result v5

    if-ne v6, v5, :cond_0

    .line 211
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    int-to-byte v5, v0

    aput-byte v5, p0, v3

    .line 208
    :goto_1
    invoke-virtual {p2, v1, v6}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 213
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    .line 214
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p0, v2

    .line 215
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    goto :goto_1

    .line 218
    .end local v0           #codePoint:I
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    const/16 v5, 0x1f

    aput-byte v5, p0, v3

    .line 219
    sub-int v5, v2, p1

    return v5
.end method

.method private static writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "buffer"
    .parameter "word"

    .prologue
    const/4 v4, 0x1

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 232
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 234
    .local v0, codePoint:I
    invoke-static {v0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 235
    int-to-byte v3, v0

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 232
    :goto_1
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0

    .line 237
    :cond_0
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 242
    .end local v0           #codePoint:I
    :cond_1
    const/16 v3, 0x1f

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    return-void
.end method
