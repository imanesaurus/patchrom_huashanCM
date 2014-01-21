.class Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$3;
.super Ljava/lang/Object;
.source "SuggestionStripView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;


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
    .line 733
    iput-object p1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$3;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$3;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    #calls: Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->dismissMoreSuggestions()Z
    invoke-static {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->access$400(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Z

    move-result v0

    return v0
.end method
