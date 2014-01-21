.class Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;
.super Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "MoreKeysKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 81
    return-void
.end method

.method public onCodeInput(III)V
    .locals 2
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, -0x1

    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(III)V

    .line 56
    return-void
.end method

.method public onEndBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 1
    .parameter "batchPointers"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onEndBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V

    .line 76
    return-void
.end method

.method public onPressKey(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onPressKey(I)V

    .line 86
    return-void
.end method

.method public onReleaseKey(IZ)V
    .locals 1
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onReleaseKey(IZ)V

    .line 91
    return-void
.end method

.method public onStartBatchInput()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onStartBatchInput()V

    .line 66
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public onUpdateBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 1
    .parameter "batchPointers"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onUpdateBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V

    .line 71
    return-void
.end method
