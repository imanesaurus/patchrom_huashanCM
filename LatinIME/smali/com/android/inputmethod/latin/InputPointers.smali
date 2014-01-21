.class public final Lcom/android/inputmethod/latin/InputPointers;
.super Ljava/lang/Object;
.source "InputPointers.java"


# instance fields
.field private final mDefaultCapacity:I

.field private final mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

.field private final mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

.field private final mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

.field private final mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "defaultCapacity"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/inputmethod/latin/InputPointers;->mDefaultCapacity:I

    .line 29
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, p1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 30
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, p1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 31
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, p1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 32
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, p1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 33
    return-void
.end method


# virtual methods
.method public addPointer(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "pointerId"
    .parameter "time"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    .line 44
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p3}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    .line 46
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p4}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    .line 47
    return-void
.end method

.method public addPointer(IIIII)V
    .locals 1
    .parameter "index"
    .parameter "x"
    .parameter "y"
    .parameter "pointerId"
    .parameter "time"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(II)V

    .line 37
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p1, p3}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(II)V

    .line 38
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p1, p4}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(II)V

    .line 39
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p1, p5}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(II)V

    .line 40
    return-void
.end method

.method public append(ILcom/android/inputmethod/latin/ResizableIntArray;Lcom/android/inputmethod/latin/ResizableIntArray;Lcom/android/inputmethod/latin/ResizableIntArray;II)V
    .locals 2
    .parameter "pointerId"
    .parameter "times"
    .parameter "xCoordinates"
    .parameter "yCoordinates"
    .parameter "startPos"
    .parameter "length"

    .prologue
    .line 91
    if-nez p6, :cond_0

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p3, p5, p6}, Lcom/android/inputmethod/latin/ResizableIntArray;->append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    .line 95
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p4, p5, p6}, Lcom/android/inputmethod/latin/ResizableIntArray;->append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v1

    invoke-virtual {v0, p1, v1, p6}, Lcom/android/inputmethod/latin/ResizableIntArray;->fill(III)V

    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p2, p5, p6}, Lcom/android/inputmethod/latin/ResizableIntArray;->append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    goto :goto_0
.end method

.method public append(Lcom/android/inputmethod/latin/InputPointers;II)V
    .locals 2
    .parameter "src"
    .parameter "startPos"
    .parameter "length"

    .prologue
    .line 70
    if-nez p3, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/inputmethod/latin/ResizableIntArray;->append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    .line 74
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/inputmethod/latin/ResizableIntArray;->append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    .line 75
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/inputmethod/latin/ResizableIntArray;->append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    .line 76
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/inputmethod/latin/ResizableIntArray;->append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    goto :goto_0
.end method

.method public copy(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 2
    .parameter "ip"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->copy(Lcom/android/inputmethod/latin/ResizableIntArray;)V

    .line 58
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->copy(Lcom/android/inputmethod/latin/ResizableIntArray;)V

    .line 59
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->copy(Lcom/android/inputmethod/latin/ResizableIntArray;)V

    .line 60
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->copy(Lcom/android/inputmethod/latin/ResizableIntArray;)V

    .line 61
    return-void
.end method

.method public getPointerIds()[I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->getPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getPointerSize()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v0

    return v0
.end method

.method public getTimes()[I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->getPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getXCoordinates()[I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->getPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getYCoordinates()[I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->getPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mDefaultCapacity:I

    .line 102
    .local v0, defaultCapacity:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->reset(I)V

    .line 103
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->reset(I)V

    .line 104
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->reset(I)V

    .line 105
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->reset(I)V

    .line 106
    return-void
.end method

.method public set(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 2
    .parameter "ip"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->set(Lcom/android/inputmethod/latin/ResizableIntArray;)V

    .line 51
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->set(Lcom/android/inputmethod/latin/ResizableIntArray;)V

    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->set(Lcom/android/inputmethod/latin/ResizableIntArray;)V

    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget-object v1, p1, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->set(Lcom/android/inputmethod/latin/ResizableIntArray;)V

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/InputPointers;->getPointerSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/InputPointers;->mPointerIds:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/InputPointers;->mTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/InputPointers;->mXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/InputPointers;->mYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
