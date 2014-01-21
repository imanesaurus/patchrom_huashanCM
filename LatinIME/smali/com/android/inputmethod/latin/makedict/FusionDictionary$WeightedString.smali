.class public final Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
.super Ljava/lang/Object;
.source "FusionDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeightedString"
.end annotation


# instance fields
.field public mFrequency:I

.field public final mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p1, p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    instance-of v3, p1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 79
    check-cast v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    .line 80
    .local v0, w:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    iget-object v3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    iget v4, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
