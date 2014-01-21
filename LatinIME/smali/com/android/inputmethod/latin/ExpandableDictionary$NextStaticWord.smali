.class final Lcom/android/inputmethod/latin/ExpandableDictionary$NextStaticWord;
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
    name = "NextStaticWord"
.end annotation


# instance fields
.field private final mFrequency:I

.field public final mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;I)V
    .locals 0
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextStaticWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 96
    iput p2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextStaticWord;->mFrequency:I

    .line 97
    return-void
.end method


# virtual methods
.method public getFcParams()Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextStaticWord;->mFrequency:I

    return v0
.end method

.method public getWordNode()Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextStaticWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    return-object v0
.end method

.method public notifyTypedAgainAndGetFrequency()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextStaticWord;->mFrequency:I

    return v0
.end method
