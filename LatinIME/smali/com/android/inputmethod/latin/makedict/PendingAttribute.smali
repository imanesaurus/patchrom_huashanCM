.class public final Lcom/android/inputmethod/latin/makedict/PendingAttribute;
.super Ljava/lang/Object;
.source "PendingAttribute.java"


# instance fields
.field public final mAddress:I

.field public final mFrequency:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "frequency"
    .parameter "address"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/inputmethod/latin/makedict/PendingAttribute;->mFrequency:I

    .line 30
    iput p2, p0, Lcom/android/inputmethod/latin/makedict/PendingAttribute;->mAddress:I

    .line 31
    return-void
.end method
