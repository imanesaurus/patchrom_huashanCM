.class public final Lcom/android/inputmethod/keyboard/PointerTracker;
.super Ljava/lang/Object;
.source "PointerTracker.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;,
        Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;,
        Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;,
        Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;,
        Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;,
        Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;
    }
.end annotation


# static fields
.field private static DEBUG_MODE:Z

.field private static final EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private static final TAG:Ljava/lang/String;

.field private static final sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

.field private static sGestureFirstDownTime:J

.field private static sGestureHandlingEnabledByInputField:Z

.field private static sGestureHandlingEnabledByUser:Z

.field private static sGestureStrokeParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

.field private static sInGesture:Z

.field private static sLastRecognitionPointSize:I

.field private static sLastRecognitionTime:J

.field private static sMainDictionaryAvailable:Z

.field private static sNeedsPhantomSuddenMoveEventHack:Z

.field private static sParams:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

.field private static sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

.field private static sShouldHandleGesture:Z

.field private static sTimeRecorder:Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

.field private static final sTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBogusMoveEventDetector:Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

.field private mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

.field private mDownTime:J

.field private mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

.field private final mGestureStrokeWithPreviewPoints:Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

.field private mIsAllowedSlidingKeyInput:Z

.field private mIsDetectingGesture:Z

.field mIsInSlidingKeyInput:Z

.field mIsInSlidingKeyInputFromModifier:Z

.field private mIsShowingMoreKeysPanel:Z

.field private mKeyAlreadyProcessed:Z

.field private mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private mKeyX:I

.field private mKeyY:I

.field private mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field private mKeyboardLayoutHasBeenChanged:Z

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private mPhantonSuddenMoveThreshold:I

.field public final mPointerId:I

.field private mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

.field private mUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 39
    const-class v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    .line 43
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    .line 46
    sput-boolean v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sShouldHandleGesture:Z

    .line 47
    sput-boolean v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sMainDictionaryAvailable:Z

    .line 48
    sput-boolean v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureHandlingEnabledByInputField:Z

    .line 49
    sput-boolean v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureHandlingEnabledByUser:Z

    .line 158
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/ArrayList;

    .line 173
    sput-boolean v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    .line 176
    new-instance v0, Lcom/android/inputmethod/latin/InputPointers;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Lcom/android/inputmethod/latin/InputPointers;-><init>(I)V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

    .line 178
    sput v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sLastRecognitionPointSize:I

    .line 179
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sLastRecognitionTime:J

    .line 323
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .locals 2
    .parameter "id"
    .parameter "handler"

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 170
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mBogusMoveEventDetector:Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsDetectingGesture:Z

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    .line 411
    if-nez p2, :cond_0

    .line 412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 414
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    .line 415
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

    sget-object v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureStrokeParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    invoke-direct {v0, p1, v1}, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;-><init>(ILcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mGestureStrokeWithPreviewPoints:Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

    .line 417
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 418
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 419
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    .line 420
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 421
    return-void
.end method

.method private callListenerOnCancelInput()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 514
    return-void
.end method

.method private callListenerOnCodeInput(Lcom/android/inputmethod/keyboard/Key;IIIJ)V
    .locals 6
    .parameter "key"
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 452
    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInputFromModifier:Z

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isModifier()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 453
    .local v2, ignoreModifierKey:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->altCodeWhileTyping()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v5}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->isTypingState()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 454
    .local v0, altersCode:Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->getAltCode()I

    move-result v1

    .line 466
    .local v1, code:I
    :goto_2
    if-eqz v2, :cond_4

    .line 478
    :cond_0
    :goto_3
    return-void

    .end local v0           #altersCode:Z
    .end local v1           #code:I
    .end local v2           #ignoreModifierKey:Z
    :cond_1
    move v2, v4

    .line 452
    goto :goto_0

    .restart local v2       #ignoreModifierKey:Z
    :cond_2
    move v0, v4

    .line 453
    goto :goto_1

    .restart local v0       #altersCode:Z
    :cond_3
    move v1, p2

    .line 454
    goto :goto_2

    .line 470
    .restart local v1       #code:I
    :cond_4
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_0

    .line 471
    :cond_5
    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sTimeRecorder:Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

    invoke-virtual {v3, v1, p5, p6}, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->onCodeInput(IJ)V

    .line 472
    const/4 v3, -0x3

    if-ne v1, v3, :cond_6

    .line 473
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->getOutputText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 474
    :cond_6
    const/16 v3, -0xc

    if-eq v1, v3, :cond_0

    .line 475
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v3, v1, p3, p4}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(III)V

    goto :goto_3
.end method

