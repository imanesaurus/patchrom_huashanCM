.class final Lcom/android/inputmethod/latin/Suggest$SuggestedWordInfoComparator;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Suggest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuggestedWordInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/Suggest$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest$SuggestedWordInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 371
    iget v2, p1, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    iget v3, p2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    if-le v2, v3, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    iget v2, p1, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    iget v3, p2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 373
    :cond_2
    iget v2, p1, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mCodePointCount:I

    iget v3, p2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mCodePointCount:I

    if-lt v2, v3, :cond_0

    .line 374
    iget v0, p1, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mCodePointCount:I

    iget v2, p2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mCodePointCount:I

    if-le v0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 375
    :cond_3
    iget-object v0, p1, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 365
    check-cast p1, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .end local p1
    check-cast p2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/latin/Suggest$SuggestedWordInfoComparator;->compare(Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)I

    move-result v0

    return v0
.end method
