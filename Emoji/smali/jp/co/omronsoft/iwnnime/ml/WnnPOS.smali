.class public Ljp/co/omronsoft/iwnnime/ml/WnnPOS;
.super Ljava/lang/Object;
.source "WnnPOS.java"


# instance fields
.field public left:I

.field public right:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;->left:I

    .line 16
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;->right:I

    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;->left:I

    .line 16
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;->right:I

    .line 30
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;->left:I

    .line 31
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;->right:I

    .line 32
    return-void
.end method
