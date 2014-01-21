.class final Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;
.super Ljava/lang/Object;
.source "BinaryDictIOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Position"
.end annotation


# instance fields
.field public mAddress:I

.field public mLength:I

.field public mNumOfCharGroup:I

.field public mPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "address"
    .parameter "length"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mAddress:I

    .line 43
    iput p2, p0, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mLength:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/makedict/BinaryDictIOUtils$Position;->mNumOfCharGroup:I

    .line 45
    return-void
.end method
