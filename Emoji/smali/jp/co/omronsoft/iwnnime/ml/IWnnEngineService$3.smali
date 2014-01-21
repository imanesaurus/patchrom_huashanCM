.class Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;
.super Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;
.source "IWnnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;-><init>()V

    return-void
.end method

.method private learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 744
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v0

    .line 745
    .local v0, result:Z
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsConverting:Z
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$700(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->makeNextCandidateList()Z

    move-result v0

    .line 747
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v2, 0x5

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 751
    :goto_0
    return v0

    .line 749
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v2, 0x4

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_0
.end method

.method private makeNextCandidateList()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 758
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 759
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1008(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    .line 760
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mSegment:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1000(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->makeCandidateListOf(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addWord(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "candidate"
    .parameter "stroke"

    .prologue
    .line 535
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v4

    monitor-enter v4

    .line 536
    const/4 v1, -0x1

    .line 537
    .local v1, result:I
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v3

    const/16 v5, 0xf

    aget-object v3, v3, v5

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v5

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_3

    .line 538
    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-direct {v2}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>()V

    .line 539
    .local v2, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iput-object p1, v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 540
    iput-object p2, v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    .line 541
    iget v3, v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    .line 542
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v3

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getDictionary()I

    move-result v0

    .line 543
    .local v0, dictionary:I
    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 544
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    move-result v1

    .line 552
    :cond_0
    :goto_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v5, 0x6

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v3, v5}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 560
    .end local v0           #dictionary:I
    .end local v2           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :goto_1
    monitor-exit v4

    return v1

    .line 545
    .restart local v0       #dictionary:I
    .restart local v2       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_1
    const/16 v3, 0xb

    if-ne v0, v3, :cond_0

    .line 546
    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 547
    const/4 v1, 0x0

    goto :goto_0

    .line 549
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 554
    .end local v0           #dictionary:I
    .end local v2           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_3
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 555
    const/16 v1, -0x7e

    goto :goto_1

    .line 557
    :cond_4
    const/16 v1, -0x7f

    goto :goto_1

    .line 561
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public convert(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 16
    .parameter "stroke"
    .parameter "divide"

    .prologue
    .line 463
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v12

    monitor-enter v12

    .line 464
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v11

    const/16 v13, 0x9

    aget-object v11, v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v13}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v13

    aget-boolean v11, v11, v13

    if-eqz v11, :cond_6

    .line 465
    if-nez p1, :cond_0

    .line 466
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 467
    .local v8, ret:Landroid/os/Bundle;
    const-string v11, "result"

    const/4 v13, -0x1

    invoke-virtual {v8, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 468
    monitor-exit v12

    .line 515
    .end local v8           #ret:Landroid/os/Bundle;
    :goto_0
    return-object v8

    .line 470
    :cond_0
    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    invoke-direct {v4}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;-><init>()V

    .line 472
    .local v4, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const-string v11, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 473
    .local v9, strSpilit:[Ljava/lang/String;
    const-string v11, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v6, v11

    .line 474
    .local v6, length:I
    add-int/lit8 v6, v6, -0x1

    .line 475
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 476
    const/4 v11, 0x0

    const/4 v13, 0x1

    new-instance v14, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    add-int/lit8 v15, v5, 0x1

    aget-object v15, v9, v15

    invoke-direct {v14, v15}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11, v13, v14}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->insertStrSegment(IILjp/co/omronsoft/iwnnime/ml/StrSegment;)V

    .line 475
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 480
    :cond_1
    const/4 v11, 0x1

    move/from16 v0, p2

    invoke-virtual {v4, v11, v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->setCursor(II)I

    .line 481
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v11}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)I

    move-result v7

    .line 483
    .local v7, result:I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 484
    .local v1, bundle:Landroid/os/Bundle;
    const-string v11, "result"

    invoke-virtual {v1, v11, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    if-lez v7, :cond_4

    .line 486
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v3, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v10, strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_3

    .line 489
    const/4 v11, 0x2

    invoke-virtual {v4, v11, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v2

    .line 490
    .local v2, candidate:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    if-eqz v2, :cond_2

    .line 491
    iget-object v11, v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const/4 v11, 0x1

    iget v13, v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    iget v14, v2, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    invoke-virtual {v4, v11, v13, v14}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 496
    .end local v2           #candidate:Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_3
    const-string v13, "candidate"

    new-array v11, v7, [Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v1, v13, v11}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 497
    const-string v13, "stroke"

    new-array v11, v7, [Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v1, v13, v11}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v13, 0x1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsConverting:Z
    invoke-static {v11, v13}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$702(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z

    .line 499
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v11}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 500
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v13, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mSegment:I
    invoke-static {v11, v13}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1002(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 502
    .end local v3           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v11}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v11

    const/4 v13, 0x4

    if-ne v11, v13, :cond_5

    .line 503
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v13, 0x5

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v11, v13}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 507
    :goto_3
    monitor-exit v12

    move-object v8, v1

    goto/16 :goto_0

    .line 505
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v13, 0x3

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v11, v13}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_3

    .line 517
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v5           #i:I
    .end local v6           #length:I
    .end local v7           #result:I
    .end local v9           #strSpilit:[Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 509
    :cond_6
    :try_start_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 510
    .restart local v8       #ret:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v11}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_7

    .line 511
    const-string v11, "result"

    const/16 v13, -0x7e

    invoke-virtual {v8, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    :goto_4
    monitor-exit v12

    goto/16 :goto_0

    .line 513
    :cond_7
    const-string v11, "result"

    const/16 v13, -0x7f

    invoke-virtual {v8, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public deleteWord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "candidate"
    .parameter "stroke"

    .prologue
    const/4 v4, 0x0

    .line 606
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v5

    monitor-enter v5

    .line 607
    const/4 v2, 0x0

    .line 608
    .local v2, result:Z
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v3

    const/16 v6, 0x11

    aget-object v3, v3, v6

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v6}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v6

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_4

    .line 609
    const/4 v0, 0x0

    .line 611
    .local v0, getWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 612
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 613
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #getWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 617
    .restart local v0       #getWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_0
    if-eqz v0, :cond_1

    .line 618
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->deleteWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v2

    .line 621
    :cond_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v6, 0x6

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v3, v6}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 622
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    if-eqz v2, :cond_3

    :goto_1
    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 631
    monitor-exit v5

    move v3, v2

    .end local v0           #getWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .end local v1           #i:I
    :goto_2
    return v3

    .line 611
    .restart local v0       #getWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    .line 624
    .end local v0           #getWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .end local v1           #i:I
    :cond_4
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    .line 625
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v6, -0x7e

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v3, v6}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 629
    :goto_3
    monitor-exit v5

    move v3, v4

    goto :goto_2

    .line 627
    :cond_5
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v6, -0x7f

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v3, v6}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_3

    .line 632
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getDictionaryType()I
    .locals 2

    .prologue
    .line 1034
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v1

    monitor-enter v1

    .line 1035
    :try_start_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getDictionary()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1036
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getErrorCode()I
    .locals 2

    .prologue
    .line 1046
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v1

    monitor-enter v1

    .line 1047
    :try_start_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$900(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1048
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNextCandidate(I)Landroid/os/Bundle;
    .locals 12
    .parameter "numberOfCandidates"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 325
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v8

    monitor-enter v8

    .line 326
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v7

    const/16 v9, 0xa

    aget-object v7, v7, v9

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v9}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v9

    aget-boolean v7, v7, v9

    if-eqz v7, :cond_4

    .line 327
    if-gtz p1, :cond_0

    .line 328
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v4, ret:Landroid/os/Bundle;
    const-string v7, "result"

    const/4 v9, -0x1

    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    monitor-exit v8

    .line 366
    .end local v4           #ret:Landroid/os/Bundle;
    :goto_0
    return-object v4

    .line 332
    :cond_0
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/util/ArrayList;

    check-cast v3, [Ljava/util/ArrayList;

    .line 334
    .local v3, resultLists:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v0, p1, [I

    .line 335
    .local v0, attributes:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v11, :cond_1

    .line 336
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    aput-object v7, v3, v2

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 338
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_2

    .line 339
    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-direct {v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>()V

    .line 340
    .local v6, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v7}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v7

    invoke-virtual {v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v6

    .line 341
    if-nez v6, :cond_3

    .line 351
    .end local v6           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 352
    .local v1, candidateList:Landroid/os/Bundle;
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 353
    .local v5, size:I
    const-string v9, "candidate"

    const/4 v7, 0x0

    aget-object v7, v3, v7

    new-array v10, v5, [Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 355
    const-string v9, "stroke"

    const/4 v7, 0x1

    aget-object v7, v3, v7

    new-array v10, v5, [Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 357
    const-string v7, "attributes"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 358
    monitor-exit v8

    move-object v4, v1

    goto :goto_0

    .line 344
    .end local v1           #candidateList:Landroid/os/Bundle;
    .end local v5           #size:I
    .restart local v6       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_3
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v7}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const/4 v7, 0x0

    aget-object v7, v3, v7

    iget-object v9, v6, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    const/4 v7, 0x1

    aget-object v7, v3, v7

    iget-object v9, v6, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget v7, v6, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    aput v7, v0, v2

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 360
    .end local v0           #attributes:[I
    .end local v2           #i:I
    .end local v3           #resultLists:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 361
    .restart local v4       #ret:Landroid/os/Bundle;
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v7}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v7

    if-ne v7, v10, :cond_5

    .line 362
    const-string v7, "result"

    const/16 v9, -0x7e

    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    :goto_3
    monitor-exit v8

    goto/16 :goto_0

    .line 368
    .end local v4           #ret:Landroid/os/Bundle;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 364
    .restart local v4       #ret:Landroid/os/Bundle;
    :cond_5
    :try_start_1
    const-string v7, "result"

    const/16 v9, -0x7f

    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public getNextCandidateWithAnnotation(I)Landroid/os/Bundle;
    .locals 9
    .parameter "numberOfCandidates"

    .prologue
    .line 393
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v7

    monitor-enter v7

    .line 394
    :try_start_0
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->getNextCandidate(I)Landroid/os/Bundle;

    move-result-object v4

    .line 395
    .local v4, ret:Landroid/os/Bundle;
    const-string v6, "candidate"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, candidateList:[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lez v6, :cond_1

    .line 397
    array-length v6, v0

    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 398
    .local v1, decoText:[Ljava/lang/CharSequence;
    array-length v6, v0

    new-array v2, v6, [I

    .line 400
    .local v2, decoTextStatus:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 401
    const/4 v6, 0x1

    new-array v5, v6, [I

    .line 402
    .local v5, status:[I
    aget-object v6, v0, v3

    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    invoke-static {v8}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$000(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    move-result-object v8

    invoke-static {v6, v8, v5}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getSpannedText(Ljava/lang/CharSequence;Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;[I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v1, v3

    .line 404
    const/4 v6, 0x0

    aget v6, v5, v6

    aput v6, v2, v3

    .line 400
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    .end local v5           #status:[I
    :cond_0
    const-string v6, "annotation_candidate"

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 407
    const-string v6, "annotation_result"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 409
    .end local v1           #decoText:[Ljava/lang/CharSequence;
    .end local v2           #decoTextStatus:[I
    .end local v3           #i:I
    :cond_1
    monitor-exit v7

    return-object v4

    .line 410
    .end local v0           #candidateList:[Ljava/lang/String;
    .end local v4           #ret:Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 1024
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v1

    monitor-enter v1

    .line 1025
    :try_start_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(I)V
    .locals 3
    .parameter "initLevel"

    .prologue
    .line 224
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v1

    monitor-enter v1

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    :try_start_0
    monitor-exit v1

    .line 251
    return-void

    .line 227
    :pswitch_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #calls: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->stopDecoEmojiUpdating()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$300(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)V

    .line 229
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->close()V

    .line 230
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mFilesDirPath:Ljava/lang/String;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$500(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->init(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v2, 0x1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsFlexibleCharsetInit:Z
    invoke-static {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$602(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z

    .line 232
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v2, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsConverting:Z
    invoke-static {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$702(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z

    .line 233
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v2, 0x1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 238
    :pswitch_1
    :try_start_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v0

    const/4 v2, 0x3

    aget-object v0, v0, v2

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->breakSequence()V

    .line 240
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mFilesDirPath:Ljava/lang/String;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$500(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->init(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v2, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsConverting:Z
    invoke-static {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$702(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z

    .line 242
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v2, 0x2

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initializeDictionary()Z
    .locals 5

    .prologue
    .line 665
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v3

    monitor-enter v3

    .line 666
    const/4 v1, 0x0

    .line 667
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v2

    const/16 v4, 0x13

    aget-object v2, v2, v4

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v4

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_3

    .line 668
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v2

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getDictionary()I

    move-result v0

    .line 669
    .local v0, dictionary:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 670
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v2

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v4

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLanguage()I

    move-result v4

    invoke-virtual {v2, v4, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->initializeUserDictionary(II)Z

    move-result v1

    .line 675
    :cond_0
    :goto_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v4, 0x6

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 676
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v4, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 684
    .end local v0           #dictionary:I
    :goto_2
    monitor-exit v3

    return v1

    .line 672
    .restart local v0       #dictionary:I
    :cond_1
    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 673
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v2

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v4

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLanguage()I

    move-result v4

    invoke-virtual {v2, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->initializeLearnDictionary(I)Z

    move-result v1

    goto :goto_0

    .line 676
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 678
    .end local v0           #dictionary:I
    :cond_3
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 679
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v4, -0x7e

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v2, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_2

    .line 685
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 681
    :cond_4
    :try_start_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v4, -0x7f

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v2, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public learnCandidate(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 426
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v3

    monitor-enter v3

    .line 427
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v1

    const/16 v4, 0xb

    aget-object v1, v1, v4

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v4

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_3

    .line 428
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    if-gez p1, :cond_1

    .line 429
    :cond_0
    monitor-exit v3

    move v0, v2

    .line 440
    :goto_0
    return v0

    .line 431
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v0

    .line 432
    .local v0, result:Z
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    if-eqz v0, :cond_2

    :goto_1
    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 433
    monitor-exit v3

    goto :goto_0

    .line 442
    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 432
    .restart local v0       #result:Z
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 435
    .end local v0           #result:Z
    :cond_3
    :try_start_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 436
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v4, -0x7e

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v1, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 440
    :goto_2
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 438
    :cond_4
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v4, -0x7f

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v1, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public learnCandidateNoStore(I)Z
    .locals 6
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 776
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v3

    monitor-enter v3

    .line 777
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v4

    const/16 v5, 0xc

    aget-object v4, v4, v5

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v5

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_3

    .line 778
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p1, :cond_0

    if-gez p1, :cond_1

    .line 779
    :cond_0
    monitor-exit v3

    move v0, v2

    .line 792
    :goto_0
    return v0

    .line 781
    :cond_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 782
    .local v1, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    iget v4, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    .line 783
    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v0

    .line 784
    .local v0, result:Z
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    if-eqz v0, :cond_2

    :goto_1
    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v4, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 785
    monitor-exit v3

    goto :goto_0

    .line 794
    .end local v0           #result:Z
    .end local v1           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 784
    .restart local v0       #result:Z
    .restart local v1       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 787
    .end local v0           #result:Z
    .end local v1           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_3
    :try_start_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 788
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v5, -0x7e

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 792
    :goto_2
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 790
    :cond_4
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v5, -0x7f

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public learnWord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "candidate"
    .parameter "stroke"

    .prologue
    const/4 v8, 0x0

    .line 806
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v9

    monitor-enter v9

    .line 807
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v1

    const/16 v2, 0xd

    aget-object v1, v1, v2

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 808
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1000

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V

    .line 810
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v7

    .line 811
    .local v7, result:Z
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    if-eqz v7, :cond_0

    :goto_0
    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v1, v8}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 812
    monitor-exit v9

    .line 819
    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .end local v7           #result:Z
    :goto_1
    return v7

    .line 811
    .restart local v0       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .restart local v7       #result:Z
    :cond_0
    const/4 v8, -0x1

    goto :goto_0

    .line 814
    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .end local v7           #result:Z
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 815
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v2, -0x7e

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 819
    :goto_2
    monitor-exit v9

    move v7, v8

    goto :goto_1

    .line 817
    :cond_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v2, -0x7f

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_2

    .line 821
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public learnWordNoStore(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "candidate"
    .parameter "stroke"

    .prologue
    const/4 v8, 0x0

    .line 833
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v9

    monitor-enter v9

    .line 834
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v1

    const/16 v2, 0xe

    aget-object v1, v1, v2

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 839
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x44

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V

    .line 842
    .local v0, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    invoke-direct {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->learn(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v7

    .line 843
    .local v7, result:Z
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    if-eqz v7, :cond_0

    :goto_0
    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v1, v8}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 844
    monitor-exit v9

    .line 851
    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .end local v7           #result:Z
    :goto_1
    return v7

    .line 843
    .restart local v0       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .restart local v7       #result:Z
    :cond_0
    const/4 v8, -0x1

    goto :goto_0

    .line 846
    .end local v0           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    .end local v7           #result:Z
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 847
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v2, -0x7e

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 851
    :goto_2
    monitor-exit v9

    move v7, v8

    goto :goto_1

    .line 849
    :cond_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v2, -0x7f

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_2

    .line 853
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public predict(Ljava/lang/String;II)I
    .locals 6
    .parameter "stroke"
    .parameter "minLen"
    .parameter "maxLen"

    .prologue
    const/4 v5, 0x1

    .line 279
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v3

    monitor-enter v3

    .line 280
    const/4 v1, -0x1

    .line 281
    .local v1, result:I
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v2

    const/16 v4, 0x8

    aget-object v2, v2, v4

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v4

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_1

    .line 282
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;-><init>()V

    .line 283
    .local v0, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    invoke-direct {v5, p1}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->insertStrSegment(IILjp/co/omronsoft/iwnnime/ml/StrSegment;)V

    .line 286
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v4, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsConverting:Z
    invoke-static {v2, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$702(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z

    .line 288
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->predict(Ljp/co/omronsoft/iwnnime/ml/ComposingText;II)I

    move-result v1

    .line 289
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 290
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v4, 0x5

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 301
    .end local v0           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    :goto_0
    monitor-exit v3

    return v1

    .line 292
    .restart local v0       #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v4, 0x3

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_0

    .line 302
    .end local v0           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 295
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v2, v5, :cond_2

    .line 296
    const/16 v1, -0x7e

    goto :goto_0

    .line 298
    :cond_2
    const/16 v1, -0x7f

    goto :goto_0
.end method

.method public searchWords(Ljava/lang/String;)I
    .locals 3
    .parameter "stroke"

    .prologue
    .line 577
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v1

    monitor-enter v1

    .line 578
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v0

    const/16 v2, 0x10

    aget-object v0, v0, v2

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mWnnWordArray:Ljava/util/ArrayList;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$800(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 580
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v2, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mSegment:I
    invoke-static {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1002(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 581
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v2, 0x7

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 582
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->searchWords(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    .line 587
    :goto_0
    return v0

    .line 584
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 585
    const/16 v0, -0x7e

    monitor-exit v1

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 587
    :cond_1
    const/16 v0, -0x7f

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDictionary(Ljava/lang/String;IIZZZZZZ)Z
    .locals 12
    .parameter "configurationFile"
    .parameter "language"
    .parameter "dictionary"
    .parameter "flexibleSearch"
    .parameter "tenKeyType"
    .parameter "emojiFilter"
    .parameter "emailFilter"
    .parameter "convertCandidates"
    .parameter "learnNumber"

    .prologue
    .line 877
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v11

    monitor-enter v11

    .line 878
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    :try_start_0
    invoke-virtual/range {v0 .. v10}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->setDictionaryDecoratedPict(Ljava/lang/String;IIZZZZZZZ)Z

    move-result v0

    monitor-exit v11

    return v0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDictionaryDecoratedPict(Ljava/lang/String;IIZZZZZZZ)Z
    .locals 12
    .parameter "configurationFile"
    .parameter "language"
    .parameter "dictionary"
    .parameter "flexibleSearch"
    .parameter "tenKeyType"
    .parameter "emojiFilter"
    .parameter "decoEmojiFilter"
    .parameter "emailFilter"
    .parameter "convertCandidates"
    .parameter "learnNumber"

    .prologue
    .line 909
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v11

    monitor-enter v11

    .line 910
    :try_start_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    .line 911
    .local v1, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_b

    .line 912
    if-gez p2, :cond_0

    .line 913
    const-string v2, "iWnn"

    const-string v3, "iWnnEngineService::setDictionary(): language < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v3, -0x1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 915
    const/4 v2, 0x0

    monitor-exit v11

    .line 975
    :goto_0
    return v2

    .line 917
    :cond_0
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLanguage()I

    move-result v2

    if-eq p2, v2, :cond_2

    const/4 v9, 0x1

    .line 918
    .local v9, isLanguageChanged:Z
    :goto_1
    if-nez v9, :cond_1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getDictionary()I

    move-result v2

    if-ne p3, v2, :cond_1

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_1
    const/4 v8, 0x1

    .line 923
    .local v8, isDictionaryChanged:Z
    :goto_2
    if-eqz v8, :cond_4

    .line 924
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConnectedPackage:Ljava/lang/String;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;

    move-result-object v6

    move v2, p2

    move v3, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 926
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v3, -0x1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 927
    const/4 v2, 0x0

    monitor-exit v11

    goto :goto_0

    .line 977
    .end local v1           #engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .end local v8           #isDictionaryChanged:Z
    .end local v9           #isLanguageChanged:Z
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 917
    .restart local v1       #engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 918
    .restart local v9       #isLanguageChanged:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 930
    .restart local v8       #isDictionaryChanged:Z
    :cond_4
    :try_start_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConfigurationFile:Ljava/lang/String;
    invoke-static {v2, p1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1102(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Ljava/lang/String;)Ljava/lang/String;

    .line 932
    if-nez v9, :cond_5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsFlexibleCharsetInit:Z
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$600(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mFlexibleSearch:Z
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1300(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Z

    move-result v2

    move/from16 v0, p4

    if-ne v2, v0, :cond_5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mTenKeyType:Z
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Z

    move-result v2

    move/from16 v0, p5

    if-eq v2, v0, :cond_6

    .line 937
    :cond_5
    if-eqz p4, :cond_8

    .line 938
    const/4 v7, 0x1

    .line 944
    .local v7, flexible:I
    :goto_3
    if-eqz p5, :cond_9

    .line 945
    const/4 v10, 0x0

    .line 950
    .local v10, keyType:I
    :goto_4
    invoke-virtual {v1, v7, v10}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setFlexibleCharset(II)I

    .line 951
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    move/from16 v0, p4

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mFlexibleSearch:Z
    invoke-static {v2, v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1302(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z

    .line 952
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    move/from16 v0, p5

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mTenKeyType:Z
    invoke-static {v2, v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1402(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z

    .line 953
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v3, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mIsFlexibleCharsetInit:Z
    invoke-static {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$602(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Z)Z

    .line 956
    .end local v7           #flexible:I
    .end local v10           #keyType:I
    :cond_6
    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setEmojiFilter(Z)V

    .line 957
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDecoEmojiFilter(Z)V

    .line 958
    move/from16 v0, p8

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setEmailAddressFilter(Z)V

    .line 959
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setConvertedCandidateEnabled(Z)V

    .line 960
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setEnableLearnNumber(Z)V

    .line 962
    const/16 v2, 0xb

    if-eq p3, v2, :cond_7

    const/16 v2, 0xa

    if-ne p3, v2, :cond_a

    .line 964
    :cond_7
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v3, 0x6

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 968
    :goto_5
    const/4 v2, 0x1

    monitor-exit v11

    goto/16 :goto_0

    .line 940
    :cond_8
    const/4 v7, 0x0

    .restart local v7       #flexible:I
    goto :goto_3

    .line 947
    :cond_9
    const/4 v10, 0x1

    .restart local v10       #keyType:I
    goto :goto_4

    .line 966
    .end local v7           #flexible:I
    .end local v10           #keyType:I
    :cond_a
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v3, 0x2

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_5

    .line 970
    .end local v8           #isDictionaryChanged:Z
    .end local v9           #isLanguageChanged:Z
    :cond_b
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 971
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v3, -0x7e

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 975
    :goto_6
    const/4 v2, 0x0

    monitor-exit v11

    goto/16 :goto_0

    .line 973
    :cond_c
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v3, -0x7f

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method

.method public setLearnDictionary()V
    .locals 7

    .prologue
    .line 711
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v6

    monitor-enter v6

    .line 712
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLanguage()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConfigurationFile:Ljava/lang/String;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1100(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConnectedPackage:Ljava/lang/String;
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 715
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v1, 0x6

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 717
    :cond_0
    monitor-exit v6

    .line 718
    return-void

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNormalDictionary()V
    .locals 7

    .prologue
    .line 727
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v6

    monitor-enter v6

    .line 728
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLanguage()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConfigurationFile:Ljava/lang/String;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1100(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConnectedPackage:Ljava/lang/String;
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 731
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v1, 0x2

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 733
    :cond_0
    monitor-exit v6

    .line 734
    return-void

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserDictionary()V
    .locals 7

    .prologue
    .line 695
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v6

    monitor-enter v6

    .line 696
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLanguage()I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConfigurationFile:Ljava/lang/String;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1100(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mConnectedPackage:Ljava/lang/String;
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 699
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v1, 0x6

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 701
    :cond_0
    monitor-exit v6

    .line 702
    return-void

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startInput()V
    .locals 5

    .prologue
    .line 1009
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v1

    monitor-enter v1

    .line 1010
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v0

    const/16 v2, 0x15

    aget-object v0, v0, v2

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1015
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #calls: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->callCheckDecoEmoji()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$1500(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)V

    .line 1016
    monitor-exit v1

    .line 1017
    return-void

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public undo()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 987
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v2

    monitor-enter v2

    .line 988
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v3

    const/16 v4, 0x14

    aget-object v3, v3, v4

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v4

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    .line 989
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->undo(I)Z

    move-result v0

    .line 990
    .local v0, result:Z
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    if-eqz v0, :cond_0

    :goto_0
    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v3, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 991
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v3, 0x3

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$202(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 992
    monitor-exit v2

    .line 999
    .end local v0           #result:Z
    :goto_1
    return v0

    .line 990
    .restart local v0       #result:Z
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 994
    .end local v0           #result:Z
    :cond_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 995
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v4, -0x7e

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 999
    :goto_2
    monitor-exit v2

    move v0, v1

    goto :goto_1

    .line 997
    :cond_2
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v4, -0x7f

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_2

    .line 1001
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeoutDictionary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 642
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v2

    monitor-enter v2

    .line 643
    :try_start_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$100()[[Z

    move-result-object v3

    const/16 v4, 0x12

    aget-object v3, v3, v4

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v4

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    .line 644
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v3

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v4

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLanguage()I

    move-result v4

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$400(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v5

    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getDictionary()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->writeoutDictionary(II)Z

    move-result v0

    .line 645
    .local v0, result:Z
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    if-eqz v0, :cond_0

    :goto_0
    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v3, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 646
    monitor-exit v2

    .line 653
    .end local v0           #result:Z
    :goto_1
    return v0

    .line 645
    .restart local v0       #result:Z
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 648
    .end local v0           #result:Z
    :cond_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mEngineStatus:I
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 649
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v4, -0x7e

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    .line 653
    :goto_2
    monitor-exit v2

    move v0, v1

    goto :goto_1

    .line 651
    :cond_2
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/16 v4, -0x7f

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mErrorCode:I
    invoke-static {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$902(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;I)I

    goto :goto_2

    .line 655
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
