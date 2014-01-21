.class public final Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;
.super Ljava/lang/Object;
.source "UserHistoryDictIOUtils.java"

# interfaces
.implements Lcom/android/inputmethod/latin/makedict/BinaryDictInputOutput$FusionDictionaryBufferInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/UserHistoryDictIOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArrayWrapper"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mPosition:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->mBuffer:[B

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->mPosition:I

    .line 61
    return-void
.end method


# virtual methods
.method public position()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->mPosition:I

    return v0
.end method

.method public position(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->mPosition:I

    .line 94
    return-void
.end method

.method public readInt()I
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->readUnsignedShort()I

    move-result v0

    .line 83
    .local v0, retval:I
    shl-int/lit8 v1, v0, 0x10

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->readUnsignedShort()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public readUnsignedByte()I
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->mBuffer:[B

    iget v1, p0, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->mPosition:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedInt24()I
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->readUnsignedShort()I

    move-result v0

    .line 77
    .local v0, retval:I
    shl-int/lit8 v1, v0, 0x8

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->readUnsignedByte()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public readUnsignedShort()I
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->readUnsignedByte()I

    move-result v0

    .line 71
    .local v0, retval:I
    shl-int/lit8 v1, v0, 0x8

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$ByteArrayWrapper;->readUnsignedByte()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method
