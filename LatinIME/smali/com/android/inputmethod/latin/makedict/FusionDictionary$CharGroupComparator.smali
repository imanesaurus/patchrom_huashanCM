.class final Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroupComparator;
.super Ljava/lang/Object;
.source "FusionDictionary.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharGroupComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/makedict/FusionDictionary$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroupComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;)I
    .locals 3
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v0, 0x0

    .line 516
    iget-object v1, p1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    aget v1, v1, v0

    iget-object v2, p2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 517
    :goto_0
    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    aget v1, v1, v0

    iget-object v2, p2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    aget v0, v2, v0

    if-ge v1, v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 513
    check-cast p1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .end local p1
    check-cast p2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroupComparator;->compare(Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;)I

    move-result v0

    return v0
.end method
