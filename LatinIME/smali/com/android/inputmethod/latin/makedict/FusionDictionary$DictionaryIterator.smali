.class public final Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;
.super Ljava/lang/Object;
.source "FusionDictionary.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DictionaryIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/android/inputmethod/latin/makedict/Word;",
        ">;"
    }
.end annotation


# instance fields
.field final mCurrentString:Ljava/lang/StringBuilder;

.field final mPositions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, root:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    .line 762
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    .line 763
    new-instance v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;

    invoke-direct {v0, p1}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;-><init>(Ljava/util/ArrayList;)V

    .line 764
    .local v0, rootPos:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 765
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 769
    iget-object v2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;

    .line 770
    .local v1, p:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v2, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;->pos:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    const/4 v2, 0x1

    .line 774
    .end local v1           #p:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public next()Lcom/android/inputmethod/latin/makedict/Word;
    .locals 13

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;

    .line 780
    .local v9, currentPos:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget v2, v9, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;->length:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 783
    :cond_0
    :goto_0
    iget-object v0, v9, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;->pos:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 784
    iget-object v0, v9, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;->pos:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;

    .line 785
    .local v8, currentGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    iget-object v0, v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v0, v0

    iput v0, v9, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;->length:I

    .line 786
    iget-object v7, v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    .local v7, arr$:[I
    array-length v12, v7

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_1

    aget v10, v7, v11

    .line 787
    .local v10, i:I
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 786
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 788
    .end local v10           #i:I
    :cond_1
    iget-object v0, v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    if-eqz v0, :cond_2

    .line 789
    new-instance v9, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;

    .end local v9           #currentPos:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v0, v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    iget-object v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;-><init>(Ljava/util/ArrayList;)V

    .line 790
    .restart local v9       #currentPos:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 792
    :cond_2
    iget v0, v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    if-ltz v0, :cond_0

    .line 793
    new-instance v0, Lcom/android/inputmethod/latin/makedict/Word;

    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    iget-object v3, v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    iget-object v4, v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    iget-boolean v5, v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsNotAWord:Z

    iget-boolean v6, v8, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsBlacklistEntry:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/makedict/Word;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    return-object v0

    .line 797
    .end local v7           #arr$:[I
    .end local v8           #currentGroup:Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 798
    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #currentPos:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;
    check-cast v9, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;

    .line 799
    .restart local v9       #currentPos:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;

    iget v0, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;->length:I

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;->next()Lcom/android/inputmethod/latin/makedict/Word;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 806
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
