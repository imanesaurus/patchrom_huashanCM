.class public final Lcom/android/inputmethod/latin/DicTraverseSession;
.super Ljava/lang/Object;
.source "DicTraverseSession.java"


# instance fields
.field private mNativeDicTraverseSession:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 23
    invoke-static {}, Lcom/android/inputmethod/latin/JniUtils;->loadNativeLibrary()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;J)V
    .locals 2
    .parameter "locale"
    .parameter "dictionary"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/DicTraverseSession;->createNativeDicTraverseSession(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/DicTraverseSession;->mNativeDicTraverseSession:J

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/android/inputmethod/latin/DicTraverseSession;->initSession(J)V

    .line 37
    return-void

    .line 34
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private closeInternal()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 57
    iget-wide v0, p0, Lcom/android/inputmethod/latin/DicTraverseSession;->mNativeDicTraverseSession:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 58
    iget-wide v0, p0, Lcom/android/inputmethod/latin/DicTraverseSession;->mNativeDicTraverseSession:J

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/DicTraverseSession;->releaseDicTraverseSessionNative(J)V

    .line 59
    iput-wide v2, p0, Lcom/android/inputmethod/latin/DicTraverseSession;->mNativeDicTraverseSession:J

    .line 61
    :cond_0
    return-void
.end method

.method private final createNativeDicTraverseSession(Ljava/lang/String;)J
    .locals 2
    .parameter "locale"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/DicTraverseSession;->setDicTraverseSessionNative(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private native initDicTraverseSessionNative(JJ[II)V
.end method

.method private native releaseDicTraverseSessionNative(J)V
.end method

.method private native setDicTraverseSessionNative(Ljava/lang/String;)J
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DicTraverseSession;->closeInternal()V

    .line 65
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/DicTraverseSession;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getSession()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/inputmethod/latin/DicTraverseSession;->mNativeDicTraverseSession:J

    return-wide v0
.end method

.method public initSession(J)V
    .locals 2
    .parameter "dictionary"

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/inputmethod/latin/DicTraverseSession;->initSession(J[II)V

    .line 45
    return-void
.end method

.method public initSession(J[II)V
    .locals 7
    .parameter "dictionary"
    .parameter "previousWord"
    .parameter "previousWordLength"

    .prologue
    .line 48
    iget-wide v1, p0, Lcom/android/inputmethod/latin/DicTraverseSession;->mNativeDicTraverseSession:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/DicTraverseSession;->initDicTraverseSessionNative(JJ[II)V

    .line 50
    return-void
.end method
