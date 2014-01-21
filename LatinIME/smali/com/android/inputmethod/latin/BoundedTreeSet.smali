.class public final Lcom/android/inputmethod/latin/BoundedTreeSet;
.super Ljava/util/TreeSet;
.source "BoundedTreeSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet",
        "<",
        "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCapacity:I


# direct methods
.method public constructor <init>(Ljava/util/Comparator;I)V
    .locals 0
    .parameter
    .parameter "capacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-direct {p0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 32
    iput p2, p0, Lcom/android/inputmethod/latin/BoundedTreeSet;->mCapacity:I

    .line 33
    return-void
.end method


# virtual methods
.method public add(Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BoundedTreeSet;->size()I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/latin/BoundedTreeSet;->mCapacity:I

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    :goto_0
    return v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BoundedTreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BoundedTreeSet;->last()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_1
    invoke-super {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BoundedTreeSet;->pollLast()Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/BoundedTreeSet;->add(Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, e:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method
