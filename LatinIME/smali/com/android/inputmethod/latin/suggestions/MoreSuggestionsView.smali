.class public final Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;
.super Lcom/android/inputmethod/keyboard/KeyboardView;
.source "MoreSuggestionsView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/MoreKeysPanel;


# static fields
.field static final EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# instance fields
.field private mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mCoordinates:[I

.field private mIsDismissing:Z

.field mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field final mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private final mModalPanelKeyEventHandler:Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;

.field private mOriginX:I

.field private mOriginY:I

.field private final mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field final mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    const v0, 0x7f010008

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mCoordinates:[I

    .line 56
    new-instance v1, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$1;-><init>(Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 191
    new-instance v1, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView$2;-><init>(Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mModalPanelKeyEventHandler:Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>(F)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 91
    new-instance v1, Lcom/android/inputmethod/keyboard/MoreKeysDetector;

    const v2, 0x7f0c0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;-><init>(F)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 93
    invoke-virtual {p0, v3, v3}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->setKeyPreviewPopupEnabled(ZI)V

    .line 94
    return-void
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mIsDismissing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 178
    :goto_0
    return v0

    .line 175
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mIsDismissing:Z

    .line 176
    iget-object v2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    invoke-interface {v2}, Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;->dismissMoreKeysPanel()Z

    move-result v0

    .line 177
    .local v0, dismissed:Z
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mIsDismissing:Z

    goto :goto_0
.end method

.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .locals 0

    .prologue
    .line 132
    return-object p0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 99
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v1, :cond_0

    .line 100
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 101
    .local v2, width:I
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 102
    .local v0, height:I
    invoke-virtual {p0, v2, v0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->setMeasuredDimension(II)V

    .line 106
    .end local v0           #height:I
    .end local v2           #width:I
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->onMeasure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "me"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 216
    .local v1, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 217
    .local v4, eventTime:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 218
    .local v8, index:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 219
    .local v7, id:I
    invoke-static {v7, p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 220
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v2, v6

    .line 221
    .local v2, x:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v3, v6

    .line 222
    .local v3, y:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mModalPanelKeyEventHandler:Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    invoke-virtual/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 223
    const/4 v6, 0x1

    return v6
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .locals 1
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-super {p0, v0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 145
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 4
    .parameter "keyboard"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 115
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 116
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mVerticalCorrection:F

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 118
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

    .line 150
    iput-object p2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 151
    iput-object p6, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 152
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 153
    .local v0, container:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;

    .line 154
    .local v2, pane:Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;
    iget v5, v2, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;->mOccupiedWidth:I

    div-int/lit8 v1, v5, 0x2

    .line 156
    .local v1, defaultCoordX:I
    sub-int v5, p3, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int v3, v5, v6

    .line 157
    .local v3, x:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, p4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int v4, v5, v6

    .line 159
    .local v4, y:I
    invoke-virtual {p5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 162
    iget-object v5, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mCoordinates:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 163
    iget-object v5, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mCoordinates:[I

    aget v5, v5, v8

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v6, v4

    invoke-virtual {p5, p1, v8, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mOriginX:I

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mOriginY:I

    .line 168
    return-void
.end method

.method public translateX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 183
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mOriginX:I

    sub-int v0, p1, v0

    return v0
.end method

.method public translateY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 188
    iget v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mOriginY:I

    sub-int v0, p1, v0

    return v0
.end method

.method public updateKeyboardGeometry(I)V
    .locals 2
    .parameter "keyHeight"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    iget-object v1, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestionsView;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->updateParams(ILcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;)V

    .line 110
    return-void
.end method
