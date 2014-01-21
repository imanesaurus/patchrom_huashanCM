.class public Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;
.super Ljp/co/omronsoft/iwnnime/ml/KeyboardView;
.source "MultiTouchKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    }
.end annotation


# static fields
.field private static final MULTI_TOUCH_MAX:I = 0xa

.field private static final MULTI_TOUCH_STOP_RANGE:I = 0x50


# instance fields
.field private mCaps:Z

.field private mFlickKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;

.field private mIgnoreTouchId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRepeatKeyTouch:Z

.field private mNormalKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field private mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field private mShifted:Z

.field private mTouchPoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIgnoreTouchId:Ljava/util/ArrayList;

    .line 38
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIsRepeatKeyTouch:Z

    .line 41
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 44
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mNormalKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 47
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShifted:Z

    .line 50
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mCaps:Z

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIgnoreTouchId:Ljava/util/ArrayList;

    .line 38
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIsRepeatKeyTouch:Z

    .line 41
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 44
    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mNormalKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 47
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShifted:Z

    .line 50
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mCaps:Z

    .line 97
    return-void
.end method

.method private executeQueueTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 8
    .parameter "event"
    .parameter "stopId"

    .prologue
    const/4 v7, 0x0

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 269
    .local v3, time:J
    const/4 v2, 0x1

    .line 271
    .local v2, result:Z
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;

    .line 272
    .local v0, point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    :goto_0
    if-eqz v0, :cond_0

    .line 273
    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mX:F

    float-to-int v5, v5

    iget v6, v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mY:F

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getKey(II)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-result-object v1

    .line 275
    .local v1, pointKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    if-eqz v1, :cond_1

    iget-boolean v5, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->repeatable:Z

    if-eqz v5, :cond_1

    .line 276
    iput-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIsRepeatKeyTouch:Z

    .line 280
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->executeTouchAction(JILjp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;)Z

    move-result v2

    .line 281
    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mId:I

    if-ne p2, v5, :cond_2

    .line 288
    .end local v1           #pointKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_0
    return v2

    .line 278
    .restart local v1       #pointKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_1
    invoke-direct {p0, v3, v4, v7, v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->executeTouchAction(JILjp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;)Z

    goto :goto_1

    .line 284
    :cond_2
    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mId:I

    invoke-direct {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setIgnoreTouchId(I)V

    .line 285
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;

    .line 286
    .restart local v0       #point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    goto :goto_0
.end method

.method private executeTouchAction(JILjp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;)Z
    .locals 10
    .parameter "time"
    .parameter "action"
    .parameter "point"

    .prologue
    .line 300
    const/4 v9, 0x0

    .line 302
    .local v9, result:Z
    iget v5, p4, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mX:F

    iget v6, p4, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mY:F

    iget v7, p4, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mMetaState:I

    move-wide v0, p1

    move-wide v2, p1

    move v4, p3

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 304
    .local v8, motionEvent:Landroid/view/MotionEvent;
    invoke-super {p0, v8}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 305
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 306
    return v9
.end method

.method public static getEnterKeyIndex(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I
    .locals 2
    .parameter "keyboard"

    .prologue
    .line 480
    const/16 v1, -0x65

    invoke-static {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getKeyIndex(Ljp/co/omronsoft/iwnnime/ml/Keyboard;I)I

    move-result v0

    .line 481
    .local v0, retKeycode:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 482
    const/16 v1, -0xd8

    invoke-static {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getKeyIndex(Ljp/co/omronsoft/iwnnime/ml/Keyboard;I)I

    move-result v0

    .line 484
    :cond_0
    return v0
.end method

.method public static getKeyIndex(Ljp/co/omronsoft/iwnnime/ml/Keyboard;I)I
    .locals 6
    .parameter "keyboard"
    .parameter "keycode"

    .prologue
    .line 461
    const/4 v2, -0x1

    .line 462
    .local v2, retindex:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 463
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 464
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 465
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, p1, :cond_1

    .line 466
    move v2, v0

    .line 470
    :cond_0
    return v2

    .line 464
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onTouchEventDown(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 137
    .local v4, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 139
    .local v1, index:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 141
    .local v0, id:I
    const/16 v7, 0xa

    if-lt v1, v7, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v6

    .line 145
    :cond_1
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIgnoreTouchId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;

    invoke-direct {v3, p0, v1, p1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;-><init>(Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;ILandroid/view/MotionEvent;)V

    .line 147
    .local v3, point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    iget v7, v3, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mX:F

    float-to-int v7, v7

    iget v8, v3, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mY:F

    float-to-int v8, v8

    invoke-virtual {p0, v7, v8}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getKey(II)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-result-object v2

    .line 148
    .local v2, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    if-eqz v2, :cond_4

    .line 149
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mFlickKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;

    iget-object v8, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    aget v8, v8, v9

    invoke-interface {v7, v8}, Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;->onPress(I)V

    .line 150
    iget-boolean v7, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->repeatable:Z

    if-eqz v7, :cond_2

    .line 151
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIsRepeatKeyTouch:Z

    .line 152
    const/4 v7, -0x1

    invoke-direct {p0, p1, v7}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->executeQueueTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 158
    :cond_2
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-boolean v7, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIsRepeatKeyTouch:Z

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    iget-boolean v7, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->repeatable:Z

    if-eqz v7, :cond_0

    .line 162
    :cond_3
    invoke-direct {p0, v4, v5, v9, v3}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->executeTouchAction(JILjp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;)Z

    move-result v6

    goto :goto_0

    .line 155
    :cond_4
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setIgnoreTouchId(I)V

    goto :goto_0
.end method

.method private onTouchEventMove(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/high16 v11, 0x42a0

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 173
    .local v6, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 174
    .local v2, lastIndex:I
    const/16 v9, 0xa

    if-lt v2, v9, :cond_0

    .line 175
    const/16 v2, 0x9

    .line 177
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 178
    .local v1, lastId:I
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 179
    .local v5, size:I
    if-lez v5, :cond_3

    .line 180
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;

    iget v1, v9, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mId:I

    .line 181
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_3

    .line 183
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;

    .line 184
    .local v3, point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    iget v9, v3, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 185
    .local v4, pointerIndex:I
    if-ltz v4, :cond_2

    if-eq v4, v2, :cond_2

    .line 186
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iget v10, v3, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-gtz v9, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iget v10, v3, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_2

    .line 188
    :cond_1
    iget v9, v3, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mId:I

    invoke-direct {p0, v9}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setIgnoreTouchId(I)V

    .line 189
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 190
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 191
    if-le v5, v0, :cond_2

    .line 182
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v0           #i:I
    .end local v3           #point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    .end local v4           #pointerIndex:I
    :cond_3
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIgnoreTouchId:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v5, :cond_4

    .line 199
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 200
    .local v8, y:F
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_4

    .line 201
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;

    invoke-direct {v3, p0, v2, p1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;-><init>(Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;ILandroid/view/MotionEvent;)V

    .line 202
    .restart local v3       #point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 203
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    const/4 v9, 0x2

    invoke-direct {p0, v6, v7, v9, v3}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->executeTouchAction(JILjp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;)Z

    move-result v9

    .line 207
    .end local v3           #point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    .end local v8           #y:F
    :goto_1
    return v9

    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private onTouchEventUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 219
    .local v1, index:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 221
    .local v0, id:I
    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    .line 222
    const/4 v2, 0x1

    .line 229
    :cond_0
    :goto_0
    return v2

    .line 225
    :cond_1
    const/4 v2, 0x1

    .line 226
    .local v2, result:Z
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIgnoreTouchId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    invoke-direct {p0, p1, v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->executeQueueTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v2

    goto :goto_0
.end method

.method private setIgnoreTouchId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 503
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 504
    .local v0, setId:Ljava/lang/Integer;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIgnoreTouchId:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIgnoreTouchId:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTouchEvent()V
    .locals 5

    .prologue
    .line 414
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mIsRepeatKeyTouch:Z

    .line 415
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 416
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;

    .line 417
    .local v0, lastPoint:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    if-eqz v0, :cond_0

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-direct {p0, v2, v3, v4, v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->executeTouchAction(JILjp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;)Z

    .line 421
    .end local v0           #lastPoint:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;

    .line 422
    .local v1, point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    :goto_0
    if-eqz v1, :cond_1

    .line 423
    iget v2, v1, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;->mId:I

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setIgnoreTouchId(I)V

    .line 424
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;

    .restart local v1       #point:Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView$TouchPoint;
    goto :goto_0

    .line 426
    :cond_1
    return-void
.end method

.method public copyEnterKeyState()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 432
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mNormalKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v4, :cond_0

    .line 433
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mNormalKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getEnterKeyIndex(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v0

    .line 434
    .local v0, normalKeyboardIndex:I
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getEnterKeyIndex(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v2

    .line 436
    .local v2, shiftKeyboardIndex:I
    if-eq v0, v5, :cond_0

    if-eq v2, v5, :cond_0

    .line 437
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mNormalKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 438
    .local v1, normalkey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 439
    .local v3, shiftkey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShifted:Z

    if-eqz v4, :cond_1

    .line 440
    iget-object v4, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v4, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 441
    iget-object v4, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 442
    iget-object v4, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v4, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 450
    .end local v0           #normalKeyboardIndex:I
    .end local v1           #normalkey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v2           #shiftKeyboardIndex:I
    .end local v3           #shiftkey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_0
    :goto_0
    return-void

    .line 444
    .restart local v0       #normalKeyboardIndex:I
    .restart local v1       #normalkey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .restart local v2       #shiftKeyboardIndex:I
    .restart local v3       #shiftkey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_1
    iget-object v4, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v4, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 445
    iget-object v4, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 446
    iget-object v4, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v4, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getKey(II)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .locals 10
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 239
    const/4 v8, 0x0

    .line 240
    .local v8, positionKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v4

    .line 241
    .local v4, keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getPaddingLeft()I

    move-result v9

    sub-int v5, p1, v9

    .line 242
    .local v5, keyboardX:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getPaddingTop()I

    move-result v9

    sub-int v6, p2, v9

    .line 243
    .local v6, keyboardY:I
    invoke-virtual {v4, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getNearestKeys(II)[I

    move-result-object v3

    .line 244
    .local v3, keyIndices:[I
    array-length v2, v3

    .line 246
    .local v2, keyCount:I
    if-lez v2, :cond_0

    .line 247
    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v7

    .line 249
    .local v7, keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 250
    aget v9, v3, v0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 251
    .local v1, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    invoke-virtual {v1, v5, v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isInside(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 252
    move-object v8, v1

    .line 257
    .end local v0           #i:I
    .end local v1           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v7           #keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    :cond_0
    return-object v8

    .line 249
    .restart local v0       #i:I
    .restart local v1       #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .restart local v7       #keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isCapsLock()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mCaps:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShifted:Z

    return v0
.end method

.method protected onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z
    .locals 2
    .parameter "popupKey"

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, result:Z
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mFlickKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;

    invoke-interface {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;->onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const/4 v0, 0x1

    .line 319
    :goto_0
    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 322
    :cond_0
    return v0

    .line 316
    :cond_1
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onLongPress(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 103
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 126
    :pswitch_0
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 106
    :pswitch_1
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->onTouchEventDown(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->onTouchEventMove(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->onTouchEventUp(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setCapsLock(Z)V
    .locals 7
    .parameter "capslock"

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setCapsLockMode(Z)V

    .line 356
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v5, :cond_1

    .line 357
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getModifierKeys()Ljava/util/List;

    move-result-object v3

    .line 358
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 360
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 361
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 362
    .local v2, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iget-object v5, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 363
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 364
    .local v1, index:I
    iput-boolean p1, v2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->on:Z

    .line 365
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v5

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-ne v5, v6, :cond_0

    .line 366
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->invalidateKey(I)V

    .line 360
    .end local v1           #index:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0           #i:I
    .end local v2           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v3           #keys:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;>;"
    .end local v4           #size:I
    :cond_1
    return-void
.end method

.method public setCapsLockMode(Z)V
    .locals 0
    .parameter "capslock"

    .prologue
    .line 379
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mCaps:Z

    .line 380
    return-void
.end method

.method public setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    .locals 1
    .parameter "keyboard"

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setCapsLock(Z)V

    .line 331
    :cond_0
    return-void
.end method

.method public setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    .locals 1
    .parameter "normalKeyboard"
    .parameter "shiftKeyboard"

    .prologue
    .line 341
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mNormalKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eq v0, p2, :cond_0

    .line 342
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->cancelTouchEvent()V

    .line 344
    :cond_0
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mNormalKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 345
    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 346
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShifted:Z

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setShifted(Z)Z

    .line 347
    return-void
.end method

.method public setOnKeyboardActionListener(Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 493
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardView;->setOnKeyboardActionListener(Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;)V

    .line 494
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mFlickKeyboardActionListener:Ljp/co/omronsoft/iwnnime/ml/OnFlickKeyboardActionListener;

    .line 495
    return-void
.end method

.method public setShifted(Z)Z
    .locals 2
    .parameter "shift"

    .prologue
    .line 384
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShifted:Z

    .line 385
    if-eqz p1, :cond_1

    .line 386
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->setShifted(Z)Z

    .line 389
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mShiftKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 393
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 391
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->mNormalKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/MultiTouchKeyboardView;->setKeyboard(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    goto :goto_0
.end method
