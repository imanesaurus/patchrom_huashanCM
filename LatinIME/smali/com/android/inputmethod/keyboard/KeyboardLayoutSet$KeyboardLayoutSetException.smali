.class public final Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException;
.super Ljava/lang/RuntimeException;
.source "KeyboardLayoutSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyboardLayoutSetException"
.end annotation


# instance fields
.field public final mKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/android/inputmethod/keyboard/KeyboardId;)V
    .locals 0
    .parameter "cause"
    .parameter "keyboardId"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException;->mKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 86
    return-void
.end method
