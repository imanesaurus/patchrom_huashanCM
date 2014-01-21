.class public final Lcom/android/inputmethod/latin/SubtypeSwitcher;
.super Ljava/lang/Object;
.source "SubtypeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mCurrentSystemLocale:Ljava/util/Locale;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsNetworkConnected:Z

.field private mNeedsToDisplayLanguage:Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;

.field private mNoLanguageSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mResources:Landroid/content/res/Resources;

.field private mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

.field private mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    .line 43
    const-class v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;

    .line 92
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->init(Landroid/content/Context;)V

    .line 86
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->initialize(Landroid/content/Context;)V

    .line 87
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateAllParameters(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    .line 96
    invoke-static {p1}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 97
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 99
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSystemLocale:Ljava/util/Locale;

    .line 100
    const-string v1, "zz"

    const-string v2, "qwerty"

    invoke-static {p1, v1, v2}, Lcom/android/inputmethod/latin/ImfUtils;->findSubtypeByLocaleAndKeyboardLayoutSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNoLanguageSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 102
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNoLanguageSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {p1, v1}, Lcom/android/inputmethod/latin/ImfUtils;->getCurrentInputMethodSubtype(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 103
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNoLanguageSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t find no lanugage with QWERTY subtype"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 108
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 109
    return-void

    .line 108
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchToTargetIME(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Landroid/inputmethodservice/InputMethodService;)V
    .locals 6
    .parameter "imiId"
    .parameter "subtype"
    .parameter "context"

    .prologue
    .line 220
    invoke-virtual {p3}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 221
    .local v3, token:Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 232
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 225
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    new-instance v0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;-><init>(Lcom/android/inputmethod/latin/SubtypeSwitcher;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateAllParameters(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSystemLocale:Ljava/util/Locale;

    .line 115
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNoLanguageSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/ImfUtils;->getCurrentInputMethodSubtype(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateParametersOnStartInputViewAndReturnIfCurrentSubtypeEnabled()Z

    .line 117
    return-void
.end method

.method private updateEnabledSubtypesAndReturnIfEnabled(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 6
    .parameter "subtype"

    .prologue
    const/4 v3, 0x1

    .line 139
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, enabledSubtypesOfThisIme:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;->updateEnabledSubtypeCount(I)V

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 144
    .local v2, ims:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    .end local v2           #ims:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    return v3

    .line 148
    :cond_1
    sget-boolean v3, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v3, :cond_2

    .line 149
    sget-object v3, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subtype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateShortcutIME()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 156
    sget-boolean v4, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v4, :cond_0

    .line 157
    sget-object v6, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update shortcut IME from : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v4, :cond_3

    const-string v4, "<null>"

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v4, :cond_4

    const-string v4, "<null>"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v2

    .line 166
    .local v2, shortcuts:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    iput-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 167
    iput-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 168
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 169
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 172
    .local v3, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 175
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    :goto_2
    iput-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 178
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    sget-boolean v4, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v4, :cond_2

    .line 179
    sget-object v5, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update shortcut IME to : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v4, :cond_6

    const-string v4, "<null>"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v4, :cond_7

    const-string v4, "<null>"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    return-void

    .line 157
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #shortcuts:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v2       #shortcuts:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .restart local v3       #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    move-object v4, v5

    .line 175
    goto :goto_2

    .line 179
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method


# virtual methods
.method public getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0
.end method

.method public getCurrentSubtypeLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getNoLanguageSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNoLanguageSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0
.end method

.method public isShortcutImeEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 235
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v5, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v3

    .line 238
    :cond_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v5, :cond_2

    move v3, v4

    .line 239
    goto :goto_0

    .line 241
    :cond_2
    const/4 v0, 0x1

    .line 242
    .local v0, allowsImplicitlySelectedSubtypes:Z
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5, v6, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 244
    .local v1, enabledSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v5}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 245
    goto :goto_0
.end method

.method public isShortcutImeReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_1

    .line 253
    const/4 v0, 0x0

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const-string v2, "requireNetworkConnectivity"

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    goto :goto_0
.end method

.method public needsToDisplayLanguage(Ljava/util/Locale;)Z
    .locals 2
    .parameter "keyboardLocale"

    .prologue
    .line 275
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;->getValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)Z
    .locals 3
    .parameter "conf"
    .parameter "context"

    .prologue
    .line 289
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 290
    .local v0, systemLocale:Ljava/util/Locale;
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSystemLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 292
    .local v1, systemLocaleChanged:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 293
    invoke-direct {p0, p2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateAllParameters(Landroid/content/Context;)V

    .line 295
    :cond_0
    return v1

    .line 290
    .end local v1           #systemLocaleChanged:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onNetworkStateChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 263
    const-string v2, "noConnectivity"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 265
    .local v0, noConnection:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 267
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onNetworkStateChanged()V

    .line 268
    return-void
.end method

.method public switchToShortcutIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, imiId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->switchToTargetIME(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_0
.end method

.method public updateParametersOnStartInputViewAndReturnIfCurrentSubtypeEnabled()Z
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateEnabledSubtypesAndReturnIfEnabled(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v0

    .line 128
    .local v0, currentSubtypeEnabled:Z
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateShortcutIME()V

    .line 129
    return v0
.end method

.method public updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 4
    .parameter "newSubtype"

    .prologue
    .line 189
    sget-boolean v1, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v1, :cond_0

    .line 190
    sget-object v1, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCurrentInputMethodSubtypeChanged: to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;

    move-result-object v0

    .line 196
    .local v0, newLocale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;

    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSystemLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;->updateIsSystemLanguageSameAsInputLanguage(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 202
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateShortcutIME()V

    goto :goto_0
.end method
