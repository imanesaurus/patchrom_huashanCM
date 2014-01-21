.class public final Lcom/android/inputmethod/keyboard/internal/KeyboardState;
.super Ljava/lang/Object;
.source "KeyboardState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

.field private mIsAlphabetMode:Z

.field private mIsInAlphabetUnshiftedFromShifted:Z

.field private mIsInDoubleTapShiftKey:Z

.field private mIsSymbolShifted:Z

.field private mLayoutSwitchBackSymbols:Ljava/lang/String;

.field private mLongPressShiftLockFired:Z

.field private mPrevMainKeyboardWasShiftLocked:Z

.field private mPrevSymbolsKeyboardWasShifted:Z

.field private final mSavedKeyboardState:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;

.field private mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

.field private final mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

.field private mSwitchState:I

.field private mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;)V
    .locals 2
    .parameter "switchActions"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    const-string v1, "Shift"

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    .line 67
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    const-string v1, "Symbol"

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 81
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    .line 93
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;

    .line 114
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    .line 115
    return-void
.end method

.method private isLayoutSwitchBackCharacter(I)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 551
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSpaceCharacter(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 547
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPressShift()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLongPressShiftLockFired:Z

    .line 427
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_7

    .line 428
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->isInDoubleTapTimeout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInDoubleTapShiftKey:Z

    .line 429
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInDoubleTapShiftKey:Z

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->startDoubleTapTimer()V

    .line 433
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInDoubleTapShiftKey:Z

    if-eqz v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isManualShifted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInAlphabetUnshiftedFromShifted:Z

    if-eqz v0, :cond_2

    .line 437
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    .line 470
    :cond_2
    :goto_0
    return-void

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    .line 447
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 462
    :goto_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->startLongPressTimer(I)V

    goto :goto_0

    .line 448
    :cond_4
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isAutomaticShifted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 451
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    .line 452
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    goto :goto_1

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 456
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPressOnShifted()V

    goto :goto_1

    .line 459
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    .line 460
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    goto :goto_1

    .line 466
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleShiftInSymbols()V

    .line 467
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 468
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    goto :goto_0
.end method

.method private onPressSymbol()V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    .line 364
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onPress()V

    .line 365
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 366
    return-void
.end method

.method private onReleaseShift(Z)V
    .locals 4
    .parameter "withSliding"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 473
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v3, :cond_b

    .line 474
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    .line 475
    .local v0, isShiftLocked:Z
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInAlphabetUnshiftedFromShifted:Z

    .line 476
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInDoubleTapShiftKey:Z

    if-eqz v3, :cond_1

    .line 479
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInDoubleTapShiftKey:Z

    .line 524
    .end local v0           #isShiftLocked:Z
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    .line 525
    :goto_1
    return-void

    .line 480
    .restart local v0       #isShiftLocked:Z
    :cond_1
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLongPressShiftLockFired:Z

    if-eqz v3, :cond_3

    .line 481
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 482
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isChording()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 483
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLockShifted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 485
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    .line 492
    :goto_3
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    .line 493
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->requestUpdatingShiftState()V

    goto :goto_1

    .line 488
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    goto :goto_3

    .line 495
    :cond_5
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLockShifted()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    .line 497
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    goto :goto_0

    .line 498
    :cond_6
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLockShifted()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressing()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressingOnShifted()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    if-eqz p1, :cond_0

    .line 502
    :cond_8
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v3

    if-nez v3, :cond_9

    if-nez p1, :cond_9

    .line 504
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    goto :goto_0

    .line 505
    :cond_9
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftedOrShiftLocked()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressingOnShifted()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez p1, :cond_a

    .line 508
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    .line 509
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInAlphabetUnshiftedFromShifted:Z

    goto/16 :goto_0

    .line 510
    :cond_a
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isManualShiftedFromAutomaticShifted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressing()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    .line 514
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    .line 515
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInAlphabetUnshiftedFromShifted:Z

    goto/16 :goto_0

    .line 520
    .end local v0           #isShiftLocked:Z
    :cond_b
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isChording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleShiftInSymbols()V

    goto/16 :goto_0
.end method

.method private onReleaseSymbol(Z)V
    .locals 1
    .parameter "withSliding"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->isChording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    .line 379
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onRelease()V

    .line 380
    return-void

    .line 373
    :cond_1
    if-nez p1, :cond_0

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    goto :goto_0
.end method

.method private onRestoreKeyboardState()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;

    .line 153
    .local v0, state:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;
    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsValid:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetMode:Z

    if-eqz v2, :cond_2

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setAlphabetKeyboard()V

    .line 163
    :goto_0
    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsValid:Z

    if-nez v2, :cond_4

    .line 174
    :cond_1
    :goto_1
    return-void

    .line 156
    :cond_2
    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsShifted:Z

    if-eqz v2, :cond_3

    .line 157
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsShiftedKeyboard()V

    goto :goto_0

    .line 159
    :cond_3
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsKeyboard()V

    goto :goto_0

    .line 164
    :cond_4
    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsValid:Z

    .line 166
    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetMode:Z

    if-eqz v2, :cond_6

    .line 167
    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    .line 168
    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    if-nez v2, :cond_1

    .line 169
    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsShifted:Z

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    goto :goto_1

    .line 172
    :cond_6
    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    goto :goto_1
.end method

.method private resetKeyboardStateToAlphabet()V
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    .line 266
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setAlphabetKeyboard()V

    .line 267
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    if-eqz v0, :cond_1

    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    .line 270
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    goto :goto_0
.end method

.method private setAlphabetKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetKeyboard()V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    .line 288
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    .line 289
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 290
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->requestUpdatingShiftState()V

    .line 291
    return-void
.end method

.method private setShiftLocked(Z)V
    .locals 1
    .parameter "shiftLocked"

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 225
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLockShifted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetShiftLockedKeyboard()V

    .line 229
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetKeyboard()V

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShiftLocked(Z)V

    goto :goto_0
.end method

.method private setShifted(I)V
    .locals 3
    .parameter "shiftMode"

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isAutomaticShifted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    const/4 v0, 0x2

    .line 194
    .local v0, prevShiftMode:I
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShifted(Z)V

    .line 209
    if-eq p1, v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetKeyboard()V

    goto :goto_0

    .line 189
    .end local v0           #prevShiftMode:I
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isManualShifted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    const/4 v0, 0x1

    .restart local v0       #prevShiftMode:I
    goto :goto_1

    .line 192
    .end local v0           #prevShiftMode:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #prevShiftMode:I
    goto :goto_1

    .line 196
    :pswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setAutomaticShifted()V

    .line 197
    if-eq p1, v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetAutomaticShiftedKeyboard()V

    goto :goto_0

    .line 202
    :pswitch_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShifted(Z)V

    .line 203
    if-eq p1, v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetManualShiftedKeyboard()V

    goto :goto_0

    .line 214
    :pswitch_3
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShifted(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetShiftLockShiftedKeyboard()V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setSymbolsKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setSymbolsKeyboard()V

    .line 298
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    .line 299
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    .line 301
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShiftLocked(Z)V

    .line 302
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 303
    return-void
.end method

.method private setSymbolsShiftedKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setSymbolsShiftedKeyboard()V

    .line 310
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    .line 311
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    .line 313
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShiftLocked(Z)V

    .line 314
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 315
    return-void
.end method

.method private static switchStateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "switchState"

    .prologue
    .line 629
    packed-switch p0, :pswitch_data_0

    .line 635
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 630
    :pswitch_0
    const-string v0, "ALPHA"

    goto :goto_0

    .line 631
    :pswitch_1
    const-string v0, "SYMBOL-BEGIN"

    goto :goto_0

    .line 632
    :pswitch_2
    const-string v0, "SYMBOL"

    goto :goto_0

    .line 633
    :pswitch_3
    const-string v0, "MOMENTARY-ALPHA-SYMBOL"

    goto :goto_0

    .line 634
    :pswitch_4
    const-string v0, "MOMENTARY-SYMBOL-MORE"

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private toggleAlphabetAndSymbols()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    .line 241
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsShiftedKeyboard()V

    .line 246
    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    .line 255
    :goto_1
    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsKeyboard()V

    goto :goto_0

    .line 248
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    .line 249
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setAlphabetKeyboard()V

    .line 250
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    if-eqz v0, :cond_2

    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    .line 253
    :cond_2
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    goto :goto_1
.end method

.method private toggleShiftInSymbols()V
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsKeyboard()V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsShiftedKeyboard()V

    goto :goto_0
.end method

.method private updateAlphabetShiftState(I)V
    .locals 1
    .parameter "autoCaps"

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isReleasing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isReleasing()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 418
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    goto :goto_0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isChording()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isInMomentarySwitchState()Z
    .locals 2

    .prologue
    .line 542
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancelInput(Z)V
    .locals 2
    .parameter "isSinglePointer"

    .prologue
    .line 532
    if-eqz p1, :cond_0

    .line 533
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 534
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleShiftInSymbols()V

    goto :goto_0
.end method

.method public onCodeInput(IZI)V
    .locals 4
    .parameter "code"
    .parameter "isSinglePointer"
    .parameter "autoCaps"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 563
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    packed-switch v0, :pswitch_data_0

    .line 614
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->isLetterCode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    invoke-direct {p0, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->updateAlphabetShiftState(I)V

    .line 617
    :cond_1
    return-void

    .line 565
    :pswitch_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    .line 567
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_2

    .line 568
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    goto :goto_0

    .line 570
    :cond_2
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    goto :goto_0

    .line 572
    :cond_3
    if-eqz p2, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    goto :goto_0

    .line 581
    :pswitch_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 583
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    goto :goto_0

    .line 584
    :cond_4
    if-eqz p2, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleShiftInSymbols()V

    .line 588
    iput v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    goto :goto_0

    .line 592
    :pswitch_2
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->isSpaceCharacter(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->isLetterCode(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, -0x3

    if-ne p1, v0, :cond_6

    .line 594
    :cond_5
    iput v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 598
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->isLayoutSwitchBackCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    .line 600
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    goto :goto_0

    .line 606
    :pswitch_3
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->isSpaceCharacter(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->isLayoutSwitchBackCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    .line 608
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    goto :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoadKeyboard(Ljava/lang/String;)V
    .locals 2
    .parameter "layoutSwitchBackSymbols"

    .prologue
    const/4 v1, 0x0

    .line 121
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShiftLocked(Z)V

    .line 124
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    .line 126
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    .line 127
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onRelease()V

    .line 128
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onRestoreKeyboardState()V

    .line 129
    return-void
.end method

.method public onLongPressTimeout(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLongPressShiftLockFired:Z

    .line 388
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->hapticAndAudioFeedback(I)V

    .line 390
    :cond_0
    return-void
.end method

.method public onPressKey(IZI)V
    .locals 2
    .parameter "code"
    .parameter "isSinglePointer"
    .parameter "autoCaps"

    .prologue
    const/4 v0, 0x0

    .line 322
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onPressShift()V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    .line 325
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onPressSymbol()V

    goto :goto_0

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->cancelDoubleTapTimer()V

    .line 328
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->cancelLongPressTimer()V

    .line 329
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLongPressShiftLockFired:Z

    .line 330
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onOtherKeyPressed()V

    .line 331
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onOtherKeyPressed()V

    .line 340
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1000

    if-eq p3, v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isAutomaticShifted()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isManualShifted()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isReleasing()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 343
    .local v0, needsToResetAutoCaps:Z
    :cond_4
    if-eqz v0, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetKeyboard()V

    goto :goto_0
.end method

.method public onReleaseKey(IZ)V
    .locals 1
    .parameter "code"
    .parameter "withSliding"

    .prologue
    .line 355
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 356
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onReleaseShift(Z)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 358
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onReleaseSymbol(Z)V

    goto :goto_0
.end method

.method public onResetKeyboardStateToAlphabet()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->resetKeyboardStateToAlphabet()V

    .line 406
    return-void
.end method

.method public onSaveKeyboardState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 132
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;

    .line 133
    .local v0, state:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetMode:Z

    .line 134
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    .line 136
    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsShifted:Z

    .line 142
    :goto_1
    iput-boolean v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsValid:Z

    .line 146
    return-void

    .line 136
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    :cond_1
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    .line 140
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsShifted:Z

    goto :goto_1
.end method

.method public onUpdateShiftState(I)V
    .locals 0
    .parameter "autoCaps"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->updateAlphabetShiftState(I)V

    .line 397
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[keyboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " switch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->switchStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    if-eqz v0, :cond_1

    const-string v0, "SYMBOLS_SHIFTED"

    goto :goto_0

    :cond_1
    const-string v0, "SYMBOLS"

    goto :goto_0
.end method
