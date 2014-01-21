.class Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$1;
.super Ljava/lang/Object;
.source "SuggestionStripView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 642
    iput-object p1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$1;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$1;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    #getter for: Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    invoke-static {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->access$100(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Lcom/android/inputmethod/keyboard/KeyboardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->dimEntireKeyboard(Z)V

    .line 646
    return-void
.end method
