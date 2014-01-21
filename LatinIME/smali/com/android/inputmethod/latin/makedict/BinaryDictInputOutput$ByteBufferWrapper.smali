.class public final Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;
.super Ljava/lang/Object;
.source "BinaryDictInputOutput.java"

# interfaces
.implements Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteBufferWrapper"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->mBuffer:Ljava/nio/ByteBuffer;

    .line 75
    return-void
.end method


# virtual methods
.method public position()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 1
    .parameter "newPos"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    return-void
.end method

.method public readInt()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readUnsignedByte()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedInt24()I
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->readUnsignedByte()I

    move-result v0

    .line 90
    .local v0, retval:I
    shl-int/lit8 v1, v0, 0x10

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->readUnsignedShort()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public readUnsignedShort()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$ByteBufferWrapper;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
