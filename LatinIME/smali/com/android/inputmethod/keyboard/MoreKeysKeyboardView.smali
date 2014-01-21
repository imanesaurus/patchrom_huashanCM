.class public final Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;
.super Lcom/android/inputmethod/keyboard/KeyboardView;
.source "MoreKeysKeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/MoreKeysPanel;


# static fields
.field private static final EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# instance fields
.field private mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mCoordinates:[I

.field private mIsDismissing:Z

.field private final mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private final mMoreKeysKeyboardListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private mOriginX:I

.field private mOriginY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const v0, 0x7f010004

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mCoordinates:[I

    .line 48
    new-instance v1, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView$1;-><init>(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mMoreKeysKeyboardListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/inputmethod/keyboard/MoreKeysDetector;

    const v2, 0x7f0c0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;-><init>(F)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 104
    invoke-virtual {p0, v3, v3}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mIsDismissing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 181
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mIsDismissing:Z

    .line 182
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    invoke-interface {v2}, Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;->dismissMoreKeysPanel()Z

    move-result v0

    .line 183
    .local v0, dismissed:Z
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mIsDismissing:Z

    goto :goto_0
.end method

.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .locals 0

    .prologue
    .line 138
    return-object p0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mMoreKeysKeyboardListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 110
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v1, :cond_0

    .line 111
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 112
    .local v2, width:I
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 113
    .local v0, height:I
    invoke-virtual {p0, v2, v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->setMeasuredDimension(II)V

    .line 117
    .end local v0           #height:I
    .end local v2           #width:I
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .locals 1
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-super {p0, v0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 151
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 4
    .parameter "keyboard"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mVerticalCorrection:F

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 124
    return-void
.end method

.method public showMoreKeysPanel(Landroid/view/View;Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .locals 9
    .parameter "parentView"
    .parameter "controller"
    .parameter "pointX"
    .parameter "pointY"
    .parameter "window"
    .parameter "listener"

    .prologue
    const/4 v8, 0x0

    .line 156
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 157
    iput-object p6, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 158
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 159
    .local v0, container:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;

    .line 160
    .local v2, pane:Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;->getDefaultCoordX()I

    move-result v1

    .line 162
    .local v1, defaultCoordX:I
    sub-int v5, p3, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int v3, v5, v6

    .line 163
    .local v3, x:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, p4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int v4, v5, v6

    .line 165
    .local v4, y:I
    invoke-virtual {p5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 168
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mCoordinates:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 169
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mCoordinates:[I

    aget v5, v5, v8

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v6, v4

    invoke-virtual {p5, p1, v8, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mOriginX:I

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mOriginY:I

    .line 174
    return-void
.end method

.method public translateX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 189
    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mOriginX:I

    sub-int v0, p1, v0

    return v0
.end method

.method public translateY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 194
    iget v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboardView;->mOriginY:I

    sub-int v0, p1, v0

    return v0
.end method
