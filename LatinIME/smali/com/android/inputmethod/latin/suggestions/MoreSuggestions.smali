.class public final Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;
.super Lcom/android/inputmethod/keyboard/Keyboard;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Divider;,
        Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Builder;,
        Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$MoreSuggestionsParam;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 38
    return-void
.end method
