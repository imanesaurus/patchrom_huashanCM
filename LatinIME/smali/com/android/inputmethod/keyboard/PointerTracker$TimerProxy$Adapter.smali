.class public Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;
.super Ljava/lang/Object;
.source "PointerTracker.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDoubleTapTimer()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public cancelKeyTimers()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public cancelLongPressTimer()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public isInDoubleTapTimeout()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isTypingState()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public startDoubleTapTimer()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public startKeyRepeatTimer(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 103
    return-void
.end method

.method public startLongPressTimer(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 107
    return-void
.end method

.method public startLongPressTimer(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 105
    return-void
.end method

.method public startTypingStateTimer(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 0
    .parameter "typedKey"

    .prologue
    .line 99
    return-void
.end method
