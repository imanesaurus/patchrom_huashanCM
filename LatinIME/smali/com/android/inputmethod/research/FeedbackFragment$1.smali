.class Lcom/android/inputmethod/research/FeedbackFragment$1;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/research/FeedbackFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/research/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/research/FeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/inputmethod/research/FeedbackFragment$1;->this$0:Lcom/android/inputmethod/research/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 50
    iget-object v4, p0, Lcom/android/inputmethod/research/FeedbackFragment$1;->this$0:Lcom/android/inputmethod/research/FeedbackFragment;

    #getter for: Lcom/android/inputmethod/research/FeedbackFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/inputmethod/research/FeedbackFragment;->access$000(Lcom/android/inputmethod/research/FeedbackFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 51
    .local v1, editable:Landroid/text/Editable;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, feedbackContents:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/inputmethod/research/FeedbackFragment$1;->this$0:Lcom/android/inputmethod/research/FeedbackFragment;

    #getter for: Lcom/android/inputmethod/research/FeedbackFragment;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/inputmethod/research/FeedbackFragment;->access$100(Lcom/android/inputmethod/research/FeedbackFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 53
    .local v3, includeHistory:Z
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/inputmethod/research/ResearchLogger;->sendFeedback(Ljava/lang/String;Z)V

    .line 54
    iget-object v4, p0, Lcom/android/inputmethod/research/FeedbackFragment$1;->this$0:Lcom/android/inputmethod/research/FeedbackFragment;

    invoke-virtual {v4}, Lcom/android/inputmethod/research/FeedbackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 55
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 56
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/research/ResearchLogger;->onLeavingSendFeedbackDialog()V

    .line 57
    return-void
.end method
