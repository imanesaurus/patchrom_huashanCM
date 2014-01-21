.class public final Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
.super Ljava/lang/Object;
.source "UserHistoryForgettingCurveUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForgettingCurveParams"
.end annotation


# instance fields
.field private mFc:B

.field private final mIsValid:Z

.field mLastTouchedTime:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 7
    .parameter "fc"
    .parameter "now"
    .parameter "last"

    .prologue
    .line 61
    int-to-byte v0, p1

    invoke-static {v0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToLevel(B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(IJJZ)V

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private constructor <init>(IJJZ)V
    .locals 2
    .parameter "fc"
    .parameter "now"
    .parameter "last"
    .parameter "isValid"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    .line 65
    iput-boolean p6, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mIsValid:Z

    .line 66
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    .line 67
    iput-wide p4, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->updateElapsedTime(J)V

    .line 69
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 7
    .parameter "now"
    .parameter "isValid"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {v0, p3}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->pushCount(BZ)B

    move-result v1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(IJJZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "isValid"

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(JZ)V

    .line 50
    return-void
.end method

.method private updateElapsedTime(J)V
    .locals 6
    .parameter "now"

    .prologue
    const-wide/32 v4, 0x1499700

    .line 93
    iget-wide v2, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    sub-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 95
    .local v0, elapsedTimeCount:I
    if-gtz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/16 v2, 0x40

    if-lt v0, v2, :cond_2

    .line 99
    iput-wide p1, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    .line 100
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    goto :goto_0

    .line 103
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 104
    iget-wide v2, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    .line 105
    iget-byte v2, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    invoke-static {v2}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->pushElapsedTime(B)B

    move-result v2

    iput-byte v2, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateLastTouchedTime()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    .line 46
    return-void
.end method


# virtual methods
.method public getFc()B
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->updateElapsedTime(J)V

    .line 77
    iget-byte v0, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    return v0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->updateElapsedTime(J)V

    .line 82
    iget-byte v0, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    invoke-static {v0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToFreq(B)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mIsValid:Z

    return v0
.end method

.method public notifyTypedAgainAndGetFrequency()I
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->updateLastTouchedTime()V

    .line 88
    iget-byte v0, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->pushCount(BZ)B

    move-result v0

    iput-byte v0, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    .line 89
    iget-byte v0, p0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    invoke-static {v0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToFreq(B)I

    move-result v0

    return v0
.end method
