.class public abstract Lcom/android/inputmethod/latin/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# instance fields
.field protected final mDictType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "dictType"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/inputmethod/latin/Dictionary;->mDictType:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public getFrequency(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "word"

    .prologue
    .line 79
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/keyboard/ProximityInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getSuggestionsWithSessionId(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "composer"
    .parameter "prevWord"
    .parameter "proximityInfo"
    .parameter "sessionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/keyboard/ProximityInfo;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Dictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isValidWord(Ljava/lang/CharSequence;)Z
.end method
