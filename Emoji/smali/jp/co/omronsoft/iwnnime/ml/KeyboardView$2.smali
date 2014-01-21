.class Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 488
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mPossiblePoly:Z
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$500(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 532
    :goto_0
    return v0

    .line 489
    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 490
    .local v6, absX:F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 491
    .local v7, absY:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v8, v0, v1

    .line 492
    .local v8, deltaX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v9, v0, v1

    .line 493
    .local v9, deltaY:F
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getWidth()I

    move-result v0

    div-int/lit8 v13, v0, 0x2

    .line 494
    .local v13, travelX:I
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->getHeight()I

    move-result v0

    div-int/lit8 v14, v0, 0x2

    .line 495
    .local v14, travelY:I
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeTracker:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$600(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    .line 496
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeTracker:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$600(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;->getXVelocity()F

    move-result v10

    .line 497
    .local v10, endingVelocityX:F
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeTracker:Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$600(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$SwipeTracker;->getYVelocity()F

    move-result v11

    .line 498
    .local v11, endingVelocityY:F
    const/4 v12, 0x0

    .line 499
    .local v12, sendDownKey:Z
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$700(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_4

    cmpg-float v0, v7, v6

    if-gez v0, :cond_4

    int-to-float v0, v13

    cmpl-float v0, v8, v0

    if-lez v0, :cond_4

    .line 500
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$800(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x4080

    div-float v0, p3, v0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_3

    .line 501
    const/4 v12, 0x1

    .line 529
    :cond_1
    :goto_1
    if-eqz v12, :cond_2

    .line 530
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDownKey:I
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$900(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I

    move-result v1

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mStartX:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$1000(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I

    move-result v2

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mStartY:I
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$1100(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    #calls: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->detectAndSendKey(IIIJ)V
    invoke-static/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$1200(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;IIIJ)V

    .line 532
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 503
    :cond_3
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->swipeRight()V

    .line 504
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 506
    :cond_4
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$700(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_6

    cmpg-float v0, v7, v6

    if-gez v0, :cond_6

    neg-int v0, v13

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_6

    .line 507
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$800(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x4080

    div-float v0, p3, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_5

    .line 508
    const/4 v12, 0x1

    goto :goto_1

    .line 510
    :cond_5
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->swipeLeft()V

    .line 511
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 513
    :cond_6
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$700(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_8

    cmpg-float v0, v6, v7

    if-gez v0, :cond_8

    neg-int v0, v14

    int-to-float v0, v0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_8

    .line 514
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$800(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x4080

    div-float v0, p4, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_7

    .line 515
    const/4 v12, 0x1

    goto :goto_1

    .line 517
    :cond_7
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->swipeUp()V

    .line 518
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 520
    :cond_8
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$700(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x4000

    div-float v0, v7, v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_1

    int-to-float v0, v14

    cmpl-float v0, v9, v0

    if-lez v0, :cond_1

    .line 521
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->access$800(Ljp/co/omronsoft/iwnnime/ml/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x4080

    div-float v0, p4, v0

    cmpg-float v0, v11, v0

    if-gez v0, :cond_9

    .line 522
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 524
    :cond_9
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardView$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeyboardView;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->swipeDown()V

    .line 525
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
