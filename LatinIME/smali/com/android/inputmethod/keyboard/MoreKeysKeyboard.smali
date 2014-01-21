.class public final Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;
.super Lcom/android/inputmethod/keyboard/Keyboard;
.source "MoreKeysKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeyDivider;,
        Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;,
        Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;
    }
.end annotation


# instance fields
.field private final mDefaultKeyCoordX:I


# direct methods
.method constructor <init>(Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 35
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getDefaultKeyCoordX()I

    move-result v0

    iget v1, p1, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDefaultKeyWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;->mDefaultKeyCoordX:I

    .line 36
    return-void
.end method


# virtual methods
.method public getDefaultCoordX()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;->mDefaultKeyCoordX:I

    return v0
.end method
