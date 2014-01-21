.class public final Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;
.super Ljava/lang/Object;
.source "AlphabetShiftState.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    return-void
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 121
    packed-switch p0, :pswitch_data_0

    .line 128
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    const-string v0, "UNSHIFTED"

    goto :goto_0

    .line 123
    :pswitch_1
    const-string v0, "MANUAL_SHIFTED"

    goto :goto_0

    .line 124
    :pswitch_2
    const-string v0, "MANUAL_SHIFTED_FROM_AUTO"

    goto :goto_0

    .line 125
    :pswitch_3
    const-string v0, "AUTOMATIC_SHIFTED"

    goto :goto_0

    .line 126
    :pswitch_4
    const-string v0, "SHIFT_LOCKED"

    goto :goto_0

    .line 127
    :pswitch_5
    const-string v0, "SHIFT_LOCK_SHIFTED"

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public isAutomaticShifted()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualShifted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 107
    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualShiftedFromAutomaticShifted()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShiftLockShifted()Z
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShiftLocked()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShiftedOrShiftLocked()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutomaticShifted()V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    .line 85
    .local v0, oldState:I
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    .line 88
    return-void
.end method

.method public setShiftLocked(Z)V
    .locals 2
    .parameter "newShiftLockState"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    .line 66
    .local v0, oldState:I
    if-eqz p1, :cond_0

    .line 67
    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    goto :goto_0

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShifted(Z)V
    .locals 2
    .parameter "newShiftState"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    .line 36
    .local v0, oldState:I
    if-eqz p1, :cond_0

    .line 37
    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    :pswitch_0
    return-void

    .line 39
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    goto :goto_0

    .line 42
    :pswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    goto :goto_0

    .line 45
    :pswitch_3
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    goto :goto_0

    .line 49
    :cond_0
    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 53
    :pswitch_5
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    goto :goto_0

    .line 56
    :pswitch_6
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 49
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->mState:I

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
