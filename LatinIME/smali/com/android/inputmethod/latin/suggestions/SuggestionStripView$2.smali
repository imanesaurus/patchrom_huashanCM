.class Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$2;
.super Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "SuggestionStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)V
    .locals 0
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$2;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$2;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    #calls: Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->dismissMoreSuggestions()Z
    invoke-static {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->access$400(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Z

    .line 729
    return-void
.end method

.method public onCustomRequest(I)Z
    .locals 3
    .parameter "requestCode"

    .prologue
    .line 719
    move v0, p1

    .line 720
    .local v0, index:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$2;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    #getter for: Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mSuggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-static {v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->access$200(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, word:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$2;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    #getter for: Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mListener:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;
    invoke-static {v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->access$300(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 722
    iget-object v2, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$2;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    #calls: Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->dismissMoreSuggestions()Z
    invoke-static {v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->access$400(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Z

    .line 723
    const/4 v2, 0x1

    return v2
.end method
