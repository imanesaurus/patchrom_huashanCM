.class public interface abstract Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;
.super Ljava/lang/Object;
.source "KeyboardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/KeyboardState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwitchActions"
.end annotation


# virtual methods
.method public abstract cancelDoubleTapTimer()V
.end method

.method public abstract cancelLongPressTimer()V
.end method

.method public abstract hapticAndAudioFeedback(I)V
.end method

.method public abstract isInDoubleTapTimeout()Z
.end method

.method public abstract requestUpdatingShiftState()V
.end method

.method public abstract setAlphabetAutomaticShiftedKeyboard()V
.end method

.method public abstract setAlphabetKeyboard()V
.end method

.method public abstract setAlphabetManualShiftedKeyboard()V
.end method

.method public abstract setAlphabetShiftLockShiftedKeyboard()V
.end method

.method public abstract setAlphabetShiftLockedKeyboard()V
.end method

.method public abstract setSymbolsKeyboard()V
.end method

.method public abstract setSymbolsShiftedKeyboard()V
.end method

.method public abstract startDoubleTapTimer()V
.end method

.method public abstract startLongPressTimer(I)V
.end method
