.class Lcom/android/inputmethod/research/ResearchLog$NullOutputStream;
.super Ljava/io/OutputStream;
.source "ResearchLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/research/ResearchLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullOutputStream"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/research/ResearchLog$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLog$NullOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .parameter "oneByte"

    .prologue
    .line 85
    return-void
.end method

.method public write([B)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 81
    return-void
.end method

.method public write([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 75
    return-void
.end method
