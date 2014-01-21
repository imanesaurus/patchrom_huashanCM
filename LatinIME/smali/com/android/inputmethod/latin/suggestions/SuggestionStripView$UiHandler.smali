.class final Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "SuggestionStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UiHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)V
    .locals 0
    .parameter "outerInstance"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 113
    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;->cancelHidePreview()V

    .line 131
    return-void
.end method

.method public cancelHidePreview()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;->removeMessages(I)V

    .line 127
    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$UiHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    .line 118
    .local v0, suggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 120
    :pswitch_0
    #calls: Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->hidePreview()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->access$000(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
