.class Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$1;
.super Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "MoreSuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 79
    return-void
.end method

.method public onCodeInput(III)V
    .locals 2
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 70
    add-int/lit16 v0, p1, -0x400

    .line 71
    .local v0, index:I
    if-ltz v0, :cond_0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    iget-object v1, v1, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCustomRequest(I)Z

    .line 74
    :cond_0
    return-void
.end method

.method public onPressKey(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onPressKey(I)V

    .line 61
    return-void
.end method

.method public onReleaseKey(IZ)V
    .locals 1
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onReleaseKey(IZ)V

    .line 66
    return-void
.end method
