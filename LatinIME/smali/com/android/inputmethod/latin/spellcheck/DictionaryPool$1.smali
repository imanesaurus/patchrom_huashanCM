.class final Lcom/android/inputmethod/latin/spellcheck/DictionaryPool$1;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "DictionaryPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/Dictionary;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "composer"
    .parameter "prevWord"
    .parameter "proximityInfo"
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

    .prologue
    .line 55
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->noSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
