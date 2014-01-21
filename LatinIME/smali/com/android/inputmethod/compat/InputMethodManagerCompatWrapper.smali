.class public final Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
.super Ljava/lang/Object;
.source "InputMethodManagerCompatWrapper.java"


# static fields
.field private static final METHOD_switchToNextInputMethod:Ljava/lang/reflect/Method;

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;


# instance fields
.field private mImm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 31
    const-class v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    .line 32
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "switchToNextInputMethod"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_switchToNextInputMethod:Ljava/lang/reflect/Method;

    .line 35
    new-instance v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-direct {v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;-><init>()V

    sput-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    iget-object v0, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".getInstance() is called before initialization"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    sget-object v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 53
    return-void
.end method


# virtual methods
.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .parameter "token"
    .parameter "id"
    .parameter "subtype"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 74
    return-void
.end method

.method public showInputMethodPicker()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 78
    return-void
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 6
    .parameter "token"
    .parameter "onlyCurrentIme"

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_switchToNextInputMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
