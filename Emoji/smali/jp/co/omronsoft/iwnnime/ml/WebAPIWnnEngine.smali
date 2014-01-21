.class public Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;
.super Ljava/lang/Object;
.source "WebAPIWnnEngine.java"


# static fields
.field private static final DELAY_TIMEOUT:I = 0x1388

.field private static final MSG_TIMEOUT:I = 0x0

.field private static final RESULT_ERROR:I = 0x1

.field private static final RESULT_NO_RESPONSE:I = 0x2

.field private static final RESULT_OK:I = 0x0

.field private static final SOCIAL_IME_URL:Ljava/lang/String; = "http://www.social-ime.com/api/"

.field public static final WEBAPI_ACTION_CODE:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.GET_CANDIDATES_FROM_PLURALITY"

.field public static final WEBAPI_CANDIDATE_MAX:I = 0x1f4

.field private static final WEBAPI_YOMI_KEYCODE:Ljava/lang/String; = "yomi_key"


# instance fields
.field private mCandidateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mResultHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingYomi:Ljava/lang/String;

.field private mWebApiClassName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCurrentIndex:I

    .line 66
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mSendingYomi:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mWebApiClassName:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine$1;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->init()V

    .line 94
    return-void
.end method

.method private getCandidate(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 2
    .parameter "index"

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, ret:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 130
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ret:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 132
    .restart local v0       #ret:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_0
    return-object v0
.end method

.method private sendGetAgainCandidateIntent(Ljava/lang/String;)V
    .locals 8
    .parameter "input"

    .prologue
    const/4 v6, 0x0

    .line 239
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCurrentIndex:I

    .line 240
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->onDoneGettingCandidates()V

    .line 241
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mSendingYomi:Ljava/lang/String;

    .line 243
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mWebApiClassName:Ljava/util/Set;

    if-eqz v4, :cond_2

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mWebApiClassName:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 244
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mWebApiClassName:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 245
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v4, "jp.co.omronsoft.iwnnime.ml.GET_CANDIDATES_FROM_PLURALITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "yomi_key"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    .local v0, className:Ljava/lang/String;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 250
    .local v3, result:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    new-instance v4, Landroid/content/ComponentName;

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 254
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    .end local v0           #className:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/Integer;
    :cond_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 260
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private sendGetCandidateIntent(Ljava/lang/String;)V
    .locals 7
    .parameter "input"

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->clearCandidates()V

    .line 103
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mSendingYomi:Ljava/lang/String;

    .line 104
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mWebApiClassName:Ljava/util/Set;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mWebApiClassName:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 106
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mWebApiClassName:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v3, "jp.co.omronsoft.iwnnime.ml.GET_CANDIDATES_FROM_PLURALITY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "yomi_key"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, className:Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    .end local v0           #className:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 119
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public clearCandidates()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCurrentIndex:I

    .line 182
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->onDoneGettingCandidates()V

    .line 184
    return-void
.end method

.method public getAgain(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->getSearchString(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, input:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->sendGetAgainCandidateIntent(Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method public getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .locals 2

    .prologue
    .line 208
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCurrentIndex:I

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->getCandidate(I)Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v0

    .line 209
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-eqz v0, :cond_0

    .line 210
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCurrentIndex:I

    .line 212
    :cond_0
    return-object v0
.end method

.method public getSearchString(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, input:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v3

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    invoke-interface {v3}, Ljp/co/omronsoft/iwnnime/ml/WnnEngine;->isConverting()Z

    move-result v1

    .line 273
    .local v1, isConverting:Z
    if-eqz v1, :cond_1

    .line 274
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v2

    .line 275
    .local v2, strseg:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    if-eqz v2, :cond_0

    .line 276
    iget v3, v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    iget v4, v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 283
    .end local v1           #isConverting:Z
    .end local v2           #strseg:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_0
    :goto_0
    return-object v0

    .line 279
    .restart local v1       #isConverting:Z
    :cond_1
    iget-object v3, p1, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->mCursor:[I

    aget v3, v3, v5

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSendingYomi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mSendingYomi:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCandidateList:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->clearCandidates()V

    .line 192
    return-void
.end method

.method public isWebApiAllReceived()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebApiAllSuccessReceived()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 324
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebApiSuccessReceived()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onDoneGettingCandidates()V
    .locals 2

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mSendingYomi:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    return-void
.end method

.method public setCandidates(Ljava/lang/String;[Ljava/lang/String;[S)V
    .locals 11
    .parameter "yomi"
    .parameter "candidates"
    .parameter "hinshi"

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x400

    const/4 v1, 0x0

    .line 143
    if-eqz p2, :cond_3

    .line 145
    if-eqz p3, :cond_1

    .line 146
    array-length v0, p2

    array-length v2, p3

    if-le v0, v2, :cond_0

    array-length v9, p3

    .line 150
    .local v9, size:I
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 151
    if-eqz p3, :cond_2

    .line 152
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCandidateList:Ljava/util/ArrayList;

    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    aget-object v2, p2, v8

    aget-short v7, p3, v8

    move-object v3, p1

    move v5, v1

    invoke-direct/range {v0 .. v7}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;III)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 146
    .end local v8           #i:I
    .end local v9           #size:I
    :cond_0
    array-length v9, p2

    goto :goto_0

    .line 148
    :cond_1
    array-length v9, p2

    .restart local v9       #size:I
    goto :goto_0

    .line 154
    .restart local v8       #i:I
    :cond_2
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mCandidateList:Ljava/util/ArrayList;

    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    aget-object v2, p2, v8

    move-object v3, p1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v7}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;III)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    .end local v8           #i:I
    .end local v9           #size:I
    :cond_3
    return-void
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 217
    const-string v0, "opt_multiwebapi"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mWebApiClassName:Ljava/util/Set;

    .line 218
    return-void
.end method

.method public setWebApiResult(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "success"

    .prologue
    .line 293
    if-eqz p2, :cond_0

    .line 294
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->mResultHash:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public start(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->getSearchString(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, input:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/WebAPIWnnEngine;->sendGetCandidateIntent(Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method
