.class Lcom/android/inputmethod/latin/UserHistoryDictionary$1;
.super Ljava/lang/Object;
.source "UserHistoryDictionary.java"

# interfaces
.implements Lcom/android/inputmethod/latin/UserHistoryDictIOUtils$OnAddWordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/UserHistoryDictionary;->loadDictionaryAsyncLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/UserHistoryDictionary;

.field final synthetic val$dictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

.field final synthetic val$initializing:Z

.field final synthetic val$last:J

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/UserHistoryDictionary;Lcom/android/inputmethod/latin/ExpandableDictionary;ZJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->this$0:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    iput-object p2, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->val$dictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    iput-boolean p3, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->val$initializing:Z

    iput-wide p4, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->val$now:J

    iput-wide p6, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->val$last:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBigram(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"

    .prologue
    const/16 v1, 0x30

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->this$0:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    invoke-static {v0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$008(Lcom/android/inputmethod/latin/UserHistoryDictionary;)I

    .line 246
    iget-object v6, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->val$dictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->val$initializing:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(Z)V

    :goto_0
    invoke-virtual {v6, p1, p2, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->this$0:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    #getter for: Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;
    invoke-static {v0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$100(Lcom/android/inputmethod/latin/UserHistoryDictionary;)Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    move-result-object v0

    int-to-byte v1, p3

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->addBigram(Ljava/lang/String;Ljava/lang/String;B)V

    .line 251
    return-void

    .line 246
    :cond_1
    new-instance v0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    iget-wide v2, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->val$now:J

    iget-wide v4, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->val$last:J

    move v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(IJJ)V

    goto :goto_0
.end method

.method public setUnigram(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "word"
    .parameter "shortcutTarget"
    .parameter "frequency"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->this$0:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    invoke-static {v0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$008(Lcom/android/inputmethod/latin/UserHistoryDictionary;)I

    .line 234
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->val$dictionary:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserHistoryDictionary$1;->this$0:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    #getter for: Lcom/android/inputmethod/latin/UserHistoryDictionary;->mBigramList:Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;
    invoke-static {v0}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->access$100(Lcom/android/inputmethod/latin/UserHistoryDictionary;)Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;

    move-result-object v0

    const/4 v1, 0x0

    int-to-byte v2, p3

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/inputmethod/latin/UserHistoryDictionaryBigramList;->addBigram(Ljava/lang/String;Ljava/lang/String;B)V

    .line 236
    return-void
.end method
