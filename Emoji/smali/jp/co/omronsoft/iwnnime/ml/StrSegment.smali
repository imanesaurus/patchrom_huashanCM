.class public Ljp/co/omronsoft/iwnnime/ml/StrSegment;
.super Ljava/lang/Object;
.source "StrSegment.java"


# instance fields
.field public from:I

.field public string:Ljava/lang/String;

.field public to:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1, v0, v0}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "str"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    .line 56
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    .line 57
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    .line 58
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .parameter "chars"

    .prologue
    const/4 v1, -0x1

    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, v0, v1, v1}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 45
    return-void
.end method
