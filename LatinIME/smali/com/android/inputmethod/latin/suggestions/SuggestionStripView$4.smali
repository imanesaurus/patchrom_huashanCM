.class Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
    .line 798
    iput-object p1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$4;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "down"
    .parameter "me"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x0

    .line 801
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 802
    .local v0, dy:F
    cmpl-float v1, p4, v3

    if-lez v1, :cond_0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$4;->this$0:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    #calls: Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->showMoreSuggestions()Z
    invoke-static {v1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->access$500(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;)Z

    move-result v1

    .line 805
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
