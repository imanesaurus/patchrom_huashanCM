.class public final Lcom/android/inputmethod/latin/VibratorUtils;
.super Ljava/lang/Object;
.source "VibratorUtils.java"


# static fields
.field private static final sInstance:Lcom/android/inputmethod/latin/VibratorUtils;


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/android/inputmethod/latin/VibratorUtils;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/VibratorUtils;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/VibratorUtils;->sInstance:Lcom/android/inputmethod/latin/VibratorUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/inputmethod/latin/VibratorUtils;
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    sget-object v0, Lcom/android/inputmethod/latin/VibratorUtils;->sInstance:Lcom/android/inputmethod/latin/VibratorUtils;

    iget-object v0, v0, Lcom/android/inputmethod/latin/VibratorUtils;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 32
    sget-object v1, Lcom/android/inputmethod/latin/VibratorUtils;->sInstance:Lcom/android/inputmethod/latin/VibratorUtils;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/android/inputmethod/latin/VibratorUtils;->mVibrator:Landroid/os/Vibrator;

    .line 34
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/VibratorUtils;->sInstance:Lcom/android/inputmethod/latin/VibratorUtils;

    return-object v0
.end method


# virtual methods
.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/inputmethod/latin/VibratorUtils;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/VibratorUtils;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto :goto_0
.end method

.method public vibrate(J)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/latin/VibratorUtils;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/VibratorUtils;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
