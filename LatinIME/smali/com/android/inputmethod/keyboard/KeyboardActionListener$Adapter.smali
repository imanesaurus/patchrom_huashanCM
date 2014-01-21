.class public Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.super Ljava/lang/Object;
.source "KeyboardActionListener.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/KeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInvalidCoordinate(I)Z
    .locals 1
    .parameter "coordinate"

    .prologue
    .line 121
    if-gez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCancelInput()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onCodeInput(III)V
    .locals 0
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 100
    return-void
.end method

.method public onCustomRequest(I)Z
    .locals 1
    .parameter "requestCode"

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onEndBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 0
    .parameter "batchPointers"

    .prologue
    .line 108
    return-void
.end method

.method public onPressKey(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 96
    return-void
.end method

.method public onReleaseKey(IZ)V
    .locals 0
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 98
    return-void
.end method

.method public onStartBatchInput()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 102
    return-void
.end method

.method public onUpdateBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 0
    .parameter "batchPointers"

    .prologue
    .line 106
    return-void
.end method
