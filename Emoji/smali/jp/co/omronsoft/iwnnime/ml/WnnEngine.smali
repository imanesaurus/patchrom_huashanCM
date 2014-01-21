.class public interface abstract Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
.super Ljava/lang/Object;
.source "WnnEngine.java"


# static fields
.field public static final DICTIONARY_TYPE_LEARN:I = 0x1

.field public static final DICTIONARY_TYPE_USER:I = 0x2


# virtual methods
.method public abstract addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
.end method

.method public abstract breakSequence()V
.end method

.method public abstract close()V
.end method

.method public abstract convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)I
.end method

.method public abstract deleteWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
.end method

.method public abstract getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;
.end method

.method public abstract getUserDictionaryWords()[Ljp/co/omronsoft/iwnnime/ml/WnnWord;
.end method

.method public abstract getgijistr(Ljp/co/omronsoft/iwnnime/ml/ComposingText;I)I
.end method

.method public abstract init(Ljava/lang/String;)V
.end method

.method public abstract initializeDictionary(I)Z
.end method

.method public abstract initializeDictionary(II)Z
.end method

.method public abstract isConverting()Z
.end method

.method public abstract learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
.end method

.method public abstract makeCandidateListOf(I)I
.end method

.method public abstract predict(Ljp/co/omronsoft/iwnnime/ml/ComposingText;II)I
.end method

.method public abstract searchWords(Ljava/lang/String;)I
.end method

.method public abstract searchWords(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
.end method

.method public abstract setPreferences(Landroid/content/SharedPreferences;)V
.end method
