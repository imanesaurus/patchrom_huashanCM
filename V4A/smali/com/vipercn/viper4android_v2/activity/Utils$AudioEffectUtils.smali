.class public Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android_v2/activity/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioEffectUtils"
.end annotation


# instance fields
.field private mAudioEffectList:[Landroid/media/audiofx/AudioEffect$Descriptor;

.field private mHasViPER4AndroidEngine:Z

.field private mV4AEngineVersion:[I

.field final synthetic this$0:Lcom/vipercn/viper4android_v2/activity/Utils;


# direct methods
.method public constructor <init>(Lcom/vipercn/viper4android_v2/activity/Utils;)V
    .locals 14
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 42
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->this$0:Lcom/vipercn/viper4android_v2/activity/Utils;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mAudioEffectList:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 38
    iput-boolean v10, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mHasViPER4AndroidEngine:Z

    .line 39
    new-array v6, v9, [I

    iput-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    .line 43
    :try_start_0
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v6

    iput-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mAudioEffectList:[Landroid/media/audiofx/AudioEffect$Descriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mAudioEffectList:[Landroid/media/audiofx/AudioEffect$Descriptor;

    if-nez v6, :cond_0

    .line 57
    iput-boolean v10, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mHasViPER4AndroidEngine:Z

    .line 58
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v10

    .line 59
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v11

    .line 60
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v12

    .line 61
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v13

    .line 62
    const-string v6, "ViPER4Android_Utils"

    const-string v7, "Failed to query audio effects"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v2

    .line 46
    .local v2, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mAudioEffectList:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 47
    iput-boolean v10, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mHasViPER4AndroidEngine:Z

    .line 48
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v10

    .line 49
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v11

    .line 50
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v12

    .line 51
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v13

    .line 52
    const-string v6, "ViPER4Android_Utils"

    const-string v7, "Failed to query audio effects"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    .line 67
    .local v1, aeViPER4AndroidEngine:Landroid/media/audiofx/AudioEffect$Descriptor;
    const-string v6, "ViPER4Android_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mAudioEffectList:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " effects"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mAudioEffectList:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v6, v6

    if-lt v3, v6, :cond_1

    .line 84
    if-nez v1, :cond_4

    .line 86
    const-string v6, "ViPER4Android_Utils"

    const-string v7, "ViPER4Android engine not found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-boolean v10, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mHasViPER4AndroidEngine:Z

    .line 88
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v10

    .line 89
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v11

    .line 90
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v12

    .line 91
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v13

    goto :goto_0

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mAudioEffectList:[Landroid/media/audiofx/AudioEffect$Descriptor;

    aget-object v6, v6, v3

    if-nez v6, :cond_3

    .line 68
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mAudioEffectList:[Landroid/media/audiofx/AudioEffect$Descriptor;

    aget-object v0, v6, v3

    .line 74
    .local v0, aeEffect:Landroid/media/audiofx/AudioEffect$Descriptor;
    const-string v6, "ViPER4Android_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v6, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v7, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    const-string v6, "ViPER4Android_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Perfect, found ViPER4Android engine at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 78
    move-object v1, v0

    goto :goto_2

    .line 98
    .end local v0           #aeEffect:Landroid/media/audiofx/AudioEffect$Descriptor;
    :cond_4
    :try_start_2
    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    .line 99
    .local v4, szV4AVersionLine:Ljava/lang/String;
    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x17

    if-lt v6, v7, :cond_6

    .line 104
    const/16 v6, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    :goto_3
    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 108
    const-string v6, "\\."

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, szVerBlocks:[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v9, :cond_5

    .line 111
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 112
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 113
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    const/4 v7, 0x2

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 114
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    const/4 v7, 0x3

    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 116
    :cond_5
    const-string v6, "ViPER4Android_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "The version of ViPER4Android engine is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 118
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 119
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 120
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mHasViPER4AndroidEngine:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 126
    .end local v4           #szV4AVersionLine:Ljava/lang/String;
    .end local v5           #szVerBlocks:[Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 128
    :cond_6
    const-string v6, "ViPER4Android_Utils"

    const-string v7, "Cannot extract ViPER4Android engine version"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-boolean v10, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mHasViPER4AndroidEngine:Z

    .line 130
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v10

    .line 131
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v11

    .line 132
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v12

    .line 133
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    aput v10, v6, v13

    goto/16 :goto_0

    .line 106
    .restart local v4       #szV4AVersionLine:Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    goto/16 :goto_3

    .line 81
    .end local v4           #szV4AVersionLine:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto/16 :goto_2
.end method


# virtual methods
.method public GetAudioEffectList()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mAudioEffectList:[Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public GetViPER4AndroidEngineVersion()[I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mV4AEngineVersion:[I

    return-object v0
.end method

.method public IsViPER4AndroidEngineFound()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->mHasViPER4AndroidEngine:Z

    return v0
.end method
