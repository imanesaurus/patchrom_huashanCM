.class Ljp/co/omronsoft/iwnnime/ml/OnReceiveLock;
.super Ljava/lang/Object;
.source "DecoEmojiListener.java"


# static fields
.field static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/OnReceiveLock;->lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
