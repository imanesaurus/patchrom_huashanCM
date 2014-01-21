.class Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/research/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AverageTimeCounter"
.end annotation


# instance fields
.field mCount:I

.field mTotalTime:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mCount:I

    .line 51
    iput v0, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mTotalTime:I

    .line 52
    return-void
.end method
