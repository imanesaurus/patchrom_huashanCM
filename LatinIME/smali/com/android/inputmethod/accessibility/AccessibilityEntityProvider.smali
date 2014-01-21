.class public final Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.source "AccessibilityEntityProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mAccessibilityUtils:Lcom/android/inputmethod/accessibility/AccessibilityUtils;

.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private final mKeyCodeDescriptionMapper:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

.field private mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

.field private final mParentLocation:[I

.field private final mTempBoundsInScreen:Landroid/graphics/Rect;

.field private final mVirtualViewIdToKey:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardView;Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .parameter "keyboardView"
    .parameter "inputMethod"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    .line 59
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mVirtualViewIdToKey:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mTempBoundsInScreen:Landroid/graphics/Rect;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mParentLocation:[I

    .line 68
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    .line 74
    iput-object p2, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 76
    invoke-static {}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getInstance()Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyCodeDescriptionMapper:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    .line 77
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityUtils:Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->setView(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 80
    return-void
.end method

.method private assignVirtualViewIds()V
    .locals 8

    .prologue
    .line 308
    iget-object v7, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v3

    .line 309
    .local v3, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-nez v3, :cond_1

    .line 320
    :cond_0
    return-void

    .line 313
    :cond_1
    iget-object v7, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mVirtualViewIdToKey:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 315
    iget-object v4, v3, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 316
    .local v4, keys:[Lcom/android/inputmethod/keyboard/Key;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v2, v0, v1

    .line 317
    .local v2, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-static {v2}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->generateVirtualViewIdForKey(Lcom/android/inputmethod/keyboard/Key;)I

    move-result v6

    .line 318
    .local v6, virtualViewId:I
    iget-object v7, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mVirtualViewIdToKey:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static generateVirtualViewIdForKey(Lcom/android/inputmethod/keyboard/Key;)I
    .locals 3
    .parameter "key"

    .prologue
    const v2, 0xffff

    .line 340
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private getKeyDescription(Lcom/android/inputmethod/keyboard/Key;)Ljava/lang/String;
    .locals 6
    .parameter "key"

    .prologue
    .line 296
    iget-object v3, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 297
    .local v0, editorInfo:Landroid/view/inputmethod/EditorInfo;
    iget-object v3, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityUtils:Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->shouldObscureInput(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    .line 298
    .local v2, shouldObscure:Z
    iget-object v3, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyCodeDescriptionMapper:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    iget-object v4, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p1, v2}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForKey(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;Z)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, keyDescription:Ljava/lang/String;
    return-object v1
.end method

.method private updateParentLocation()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mParentLocation:[I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLocationOnScreen([I)V

    .line 327
    return-void
.end method


# virtual methods
.method public createAccessibilityEvent(Lcom/android/inputmethod/keyboard/Key;I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5
    .parameter "key"
    .parameter "eventType"

    .prologue
    .line 115
    invoke-static {p1}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->generateVirtualViewIdForKey(Lcom/android/inputmethod/keyboard/Key;)I

    move-result v3

    .line 116
    .local v3, virtualViewId:I
    invoke-direct {p0, p1}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->getKeyDescription(Lcom/android/inputmethod/keyboard/Key;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, keyDescription:Ljava/lang/String;
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 119
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v4, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 124
    new-instance v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v2, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 125
    .local v2, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v4, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    .line 127
    return-object v0
.end method

.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 16
    .parameter "virtualViewId"

    .prologue
    .line 153
    const/4 v6, 0x0

    .line 155
    .local v6, info:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    const/high16 v12, -0x8000

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 156
    const/4 v12, 0x0

    .line 208
    :goto_0
    return-object v12

    .line 157
    :cond_0
    const/4 v12, -0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v12}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v6

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v12, v6}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v12}, Lcom/android/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v9

    .line 165
    .local v9, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    iget-object v10, v9, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 166
    .local v10, keys:[Lcom/android/inputmethod/keyboard/Key;
    move-object v1, v10

    .local v1, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v11, v1

    .local v11, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v11, :cond_3

    aget-object v7, v1, v5

    .line 167
    .local v7, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-static {v7}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->generateVirtualViewIdForKey(Lcom/android/inputmethod/keyboard/Key;)I

    move-result v4

    .line 168
    .local v4, childVirtualViewId:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v6, v12, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 166
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 172
    .end local v1           #arr$:[Lcom/android/inputmethod/keyboard/Key;
    .end local v4           #childVirtualViewId:I
    .end local v5           #i$:I
    .end local v7           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v9           #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    .end local v10           #keys:[Lcom/android/inputmethod/keyboard/Key;
    .end local v11           #len$:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mVirtualViewIdToKey:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/inputmethod/keyboard/Key;

    .line 173
    .restart local v7       #key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v7, :cond_2

    .line 174
    sget-object v12, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid virtual view ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v12, 0x0

    goto :goto_0

    .line 178
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->getKeyDescription(Lcom/android/inputmethod/keyboard/Key;)Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, keyDescription:Ljava/lang/String;
    iget-object v2, v7, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    .line 182
    .local v2, boundsInParent:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mTempBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mTempBoundsInScreen:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mParentLocation:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mParentLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mTempBoundsInScreen:Landroid/graphics/Rect;

    .line 189
    .local v3, boundsInScreen:Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v6

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v12}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v6, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v6, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 194
    invoke-virtual {v6, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v6, v12}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    move/from16 v0, p1

    invoke-virtual {v6, v12, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 197
    invoke-virtual {v6, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 198
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 199
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 201
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_4

    .line 202
    const/16 v12, 0x80

    invoke-virtual {v6, v12}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .end local v2           #boundsInParent:Landroid/graphics/Rect;
    .end local v3           #boundsInScreen:Landroid/graphics/Rect;
    .end local v7           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v8           #keyDescription:Ljava/lang/String;
    :cond_3
    :goto_2
    move-object v12, v6

    .line 208
    goto/16 :goto_0

    .line 204
    .restart local v2       #boundsInParent:Landroid/graphics/Rect;
    .restart local v3       #boundsInScreen:Landroid/graphics/Rect;
    .restart local v7       #key:Lcom/android/inputmethod/keyboard/Key;
    .restart local v8       #keyDescription:Ljava/lang/String;
    :cond_4
    const/16 v12, 0x40

    invoke-virtual {v6, v12}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_2
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 2
    .parameter "virtualViewId"
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mVirtualViewIdToKey:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/Key;

    .line 237
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 241
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->performActionForKey(Lcom/android/inputmethod/keyboard/Key;ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method performActionForKey(Lcom/android/inputmethod/keyboard/Key;ILandroid/os/Bundle;)Z
    .locals 4
    .parameter "key"
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-static {p1}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->generateVirtualViewIdForKey(Lcom/android/inputmethod/keyboard/Key;)I

    move-result v0

    .line 256
    .local v0, virtualViewId:I
    sparse-switch p2, :sswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return v1

    .line 258
    :sswitch_0
    iget v3, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    if-eq v3, v0, :cond_0

    .line 261
    iput v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    .line 262
    const v1, 0x8000

    invoke-virtual {p0, p1, v1}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->sendAccessibilityEventForKey(Lcom/android/inputmethod/keyboard/Key;I)V

    move v1, v2

    .line 264
    goto :goto_0

    .line 266
    :sswitch_1
    iget v3, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    if-ne v3, v0, :cond_0

    .line 269
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    .line 270
    const/high16 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->sendAccessibilityEventForKey(Lcom/android/inputmethod/keyboard/Key;I)V

    move v1, v2

    .line 272
    goto :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method sendAccessibilityEventForKey(Lcom/android/inputmethod/keyboard/Key;I)V
    .locals 2
    .parameter "key"
    .parameter "eventType"

    .prologue
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->createAccessibilityEvent(Lcom/android/inputmethod/keyboard/Key;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 286
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityUtils:Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->requestSendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 287
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 0
    .parameter "keyboard"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->assignVirtualViewIds()V

    .line 103
    return-void
.end method

.method public setView(Lcom/android/inputmethod/keyboard/KeyboardView;)V
    .locals 1
    .parameter "keyboardView"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 89
    invoke-direct {p0}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->updateParentLocation()V

    .line 93
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 94
    return-void
.end method

.method simulateKeyPress(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 12
    .parameter "key"

    .prologue
    .line 218
    iget-object v2, p1, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 219
    .local v10, x:I
    iget-object v2, p1, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 220
    .local v11, y:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 221
    .local v0, downTime:J
    const/4 v4, 0x0

    int-to-float v5, v10

    int-to-float v6, v11

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 223
    .local v8, downEvent:Landroid/view/MotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    int-to-float v5, v10

    int-to-float v6, v11

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 226
    .local v9, upEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2, v8}, Lcom/android/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 227
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2, v9}, Lcom/android/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 229
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 230
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 231
    return-void
.end method
