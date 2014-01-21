.class public interface abstract Lcom/android/inputmethod/keyboard/KeyboardActionListener;
.super Ljava/lang/Object;
.source "KeyboardActionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
    }
.end annotation


# virtual methods
.method public abstract onCancelInput()V
.end method

.method public abstract onCodeInput(III)V
.end method

.method public abstract onCustomRequest(I)Z
.end method

.method public abstract onEndBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V
.end method

.method public abstract onPressKey(I)V
.end method

.method public abstract onReleaseKey(IZ)V
.end method

.method public abstract onStartBatchInput()V
.end method

.method public abstract onTextInput(Ljava/lang/CharSequence;)V
.end method

.method public abstract onUpdateBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V
.end method
