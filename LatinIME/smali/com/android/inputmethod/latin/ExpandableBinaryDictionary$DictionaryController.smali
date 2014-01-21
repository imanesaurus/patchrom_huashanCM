.class Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ExpandableBinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictionaryController"
.end annotation


# instance fields
.field private volatile mLastUpdateRequestTime:J

.field private volatile mLastUpdateTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 441
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 442
    iput-wide v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J

    .line 443
    iput-wide v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 441
    iget-wide v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 441
    iput-wide p1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 441
    iget-wide v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 441
    iput-wide p1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->isOutOfDate()Z

    move-result v0

    return v0
.end method

.method private isOutOfDate()Z
    .locals 4

    .prologue
    .line 446
    iget-wide v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J

    iget-wide v2, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
