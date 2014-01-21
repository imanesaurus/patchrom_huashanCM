.class public final Lcom/android/inputmethod/keyboard/KeyboardId;
.super Ljava/lang/Object;
.source "KeyboardId.java"


# instance fields
.field public final mClobberSettingsKey:Z

.field public final mCustomActionLabel:Ljava/lang/String;

.field public final mDeviceFormFactor:I

.field private final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mElementId:I

.field public final mHasShortcutKey:Z

.field private final mHashCode:I

.field public final mLanguageSwitchKeyEnabled:Z

.field public final mLocale:Ljava/util/Locale;

.field public final mMode:I

.field public final mOrientation:I

.field public final mShortcutKeyEnabled:Z

.field public final mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public final mWidth:I


# direct methods
.method public constructor <init>(ILandroid/view/inputmethod/InputMethodSubtype;IIIILandroid/view/inputmethod/EditorInfo;ZZZZ)V
    .locals 1
    .parameter "elementId"
    .parameter "subtype"
    .parameter "deviceFormFactor"
    .parameter "orientation"
    .parameter "width"
    .parameter "mode"
    .parameter "editorInfo"
    .parameter "clobberSettingsKey"
    .parameter "shortcutKeyEnabled"
    .parameter "hasShortcutKey"
    .parameter "languageSwitchKeyEnabled"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 84
    invoke-static {p2}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    .line 85
    iput p3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mDeviceFormFactor:I

    .line 86
    iput p4, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    .line 87
    iput p5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    .line 88
    iput p6, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    .line 89
    iput p1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    .line 90
    iput-object p7, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 91
    iput-boolean p8, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    .line 92
    iput-boolean p9, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    .line 93
    iput-boolean p10, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    .line 94
    iput-boolean p11, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLanguageSwitchKeyEnabled:Z

    .line 95
    iget-object v0, p7, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p7, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mCustomActionLabel:Ljava/lang/String;

    .line 98
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->computeHashCode(Lcom/android/inputmethod/keyboard/KeyboardId;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHashCode:I

    .line 99
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static computeHashCode(Lcom/android/inputmethod/keyboard/KeyboardId;)I
    .locals 3
    .parameter "id"

    .prologue
    .line 102
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mDeviceFormFactor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->passwordInput()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLanguageSwitchKeyEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isMultiLine()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mCustomActionLabel:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigateNext()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigatePrevious()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static deviceFormFactor(I)Ljava/lang/String;
    .locals 1
    .parameter "devoceFormFactor"

    .prologue
    .line 238
    packed-switch p0, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 239
    :pswitch_0
    const-string v0, "phone"

    goto :goto_0

    .line 240
    :pswitch_1
    const-string v0, "tablet7"

    goto :goto_0

    .line 241
    :pswitch_2
    const-string v0, "tablet10"

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static elementIdToName(I)Ljava/lang/String;
    .locals 1
    .parameter "elementId"

    .prologue
    .line 222
    packed-switch p0, :pswitch_data_0

    .line 233
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 223
    :pswitch_0
    const-string v0, "alphabet"

    goto :goto_0

    .line 224
    :pswitch_1
    const-string v0, "alphabetManualShifted"

    goto :goto_0

    .line 225
    :pswitch_2
    const-string v0, "alphabetAutomaticShifted"

    goto :goto_0

    .line 226
    :pswitch_3
    const-string v0, "alphabetShiftLocked"

    goto :goto_0

    .line 227
    :pswitch_4
    const-string v0, "alphabetShiftLockShifted"

    goto :goto_0

    .line 228
    :pswitch_5
    const-string v0, "symbols"

    goto :goto_0

    .line 229
    :pswitch_6
    const-string v0, "symbolsShifted"

    goto :goto_0

    .line 230
    :pswitch_7
    const-string v0, "phone"

    goto :goto_0

    .line 231
    :pswitch_8
    const-string v0, "phoneSymbols"

    goto :goto_0

    .line 232
    :pswitch_9
    const-string v0, "number"

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x1

    .line 123
    if-ne p1, p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mDeviceFormFactor:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mDeviceFormFactor:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->passwordInput()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->passwordInput()Z

    move-result v2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLanguageSwitchKeyEnabled:Z

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLanguageSwitchKeyEnabled:Z

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->isMultiLine()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isMultiLine()Z

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeAction()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeAction()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mCustomActionLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mCustomActionLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigateNext()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigateNext()Z

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigatePrevious()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigatePrevious()Z

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equivalentEditorInfoForKeyboard(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 216
    :cond_3
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static modeName(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 247
    packed-switch p0, :pswitch_data_0

    .line 257
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 248
    :pswitch_0
    const-string v0, "text"

    goto :goto_0

    .line 249
    :pswitch_1
    const-string v0, "url"

    goto :goto_0

    .line 250
    :pswitch_2
    const-string v0, "email"

    goto :goto_0

    .line 251
    :pswitch_3
    const-string v0, "im"

    goto :goto_0

    .line 252
    :pswitch_4
    const-string v0, "phone"

    goto :goto_0

    .line 253
    :pswitch_5
    const-string v0, "number"

    goto :goto_0

    .line 254
    :pswitch_6
    const-string v0, "date"

    goto :goto_0

    .line 255
    :pswitch_7
    const-string v0, "time"

    goto :goto_0

    .line 256
    :pswitch_8
    const-string v0, "datetime"

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 185
    instance-of v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/inputmethod/keyboard/KeyboardId;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHashCode:I

    return v0
.end method

.method public imeAction()I
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v1, 0xff

    .line 169
    .local v0, actionId:I
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 170
    const/4 v0, 0x1

    .line 174
    .end local v0           #actionId:I
    :cond_0
    :goto_0
    return v0

    .line 171
    .restart local v0       #actionId:I
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 172
    const/16 v0, 0x100

    goto :goto_0
.end method

.method public imeActionId()I
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeAction()I

    move-result v0

    .line 180
    .local v0, actionId:I
    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .end local v0           #actionId:I
    :cond_0
    return v0
.end method

.method public isAlphabetKeyboard()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiLine()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigateNext()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeAction()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigatePrevious()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public passwordInput()Z
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 159
    .local v0, inputType:I
    invoke-static {v0}, Lcom/android/inputmethod/latin/InputTypeUtils;->isPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/latin/InputTypeUtils;->isVisiblePasswordInputType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 195
    const-string v1, "[%s %s:%s %s-%s:%d %s %s %s%s%s%s%s%s%s%s]"

    const/16 v0, 0x10

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->elementIdToName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    aput-object v0, v2, v5

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const-string v4, "KeyboardLayoutSet"

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mDeviceFormFactor:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->deviceFormFactor(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x4

    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v0, v5, :cond_0

    const-string v0, "port"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x5

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->modeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigateNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "navigateNext"

    :goto_1
    aput-object v0, v2, v3

    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigatePrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "navigatePrevious"

    :goto_2
    aput-object v0, v2, v3

    const/16 v3, 0xa

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    if-eqz v0, :cond_3

    const-string v0, " clobberSettingsKey"

    :goto_3
    aput-object v0, v2, v3

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->passwordInput()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " passwordInput"

    :goto_4
    aput-object v0, v2, v3

    const/16 v3, 0xc

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    if-eqz v0, :cond_5

    const-string v0, " shortcutKeyEnabled"

    :goto_5
    aput-object v0, v2, v3

    const/16 v3, 0xd

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    if-eqz v0, :cond_6

    const-string v0, " hasShortcutKey"

    :goto_6
    aput-object v0, v2, v3

    const/16 v3, 0xe

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLanguageSwitchKeyEnabled:Z

    if-eqz v0, :cond_7

    const-string v0, " languageSwitchKeyEnabled"

    :goto_7
    aput-object v0, v2, v3

    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isMultiLine()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "isMultiLine"

    :goto_8
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "land"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4

    :cond_5
    const-string v0, ""

    goto :goto_5

    :cond_6
    const-string v0, ""

    goto :goto_6

    :cond_7
    const-string v0, ""

    goto :goto_7

    :cond_8
    const-string v0, ""

    goto :goto_8
.end method
