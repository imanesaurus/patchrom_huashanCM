.class Lcom/android/inputmethod/research/FeedbackFragment$2;
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
    .line 62
    iput-object p1, p0, Lcom/android/inputmethod/research/FeedbackFragment$2;->this$0:Lcom/android/inputmethod/research/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/inputmethod/research/FeedbackFragment$2;->this$0:Lcom/android/inputmethod/research/FeedbackFragment;

    invoke-virtual {v1}, Lcom/android/inputmethod/research/FeedbackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/research/ResearchLogger;->onLeavingSendFeedbackDialog()V

    .line 68
    return-void
.end method
