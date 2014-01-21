.class public final Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;
.super Ljava/lang/Object;
.source "FormatSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/FormatSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormatOptions"
.end annotation


# instance fields
.field public final mSupportsDynamicUpdate:Z

.field public final mVersion:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "version"

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;-><init>(IZ)V

    .line 229
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .parameter "version"
    .parameter "supportsDynamicUpdate"

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p1, p0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mVersion:I

    .line 232
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 233
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dynamic updates are only supported with versions 3 and ulterior."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;->mSupportsDynamicUpdate:Z

    .line 237
    return-void
.end method
