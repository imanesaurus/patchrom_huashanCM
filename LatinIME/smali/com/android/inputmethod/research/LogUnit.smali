.class Lcom/android/inputmethod/research/LogUnit;
.super Ljava/lang/Object;
.source "LogUnit.java"


# instance fields
.field private mContainsDigit:Z

.field private final mIsPotentiallyPrivate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeysList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWord:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/research/LogUnit;->mKeysList:Ljava/util/ArrayList;

    .line 39
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/research/LogUnit;->mValuesList:Ljava/util/ArrayList;

    .line 40
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/research/LogUnit;->mIsPotentiallyPrivate:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLogStatement([Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "keys"
    .parameter "values"
    .parameter "isPotentiallyPrivate"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/inputmethod/research/LogUnit;->mKeysList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/android/inputmethod/research/LogUnit;->mValuesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/research/LogUnit;->mIsPotentiallyPrivate:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/research/LogUnit;->mWord:Ljava/lang/String;

    return-object v0
.end method

.method public hasDigit()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/inputmethod/research/LogUnit;->mContainsDigit:Z

    return v0
.end method

.method public hasWord()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/inputmethod/research/LogUnit;->mWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/inputmethod/research/LogUnit;->mKeysList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public publishTo(Lcom/android/inputmethod/research/ResearchLog;Z)V
    .locals 4
    .parameter "researchLog"
    .parameter "isIncludingPrivateData"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/android/inputmethod/research/LogUnit;->mKeysList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 53
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 54
    iget-object v2, p0, Lcom/android/inputmethod/research/LogUnit;->mIsPotentiallyPrivate:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/research/LogUnit;->mKeysList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/inputmethod/research/LogUnit;->mValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/android/inputmethod/research/ResearchLog;->outputEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_2
    return-void
.end method
