.class final Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;
.super Ljava/lang/Object;
.source "KeyboardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/KeyboardState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SavedKeyboardState"
.end annotation


# instance fields
.field public mIsAlphabetMode:Z

.field public mIsAlphabetShiftLocked:Z

.field public mIsShifted:Z

.field public mIsValid:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsValid:Z

    if-nez v0, :cond_0

    const-string v0, "INVALID"

    .line 108
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_3

    .line 105
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    if-eqz v0, :cond_1

    const-string v0, "ALPHABET_SHIFT_LOCKED"

    goto :goto_0

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsShifted:Z

    if-eqz v0, :cond_2

    const-string v0, "ALPHABET_SHIFTED"

    goto :goto_0

    :cond_2
    const-string v0, "ALPHABET"

    goto :goto_0

    .line 108
    :cond_3
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsShifted:Z

    if-eqz v0, :cond_4

    const-string v0, "SYMBOLS_SHIFTED"

    goto :goto_0

    :cond_4
    const-string v0, "SYMBOLS"

    goto :goto_0
.end method
