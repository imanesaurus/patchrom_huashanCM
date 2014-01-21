.class public Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;
.super Ljava/lang/Object;
.source "IWnnCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore$DictionaryType;,
        Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore$Hinshi;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IWNN_LIBRARY_DATAPATH:Ljava/lang/String; = "/system/lib/"

.field public static final LEARN_CONNECT:I = 0x80

.field public static final LEARN_ENABLE:I = 0x1

.field public static final RELATIONAL_LEARNING_OFF:I = 0x0

.field public static final RELATIONAL_LEARNING_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "iWnn"


# instance fields
.field private mIwnnInfo:I

.field private mSituationManager:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    :try_start_0
    const-string v1, "/system/lib/libiwnn.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 30
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 32
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "iwnn"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mSituationManager:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;

    .line 95
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getInfo()I

    move-result v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    .line 96
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;

    invoke-direct {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;-><init>(Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;)V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mSituationManager:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "iWnn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addWord(Ljava/lang/String;Ljava/lang/String;III)I
    .locals 6
    .parameter "yomi"
    .parameter "repr"
    .parameter "group"
    .parameter "dtype"
    .parameter "con"

    .prologue
    .line 354
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->addWord(ILjava/lang/String;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public checkDecoEmojiDictionary()I
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->checkDecoEmojiDictionary(I)I

    move-result v0

    return v0
.end method

.method public controlDecoEmojiDictionary(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter "id"
    .parameter "yomi"
    .parameter "hinsi"
    .parameter "control_flag"

    .prologue
    .line 788
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1, p2, p3, p4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->controlDecoEmojiDictionary(ILjava/lang/String;Ljava/lang/String;II)V

    .line 789
    return-void
.end method

.method public conv(Ljava/lang/String;I)I
    .locals 1
    .parameter "input"
    .parameter "divide_pos"

    .prologue
    .line 272
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setInput(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->conv(II)I

    move-result v0

    goto :goto_0
.end method

.method public createAdditionalDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 648
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->createAdditionalDictionary(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 649
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createAutoLearningDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 690
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->createAutoLearningDictionary(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 691
    const/4 v0, 0x1

    .line 693
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAdditionalDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 634
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->deleteAdditionalDictionary(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 635
    const/4 v0, 0x1

    .line 637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAutoLearningDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 676
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->deleteAutoLearningDictionary(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 677
    const/4 v0, 0x1

    .line 679
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteSearchWord(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 363
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->deleteSearchWord(II)I

    move-result v0

    return v0
.end method

.method public deleteWord(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 375
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->deleteWord(II)I

    move-result v0

    return v0
.end method

.method public destroyWnnInfo()V
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->destroy(I)V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    .line 118
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->destroy(I)V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    .line 110
    :cond_0
    return-void
.end method

.method public forecast(Ljava/lang/String;)I
    .locals 3
    .parameter "input"

    .prologue
    const/4 v0, 0x0

    .line 241
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setInput(ILjava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 244
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->forecast(III)I

    move-result v0

    goto :goto_0
.end method

.method public forecast(Ljava/lang/String;II)I
    .locals 1
    .parameter "input"
    .parameter "minLen"
    .parameter "maxLen"

    .prologue
    .line 257
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setInput(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->forecast(III)I

    move-result v0

    goto :goto_0
.end method

.method public getMorphemePartOfSpeech(I)S
    .locals 1
    .parameter "index"

    .prologue
    .line 624
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getMorphemeHinsi(II)S

    move-result v0

    return v0
.end method

.method public getMorphemeText(I[[Ljava/lang/String;)V
    .locals 7
    .parameter "index"
    .parameter "getText"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 600
    if-ltz p1, :cond_0

    array-length v2, p2

    if-lt v2, v6, :cond_0

    aget-object v2, p2, v4

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 615
    :cond_0
    return-void

    .line 604
    :cond_1
    aget-object v2, p2, v4

    aput-object v5, v2, v4

    .line 605
    aget-object v2, p2, v4

    aput-object v5, v2, v6

    .line 606
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    aget-object v3, p2, v4

    invoke-static {v2, p1, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getMorphemeWord(II[Ljava/lang/String;)V

    .line 608
    move v1, p1

    .line 609
    .local v1, yomiIndex:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 610
    aget-object v2, p2, v0

    aput-object v5, v2, v4

    .line 611
    aget-object v2, p2, v0

    aput-object v5, v2, v6

    .line 612
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    aget-object v3, p2, v0

    invoke-static {v2, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getMorphemeYomi(II[Ljava/lang/String;)V

    .line 613
    const/4 v1, -0x1

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getResultString(II)Ljava/lang/String;
    .locals 2
    .parameter "segment"
    .parameter "cand"

    .prologue
    .line 387
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getWordString(III)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getResultStroke(II)Ljava/lang/String;
    .locals 2
    .parameter "segment"
    .parameter "cand"

    .prologue
    .line 400
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getWordStroke(III)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getSegmentString(I)Ljava/lang/String;
    .locals 2
    .parameter "segment"

    .prologue
    .line 422
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getSegmentString(II)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getSegmentStroke(I)Ljava/lang/String;
    .locals 2
    .parameter "segment"

    .prologue
    .line 411
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getSegmentStroke(II)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getWord(II)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .parameter "type"

    .prologue
    .line 336
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getWord(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getgijistr(Ljava/lang/String;II)I
    .locals 1
    .parameter "input"
    .parameter "divide_pos"
    .parameter "type"

    .prologue
    .line 818
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setInput(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 819
    const/4 v0, 0x0

    .line 821
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getgijistr(III)I

    move-result v0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)I
    .locals 2
    .parameter "dirPath"

    .prologue
    .line 190
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->init(ILjava/lang/String;)I

    move-result v0

    .line 191
    .local v0, result:I
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mSituationManager:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->updateState()Z

    .line 192
    return v0
.end method

.method public isGijiDic(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 522
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->isGijiResult(II)I

    move-result v0

    .line 523
    .local v0, result:I
    if-gtz v0, :cond_0

    .line 524
    const/4 v1, 0x0

    .line 526
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLearnDictionary(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 506
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->isLearnDictionary(II)I

    move-result v0

    .line 507
    .local v0, result:I
    if-nez v0, :cond_0

    .line 508
    const/4 v1, 0x0

    .line 510
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public noConv(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    const/4 v0, 0x0

    .line 287
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setInput(ILjava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->noconv(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pullSituationState()Z
    .locals 2

    .prologue
    .line 202
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->getState(I)I

    move-result v0

    .line 203
    .local v0, result:I
    if-gez v0, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 206
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public pushSituationState()Z
    .locals 2

    .prologue
    .line 216
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setState(I)I

    move-result v0

    .line 217
    .local v0, result:I
    if-gez v0, :cond_0

    .line 218
    const/4 v1, 0x0

    .line 220
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public refreshConfFile()Z
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->refreshConfFile(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetDecoEmojiDictionary()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->resetDecoEmojiDictionary(I)I

    move-result v0

    return v0
.end method

.method public resetExtendedInfo(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 479
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->resetExtendedInfo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public runInitialize(III)I
    .locals 1
    .parameter "type"
    .parameter "language"
    .parameter "dictionary"

    .prologue
    .line 462
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 464
    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->deleteDictionary(IIII)I

    move-result v0

    .line 467
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public saveAdditionalDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 662
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->saveAdditionalDictionary(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 663
    const/4 v0, 0x1

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAutoLearningDictionary(I)Z
    .locals 1
    .parameter "setType"

    .prologue
    .line 704
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->saveAutoLearningDictionary(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 705
    const/4 v0, 0x1

    .line 707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchWord(IILjava/lang/String;)I
    .locals 1
    .parameter "method"
    .parameter "order"
    .parameter "input"

    .prologue
    .line 321
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setInput(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->searchWord(III)I

    move-result v0

    goto :goto_0
.end method

.method public select(IIZZ)I
    .locals 4
    .parameter "segment"
    .parameter "cand"
    .parameter "learn"
    .parameter "connected"

    .prologue
    const/4 v1, 0x0

    .line 306
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz p4, :cond_1

    :goto_1
    or-int/2addr v1, v2

    invoke-static {v3, p1, p2, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->select(IIII)I

    move-result v0

    .line 308
    .local v0, ret:I
    return v0

    .end local v0           #ret:I
    :cond_0
    move v2, v1

    .line 306
    goto :goto_0

    :cond_1
    const/16 v1, 0x80

    goto :goto_1
.end method

.method public setDecoEmojiFilter(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 771
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 772
    const/4 v0, 0x1

    .line 776
    .local v0, filter:I
    :goto_0
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->decoemojiFilter(II)V

    .line 777
    return-void

    .line 774
    .end local v0           #filter:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #filter:I
    goto :goto_0
.end method

.method public setDictionary(Ljava/lang/String;I)I
    .locals 1
    .parameter "conf_file"
    .parameter "lang"

    .prologue
    .line 181
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setdicByConf(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setDictionary(IILjava/lang/String;ZLjava/lang/String;)Z
    .locals 2
    .parameter "language"
    .parameter "dictionary"
    .parameter "confFilePath"
    .parameter "change"
    .parameter "dirPath"

    .prologue
    const/4 v0, 0x0

    .line 130
    if-eqz p4, :cond_2

    .line 131
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p3, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setdicByConf(ILjava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setActiveLang(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    :cond_2
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setBookshelf(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 145
    if-eqz p4, :cond_3

    .line 147
    invoke-virtual {p0, p5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->init(Ljava/lang/String;)I

    .line 150
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDownloadDictionary(ILjava/lang/String;Ljava/lang/String;IIIIIIZI)V
    .locals 12
    .parameter "index"
    .parameter "name"
    .parameter "file"
    .parameter "convertHigh"
    .parameter "convertBase"
    .parameter "predictHigh"
    .parameter "predictBase"
    .parameter "morphoHigh"
    .parameter "morphoBase"
    .parameter "cache"
    .parameter "limit"

    .prologue
    .line 729
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-static/range {v0 .. v11}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setDownloadDictionary(IILjava/lang/String;Ljava/lang/String;IIIIIIZI)V

    .line 743
    return-void
.end method

.method public setEmailAddressFilter(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 570
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 571
    const/4 v0, 0x1

    .line 575
    .local v0, filter:I
    :goto_0
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->emailAddressFilter(II)V

    .line 576
    return-void

    .line 573
    .end local v0           #filter:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #filter:I
    goto :goto_0
.end method

.method public setEmojiFilter(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 554
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 555
    const/4 v0, 0x1

    .line 559
    .local v0, filter:I
    :goto_0
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->emojiFilter(II)V

    .line 560
    return-void

    .line 557
    .end local v0           #filter:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #filter:I
    goto :goto_0
.end method

.method public setFlexibleCharset(II)I
    .locals 1
    .parameter "charset"
    .parameter "keytype"

    .prologue
    .line 494
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setFlexibleCharset(III)I

    move-result v0

    return v0
.end method

.method public setLanguage(I)I
    .locals 1
    .parameter "lang"

    .prologue
    .line 169
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setActiveLang(II)I

    move-result v0

    return v0
.end method

.method public setServicePackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 760
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setServicePackageName(ILjava/lang/String;)I

    .line 761
    return-void
.end method

.method public setSituationBiasValue(II)V
    .locals 1
    .parameter "situation"
    .parameter "bias"

    .prologue
    .line 230
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->setStateSystem(III)V

    .line 231
    return-void
.end method

.method public splitWord(Ljava/lang/String;[I)V
    .locals 3
    .parameter "input"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 585
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 591
    :goto_0
    return-void

    .line 588
    :cond_0
    aput v2, p2, v2

    .line 589
    const/4 v0, 0x1

    aput v2, p2, v0

    .line 590
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->splitWord(ILjava/lang/String;[I)V

    goto :goto_0
.end method

.method public undo(I)Z
    .locals 2
    .parameter "count"

    .prologue
    .line 539
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->undo(II)I

    move-result v0

    .line 540
    .local v0, result:I
    if-gez v0, :cond_0

    .line 541
    const/4 v1, 0x0

    .line 543
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unmountDictionary()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->unmountDics(I)I

    move-result v0

    return v0
.end method

.method public writeoutDictionary(I)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 438
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v1

    .line 443
    :cond_1
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->mIwnnInfo:I

    invoke-static {v2, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnNative;->WriteOutDictionary(II)I

    move-result v0

    .line 444
    .local v0, result:I
    if-ltz v0, :cond_0

    .line 447
    const/4 v1, 0x1

    goto :goto_0
.end method
