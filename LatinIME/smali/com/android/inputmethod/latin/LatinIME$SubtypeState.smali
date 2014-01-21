.class final Lcom/android/inputmethod/latin/LatinIME$SubtypeState;
.super Ljava/lang/Object;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubtypeState"
.end annotation


# instance fields
.field private mCurrentSubtypeUsed:Z

.field private mLastActiveSubtype:Landroid/view/inputmethod/InputMethodSubtype;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentSubtypeUsed()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;->mCurrentSubtypeUsed:Z

    .line 376
    return-void
.end method

.method public switchSubtype(Landroid/os/IBinder;Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Landroid/content/Context;)V
    .locals 5
    .parameter "token"
    .parameter "imm"
    .parameter "context"

    .prologue
    .line 380
    invoke-virtual {p2}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 381
    .local v0, currentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;->mLastActiveSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 382
    .local v3, lastActiveSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;->mCurrentSubtypeUsed:Z

    .line 383
    .local v1, currentSubtypeUsed:Z
    if-eqz v1, :cond_0

    .line 384
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;->mLastActiveSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 385
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;->mCurrentSubtypeUsed:Z

    .line 387
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p3, v3}, Lcom/android/inputmethod/latin/ImfUtils;->checkIfSubtypeBelongsToThisImeAndEnabled(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 390
    invoke-static {p3}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodIdOfThisIme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, id:Ljava/lang/String;
    invoke-virtual {p2, p1, v2, v3}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 395
    .end local v2           #id:Ljava/lang/String;
    :goto_0
    return-void

    .line 394
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p2, p1, v4}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    goto :goto_0
.end method