.method private callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 425
    sget-boolean v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    if-eqz v3, :cond_0

    move v1, v2

    .line 445
    :goto_0
    return v1

    .line 428
    :cond_0
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInputFromModifier:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 435
    .local v0, ignoreModifierKey:Z
    :goto_1
    if-eqz v0, :cond_2

    move v1, v2

    .line 436
    goto :goto_0

    .end local v0           #ignoreModifierKey:Z
    :cond_1
    move v0, v2

    .line 428
    goto :goto_1

    .line 438
    .restart local v0       #ignoreModifierKey:Z
    :cond_2
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 439
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iget v4, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-interface {v3, v4}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onPressKey(I)V

    .line 440
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 441
    .local v1, keyboardLayoutHasBeenChanged:Z
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 442
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v2, p1}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startTypingStateTimer(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0

    .end local v1           #keyboardLayoutHasBeenChanged:Z
    :cond_3
    move v1, v2

    .line 445
    goto :goto_0
.end method

.method private callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V
    .locals 2
    .parameter "key"
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 484
    sget-boolean v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    if-eqz v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInputFromModifier:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isModifier()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 498
    .local v0, ignoreModifierKey:Z
    :goto_1
    if-nez v0, :cond_0

    .line 501
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onReleaseKey(IZ)V

    goto :goto_0

    .line 487
    .end local v0           #ignoreModifierKey:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private detectAndSendKey(Lcom/android/inputmethod/keyboard/Key;IIJ)V
    .locals 7
    .parameter "key"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 1193
    if-nez p1, :cond_0

    .line 1194
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnCancelInput()V

    .line 1201
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .local v2, code:I
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .line 1199
    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnCodeInput(Lcom/android/inputmethod/keyboard/Key;IIIJ)V

    .line 1200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    goto :goto_0
.end method

.method private static getActivePointerTrackerCount()I
    .locals 1

    .prologue
    .line 685
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->size()I

    move-result v0

    goto :goto_0
.end method

.method static getDistance(IIII)I
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 663
    sub-int v0, p0, p2

    int-to-double v0, v0

    sub-int v2, p1, p3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;
    .locals 4
    .parameter "id"
    .parameter "handler"

    .prologue
    .line 366
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/ArrayList;

    .line 369
    .local v2, trackers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/keyboard/PointerTracker;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-gt v0, p0, :cond_0

    .line 370
    new-instance v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    invoke-direct {v1, v0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;-><init>(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 371
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/keyboard/PointerTracker;

    return-object v3
.end method

.method public static init(ZZ)V
    .locals 3
    .parameter "hasDistinctMultitouch"
    .parameter "needsPhantomSuddenMoveEventHack"

    .prologue
    .line 330
    if-eqz p0, :cond_0

    .line 331
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 335
    :goto_0
    sput-boolean p1, Lcom/android/inputmethod/keyboard/PointerTracker;->sNeedsPhantomSuddenMoveEventHack:Z

    .line 336
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->DEFAULT:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sParams:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    .line 337
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureStrokeParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    .line 338
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

    sget-object v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sParams:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureStrokeParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;-><init>(Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;)V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sTimeRecorder:Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

    .line 339
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    goto :goto_0
.end method

.method public static isAnyInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 378
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->isAnyInSlidingKeyInput()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMajorEnoughMoveToBeOnNewKey(IIJLcom/android/inputmethod/keyboard/Key;)Z
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "newKey"

    .prologue
    .line 1146
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    if-nez v8, :cond_0

    .line 1147
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "keyboard and/or key detector not set"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1149
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    .line 1150
    .local v2, curKey:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p5

    if-ne v0, v2, :cond_1

    .line 1151
    const/4 v8, 0x0

    .line 1182
    :goto_0
    return v8

    .line 1152
    :cond_1
    if-eqz v2, :cond_6

    .line 1153
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    iget-boolean v9, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInputFromModifier:Z

    invoke-virtual {v8, v9}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyHysteresisDistanceSquared(Z)I

    move-result v6

    .line 1155
    .local v6, keyHysteresisDistanceSquared:I
    invoke-virtual {v2, p1, p2}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v3

    .line 1156
    .local v3, distanceFromKeyEdgeSquared:I
    if-lt v3, v6, :cond_3

    .line 1157
    sget-boolean v8, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v8, :cond_2

    .line 1158
    int-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v9, v9, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 1160
    .local v4, distanceToEdgeRatio:F
    sget-object v8, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v9, "[%d] isMajorEnoughMoveToBeOnNewKey: %.2f key width from key edge"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    .end local v4           #distanceToEdgeRatio:F
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 1166
    :cond_3
    iget-boolean v8, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    if-nez v8, :cond_5

    sget-object v8, Lcom/android/inputmethod/keyboard/PointerTracker;->sTimeRecorder:Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->isInFastTyping(J)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mBogusMoveEventDetector:Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

    invoke-virtual {v8, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->hasTraveledLongDistance(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1169
    sget-boolean v8, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v8, :cond_4

    .line 1170
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v8, v8, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    int-to-double v8, v8

    iget-object v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v10, v10, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v5, v8

    .line 1172
    .local v5, keyDiagonal:F
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mBogusMoveEventDetector:Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

    iget v8, v8, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->mAccumulatedDistanceFromDownKey:I

    int-to-float v8, v8

    div-float v7, v8, v5

    .line 1174
    .local v7, lengthFromDownRatio:F
    sget-object v8, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v9, "[%d] isMajorEnoughMoveToBeOnNewKey: %.2f key diagonal from virtual down point"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    .end local v5           #keyDiagonal:F
    .end local v7           #lengthFromDownRatio:F
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1180
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1182
    .end local v3           #distanceFromKeyEdgeSquared:I
    .end local v6           #keyHysteresisDistanceSquared:I
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private mayEndBatchInput(J)V
    .locals 5
    .parameter "eventTime"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 732
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

    monitor-enter v2

    .line 733
    :try_start_0
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mGestureStrokeWithPreviewPoints:Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

    sget-object v4, Lcom/android/inputmethod/keyboard/PointerTracker;->sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->appendAllBatchPoints(Lcom/android/inputmethod/latin/InputPointers;)V

    .line 734
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->getActivePointerTrackerCount()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 739
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    .line 740
    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sTimeRecorder:Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

    invoke-virtual {v3, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->onEndBatchInput(J)V

    .line 741
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    sget-object v4, Lcom/android/inputmethod/keyboard/PointerTracker;->sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

    invoke-interface {v3, v4}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onEndBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V

    .line 743
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->getOldestElement()Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 745
    .local v0, isOldestTracker:Z
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->showGesturePreviewTrail(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V

    .line 746
    return-void

    .line 743
    .end local v0           #isOldestTracker:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    move v0, v1

    .line 744
    goto :goto_0
.end method

.method private mayStartBatchInput(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 689
    sget-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mGestureStrokeWithPreviewPoints:Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->isStartOfAGesture()Z

    move-result v2

    if-nez v2, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    if-eqz p1, :cond_0

    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    sput-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    .line 699
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

    monitor-enter v2

    .line 700
    :try_start_0
    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/InputPointers;->reset()V

    .line 701
    const/4 v3, 0x0

    sput v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sLastRecognitionPointSize:I

    .line 702
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sLastRecognitionTime:J

    .line 703
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onStartBatchInput()V

    .line 704
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->getOldestElement()Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 706
    .local v0, isOldestTracker:Z
    :goto_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->showGesturePreviewTrail(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V

    goto :goto_0

    .line 704
    .end local v0           #isOldestTracker:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    move v0, v1

    .line 705
    goto :goto_1
.end method

.method private mayUpdateBatchInput(JLcom/android/inputmethod/keyboard/Key;)V
    .locals 7
    .parameter "eventTime"
    .parameter "key"

    .prologue
    .line 710
    if-eqz p3, :cond_1

    .line 711
    sget-object v4, Lcom/android/inputmethod/keyboard/PointerTracker;->sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

    monitor-enter v4

    .line 712
    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mGestureStrokeWithPreviewPoints:Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

    .line 713
    .local v2, stroke:Lcom/android/inputmethod/keyboard/internal/GestureStroke;
    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->appendIncrementalBatchPoints(Lcom/android/inputmethod/latin/InputPointers;)V

    .line 714
    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/InputPointers;->getPointerSize()I

    move-result v1

    .line 715
    .local v1, size:I
    sget v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sLastRecognitionPointSize:I

    if-le v1, v3, :cond_0

    sget-wide v5, Lcom/android/inputmethod/keyboard/PointerTracker;->sLastRecognitionTime:J

    invoke-virtual {v2, p1, p2, v5, v6}, Lcom/android/inputmethod/keyboard/internal/GestureStroke;->hasRecognitionTimePast(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 717
    sput v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sLastRecognitionPointSize:I

    .line 718
    sput-wide p1, Lcom/android/inputmethod/keyboard/PointerTracker;->sLastRecognitionTime:J

    .line 723
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    sget-object v5, Lcom/android/inputmethod/keyboard/PointerTracker;->sAggregratedPointers:Lcom/android/inputmethod/latin/InputPointers;

    invoke-interface {v3, v5}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onUpdateBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V

    .line 725
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    .end local v1           #size:I
    .end local v2           #stroke:Lcom/android/inputmethod/keyboard/internal/GestureStroke;
    :cond_1
    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->getOldestElement()Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;

    move-result-object v3

    if-ne v3, p0, :cond_2

    const/4 v0, 0x1

    .line 728
    .local v0, isOldestTracker:Z
    :goto_0
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v3, p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->showGesturePreviewTrail(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V

    .line 729
    return-void

    .line 725
    .end local v0           #isOldestTracker:Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 727
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needsToSuppressKeyPreviewPopup(J)Z
    .locals 1
    .parameter "eventTime"

    .prologue
    .line 587
    sget-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sShouldHandleGesture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 588
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sTimeRecorder:Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

    invoke-virtual {v0, p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->needsToSuppressKeyPreviewPopup(J)Z

    move-result v0

    goto :goto_0
.end method

.method private onCancelEventInternal()V
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 1122
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 1123
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->resetSlidingKeyInput()V

    .line 1124
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissMoreKeysPanel()Z

    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 1128
    :cond_0
    return-void
.end method

.method private onDownEventInternal(IIJ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v2, 0x0

    .line 823
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownKey(IIJ)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 826
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    sget-object v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sParams:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    iget-boolean v1, v1, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mSlidingKeyInputEnabled:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->isModifier()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->alwaysAllowsSlidingInput()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    .line 829
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 830
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 831
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->resetSlidingKeyInput()V

    .line 832
    if-eqz v0, :cond_3

    .line 836
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 837
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownKey(IIJ)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 840
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->startRepeatKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 841
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(Lcom/android/inputmethod/keyboard/Key;)V

    .line 842
    invoke-direct {p0, v0, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;J)V

    .line 844
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 826
    goto :goto_0
.end method

.method private onDownKey(IIJ)Lcom/android/inputmethod/keyboard/Key;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 657
    iput-wide p3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDownTime:J

    .line 658
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mBogusMoveEventDetector:Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->onDownKey()V

    .line 659
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(Lcom/android/inputmethod/keyboard/Key;II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    return-object v0
.end method

.method private onGestureMoveEvent(IIJZLcom/android/inputmethod/keyboard/Key;)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "isMajorEvent"
    .parameter "key"

    .prologue
    .line 860
    sget-wide v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureFirstDownTime:J

    sub-long v1, p3, v1

    long-to-int v0, v1

    .line 861
    .local v0, gestureTime:I
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsDetectingGesture:Z

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mGestureStrokeWithPreviewPoints:Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

    invoke-virtual {v1, p1, p2, v0, p5}, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->addPoint(IIIZ)V

    .line 863
    invoke-direct {p0, p6}, Lcom/android/inputmethod/keyboard/PointerTracker;->mayStartBatchInput(Lcom/android/inputmethod/keyboard/Key;)V

    .line 864
    sget-boolean v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    if-eqz v1, :cond_0

    .line 865
    invoke-direct {p0, p3, p4, p6}, Lcom/android/inputmethod/keyboard/PointerTracker;->mayUpdateBatchInput(JLcom/android/inputmethod/keyboard/Key;)V

    .line 868
    :cond_0
    return-void
.end method

.method private onMoveEventInternal(IIJ)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 895
    iget v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    .line 896
    .local v10, lastX:I
    iget v11, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    .line 897
    .local v11, lastY:I
    iget-object v12, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    .line 898
    .local v12, oldKey:Lcom/android/inputmethod/keyboard/Key;
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v8

    .line 900
    .local v8, key:Lcom/android/inputmethod/keyboard/Key;
    sget-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sShouldHandleGesture:Z

    if-eqz v2, :cond_1

    .line 902
    const/4 v7, 0x1

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->onGestureMoveEvent(IIJZLcom/android/inputmethod/keyboard/Key;)V

    .line 903
    sget-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    if-eqz v2, :cond_1

    .line 904
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v2}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelLongPressTimer()V

    .line 905
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    .line 906
    invoke-direct {p0, v12}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    if-eqz v8, :cond_d

    .line 912
    if-nez v12, :cond_3

    .line 918
    invoke-direct {p0, v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 919
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v8

    .line 921
    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v8, p1, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(Lcom/android/inputmethod/keyboard/Key;II)Lcom/android/inputmethod/keyboard/Key;

    .line 922
    invoke-direct {p0, v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(Lcom/android/inputmethod/keyboard/Key;)V

    .line 923
    move-wide/from16 v0, p3

    invoke-direct {p0, v8, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;J)V

    goto :goto_0

    :cond_3
    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    .line 924
    invoke-direct/range {v3 .. v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(IIJLcom/android/inputmethod/keyboard/Key;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 928
    invoke-direct {p0, v12}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 929
    iget v2, v12, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v3, 0x1

    invoke-direct {p0, v12, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    .line 930
    invoke-direct {p0, v12}, Lcom/android/inputmethod/keyboard/PointerTracker;->startSlidingKeyInput(Lcom/android/inputmethod/keyboard/Key;)V

    .line 931
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v2}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 932
    invoke-direct {p0, v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->startRepeatKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 933
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    if-eqz v2, :cond_5

    .line 937
    invoke-direct {p0, v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 938
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v8

    .line 940
    :cond_4
    move/from16 v0, p2

    invoke-direct {p0, v8, p1, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(Lcom/android/inputmethod/keyboard/Key;II)Lcom/android/inputmethod/keyboard/Key;

    .line 941
    invoke-direct {p0, v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(Lcom/android/inputmethod/keyboard/Key;)V

    .line 942
    move-wide/from16 v0, p3

    invoke-direct {p0, v8, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;J)V

    goto :goto_0

    .line 948
    :cond_5
    sget-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sNeedsPhantomSuddenMoveEventHack:Z

    if-eqz v2, :cond_7

    move/from16 v0, p2

    invoke-static {p1, v0, v10, v11}, Lcom/android/inputmethod/keyboard/PointerTracker;->getDistance(IIII)I

    move-result v2

    iget v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPhantonSuddenMoveThreshold:I

    if-lt v2, v3, :cond_7

    .line 950
    sget-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v2, :cond_6

    .line 951
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v3, "[%d] onMoveEvent: phantom sudden move event (distance=%d) is translated to up[%d,%d,%s]/down[%d,%d,%s] events"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-static {p1, v0, v10, v11}, Lcom/android/inputmethod/keyboard/PointerTracker;->getDistance(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, v12, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v6}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget v6, v8, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v6}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_6
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(J)V

    .line 963
    invoke-direct/range {p0 .. p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJ)V

    goto/16 :goto_0

    .line 968
    :cond_7
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTimeRecorder:Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->isInFastTyping(J)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mBogusMoveEventDetector:Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

    move/from16 v0, p2

    invoke-virtual {v2, p1, v0}, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->isCloseToActualDownEvent(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 971
    sget-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v2, :cond_8

    .line 972
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v2, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v4, v4, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v9, v2

    .line 974
    .local v9, keyDiagonal:F
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mBogusMoveEventDetector:Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

    move/from16 v0, p2

    invoke-virtual {v2, p1, v0}, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->getDistanceFromDownEvent(II)I

    move-result v2

    int-to-float v2, v2

    div-float v13, v2, v9

    .line 977
    .local v13, radiusRatio:F
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v3, "[%d] onMoveEvent: bogus down-move-up event (raidus=%.2f key diagonal) is  translated to up[%d,%d,%s]/down[%d,%d,%s] events"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, v12, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v6}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget v6, v8, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v6}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    .end local v9           #keyDiagonal:F
    .end local v13           #radiusRatio:F
    :cond_8
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(J)V

    .line 985
    invoke-direct/range {p0 .. p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJ)V

    goto/16 :goto_0

    .line 992
    :cond_9
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->getActivePointerTrackerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-virtual {v2, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->hasModifierKeyOlderThan(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 994
    sget-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v2, :cond_a

    .line 995
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v3, "[%d] onMoveEvent: detected sliding finger while multi touching"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_a
    invoke-virtual/range {p0 .. p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 1000
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 1002
    :cond_b
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsDetectingGesture:Z

    if-nez v2, :cond_c

    .line 1003
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 1005
    :cond_c
    invoke-direct {p0, v12}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    goto/16 :goto_0

    .line 1010
    :cond_d
    if-eqz v12, :cond_0

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(IIJLcom/android/inputmethod/keyboard/Key;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    invoke-direct {p0, v12}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 1014
    iget v2, v12, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v3, 0x1

    invoke-direct {p0, v12, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    .line 1015
    invoke-direct {p0, v12}, Lcom/android/inputmethod/keyboard/PointerTracker;->startSlidingKeyInput(Lcom/android/inputmethod/keyboard/Key;)V

    .line 1016
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v2}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelLongPressTimer()V

    .line 1017
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    if-eqz v2, :cond_e

    .line 1018
    move/from16 v0, p2

    invoke-direct {p0, v8, p1, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(Lcom/android/inputmethod/keyboard/Key;II)Lcom/android/inputmethod/keyboard/Key;

    goto/16 :goto_0

    .line 1020
    :cond_e
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsDetectingGesture:Z

    if-nez v2, :cond_0

    .line 1021
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    goto/16 :goto_0
.end method

.method private onMoveKey(II)Lcom/android/inputmethod/keyboard/Key;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 674
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    return-object v0
.end method

.method private onMoveKeyInternal(II)Lcom/android/inputmethod/keyboard/Key;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mBogusMoveEventDetector:Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

    iget v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    invoke-static {p1, p2, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getDistance(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->onMoveKey(I)V

    .line 668
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    .line 669
    iput p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    .line 670
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyDetector;->detectHitKey(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    return-object v0
.end method

.method private onMoveToNewKey(Lcom/android/inputmethod/keyboard/Key;II)Lcom/android/inputmethod/keyboard/Key;
    .locals 0
    .parameter "newKey"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    .line 679
    iput p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyX:I

    .line 680
    iput p3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyY:I

    .line 681
    return-object p1
.end method

.method private onUpEventInternal(J)V
    .locals 6
    .parameter "eventTime"

    .prologue
    const/4 v2, 0x0

    .line 1064
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 1065
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->resetSlidingKeyInput()V

    .line 1066
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsDetectingGesture:Z

    .line 1067
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    .line 1068
    .local v1, currentKey:Lcom/android/inputmethod/keyboard/Key;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    .line 1070
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 1071
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissMoreKeysPanel()Z

    .line 1073
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 1076
    :cond_0
    sget-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    if-eqz v0, :cond_3

    .line 1077
    if-eqz v1, :cond_1

    .line 1078
    iget v0, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    .line 1080
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->mayEndBatchInput(J)V

    .line 1090
    :cond_2
    :goto_0
    return-void

    .line 1084
    :cond_3
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-nez v0, :cond_2

    .line 1087
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Key;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1088
    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyX:I

    iget v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyY:I

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->detectAndSendKey(Lcom/android/inputmethod/keyboard/Key;IIJ)V

    goto :goto_0
.end method

.method private resetSlidingKeyInput()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 854
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 855
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInputFromModifier:Z

    .line 856
    return-void
.end method

.method public static setGestureHandlingEnabledByUser(Z)V
    .locals 0
    .parameter "gestureHandlingEnabledByUser"

    .prologue
    .line 361
    sput-boolean p0, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureHandlingEnabledByUser:Z

    .line 362
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->updateGestureHandlingMode()V

    .line 363
    return-void
.end method

.method public static setKeyDetector(Lcom/android/inputmethod/keyboard/KeyDetector;)V
    .locals 6
    .parameter "keyDetector"

    .prologue
    const/4 v4, 0x1

    .line 390
    sget-object v5, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 391
    .local v3, trackersSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 392
    sget-object v5, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 393
    .local v2, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-direct {v2, p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 395
    iput-boolean v4, v2, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 398
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    iget-object v5, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/KeyboardId;->passwordInput()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    sput-boolean v4, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureHandlingEnabledByInputField:Z

    .line 399
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->updateGestureHandlingMode()V

    .line 400
    return-void

    .line 398
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V
    .locals 7
    .parameter "keyDetector"

    .prologue
    .line 517
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v2

    .line 518
    .local v2, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-ne v2, v4, :cond_0

    .line 535
    :goto_0
    return-void

    .line 521
    :cond_0
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 522
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 523
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v1, v4, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    .line 524
    .local v1, keyWidth:I
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v0, v4, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    .line 525
    .local v0, keyHeight:I
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mGestureStrokeWithPreviewPoints:Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

    invoke-virtual {v4, v1}, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->setKeyboardGeometry(I)V

    .line 526
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    iget v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyX:I

    iget v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyY:I

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/keyboard/KeyDetector;->detectHitKey(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v3

    .line 527
    .local v3, newKey:Lcom/android/inputmethod/keyboard/Key;
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    if-eq v3, v4, :cond_1

    .line 528
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    if-eqz v4, :cond_1

    .line 529
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 533
    :cond_1
    int-to-float v4, v1

    const/high16 v5, 0x3e80

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPhantonSuddenMoveThreshold:I

    .line 534
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mBogusMoveEventDetector:Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

    invoke-virtual {v4, v1, v0}, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->setKeyboardGeometry(II)V

    goto :goto_0
.end method

.method public static setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 382
    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 383
    .local v2, trackersSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 384
    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 385
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iput-object p0, v1, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    return-void
.end method

.method public static setMainDictionaryAvailability(Z)V
    .locals 0
    .parameter "mainDictionaryAvailable"

    .prologue
    .line 356
    sput-boolean p0, Lcom/android/inputmethod/keyboard/PointerTracker;->sMainDictionaryAvailable:Z

    .line 357
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->updateGestureHandlingMode()V

    .line 358
    return-void
.end method

.method public static setParameters(Landroid/content/res/TypedArray;)V
    .locals 3
    .parameter "mainKeyboardViewAttr"

    .prologue
    .line 342
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;-><init>(Landroid/content/res/TypedArray;)V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sParams:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    .line 343
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;-><init>(Landroid/content/res/TypedArray;)V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureStrokeParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    .line 344
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

    sget-object v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sParams:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureStrokeParams:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;-><init>(Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;)V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sTimeRecorder:Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

    .line 345
    return-void
.end method

.method private setPressedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;J)V
    .locals 12
    .parameter "key"
    .parameter "eventTime"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 592
    if-nez p1, :cond_1

    .line 628
    :cond_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->altCodeWhileTyping()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v11}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->isTypingState()Z

    move-result v11

    if-eqz v11, :cond_5

    move v2, v9

    .line 598
    .local v2, altersCode:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    move v7, v9

    .line 599
    .local v7, needsToUpdateGraphics:Z
    :goto_1
    if-eqz v7, :cond_0

    .line 603
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->noKeyPreview()Z

    move-result v9

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    if-nez v9, :cond_3

    invoke-static {p2, p3}, Lcom/android/inputmethod/keyboard/PointerTracker;->needsToSuppressKeyPreviewPopup(J)Z

    move-result v9

    if-nez v9, :cond_3

    .line 604
    iget-object v9, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v9, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->showKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 606
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->updatePressKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 608
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isShift()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 609
    iget-object v9, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v3, v9, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftKeys:[Lcom/android/inputmethod/keyboard/Key;

    .local v3, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v6, v3

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v6, :cond_7

    aget-object v8, v3, v4

    .line 610
    .local v8, shiftKey:Lcom/android/inputmethod/keyboard/Key;
    if-eq v8, p1, :cond_4

    .line 611
    invoke-direct {p0, v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->updatePressKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 609
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #altersCode:Z
    .end local v3           #arr$:[Lcom/android/inputmethod/keyboard/Key;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #needsToUpdateGraphics:Z
    .end local v8           #shiftKey:Lcom/android/inputmethod/keyboard/Key;
    :cond_5
    move v2, v10

    .line 597
    goto :goto_0

    .restart local v2       #altersCode:Z
    :cond_6
    move v7, v10

    .line 598
    goto :goto_1

    .line 616
    .restart local v7       #needsToUpdateGraphics:Z
    :cond_7
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->altCodeWhileTyping()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v9}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->isTypingState()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 617
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->getAltCode()I

    move-result v0

    .line 618
    .local v0, altCode:I
    iget-object v9, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v9, v0}, Lcom/android/inputmethod/keyboard/Keyboard;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    .line 619
    .local v1, altKey:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v1, :cond_8

    .line 620
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->updatePressKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 622
    :cond_8
    iget-object v9, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v3, v9, Lcom/android/inputmethod/keyboard/Keyboard;->mAltCodeKeysWhileTyping:[Lcom/android/inputmethod/keyboard/Key;

    .restart local v3       #arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v6, v3

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v6, :cond_0

    aget-object v5, v3, v4

    .line 623
    .local v5, k:Lcom/android/inputmethod/keyboard/Key;
    if-eq v5, p1, :cond_9

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/Key;->getAltCode()I

    move-result v9

    if-ne v9, v0, :cond_9

    .line 624
    invoke-direct {p0, v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->updatePressKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 622
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private setReleasedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 8
    .parameter "key"

    .prologue
    .line 556
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v7, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 557
    if-nez p1, :cond_1

    .line 584
    :cond_0
    return-void

    .line 562
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->updateReleaseKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 564
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isShift()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 565
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v2, v7, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftKeys:[Lcom/android/inputmethod/keyboard/Key;

    .local v2, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v5, v2

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v2, v3

    .line 566
    .local v6, shiftKey:Lcom/android/inputmethod/keyboard/Key;
    if-eq v6, p1, :cond_2

    .line 567
    invoke-direct {p0, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->updateReleaseKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 565
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 572
    .end local v2           #arr$:[Lcom/android/inputmethod/keyboard/Key;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #shiftKey:Lcom/android/inputmethod/keyboard/Key;
    :cond_3
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->altCodeWhileTyping()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->getAltCode()I

    move-result v0

    .line 574
    .local v0, altCode:I
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v7, v0}, Lcom/android/inputmethod/keyboard/Keyboard;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    .line 575
    .local v1, altKey:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v1, :cond_4

    .line 576
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->updateReleaseKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 578
    :cond_4
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v2, v7, Lcom/android/inputmethod/keyboard/Keyboard;->mAltCodeKeysWhileTyping:[Lcom/android/inputmethod/keyboard/Key;

    .restart local v2       #arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v5, v2

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v4, v2, v3

    .line 579
    .local v4, k:Lcom/android/inputmethod/keyboard/Key;
    if-eq v4, p1, :cond_5

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/Key;->getAltCode()I

    move-result v7

    if-ne v7, v0, :cond_5

    .line 580
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->updateReleaseKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 578
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static setReleasedKeyGraphicsToAllKeys()V
    .locals 4

    .prologue
    .line 403
    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 404
    .local v2, trackersSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 405
    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 406
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget-object v3, v1, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-direct {v1, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    return-void
.end method

.method private startLongPressTimer(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1187
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isLongPressEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v0, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 1190
    :cond_0
    return-void
.end method

.method private startRepeatKey(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    if-nez v0, :cond_0

    .line 1132
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onRegisterKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 1133
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v0, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startKeyRepeatTimer(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 1135
    :cond_0
    return-void
.end method

.method private startSlidingKeyInput(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    if-nez v0, :cond_0

    .line 848
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isModifier()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInputFromModifier:Z

    .line 850
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 851
    return-void
.end method

.method private static updateGestureHandlingMode()V
    .locals 1

    .prologue
    .line 348
    sget-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sMainDictionaryAvailable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureHandlingEnabledByInputField:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureHandlingEnabledByUser:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sShouldHandleGesture:Z

    .line 352
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePressKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 636
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->onPressed()V

    .line 637
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 638
    return-void
.end method

.method private updateReleaseKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 631
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->onReleased()V

    .line 632
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 633
    return-void
.end method


# virtual methods
.method public getDownTime()J
    .locals 2

    .prologue
    .line 653
    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDownTime:J

    return-wide v0
.end method

.method public getGestureStrokeWithPreviewPoints()Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mGestureStrokeWithPreviewPoints:Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

    return-object v0
.end method

.method public getKey()Lcom/android/inputmethod/keyboard/Key;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    return-object v0
.end method

.method public getKeyOn(II)Lcom/android/inputmethod/keyboard/Key;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyDetector;->detectHitKey(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    return-object v0
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    return v0
.end method

.method public isModifier()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->isModifier()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancelEvent(IIJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 1112
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 1113
    .local v0, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0, p0, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;J)V

    .line 1115
    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;)V

    .line 1117
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onCancelEventInternal()V

    .line 1118
    return-void
.end method

.method public onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .locals 16
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "handler"

    .prologue
    .line 774
    invoke-interface/range {p5 .. p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    .line 775
    invoke-interface/range {p5 .. p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 776
    invoke-interface/range {p5 .. p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 777
    invoke-interface/range {p5 .. p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 779
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mUpTime:J

    sub-long v11, p3, v2

    .line 780
    .local v11, deltaT:J
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sParams:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mTouchNoiseThresholdTime:I

    int-to-long v2, v2

    cmp-long v2, v11, v2

    if-gez v2, :cond_2

    .line 781
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->getDistance(IIII)I

    move-result v13

    .line 782
    .local v13, distance:I
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sParams:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    iget v2, v2, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mTouchNoiseThresholdDistance:I

    if-ge v13, v2, :cond_2

    .line 783
    sget-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v2, :cond_0

    .line 784
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v3, "[%d] onDownEvent: ignore potential noise: time=%d distance=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 820
    .end local v13           #distance:I
    :cond_1
    :goto_0
    return-void

    .line 795
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyOn(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v14

    .line 796
    .local v14, key:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mBogusMoveEventDetector:Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker$BogusMoveEventDetector;->onActualDownEvent(II)V

    .line 797
    sget-object v15, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 798
    .local v15, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v15, :cond_4

    .line 799
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/android/inputmethod/keyboard/Key;->isModifier()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 802
    move-wide/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointers(J)V

    .line 804
    :cond_3
    invoke-virtual/range {v15 .. v16}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->add(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;)V

    .line 806
    :cond_4
    invoke-direct/range {p0 .. p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJ)V

    .line 807
    sget-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sShouldHandleGesture:Z

    if-eqz v2, :cond_1

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v2, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    if-nez v2, :cond_6

    if-eqz v14, :cond_6

    iget v2, v14, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v2}, Lcom/android/inputmethod/keyboard/Keyboard;->isLetterCode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsDetectingGesture:Z

    .line 813
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsDetectingGesture:Z

    if-eqz v2, :cond_1

    .line 814
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->getActivePointerTrackerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 815
    sput-wide p3, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureFirstDownTime:J

    .line 817
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mGestureStrokeWithPreviewPoints:Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;

    sget-wide v7, Lcom/android/inputmethod/keyboard/PointerTracker;->sGestureFirstDownTime:J

    sget-object v3, Lcom/android/inputmethod/keyboard/PointerTracker;->sTimeRecorder:Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/PointerTracker$TimeRecorder;->getLastLetterTypingTime()J

    move-result-wide v9

    move/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/inputmethod/keyboard/internal/GestureStrokeWithPreviewPoints;->onDownEvent(IIJJJ)V

    goto :goto_0

    .line 811
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onLongPressed()V
    .locals 2

    .prologue
    .line 1099
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 1100
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(Lcom/android/inputmethod/keyboard/Key;)V

    .line 1101
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 1102
    .local v0, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;)V

    .line 1105
    :cond_0
    return-void
.end method

.method public onMoveEvent(IIJLandroid/view/MotionEvent;)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "me"

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v0, :cond_0

    .line 892
    :goto_0
    return-void

    .line 878
    :cond_0
    sget-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sShouldHandleGesture:Z

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    .line 880
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-virtual {p5, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 881
    .local v9, pointerIndex:I
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 882
    .local v8, historicalSize:I
    const/4 v7, 0x0

    .local v7, h:I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 883
    invoke-virtual {p5, v9, v7}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    float-to-int v1, v0

    .line 884
    .local v1, historicalX:I
    invoke-virtual {p5, v9, v7}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v0

    float-to-int v2, v0

    .line 885
    .local v2, historicalY:I
    invoke-virtual {p5, v7}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v3

    .line 886
    .local v3, historicalTime:J
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onGestureMoveEvent(IIJZLcom/android/inputmethod/keyboard/Key;)V

    .line 882
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 891
    .end local v1           #historicalX:I
    .end local v2           #historicalY:I
    .end local v3           #historicalTime:J
    .end local v7           #h:I
    .end local v8           #historicalSize:I
    .end local v9           #pointerIndex:I
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveEventInternal(IIJ)V

    goto :goto_0
.end method

.method public onPhantomUpEvent(J)V
    .locals 1
    .parameter "eventTime"

    .prologue
    .line 1059
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(J)V

    .line 1060
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 1061
    return-void
.end method

.method public onRegisterKey(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 1138
    if-eqz p1, :cond_0

    .line 1139
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v3, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->detectAndSendKey(Lcom/android/inputmethod/keyboard/Key;IIJ)V

    .line 1140
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startTypingStateTimer(Lcom/android/inputmethod/keyboard/Key;)V

    .line 1142
    :cond_0
    return-void
.end method

.method public onShowMoreKeysPanel(IILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "handler"

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 1095
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 1096
    return-void
.end method

.method public onUpEvent(IIJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 1033
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 1034
    .local v0, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_0

    .line 1035
    sget-boolean v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sInGesture:Z

    if-nez v1, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mCurrentKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Key;->isModifier()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1039
    invoke-virtual {v0, p0, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;J)V

    .line 1045
    :cond_0
    :goto_0
    invoke-direct {p0, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(J)V

    .line 1046
    if-eqz v0, :cond_1

    .line 1047
    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;)V

    .line 1049
    :cond_1
    return-void

    .line 1041
    :cond_2
    invoke-virtual {v0, p0, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersOlderThan(Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue$Element;J)V

    goto :goto_0
.end method

.method public processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .locals 6
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "handler"

    .prologue
    .line 750
    packed-switch p1, :pswitch_data_0

    .line 766
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 753
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    goto :goto_0

    .line 757
    :pswitch_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_0

    .line 760
    :pswitch_3
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveEvent(IIJLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 763
    :pswitch_4
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    goto :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
