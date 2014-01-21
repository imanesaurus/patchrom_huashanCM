.class final Lcom/android/inputmethod/latin/ExpandableDictionary$NextHistoryWord;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"

# interfaces
.implements Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NextHistoryWord"
.end annotation


# instance fields
.field public final mFcp:Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

.field public final mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)V
    .locals 0
    .parameter "word"
    .parameter "fcp"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextHistoryWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 126
    iput-object p2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextHistoryWord;->mFcp:Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    .line 127
    return-void
.end method


# virtual methods
.method public getFcParams()Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextHistoryWord;->mFcp:Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextHistoryWord;->mFcp:Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->getFrequency()I

    move-result v0

    return v0
.end method

.method public getWordNode()Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextHistoryWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    return-object v0
.end method

.method public notifyTypedAgainAndGetFrequency()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextHistoryWord;->mFcp:Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->notifyTypedAgainAndGetFrequency()I

    move-result v0

    return v0
.end method
