.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;
.super Ljava/lang/Object;
.source "ViPER4AndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "V4ADSPModule"
.end annotation


# instance fields
.field private final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public mInstance:Landroid/media/audiofx/AudioEffect;

.field final synthetic this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;


# direct methods
.method public constructor <init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Ljava/util/UUID;I)V
    .locals 6
    .parameter
    .parameter "uModuleID"
    .parameter "nAudioSession"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v2, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 72
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    .line 78
    :try_start_0
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creating viper4android module, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-class v2, Landroid/media/audiofx/AudioEffect;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 80
    iget-object v5, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiofx/AudioEffect;

    .line 79
    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    .line 82
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 85
    .local v0, adModuleDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Effect name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Type id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unique id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Implementor : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connect mode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    new-instance v3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule$1;

    invoke-direct {v3, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule$1;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V

    invoke-virtual {v2, v3}, Landroid/media/audiofx/AudioEffect;->setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V

    .line 111
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    new-instance v3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule$2;

    invoke-direct {v3, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule$2;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V

    invoke-virtual {v2, v3}, Landroid/media/audiofx/AudioEffect;->setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0           #adModuleDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ViPER4Android"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    goto :goto_0
.end method

.method private ProceedIRBuffer_Headphone(Lcom/vipercn/viper4android_v2/activity/IRSUtils;Ljava/lang/String;)V
    .locals 24
    .parameter "irs"
    .parameter "szConvIRFile"

    .prologue
    .line 533
    new-instance v19, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-direct/range {v19 .. v21}, Ljava/util/Random;-><init>(J)V

    .line 534
    .local v19, rndMachine:Ljava/util/Random;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Random;->nextInt()I

    move-result v12

    .line 535
    .local v12, nKernelBufferID:I
    const v20, 0x10004

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetChannels()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v12, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadEntireData()[B

    move-result-object v6

    .line 539
    .local v6, baKernelData:[B
    if-nez v6, :cond_0

    .line 542
    const v20, 0x10004

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 579
    :goto_0
    return-void

    .line 545
    :cond_0
    array-length v0, v6

    move/from16 v20, v0

    if-gtz v20, :cond_1

    .line 548
    const v20, 0x10004

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 551
    :cond_1
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->HashIRS([BI)J

    move-result-wide v17

    .line 552
    .local v17, nlHashCode:J
    const-wide/16 v20, -0x1

    and-long v20, v20, v17

    move-wide/from16 v0, v20

    long-to-int v10, v0

    .line 554
    .local v10, nHashCode:I
    const-string v20, "ViPER4Android"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "[Kernel] Channels = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetChannels()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Frames = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetSampleCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Bytes = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v6

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Hash = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/16 v8, 0x1ff8

    .line 558
    .local v8, nBlockSize:I
    array-length v15, v6

    .local v15, nRestBytes:I
    const/16 v16, 0x0

    .local v16, nSendOffset:I
    const/4 v14, 0x0

    .line 559
    .local v14, nPacketIndex:I
    :goto_1
    if-gtz v15, :cond_3

    .line 574
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 575
    .local v5, baIRSName:[B
    const/4 v11, 0x0

    .line 576
    .local v11, nIRSNameHashCode:I
    if-eqz v5, :cond_2

    .line 577
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->HashIRS([BI)J

    move-result-wide v20

    const-wide/16 v22, -0x1

    and-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v11, v0

    .line 578
    :cond_2
    const v20, 0x10006

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12, v10, v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 561
    .end local v5           #baIRSName:[B
    .end local v11           #nIRSNameHashCode:I
    :cond_3
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 562
    .local v13, nMinBlockSize:I
    new-array v7, v13, [B

    .line 563
    .local v7, baSendData:[B
    const/16 v20, 0x0

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v6, v0, v7, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    add-int v16, v16, v13

    .line 565
    sub-int/2addr v15, v13

    .line 566
    const-string v20, "ViPER4Android"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Setting kernel buffer, index = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", length = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    add-int/lit8 v14, v14, 0x1

    .line 569
    div-int/lit8 v9, v13, 0x4

    .line 570
    .local v9, nFramesCount:I
    const v20, 0x10005

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12, v9, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx2x8192(III[B)V

    goto :goto_1
.end method

.method private ProceedIRBuffer_Headphone(Ljava/lang/String;III)V
    .locals 23
    .parameter "szConvIRFile"
    .parameter "nChannels"
    .parameter "nFrames"
    .parameter "nBytes"

    .prologue
    .line 416
    new-instance v18, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-direct/range {v18 .. v20}, Ljava/util/Random;-><init>(J)V

    .line 417
    .local v18, rndMachine:Ljava/util/Random;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Random;->nextInt()I

    move-result v13

    .line 418
    .local v13, nKernelBufferID:I
    const v19, 0x10004

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 421
    invoke-static/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->ReadImpulseResponseToArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 422
    .local v7, baKernelData:[B
    if-nez v7, :cond_0

    .line 425
    const v19, 0x10004

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 480
    :goto_0
    return-void

    .line 428
    :cond_0
    array-length v0, v7

    move/from16 v19, v0

    if-gtz v19, :cond_1

    .line 431
    const v19, 0x10004

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 434
    :cond_1
    invoke-static {v7}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->GetHashImpulseResponseArray([B)[I

    move-result-object v5

    .line 435
    .local v5, baHashCode:[I
    if-nez v5, :cond_2

    .line 438
    const v19, 0x10004

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 441
    :cond_2
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 444
    const v19, 0x10004

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 447
    :cond_3
    const/16 v19, 0x0

    aget v19, v5, v19

    if-nez v19, :cond_4

    .line 450
    const v19, 0x10004

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 453
    :cond_4
    const/16 v19, 0x1

    aget v11, v5, v19

    .line 455
    .local v11, nHashCode:I
    const-string v19, "ViPER4Android"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[Kernel] Channels = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Frames = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Bytes = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v7

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Hash = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/16 v9, 0x1ff8

    .line 459
    .local v9, nBlockSize:I
    array-length v0, v7

    move/from16 v16, v0

    .local v16, nRestBytes:I
    const/16 v17, 0x0

    .local v17, nSendOffset:I
    const/4 v15, 0x0

    .line 460
    .local v15, nPacketIndex:I
    :goto_1
    if-gtz v16, :cond_6

    .line 475
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 476
    .local v6, baIRSName:[B
    const/4 v12, 0x0

    .line 477
    .local v12, nIRSNameHashCode:I
    if-eqz v6, :cond_5

    .line 478
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->HashIRS([BI)J

    move-result-wide v19

    const-wide/16 v21, -0x1

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v12, v0

    .line 479
    :cond_5
    const v19, 0x10006

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13, v11, v12}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 462
    .end local v6           #baIRSName:[B
    .end local v12           #nIRSNameHashCode:I
    :cond_6
    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 463
    .local v14, nMinBlockSize:I
    new-array v8, v14, [B

    .line 464
    .local v8, baSendData:[B
    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v7, v0, v8, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    add-int v17, v17, v14

    .line 466
    sub-int v16, v16, v14

    .line 467
    const-string v19, "ViPER4Android"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Setting kernel buffer, index = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", length = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    add-int/lit8 v15, v15, 0x1

    .line 470
    div-int/lit8 v10, v14, 0x4

    .line 471
    .local v10, nFramesCount:I
    const v19, 0x10005

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13, v10, v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx2x8192(III[B)V

    goto :goto_1
.end method

.method private ProceedIRBuffer_Speaker(Lcom/vipercn/viper4android_v2/activity/IRSUtils;Ljava/lang/String;)V
    .locals 23
    .parameter "irs"
    .parameter "szConvIRFile"

    .prologue
    .line 485
    new-instance v18, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-direct/range {v18 .. v20}, Ljava/util/Random;-><init>(J)V

    .line 486
    .local v18, rndMachine:Ljava/util/Random;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Random;->nextInt()I

    move-result v12

    .line 487
    .local v12, nKernelBufferID:I
    const v19, 0x10030

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetChannels()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v12, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 490
    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadEntireData()[B

    move-result-object v6

    .line 491
    .local v6, baKernelData:[B
    if-nez v6, :cond_0

    .line 494
    const v19, 0x10030

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 529
    :goto_0
    return-void

    .line 497
    :cond_0
    array-length v0, v6

    move/from16 v19, v0

    if-gtz v19, :cond_1

    .line 500
    const v19, 0x10030

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 503
    :cond_1
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->HashIRS([BI)J

    move-result-wide v16

    .line 504
    .local v16, nlHashCode:J
    const-wide/16 v19, -0x1

    and-long v19, v19, v16

    move-wide/from16 v0, v19

    long-to-int v10, v0

    .line 506
    .local v10, nHashCode:I
    const-string v19, "ViPER4Android"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[Kernel] Channels = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetChannels()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Frames = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetSampleCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Bytes = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v6

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Hash = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/16 v8, 0x1ff8

    .line 510
    .local v8, nBlockSize:I
    array-length v14, v6

    .local v14, nRestBytes:I
    const/4 v15, 0x0

    .line 511
    .local v15, nSendOffset:I
    :goto_1
    if-gtz v14, :cond_3

    .line 524
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 525
    .local v5, baIRSName:[B
    const/4 v11, 0x0

    .line 526
    .local v11, nIRSNameHashCode:I
    if-eqz v5, :cond_2

    .line 527
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->HashIRS([BI)J

    move-result-wide v19

    const-wide/16 v21, -0x1

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v11, v0

    .line 528
    :cond_2
    const v19, 0x10032

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12, v10, v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 513
    .end local v5           #baIRSName:[B
    .end local v11           #nIRSNameHashCode:I
    :cond_3
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 514
    .local v13, nMinBlockSize:I
    new-array v7, v13, [B

    .line 515
    .local v7, baSendData:[B
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v6, v15, v7, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    add-int/2addr v15, v13

    .line 517
    sub-int/2addr v14, v13

    .line 519
    div-int/lit8 v9, v13, 0x4

    .line 520
    .local v9, nFramesCount:I
    const v19, 0x10031

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12, v9, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx2x8192(III[B)V

    goto :goto_1
.end method

.method private ProceedIRBuffer_Speaker(Ljava/lang/String;III)V
    .locals 22
    .parameter "szConvIRFile"
    .parameter "nChannels"
    .parameter "nFrames"
    .parameter "nBytes"

    .prologue
    .line 350
    new-instance v17, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-direct/range {v17 .. v19}, Ljava/util/Random;-><init>(J)V

    .line 351
    .local v17, rndMachine:Ljava/util/Random;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Random;->nextInt()I

    move-result v13

    .line 352
    .local v13, nKernelBufferID:I
    const v18, 0x10030

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 355
    invoke-static/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->ReadImpulseResponseToArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 356
    .local v7, baKernelData:[B
    if-nez v7, :cond_0

    .line 359
    const v18, 0x10030

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 412
    :goto_0
    return-void

    .line 362
    :cond_0
    array-length v0, v7

    move/from16 v18, v0

    if-gtz v18, :cond_1

    .line 365
    const v18, 0x10030

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 368
    :cond_1
    invoke-static {v7}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->GetHashImpulseResponseArray([B)[I

    move-result-object v5

    .line 369
    .local v5, baHashCode:[I
    if-nez v5, :cond_2

    .line 372
    const v18, 0x10030

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 375
    :cond_2
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 378
    const v18, 0x10030

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 381
    :cond_3
    const/16 v18, 0x0

    aget v18, v5, v18

    if-nez v18, :cond_4

    .line 384
    const v18, 0x10030

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 387
    :cond_4
    const/16 v18, 0x1

    aget v11, v5, v18

    .line 389
    .local v11, nHashCode:I
    const-string v18, "ViPER4Android"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[Kernel] Channels = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", Frames = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", Bytes = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v7

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", Hash = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/16 v9, 0x1ff8

    .line 393
    .local v9, nBlockSize:I
    array-length v15, v7

    .local v15, nRestBytes:I
    const/16 v16, 0x0

    .line 394
    .local v16, nSendOffset:I
    :goto_1
    if-gtz v15, :cond_6

    .line 407
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 408
    .local v6, baIRSName:[B
    const/4 v12, 0x0

    .line 409
    .local v12, nIRSNameHashCode:I
    if-eqz v6, :cond_5

    .line 410
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v6, v0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->HashIRS([BI)J

    move-result-wide v18

    const-wide/16 v20, -0x1

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .line 411
    :cond_5
    const v18, 0x10032

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13, v11, v12}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 396
    .end local v6           #baIRSName:[B
    .end local v12           #nIRSNameHashCode:I
    :cond_6
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 397
    .local v14, nMinBlockSize:I
    new-array v8, v14, [B

    .line 398
    .local v8, baSendData:[B
    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v7, v0, v8, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    add-int v16, v16, v14

    .line 400
    sub-int/2addr v15, v14

    .line 402
    div-int/lit8 v10, v14, 0x4

    .line 403
    .local v10, nFramesCount:I
    const v18, 0x10031

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13, v10, v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx2x8192(III[B)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    return-object v0
.end method

.method private byteArrayToInt([BI)I
    .locals 2
    .parameter "valueBuf"
    .parameter "offset"

    .prologue
    .line 163
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method private varargs concatArrays([[B)[B
    .locals 8
    .parameter "arrays"

    .prologue
    const/4 v5, 0x0

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, len:I
    array-length v6, p1

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_0

    .line 175
    new-array v1, v2, [B

    .line 176
    .local v1, b:[B
    const/4 v3, 0x0

    .line 177
    .local v3, offs:I
    array-length v6, p1

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_1

    .line 182
    return-object v1

    .line 171
    .end local v1           #b:[B
    .end local v3           #offs:I
    :cond_0
    aget-object v0, p1, v4

    .line 173
    .local v0, a:[B
    array-length v7, v0

    add-int/2addr v2, v7

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    .end local v0           #a:[B
    .restart local v1       #b:[B
    .restart local v3       #offs:I
    :cond_1
    aget-object v0, p1, v4

    .line 179
    .restart local v0       #a:[B
    array-length v7, v0

    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    array-length v7, v0

    add-int/2addr v3, v7

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private intToByteArray(I)[B
    .locals 2
    .parameter "value"

    .prologue
    .line 155
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public SetConvIRFile(Ljava/lang/String;Z)V
    .locals 13
    .parameter "szConvIRFile"
    .parameter "bSpeakerParam"

    .prologue
    .line 585
    if-nez p1, :cond_1

    .line 587
    const-string v9, "ViPER4Android"

    const-string v10, "Clear convolver kernel"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    if-eqz p2, :cond_0

    const v9, 0x10030

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 663
    :goto_0
    return-void

    .line 590
    :cond_0
    const v9, 0x10004

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 594
    :cond_1
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Convolver kernel = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v9, ""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 599
    const-string v9, "ViPER4Android"

    const-string v10, "Clear convolver kernel"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-eqz p2, :cond_2

    const v9, 0x10030

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 602
    :cond_2
    const v9, 0x10004

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 606
    :cond_3
    const/4 v0, 0x1

    .line 607
    .local v0, bNeedSendIRSToDriver:Z
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 608
    .local v1, baIRSName:[B
    if-eqz v1, :cond_4

    .line 610
    array-length v9, v1

    invoke-static {v1, v9}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->HashIRS([BI)J

    move-result-wide v6

    .line 611
    .local v6, lIRSNameHash:J
    const-wide/16 v9, -0x1

    and-long/2addr v9, v6

    long-to-int v2, v9

    .line 612
    .local v2, iIRSNameHash:I
    const v9, 0x800a

    invoke-virtual {p0, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_px4_vx4x1(I)I

    move-result v3

    .line 613
    .local v3, iIRSNameHashInDriver:I
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Kernel ID = [driver: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", client: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    if-ne v2, v3, :cond_4

    .line 615
    const/4 v0, 0x0

    .line 618
    .end local v2           #iIRSNameHash:I
    .end local v3           #iIRSNameHashInDriver:I
    .end local v6           #lIRSNameHash:J
    :cond_4
    if-nez v0, :cond_5

    .line 620
    const-string v9, "ViPER4Android"

    const-string v10, "Driver is holding the same irs now"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 624
    :cond_5
    const v8, 0x10004

    .line 625
    .local v8, nCommand:I
    if-eqz p2, :cond_6

    const v8, 0x10030

    .line 627
    :cond_6
    const-string v9, "ViPER4Android"

    const-string v10, "We are going to load irs through internal method"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v5, Lcom/vipercn/viper4android_v2/activity/IRSUtils;

    invoke-direct {v5}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;-><init>()V

    .line 629
    .local v5, irs:Lcom/vipercn/viper4android_v2/activity/IRSUtils;
    invoke-virtual {v5, p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->LoadIRS(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 632
    if-eqz p2, :cond_7

    invoke-direct {p0, v5, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->ProceedIRBuffer_Speaker(Lcom/vipercn/viper4android_v2/activity/IRSUtils;Ljava/lang/String;)V

    .line 634
    :goto_1
    invoke-virtual {v5}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 633
    :cond_7
    invoke-direct {p0, v5, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->ProceedIRBuffer_Headphone(Lcom/vipercn/viper4android_v2/activity/IRSUtils;Ljava/lang/String;)V

    goto :goto_1

    .line 638
    :cond_8
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->IsLibraryUsable()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 640
    const-string v9, "ViPER4Android"

    const-string v10, "We are going to load irs through jni"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {p1}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->GetImpulseResponseInfoArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 643
    .local v4, iaIRInfo:[I
    if-nez v4, :cond_9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 646
    :cond_9
    array-length v9, v4

    const/4 v10, 0x4

    if-eq v9, v10, :cond_a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 649
    :cond_a
    const/4 v9, 0x0

    aget v9, v4, v9

    if-nez v9, :cond_b

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 653
    :cond_b
    if-eqz p2, :cond_c

    const/4 v9, 0x1

    aget v9, v4, v9

    const/4 v10, 0x2

    aget v10, v4, v10

    const/4 v11, 0x3

    aget v11, v4, v11

    invoke-direct {p0, p1, v9, v10, v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->ProceedIRBuffer_Speaker(Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 654
    :cond_c
    const/4 v9, 0x1

    aget v9, v4, v9

    const/4 v10, 0x2

    aget v10, v4, v10

    const/4 v11, 0x3

    aget v11, v4, v11

    invoke-direct {p0, p1, v9, v10, v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->ProceedIRBuffer_Headphone(Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 659
    .end local v4           #iaIRInfo:[I
    :cond_d
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getParameter_Native([B[B)V
    .locals 7
    .parameter "parameter"
    .parameter "value"

    .prologue
    .line 335
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-nez v2, :cond_0

    .line 345
    :goto_0
    return-void

    .line 338
    :cond_0
    :try_start_0
    const-class v2, Landroid/media/audiofx/AudioEffect;

    const-string v3, "getParameter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [B

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [B

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 339
    .local v1, getParameter:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v1           #getParameter:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getParameter_Native: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getParameter_px4_vx4x1(I)I
    .locals 7
    .parameter "param"

    .prologue
    .line 320
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 321
    .local v1, p:[B
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 322
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_Native([B[B)V

    .line 323
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 329
    .end local v1           #p:[B
    .end local v2           #v:[B
    :goto_0
    return v3

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getParameter_px4_vx4x1: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "ViPER4Android"

    const-string v1, "Free viper4android module."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setParameter_Native([B[B)V
    .locals 7
    .parameter "parameter"
    .parameter "value"

    .prologue
    .line 304
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-nez v2, :cond_0

    .line 314
    :goto_0
    return-void

    .line 307
    :cond_0
    :try_start_0
    const-class v2, Landroid/media/audiofx/AudioEffect;

    const-string v3, "setParameter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [B

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [B

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 308
    .local v1, setParameter:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v1           #setParameter:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setParameter_Native: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx1x256(II[B)V
    .locals 9
    .parameter "param"
    .parameter "dataLength"
    .parameter "byteData"

    .prologue
    .line 255
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 256
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 257
    .local v3, vL:[B
    const/4 v6, 0x2

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 258
    .local v2, v:[B
    array-length v6, v2

    const/16 v7, 0x100

    if-ge v6, v7, :cond_0

    .line 260
    array-length v6, v2

    rsub-int v5, v6, 0x100

    .line 261
    .local v5, zeroPad:I
    new-array v4, v5, [B

    .line 262
    .local v4, zeroArray:[B
    const/4 v6, 0x2

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 264
    .end local v4           #zeroArray:[B
    .end local v5           #zeroPad:I
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vL:[B
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ViPER4Android"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setParameter_px4_vx1x256: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx2x8192(III[B)V
    .locals 10
    .parameter "param"
    .parameter "valueL"
    .parameter "dataLength"
    .parameter "byteData"

    .prologue
    .line 276
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 277
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 278
    .local v4, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 279
    .local v3, vH:[B
    const/4 v7, 0x3

    new-array v7, v7, [[B

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object p4, v7, v8

    invoke-direct {p0, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 280
    .local v2, v:[B
    array-length v7, v2

    const/16 v8, 0x2000

    if-ge v7, v8, :cond_0

    .line 282
    array-length v7, v2

    rsub-int v6, v7, 0x2000

    .line 283
    .local v6, zeroPad:I
    new-array v5, v6, [B

    .line 284
    .local v5, zeroArray:[B
    const/4 v7, 0x2

    new-array v7, v7, [[B

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-direct {p0, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 286
    .end local v5           #zeroArray:[B
    .end local v6           #zeroPad:I
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vH:[B
    .end local v4           #vL:[B
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setParameter_px4_vx2x8192: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x1(II)V
    .locals 6
    .parameter "param"
    .parameter "valueL"

    .prologue
    .line 189
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 190
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v2

    .line 191
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v1           #p:[B
    .end local v2           #v:[B
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ViPER4Android"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setParameter_px4_vx4x1: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x2(III)V
    .locals 8
    .parameter "param"
    .parameter "valueL"
    .parameter "valueH"

    .prologue
    .line 203
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 204
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 205
    .local v4, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 206
    .local v3, vH:[B
    const/4 v5, 0x2

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-direct {p0, v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 207
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vH:[B
    .end local v4           #vL:[B
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ViPER4Android"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setParameter_px4_vx4x2: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x3(IIII)V
    .locals 9
    .parameter "param"
    .parameter "valueL"
    .parameter "valueH"
    .parameter "valueE"

    .prologue
    .line 219
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 220
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v5

    .line 221
    .local v5, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 222
    .local v4, vH:[B
    invoke-direct {p0, p4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 223
    .local v3, vE:[B
    const/4 v6, 0x3

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 224
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vE:[B
    .end local v4           #vH:[B
    .end local v5           #vL:[B
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ViPER4Android"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setParameter_px4_vx4x3: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x4(IIIII)V
    .locals 10
    .parameter "param"
    .parameter "valueL"
    .parameter "valueH"
    .parameter "valueE"
    .parameter "valueR"

    .prologue
    .line 237
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 238
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v5

    .line 239
    .local v5, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 240
    .local v4, vH:[B
    invoke-direct {p0, p4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 241
    .local v3, vE:[B
    invoke-direct {p0, p5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v6

    .line 242
    .local v6, vR:[B
    const/4 v7, 0x4

    new-array v7, v7, [[B

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    invoke-direct {p0, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 243
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vE:[B
    .end local v4           #vH:[B
    .end local v5           #vL:[B
    .end local v6           #vR:[B
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setParameter_px4_vx4x4: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vxString(ILjava/lang/String;)V
    .locals 3
    .parameter "param"
    .parameter "szData"

    .prologue
    .line 297
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 298
    .local v1, stringLen:I
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 299
    .local v0, stringBytes:[B
    invoke-virtual {p0, p1, v1, v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx1x256(II[B)V

    .line 300
    return-void
.end method
