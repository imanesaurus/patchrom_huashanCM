.class Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$2;
.super Ljava/lang/Object;
.source "MoreSuggestionsView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;


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
    .line 191
    iput-object p1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    return-object v0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;

    iget-object v0, v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method
