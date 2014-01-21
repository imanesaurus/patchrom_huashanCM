.class public Lcom/android/inputmethod/research/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/inputmethod/research/Statistics;


# instance fields
.field final mAfterDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

.field final mBeforeDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

.field mCharCount:I

.field mDeleteKeyCount:I

.field final mDuringRepeatedDeleteKeysCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

.field mIsEmptinessStateKnown:Z

.field mIsEmptyUponStarting:Z

.field mIsLastKeyDeleteKey:Z

.field final mKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

.field private mLastTapTime:J

.field mLetterCount:I

.field mNumberCount:I

.field mSpaceCount:I

.field mWordCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/inputmethod/research/Statistics;

    invoke-direct {v0}, Lcom/android/inputmethod/research/Statistics;-><init>()V

    sput-object v0, Lcom/android/inputmethod/research/Statistics;->sInstance:Lcom/android/inputmethod/research/Statistics;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-direct {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    .line 41
    new-instance v0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-direct {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mBeforeDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    .line 42
    new-instance v0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-direct {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mDuringRepeatedDeleteKeysCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    .line 43
    new-instance v0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-direct {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mAfterDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    .line 84
    invoke-virtual {p0}, Lcom/android/inputmethod/research/Statistics;->reset()V

    .line 85
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/research/Statistics;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/inputmethod/research/Statistics;->sInstance:Lcom/android/inputmethod/research/Statistics;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mCharCount:I

    .line 89
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mLetterCount:I

    .line 90
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mNumberCount:I

    .line 91
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mSpaceCount:I

    .line 92
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mDeleteKeyCount:I

    .line 93
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mWordCount:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/research/Statistics;->mIsEmptyUponStarting:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/inputmethod/research/Statistics;->mIsEmptinessStateKnown:Z

    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->reset()V

    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mBeforeDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->reset()V

    .line 98
    iget-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mDuringRepeatedDeleteKeysCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->reset()V

    .line 99
    iget-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mAfterDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->reset()V

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/research/Statistics;->mLastTapTime:J

    .line 102
    iput-boolean v2, p0, Lcom/android/inputmethod/research/Statistics;->mIsLastKeyDeleteKey:Z

    .line 103
    return-void
.end method
