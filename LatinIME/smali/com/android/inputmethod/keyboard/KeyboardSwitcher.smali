.class public final Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;
    }
.end annotation


# static fields
.field private static final KEYBOARD_THEMES:[Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;


# instance fields
.field private mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

.field private mForceNonDistinctMultitouch:Z

.field private mIsAutoCorrectionActive:Z

.field private mKeyboardLayoutSet:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

.field private mKeyboardTheme:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

.field private mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

.field private mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResources:Landroid/content/res/Resources;

.field private mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

.field private mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private mThemeContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    const-class v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    .line 59
    new-array v0, v6, [Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    new-instance v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    const v2, 0x7f0f002b

    invoke-direct {v1, v3, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    const v2, 0x7f0f002a

    invoke-direct {v1, v4, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;-><init>(II)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    const v3, 0x7f0f002f

    invoke-direct {v2, v6, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    const/4 v3, 0x7

    const v4, 0x7f0f002e

    invoke-direct {v2, v3, v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    const/16 v3, 0x8

    const v4, 0x7f0f002c

    invoke-direct {v2, v3, v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;-><init>(II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    const v2, 0x7f0f002d

    invoke-direct {v1, v5, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;-><init>(II)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    .line 88
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardTheme:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    .line 96
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    return-object v0
.end method

.method private static getKeyboardTheme(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;
    .locals 6
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 114
    const v3, 0x7f0a0001

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, defaultIndex:Ljava/lang/String;
    const-string v3, "pref_keyboard_layout_20110916"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, themeIndex:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 118
    .local v1, index:I
    if-ltz v1, :cond_0

    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 119
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    aget-object v3, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1           #index:I
    :goto_0
    return-object v3

    .line 121
    :catch_0
    move-exception v3

    .line 124
    :cond_0
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal keyboard theme in preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", default to 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    goto :goto_0
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "latinIme"
    .parameter "prefs"

    .prologue
    .line 99
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 100
    return-void
.end method

.method private initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "latinIme"
    .parameter "prefs"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    .line 104
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    .line 105
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 106
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 107
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    .line 108
    invoke-static {p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardTheme(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setContextThemeWrapper(Landroid/content/Context;Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;)V

    .line 109
    const-string v0, "force_non_distinct_multitouch"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mForceNonDistinctMultitouch:Z

    .line 111
    return-void
.end method

.method private isSinglePointer()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 339
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getPointerCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVibrateAndSoundFeedbackRequired()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->isInSlidingKeyInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setContextThemeWrapper(Landroid/content/Context;Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;)V
    .locals 2
    .parameter "context"
    .parameter "keyboardTheme"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardTheme:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;->mThemeId:I

    iget v1, p2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;->mThemeId:I

    if-eq v0, v1, :cond_0

    .line 130
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardTheme:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    .line 131
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p2, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;->mStyleId:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    .line 132
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->clearKeyboardCache()V

    .line 134
    :cond_0
    return-void
.end method

.method private setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 8
    .parameter "keyboard"

    .prologue
    const/4 v4, 0x1

    .line 172
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    .line 173
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v2

    .line 174
    .local v2, oldKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 175
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    iget v6, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mTopPadding:I

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/InputView;->setKeyboardGeometry(I)V

    .line 176
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v5, v6}, Lcom/android/inputmethod/latin/SettingsValues;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v6, v7}, Lcom/android/inputmethod/latin/SettingsValues;->getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 179
    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    invoke-virtual {v0, v5}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->updateAutoCorrectionState(Z)V

    .line 180
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeReady()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->updateShortcutKey(Z)V

    .line 181
    if-eqz v2, :cond_0

    iget-object v5, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v5, v5, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    iget-object v6, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v6, v6, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 183
    .local v3, subtypeChanged:Z
    :goto_0
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    iget-object v6, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v6, v6, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->needsToDisplayLanguage(Ljava/util/Locale;)Z

    move-result v1

    .line 185
    .local v1, needsToDisplayLanguage:Z
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v5, v4}, Lcom/android/inputmethod/latin/ImfUtils;->hasMultipleEnabledIMEsOrSubtypes(Landroid/content/Context;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->startDisplayLanguageOnSpacebar(ZZZ)V

    .line 187
    return-void

    .line 181
    .end local v1           #needsToDisplayLanguage:Z
    .end local v3           #subtypeChanged:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelDoubleTapTimer()V
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 286
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v1

    .line 288
    .local v1, timer:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelDoubleTapTimer()V

    .line 290
    .end local v1           #timer:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    :cond_0
    return-void
.end method

.method public cancelLongPressTimer()V
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 314
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v1

    .line 316
    .local v1, timer:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelLongPressTimer()V

    .line 318
    .end local v1           #timer:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    :cond_0
    return-void
.end method

.method public getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyboardShiftMode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 400
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-nez v0, :cond_0

    .line 412
    :goto_0
    return v1

    .line 403
    :cond_0
    iget-object v2, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v2, v2, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 408
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 406
    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    .line 410
    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    return-object v0
.end method

.method public hapticAndAudioFeedback(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinIME;->hapticAndAudioFeedback(I)V

    .line 324
    return-void
.end method

.method public isInDoubleTapTimeout()Z
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 296
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->isInDoubleTapTimeout()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInMomentarySwitchState()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->isInMomentarySwitchState()Z

    move-result v0

    return v0
.end method

.method public loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/SettingsValues;)V
    .locals 6
    .parameter "editorInfo"
    .parameter "settingsValues"

    .prologue
    .line 137
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;-><init>(Landroid/content/Context;Landroid/view/inputmethod/EditorInfo;)V

    .line 139
    .local v0, builder:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 140
    .local v2, res:Landroid/content/res/Resources;
    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->setScreenGeometry(III)Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;

    .line 142
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->setSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;

    .line 143
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isVoiceKeyEnabled(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SettingsValues;->isVoiceKeyOnMain()Z

    move-result v4

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Lcom/android/inputmethod/latin/SettingsValues;->isLanguageSwitchKeyEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->setOptions(ZZZ)Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;

    .line 147
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->build()Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardLayoutSet:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onLoadKeyboard(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException;
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading keyboard failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException;->mKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    iget-object v3, v1, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException;->mKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAutoCorrectionStateChanged(Z)V
    .locals 1
    .parameter "isAutoCorrection"

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    if-eq v0, p1, :cond_0

    .line 391
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 392
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->updateAutoCorrectionState(Z)V

    .line 396
    :cond_0
    return-void
.end method

.method public onCancelInput()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isSinglePointer()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onCancelInput(Z)V

    .line 222
    return-void
.end method

.method public onCodeInput(I)V
    .locals 3
    .parameter "code"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isSinglePointer()Z

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onCodeInput(IZI)V

    .line 351
    return-void
.end method

.method public onCreateInputView(Z)Landroid/view/View;
    .locals 3
    .parameter "isHardwareAcceleratedDrawingEnabled"

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->closing()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardTheme:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setContextThemeWrapper(Landroid/content/Context;Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;)V

    .line 363
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/InputView;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    .line 366
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/MainKeyboardView;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    .line 367
    if-eqz p1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 372
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mForceNonDistinctMultitouch:Z

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setDistinctMultitouch(Z)V

    .line 378
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->setView(Lcom/android/inputmethod/keyboard/MainKeyboardView;)V

    .line 380
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    return-object v0
.end method

.method public onFinishInputView()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 165
    return-void
.end method

.method public onHideWindow()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 169
    return-void
.end method

.method public onLongPressTimeout(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onLongPressTimeout(I)V

    .line 328
    return-void
.end method

.method public onNetworkStateChanged()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->updateShortcutKey(Z)V

    .line 387
    :cond_0
    return-void
.end method

.method public onPressKey(I)V
    .locals 3
    .parameter "code"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isVibrateAndSoundFeedbackRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinIME;->hapticAndAudioFeedback(I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isSinglePointer()Z

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onPressKey(IZI)V

    .line 214
    return-void
.end method

.method public onReleaseKey(IZ)V
    .locals 1
    .parameter "code"
    .parameter "withSliding"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onReleaseKey(IZ)V

    .line 218
    return-void
.end method

.method public requestUpdatingShiftState()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onUpdateShiftState(I)V

    .line 270
    return-void
.end method

.method public resetKeyboardStateToAlphabet()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onResetKeyboardStateToAlphabet()V

    .line 207
    return-void
.end method

.method public saveKeyboardState()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onSaveKeyboardState()V

    .line 161
    :cond_0
    return-void
.end method

.method public setAlphabetAutomaticShiftedKeyboard()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardLayoutSet:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->getKeyboard(I)Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 240
    return-void
.end method

.method public setAlphabetKeyboard()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardLayoutSet:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->getKeyboard(I)Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 228
    return-void
.end method

.method public setAlphabetManualShiftedKeyboard()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardLayoutSet:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->getKeyboard(I)Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 234
    return-void
.end method

.method public setAlphabetShiftLockShiftedKeyboard()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardLayoutSet:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->getKeyboard(I)Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 252
    return-void
.end method

.method public setAlphabetShiftLockedKeyboard()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardLayoutSet:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->getKeyboard(I)Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 246
    return-void
.end method

.method public setSymbolsKeyboard()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardLayoutSet:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->getKeyboard(I)Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 258
    return-void
.end method

.method public setSymbolsShiftedKeyboard()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardLayoutSet:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->getKeyboard(I)Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 264
    return-void
.end method

.method public startDoubleTapTimer()V
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 276
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v1

    .line 278
    .local v1, timer:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startDoubleTapTimer()V

    .line 280
    .end local v1           #timer:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    :cond_0
    return-void
.end method

.method public startLongPressTimer(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 304
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v1

    .line 306
    .local v1, timer:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    invoke-interface {v1, p1}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(I)V

    .line 308
    .end local v1           #timer:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    :cond_0
    return-void
.end method

.method public updateShiftState()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mState:Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onUpdateShiftState(I)V

    .line 201
    return-void
.end method
