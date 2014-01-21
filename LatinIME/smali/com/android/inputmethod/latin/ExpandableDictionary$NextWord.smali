.class public interface abstract Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "NextWord"
.end annotation


# virtual methods
.method public abstract getFcParams()Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
.end method

.method public abstract getFrequency()I
.end method

.method public abstract getWordNode()Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
.end method

.method public abstract notifyTypedAgainAndGetFrequency()I
.end method
