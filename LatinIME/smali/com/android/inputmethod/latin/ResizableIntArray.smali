.class public final Lcom/android/inputmethod/latin/ResizableIntArray;
.super Ljava/lang/Object;
.source "ResizableIntArray.java"


# instance fields
.field private mArray:[I

.field private mLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/ResizableIntArray;->reset(I)V

    .line 28
    return-void
.end method

.method private calculateCapacity(I)I
    .locals 3
    .parameter "minimumCapacity"

    .prologue
    .line 60
    iget-object v2, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    array-length v0, v2

    .line 61
    .local v0, currentCapcity:I
    if-ge v0, p1, :cond_1

    .line 62
    mul-int/lit8 v1, v0, 0x2

    .line 64
    .local v1, nextCapacity:I
    if-le p1, v1, :cond_0

    .line 66
    .end local v1           #nextCapacity:I
    .end local p1
    :goto_0
    return p1

    .restart local v1       #nextCapacity:I
    .restart local p1
    :cond_0
    move p1, v1

    .line 64
    goto :goto_0

    .line 66
    .end local v1           #nextCapacity:I
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private ensureCapacity(I)V
    .locals 2
    .parameter "minimumCapacity"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ResizableIntArray;->calculateCapacity(I)I

    move-result v0

    .line 71
    .local v0, newCapacity:I
    if-lez v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2
    .parameter "val"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    .line 48
    .local v0, currentLength:I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->ensureCapacity(I)V

    .line 49
    iget-object v1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    aput p1, v1, v0

    .line 50
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    .line 51
    return-void
.end method

.method public add(II)V
    .locals 1
    .parameter "index"
    .parameter "val"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    if-ge p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    aput p2, v0, p1

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    .line 42
    invoke-virtual {p0, p2}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    goto :goto_0
.end method

.method public append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V
    .locals 4
    .parameter "src"
    .parameter "startPos"
    .parameter "length"

    .prologue
    .line 113
    if-nez p3, :cond_0

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    .line 117
    .local v0, currentLength:I
    add-int v1, v0, p3

    .line 118
    .local v1, newLength:I
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->ensureCapacity(I)V

    .line 119
    iget-object v2, p1, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    iget-object v3, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    invoke-static {v2, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput v1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    goto :goto_0
.end method

.method public copy(Lcom/android/inputmethod/latin/ResizableIntArray;)V
    .locals 5
    .parameter "ip"

    .prologue
    const/4 v4, 0x0

    .line 103
    iget v1, p1, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->calculateCapacity(I)I

    move-result v0

    .line 104
    .local v0, newCapacity:I
    if-lez v0, :cond_0

    .line 106
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    .line 108
    :cond_0
    iget-object v1, p1, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    iget-object v2, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    iget v3, p1, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget v1, p1, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    iput v1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    .line 110
    return-void
.end method

.method public fill(III)V
    .locals 4
    .parameter "value"
    .parameter "startPos"
    .parameter "length"

    .prologue
    .line 124
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 125
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_1
    add-int v0, p2, p3

    .line 128
    .local v0, endPos:I
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->ensureCapacity(I)V

    .line 129
    iget-object v1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    invoke-static {v1, p2, v0, p1}, Ljava/util/Arrays;->fill([IIII)V

    .line 130
    iget v1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    if-ge v1, v0, :cond_2

    .line 131
    iput v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    .line 133
    :cond_2
    return-void
.end method

.method public get(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    if-ge p1, v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    aget v0, v0, p1

    return v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    return v0
.end method

.method public getPrimitiveArray()[I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    return-object v0
.end method

.method public reset(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 88
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    .line 90
    return-void
.end method

.method public set(Lcom/android/inputmethod/latin/ResizableIntArray;)V
    .locals 1
    .parameter "ip"

    .prologue
    .line 98
    iget-object v0, p1, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    .line 99
    iget v0, p1, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    iput v0, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    .line 100
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .parameter "newLength"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ResizableIntArray;->ensureCapacity(I)V

    .line 83
    iput p1, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mLength:I

    if-ge v0, v2, :cond_1

    .line 139
    if-eqz v0, :cond_0

    .line 140
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/ResizableIntArray;->mArray:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
