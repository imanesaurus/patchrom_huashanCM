.class public final Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;
.super Ljava/lang/Object;
.source "AudioManagerCompatWrapper.java"


# static fields
.field private static final METHOD_isBluetoothA2dpOn:Ljava/lang/reflect/Method;

.field private static final METHOD_isWiredHeadsetOn:Ljava/lang/reflect/Method;


# instance fields
.field private final mManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "isWiredHeadsetOn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->METHOD_isWiredHeadsetOn:Ljava/lang/reflect/Method;

    .line 26
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "isBluetoothA2dpOn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->METHOD_isBluetoothA2dpOn:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->mManager:Landroid/media/AudioManager;

    .line 33
    return-void
.end method


# virtual methods
.method public isBluetoothA2dpOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->mManager:Landroid/media/AudioManager;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->METHOD_isBluetoothA2dpOn:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->mManager:Landroid/media/AudioManager;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->METHOD_isWiredHeadsetOn:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
