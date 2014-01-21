.class public final Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;
.super Ljava/lang/Object;
.source "SuddenJumpingTouchEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;
    }
.end annotation


# static fields
.field private static DEBUG_MODE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisableDisambiguation:Z

.field private mDroppingEvents:Z

.field private mJumpThresholdSquare:I

.field private mLastX:I

.field private mLastY:I

.field private final mNeedsSuddenJumpingHack:Z

.field private final mView:Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->TAG:Ljava/lang/String;

    .line 33
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->DEBUG_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mJumpThresholdSquare:I

    .line 55
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mView:Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0014

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDeviceOverrideValue(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mNeedsSuddenJumpingHack:Z

    .line 58
    return-void
.end method

.method private handleSuddenJumping(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mNeedsSuddenJumpingHack:Z

    if-nez v0, :cond_0

    .line 79
    const/4 v10, 0x0

    .line 140
    :goto_0
    return v10

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 81
    .local v8, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v12, v0

    .line 82
    .local v12, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v13, v0

    .line 83
    .local v13, y:I
    const/4 v10, 0x0

    .line 86
    .local v10, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mDisableDisambiguation:Z

    .line 89
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mDisableDisambiguation:Z

    if-eqz v0, :cond_3

    .line 91
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mDisableDisambiguation:Z

    .line 92
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 95
    :cond_3
    packed-switch v8, :pswitch_data_0

    .line 138
    :cond_4
    :goto_1
    iput v12, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mLastX:I

    .line 139
    iput v13, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mLastY:I

    goto :goto_0

    .line 98
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mDisableDisambiguation:Z

    goto :goto_1

    .line 103
    :pswitch_1
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mLastX:I

    sub-int/2addr v0, v12

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mLastX:I

    sub-int/2addr v1, v12

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mLastY:I

    sub-int/2addr v1, v13

    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mLastY:I

    sub-int/2addr v2, v13

    mul-int/2addr v1, v2

    add-int v9, v0, v1

    .line 105
    .local v9, distanceSquare:I
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mJumpThresholdSquare:I

    if-le v9, v0, :cond_6

    .line 107
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    if-nez v0, :cond_5

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mLastX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mLastY:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 114
    .local v11, translated:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mView:Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;

    invoke-interface {v0, v11}, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;->processMotionEvent(Landroid/view/MotionEvent;)Z

    .line 115
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 117
    .end local v11           #translated:Landroid/view/MotionEvent;
    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    .line 118
    :cond_6
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    if-eqz v0, :cond_4

    .line 120
    const/4 v10, 0x1

    goto :goto_1

    .line 124
    .end local v9           #distanceSquare:I
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    if-eqz v0, :cond_4

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 130
    .restart local v11       #translated:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mView:Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;

    invoke-interface {v0, v11}, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;->processMotionEvent(Landroid/view/MotionEvent;)Z

    .line 131
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "me"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->handleSuddenJumping(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    sget-boolean v0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: ignore sudden jump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mView:Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler$ProcessMotionEvent;->processMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 2
    .parameter "newKeyboard"

    .prologue
    .line 62
    iget v1, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    div-int/lit8 v0, v1, 0x7

    .line 63
    .local v0, jumpThreshold:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/SuddenJumpingTouchEventHandler;->mJumpThresholdSquare:I

    .line 64
    return-void
.end method
