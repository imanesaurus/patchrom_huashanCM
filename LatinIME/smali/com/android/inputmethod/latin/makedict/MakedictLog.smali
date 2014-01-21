.class public final Lcom/android/inputmethod/latin/makedict/MakedictLog;
.super Ljava/lang/Object;
.source "MakedictLog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/inputmethod/latin/makedict/MakedictLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/makedict/MakedictLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 45
    sget-object v0, Lcom/android/inputmethod/latin/makedict/MakedictLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 38
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 41
    sget-object v0, Lcom/android/inputmethod/latin/makedict/MakedictLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
