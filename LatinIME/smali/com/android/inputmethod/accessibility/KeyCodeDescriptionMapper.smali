.class public final Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;
.super Ljava/lang/Object;
.source "KeyCodeDescriptionMapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;


# instance fields
.field private final mKeyCodeMap:Landroid/util/SparseIntArray;

.field private final mKeyLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    invoke-direct {v0}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;-><init>()V

    sput-object v0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->sInstance:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    .line 57
    return-void
.end method

.method private getDescriptionForActionKey(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "keyboard"
    .parameter "key"

    .prologue
    .line 211
    iget-object v1, p2, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 212
    .local v1, keyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeActionId()I

    move-result v0

    .line 216
    .local v0, actionId:I
    iget-object v3, p3, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    iget-object v3, p3, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 244
    :goto_0
    return-object v3

    .line 221
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 241
    const v2, 0x7f0a0078

    .line 244
    .local v2, resId:I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 223
    .end local v2           #resId:I
    :pswitch_0
    const v2, 0x7f0a0079

    .line 224
    .restart local v2       #resId:I
    goto :goto_1

    .line 226
    .end local v2           #resId:I
    :pswitch_1
    const v2, 0x7f0a005e

    .line 227
    .restart local v2       #resId:I
    goto :goto_1

    .line 229
    .end local v2           #resId:I
    :pswitch_2
    const v2, 0x7f0a0062

    .line 230
    .restart local v2       #resId:I
    goto :goto_1

    .line 232
    .end local v2           #resId:I
    :pswitch_3
    const v2, 0x7f0a005f

    .line 233
    .restart local v2       #resId:I
    goto :goto_1

    .line 235
    .end local v2           #resId:I
    :pswitch_4
    const v2, 0x7f0a0061

    .line 236
    .restart local v2       #resId:I
    goto :goto_1

    .line 238
    .end local v2           #resId:I
    :pswitch_5
    const v2, 0x7f0a0060

    .line 239
    .restart local v2       #resId:I
    goto :goto_1

    .line 221
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getDescriptionForKeyCode(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;Z)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "keyboard"
    .parameter "key"
    .parameter "shouldObscure"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 270
    iget v0, p3, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 273
    .local v0, code:I
    invoke-static {v0}, Ljava/lang/Character;->isDefined(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 274
    .local v1, isDefinedNonCtrl:Z
    :goto_0
    if-eqz p4, :cond_1

    if-eqz v1, :cond_1

    .line 275
    const v2, 0x7f0a007a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    :goto_1
    return-object v2

    .end local v1           #isDefinedNonCtrl:Z
    :cond_0
    move v1, v3

    .line 273
    goto :goto_0

    .line 278
    .restart local v1       #isDefinedNonCtrl:Z
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 279
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 280
    :cond_2
    if-eqz v1, :cond_3

    .line 281
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 282
    :cond_3
    iget-object v4, p3, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 283
    iget-object v2, p3, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    goto :goto_1

    .line 285
    :cond_4
    const v4, 0x7f0a006b

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getDescriptionForShiftKey(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "keyboard"

    .prologue
    .line 180
    iget-object v1, p2, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 181
    .local v1, keyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    iget v0, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    .line 184
    .local v0, elementId:I
    packed-switch v0, :pswitch_data_0

    .line 195
    :pswitch_0
    const v2, 0x7f0a006c

    .line 198
    .local v2, resId:I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 187
    .end local v2           #resId:I
    :pswitch_1
    const v2, 0x7f0a006e

    .line 188
    .restart local v2       #resId:I
    goto :goto_0

    .line 192
    .end local v2           #resId:I
    :pswitch_2
    const v2, 0x7f0a006d

    .line 193
    .restart local v2       #resId:I
    goto :goto_0

    .line 184
    nop

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

.method private getDescriptionForSwitchAlphaSymbol(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "keyboard"

    .prologue
    .line 142
    iget-object v1, p2, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 143
    .local v1, keyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;
    iget v0, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    .line 146
    .local v0, elementId:I
    packed-switch v0, :pswitch_data_0

    .line 165
    sget-object v3, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing description for keyboard element ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v3, 0x0

    .line 169
    :goto_0
    return-object v3

    .line 152
    :pswitch_0
    const v2, 0x7f0a0070

    .line 169
    .local v2, resId:I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 156
    .end local v2           #resId:I
    :pswitch_1
    const v2, 0x7f0a0071

    .line 157
    .restart local v2       #resId:I
    goto :goto_1

    .line 159
    .end local v2           #resId:I
    :pswitch_2
    const v2, 0x7f0a0070

    .line 160
    .restart local v2       #resId:I
    goto :goto_1

    .line 162
    .end local v2           #resId:I
    :pswitch_3
    const v2, 0x7f0a0072

    .line 163
    .restart local v2       #resId:I
    goto :goto_1

    .line 146
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

.method public static getInstance()Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->sInstance:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->sInstance:Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    invoke-direct {v0}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->initInternal()V

    .line 49
    return-void
.end method

.method private initInternal()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, ":-)"

    const v2, 0x7f0a0077

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    const v2, 0x7f0a0075

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x4

    const v2, 0x7f0a006f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x7f0a0078

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x5

    const v2, 0x7f0a0073

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    const v2, 0x7f0a006c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x6

    const v2, 0x7f0a0076

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x2

    const v2, 0x7f0a0070

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x7f0a0074

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0xa

    const v2, 0x7f0a007b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x8

    const v2, 0x7f0a007c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x9

    const v2, 0x7f0a007d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    return-void
.end method


# virtual methods
.method public getDescriptionForKey(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "keyboard"
    .parameter "key"
    .parameter "shouldObscure"

    .prologue
    .line 98
    iget v0, p3, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 100
    .local v0, code:I
    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForSwitchAlphaSymbol(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, description:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 128
    .end local v1           #description:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 106
    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForShiftKey(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v3, -0x7

    if-ne v0, v3, :cond_2

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForActionKey(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    :cond_2
    iget-object v3, p3, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 115
    iget-object v3, p3, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, label:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 124
    .end local v2           #label:Ljava/lang/String;
    :cond_3
    iget v3, p3, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/16 v4, -0xc

    if-eq v3, v4, :cond_4

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForKeyCode(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 128
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
