.class public interface abstract Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;
.super Ljava/lang/Object;
.source "UserDictionaryToolsEngineInterface.java"


# virtual methods
.method public abstract addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
.end method

.method public abstract deleteWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
.end method

.method public abstract getWords()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initializeDictionary()V
.end method

.method public abstract setDirPath(Ljava/lang/String;)V
.end method
