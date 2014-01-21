.class public final Lcom/android/inputmethod/latin/makedict/Word;
.super Ljava/lang/Object;
.source "Word.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/inputmethod/latin/makedict/Word;",
        ">;"
    }
.end annotation


# instance fields
.field public final mBigrams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;"
        }
    .end annotation
.end field

.field public final mFrequency:I

.field private mHashCode:I

.field public final mIsBlacklistEntry:Z

.field public final mIsNotAWord:Z

.field public final mShortcutTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;"
        }
    .end annotation
.end field

.field public final mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 1
    .parameter "word"
    .parameter "frequency"
    .parameter
    .parameter
    .parameter "isNotAWord"
    .parameter "isBlacklistEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    .local p4, bigrams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/makedict/Word;->mHashCode:I

    .line 43
    iput-object p1, p0, Lcom/android/inputmethod/latin/makedict/Word;->mWord:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/android/inputmethod/latin/makedict/Word;->mFrequency:I

    .line 45
    iput-object p3, p0, Lcom/android/inputmethod/latin/makedict/Word;->mShortcutTargets:Ljava/util/ArrayList;

    .line 46
    iput-object p4, p0, Lcom/android/inputmethod/latin/makedict/Word;->mBigrams:Ljava/util/ArrayList;

    .line 47
    iput-boolean p5, p0, Lcom/android/inputmethod/latin/makedict/Word;->mIsNotAWord:Z

    .line 48
    iput-boolean p6, p0, Lcom/android/inputmethod/latin/makedict/Word;->mIsBlacklistEntry:Z

    .line 49
    return-void
.end method

.method private static computeHashCode(Lcom/android/inputmethod/latin/makedict/Word;)I
    .locals 3
    .parameter "word"

    .prologue
    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/inputmethod/latin/makedict/Word;->mWord:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/inputmethod/latin/makedict/Word;->mFrequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/inputmethod/latin/makedict/Word;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/inputmethod/latin/makedict/Word;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/makedict/Word;->mIsNotAWord:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/makedict/Word;->mIsBlacklistEntry:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/inputmethod/latin/makedict/Word;)I
    .locals 2
    .parameter "w"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/inputmethod/latin/makedict/Word;->mFrequency:I

    iget v1, p1, Lcom/android/inputmethod/latin/makedict/Word;->mFrequency:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/makedict/Word;->mFrequency:I

    iget v1, p1, Lcom/android/inputmethod/latin/makedict/Word;->mFrequency:I

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/Word;->mWord:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/inputmethod/latin/makedict/Word;->mWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/android/inputmethod/latin/makedict/Word;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/makedict/Word;->compareTo(Lcom/android/inputmethod/latin/makedict/Word;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p1, p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    instance-of v3, p1, Lcom/android/inputmethod/latin/makedict/Word;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/android/inputmethod/latin/makedict/Word;

    .line 86
    .local v0, w:Lcom/android/inputmethod/latin/makedict/Word;
    iget v3, p0, Lcom/android/inputmethod/latin/makedict/Word;->mFrequency:I

    iget v4, v0, Lcom/android/inputmethod/latin/makedict/Word;->mFrequency:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/inputmethod/latin/makedict/Word;->mWord:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/inputmethod/latin/makedict/Word;->mWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/inputmethod/latin/makedict/Word;->mShortcutTargets:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/inputmethod/latin/makedict/Word;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/inputmethod/latin/makedict/Word;->mBigrams:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/inputmethod/latin/makedict/Word;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/makedict/Word;->mIsNotAWord:Z

    iget-boolean v4, v0, Lcom/android/inputmethod/latin/makedict/Word;->mIsNotAWord:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/makedict/Word;->mIsBlacklistEntry:Z

    iget-boolean v4, v0, Lcom/android/inputmethod/latin/makedict/Word;->mIsBlacklistEntry:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/inputmethod/latin/makedict/Word;->mHashCode:I

    if-nez v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/android/inputmethod/latin/makedict/Word;->computeHashCode(Lcom/android/inputmethod/latin/makedict/Word;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/makedict/Word;->mHashCode:I

    .line 98
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/makedict/Word;->mHashCode:I

    return v0
.end method
