.class public final Lcom/android/inputmethod/latin/SuggestedWords;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

.field private static final EMPTY_WORD_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mIsObsoleteSuggestions:Z

.field public final mIsPrediction:Z

.field public final mIsPunctuationSuggestions:Z

.field private final mSuggestedWordInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTypedWordValid:Z

.field public final mWillAutoCorrect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-static {v2}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY_WORD_INFO_LIST:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    sget-object v1, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY_WORD_INFO_LIST:Ljava/util/ArrayList;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZ)V

    sput-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ZZZZZ)V
    .locals 0
    .parameter
    .parameter "typedWordValid"
    .parameter "willAutoCorrect"
    .parameter "isPunctuationSuggestions"
    .parameter "isObsoleteSuggestions"
    .parameter "isPrediction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;ZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, suggestedWordInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    .line 49
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    .line 50
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWillAutoCorrect:Z

    .line 51
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsPunctuationSuggestions:Z

    .line 52
    iput-boolean p5, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsObsoleteSuggestions:Z

    .line 53
    iput-boolean p6, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsPrediction:Z

    .line 54
    return-void
.end method

.method public static getFromApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Ljava/util/ArrayList;
    .locals 10
    .parameter "infos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/inputmethod/CompletionInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 89
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    move-object v0, p0

    .local v0, arr$:[Landroid/view/inputmethod/CompletionInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 90
    .local v2, info:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 91
    new-instance v5, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7fffffff

    const/4 v8, 0x6

    const-string v9, "application_defined"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v2           #info:Landroid/view/inputmethod/CompletionInfo;
    :cond_1
    return-object v4
.end method

.method public static getTypedWordAndPreviousSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Ljava/util/ArrayList;
    .locals 10
    .parameter "typedWord"
    .parameter "previousSuggestions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/latin/SuggestedWords;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 103
    .local v5, suggestionsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 104
    .local v0, alreadySeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const-string v9, "user_typed"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v4

    .line 108
    .local v4, previousSize:I
    const/4 v1, 0x1

    .local v1, pos:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 109
    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/SuggestedWords;->getWordInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    move-result-object v3

    .line 110
    .local v3, prevWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    iget-object v6, v3, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, prevWord:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 113
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v2           #prevWord:Ljava/lang/String;
    .end local v3           #prevWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_1
    return-object v5
.end method


# virtual methods
.method public getInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    return-object v0
.end method

.method public getWord(I)Ljava/lang/String;
    .locals 1
    .parameter "pos"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    return-object v0
.end method

.method public getWordInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuggestedWords: mTypedWordValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWillAutoCorrect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWillAutoCorrect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPunctuationSuggestions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsPunctuationSuggestions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " words="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willAutoCorrect()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWillAutoCorrect:Z

    return v0
.end method
