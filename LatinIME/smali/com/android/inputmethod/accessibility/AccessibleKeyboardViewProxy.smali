.class public final Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "AccessibleKeyboardViewProxy.java"


# static fields
.field private static final sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;


# instance fields
.field private mAccessibilityNodeProvider:Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

.field private mEdgeSlop:I

.field private mInputMethod:Landroid/inputmethodservice/InputMethodService;

.field private mLastHoverKey:Lcom/android/inputmethod/keyboard/Key;

.field private mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-direct {v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;-><init>()V

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKey:Lcom/android/inputmethod/keyboard/Key;

    .line 60
    return-void
.end method

.method private getAccessibilityNodeProvider()Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;-><init>(Lcom/android/inputmethod/keyboard/KeyboardView;Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    return-object v0
.end method

.method public static getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .parameter "inputMethod"

    .prologue
    .line 51
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->initInternal(Landroid/inputmethodservice/InputMethodService;)V

    .line 52
    return-void
.end method

.method private initInternal(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .parameter "inputMethod"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    .line 64
    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mEdgeSlop:I

    .line 66
    return-void
.end method

.method private onHoverKey(Lcom/android/inputmethod/keyboard/Key;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "key"
    .parameter "event"

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v1, 0x0

    .line 245
    :goto_0
    return v1

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getAccessibilityNodeProvider()Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    move-result-object v0

    .line 232
    .local v0, provider:Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 245
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 234
    :pswitch_0
    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->sendAccessibilityEventForKey(Lcom/android/inputmethod/keyboard/Key;I)V

    .line 236
    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->performActionForKey(Lcom/android/inputmethod/keyboard/Key;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 240
    :pswitch_1
    const/16 v1, 0x100

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->sendAccessibilityEventForKey(Lcom/android/inputmethod/keyboard/Key;I)V

    goto :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTransitionKey(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Key;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "currentKey"
    .parameter "previousKey"
    .parameter "event"

    .prologue
    .line 200
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 202
    .local v1, savedAction:I
    const/16 v2, 0xa

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 203
    invoke-direct {p0, p2, p3}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/android/inputmethod/keyboard/Key;Landroid/view/MotionEvent;)Z

    .line 205
    const/16 v2, 0x9

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 206
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/android/inputmethod/keyboard/Key;Landroid/view/MotionEvent;)Z

    .line 208
    const/4 v2, 0x7

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 209
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/android/inputmethod/keyboard/Key;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 211
    .local v0, handled:Z
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 213
    return v0
.end method

.method private pointInView(II)Z
    .locals 2
    .parameter "localX"
    .parameter "localY"

    .prologue
    .line 184
    iget v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mEdgeSlop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mEdgeSlop:I

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mEdgeSlop:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mEdgeSlop:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 5
    .parameter "event"
    .parameter "tracker"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 129
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 130
    .local v3, y:I
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKey:Lcom/android/inputmethod/keyboard/Key;

    .line 133
    .local v1, previousKey:Lcom/android/inputmethod/keyboard/Key;
    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->pointInView(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-virtual {p2, v2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyOn(II)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 139
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    :goto_0
    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKey:Lcom/android/inputmethod/keyboard/Key;

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 159
    :pswitch_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 136
    .end local v0           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #key:Lcom/android/inputmethod/keyboard/Key;
    goto :goto_0

    .line 145
    :pswitch_1
    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getAccessibilityNodeProvider()Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->simulateKeyPress(Lcom/android/inputmethod/keyboard/Key;)V

    .line 150
    :cond_1
    :pswitch_2
    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/android/inputmethod/keyboard/Key;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    .line 152
    :pswitch_3
    if-eq v0, v1, :cond_2

    .line 153
    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onTransitionKey(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Key;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    .line 155
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/android/inputmethod/keyboard/Key;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getAccessibilityNodeProvider(Landroid/view/View;)Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;
    .locals 1
    .parameter "host"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getAccessibilityNodeProvider()Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    move-result-object v0

    return-object v0
.end method

.method public notifyShiftState()V
    .locals 7

    .prologue
    .line 252
    iget-object v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v2

    .line 253
    .local v2, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    iget-object v3, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 254
    .local v3, keyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    iget v1, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    .line 255
    .local v1, elementId:I
    iget-object v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 258
    .local v0, context:Landroid/content/Context;
    packed-switch v1, :pswitch_data_0

    .line 269
    :pswitch_0
    const v5, 0x7f0a0080

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 272
    .local v4, text:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v5, v6, v4}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 273
    return-void

    .line 261
    .end local v4           #text:Ljava/lang/CharSequence;
    :pswitch_1
    const v5, 0x7f0a007f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 262
    .restart local v4       #text:Ljava/lang/CharSequence;
    goto :goto_0

    .line 266
    .end local v4           #text:Ljava/lang/CharSequence;
    :pswitch_2
    const v5, 0x7f0a007e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 267
    .restart local v4       #text:Ljava/lang/CharSequence;
    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public notifySymbolsState()V
    .locals 8

    .prologue
    .line 279
    iget-object v6, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v2

    .line 280
    .local v2, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    iget-object v6, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    .local v0, context:Landroid/content/Context;
    iget-object v3, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 282
    .local v3, keyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    iget v1, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    .line 285
    .local v1, elementId:I
    packed-switch v1, :pswitch_data_0

    .line 304
    const/4 v4, -0x1

    .line 307
    .local v4, resId:I
    :goto_0
    if-gez v4, :cond_0

    .line 313
    :goto_1
    return-void

    .line 291
    .end local v4           #resId:I
    :pswitch_0
    const v4, 0x7f0a0082

    .line 292
    .restart local v4       #resId:I
    goto :goto_0

    .line 295
    .end local v4           #resId:I
    :pswitch_1
    const v4, 0x7f0a0081

    .line 296
    .restart local v4       #resId:I
    goto :goto_0

    .line 298
    .end local v4           #resId:I
    :pswitch_2
    const v4, 0x7f0a0083

    .line 299
    .restart local v4       #resId:I
    goto :goto_0

    .line 301
    .end local v4           #resId:I
    :pswitch_3
    const v4, 0x7f0a0084

    .line 302
    .restart local v4       #resId:I
    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, text:Ljava/lang/String;
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v6, v7, v5}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 1
    .parameter "keyboard"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setView(Lcom/android/inputmethod/keyboard/MainKeyboardView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 74
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    .line 82
    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->setView(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    goto :goto_0
.end method
