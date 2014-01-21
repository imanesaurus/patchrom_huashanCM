.class public final Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;
.super Lcom/android/inputmethod/keyboard/internal/GestureStroke;
.source "GestureStrokeWithPreviewPoints.java"


# instance fields
.field private mLastPreviewSize:I

.field private mLastX:I

.field private mLastY:I

.field private mMinPreviewSampleLengthSquare:I

.field private final mPreviewEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

.field private final mPreviewXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

.field private final mPreviewYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

.field private mStrokeId:I


# direct methods
.method public constructor <init>(ILcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;)V
    .locals 2
    .parameter "pointerId"
    .parameter "params"

    .prologue
    const/16 v1, 0x100

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;-><init>(ILcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;)V

    .line 22
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 23
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 24
    new-instance v0, Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    .line 38
    return-void
.end method

.method private needsSampling(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 66
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mLastX:I

    sub-int v0, p1, v2

    .line 67
    .local v0, dx:I
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mLastY:I

    sub-int v1, p2, v2

    .line 68
    .local v1, dy:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mMinPreviewSampleLengthSquare:I

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPoint(IIIZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "isMajorEvent"

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->addPoint(IIIZ)V

    .line 74
    if-nez p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->needsSampling(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p3}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    .line 76
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/latin/ResizableIntArray;->add(I)V

    .line 78
    iput p1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mLastX:I

    .line 79
    iput p2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mLastY:I

    .line 81
    :cond_1
    return-void
.end method

.method public appendPreviewStroke(Lcom/android/inputmethod/latin/ResizableIntArray;Lcom/android/inputmethod/latin/ResizableIntArray;Lcom/android/inputmethod/latin/ResizableIntArray;)V
    .locals 3
    .parameter "eventTimes"
    .parameter "xCoords"
    .parameter "yCoords"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mLastPreviewSize:I

    sub-int v0, v1, v2

    .line 86
    .local v0, length:I
    if-gtz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mLastPreviewSize:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    .line 90
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mLastPreviewSize:I

    invoke-virtual {p2, v1, v2, v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    .line 91
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mLastPreviewSize:I

    invoke-virtual {p3, v1, v2, v0}, Lcom/android/inputmethod/latin/ResizableIntArray;->append(Lcom/android/inputmethod/latin/ResizableIntArray;II)V

    .line 92
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->getLength()I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mLastPreviewSize:I

    goto :goto_0
.end method

.method public getGestureStrokeId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mStrokeId:I

    return v0
.end method

.method protected reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->reset()V

    .line 43
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mStrokeId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mStrokeId:I

    .line 44
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mLastPreviewSize:I

    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewEventTimes:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->setLength(I)V

    .line 46
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewXCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->setLength(I)V

    .line 47
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mPreviewYCoordinates:Lcom/android/inputmethod/latin/ResizableIntArray;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ResizableIntArray;->setLength(I)V

    .line 48
    return-void
.end method

.method public setKeyboardGeometry(I)V
    .locals 3
    .parameter "keyWidth"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->setKeyboardGeometry(I)V

    .line 61
    int-to-float v1, p1

    const v2, 0x3dcccccd

    mul-float v0, v1, v2

    .line 62
    .local v0, sampleLength:F
    mul-float v1, v0, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->mMinPreviewSampleLengthSquare:I

    .line 63
    return-void
.end method
