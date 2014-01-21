.class public Lcom/android/inputmethod/research/LogBuffer;
.super Ljava/lang/Object;
.source "LogBuffer.java"


# instance fields
.field protected final mLogUnits:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/research/LogUnit;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumActualWords:I

.field mWordCapacity:I


# direct methods
.method private shiftOutThroughFirstWord()V
    .locals 2

    .prologue
    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/research/LogBuffer;->mLogUnits:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/android/inputmethod/research/LogBuffer;->mLogUnits:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/research/LogUnit;

    .line 72
    .local v0, logUnit:Lcom/android/inputmethod/research/LogUnit;
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/research/LogBuffer;->onShiftOut(Lcom/android/inputmethod/research/LogUnit;)V

    .line 73
    invoke-virtual {v0}, Lcom/android/inputmethod/research/LogUnit;->hasWord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget v1, p0, Lcom/android/inputmethod/research/LogBuffer;->mNumActualWords:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/inputmethod/research/LogBuffer;->mNumActualWords:I

    .line 80
    .end local v0           #logUnit:Lcom/android/inputmethod/research/LogUnit;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/inputmethod/research/LogBuffer;->mLogUnits:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/research/LogBuffer;->mNumActualWords:I

    .line 88
    return-void
.end method

.method protected onShiftOut(Lcom/android/inputmethod/research/LogUnit;)V
    .locals 0
    .parameter "logUnit"

    .prologue
    .line 97
    return-void
.end method

.method public shiftIn(Lcom/android/inputmethod/research/LogUnit;)V
    .locals 2
    .parameter "newLogUnit"

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/android/inputmethod/research/LogUnit;->getWord()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/inputmethod/research/LogBuffer;->mLogUnits:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/research/LogBuffer;->mNumActualWords:I

    iget v1, p0, Lcom/android/inputmethod/research/LogBuffer;->mWordCapacity:I

    if-ne v0, v1, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/android/inputmethod/research/LogBuffer;->shiftOutThroughFirstWord()V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/research/LogBuffer;->mLogUnits:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    iget v0, p0, Lcom/android/inputmethod/research/LogBuffer;->mNumActualWords:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/research/LogBuffer;->mNumActualWords:I

    goto :goto_0
.end method

.method public shiftOut()Lcom/android/inputmethod/research/LogUnit;
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/inputmethod/research/LogBuffer;->mLogUnits:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/research/LogBuffer;->mLogUnits:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/research/LogUnit;

    .line 108
    .local v0, logUnit:Lcom/android/inputmethod/research/LogUnit;
    invoke-virtual {v0}, Lcom/android/inputmethod/research/LogUnit;->hasWord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget v1, p0, Lcom/android/inputmethod/research/LogBuffer;->mNumActualWords:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/inputmethod/research/LogBuffer;->mNumActualWords:I

    goto :goto_0
.end method
