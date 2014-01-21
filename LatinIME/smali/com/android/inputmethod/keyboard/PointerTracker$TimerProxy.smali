.class public interface abstract Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimerProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;
    }
.end annotation


# virtual methods
.method public abstract cancelDoubleTapTimer()V
.end method

.method public abstract cancelKeyTimers()V
.end method

.method public abstract cancelLongPressTimer()V
.end method

.method public abstract isInDoubleTapTimeout()Z
.end method

.method public abstract isTypingState()Z
.end method

.method public abstract startDoubleTapTimer()V
.end method

.method public abstract startKeyRepeatTimer(Lcom/android/inputmethod/keyboard/PointerTracker;)V
.end method

.method public abstract startLongPressTimer(I)V
.end method

.method public abstract startLongPressTimer(Lcom/android/inputmethod/keyboard/PointerTracker;)V
.end method

.method public abstract startTypingStateTimer(Lcom/android/inputmethod/keyboard/Key;)V
.end method
