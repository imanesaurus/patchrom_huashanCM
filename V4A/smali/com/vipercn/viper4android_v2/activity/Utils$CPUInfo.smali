.class public Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android_v2/activity/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CPUInfo"
.end annotation


# instance fields
.field private m_bCPUHasNEON:Z

.field private m_bCPUHasVFP:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-boolean v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasNEON:Z

    .line 155
    iput-boolean v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasVFP:Z

    .line 226
    iput-boolean v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasNEON:Z

    .line 227
    iput-boolean v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasVFP:Z

    .line 228
    invoke-direct {p0}, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->ReadCPUInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->ReadCPUInfoJni()V

    .line 230
    :cond_0
    return-void
.end method

.method private ReadCPUInfo()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 160
    const-string v7, "/proc/cpuinfo"

    .line 161
    .local v7, szCPUInfoFile:Ljava/lang/String;
    const/4 v4, 0x0

    .line 162
    .local v4, frCPUInfoReader:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 164
    .local v0, brReader:Ljava/io/BufferedReader;
    iput-boolean v10, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasNEON:Z

    .line 165
    iput-boolean v10, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasVFP:Z

    .line 170
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 171
    .end local v4           #frCPUInfoReader:Ljava/io/FileReader;
    .local v5, frCPUInfoReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 174
    .end local v0           #brReader:Ljava/io/BufferedReader;
    .local v1, brReader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, szLine:Ljava/lang/String;
    if-nez v9, :cond_2

    .line 193
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 194
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 196
    const-string v12, "ViPER4Android_Utils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "CPUInfo[java] = NEON:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v14, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasNEON:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", VFP:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasVFP:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-boolean v12, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasNEON:Z

    if-nez v12, :cond_6

    iget-boolean v12, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasVFP:Z

    if-nez v12, :cond_6

    move-object v0, v1

    .end local v1           #brReader:Ljava/io/BufferedReader;
    .restart local v0       #brReader:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 211
    .end local v5           #frCPUInfoReader:Ljava/io/FileReader;
    .end local v9           #szLine:Ljava/lang/String;
    .restart local v4       #frCPUInfoReader:Ljava/io/FileReader;
    :cond_1
    :goto_0
    return v10

    .line 176
    .end local v0           #brReader:Ljava/io/BufferedReader;
    .end local v4           #frCPUInfoReader:Ljava/io/FileReader;
    .restart local v1       #brReader:Ljava/io/BufferedReader;
    .restart local v5       #frCPUInfoReader:Ljava/io/FileReader;
    .restart local v9       #szLine:Ljava/lang/String;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 177
    const-string v12, "Features"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 179
    const-string v12, "ViPER4Android_Utils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "CPUInfo[java] = <"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 181
    .local v6, stBlock:Ljava/util/StringTokenizer;
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 183
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, szFeature:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 186
    const-string v12, "neon"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasNEON:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 201
    .end local v6           #stBlock:Ljava/util/StringTokenizer;
    .end local v8           #szFeature:Ljava/lang/String;
    .end local v9           #szLine:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1           #brReader:Ljava/io/BufferedReader;
    .restart local v0       #brReader:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 205
    .end local v5           #frCPUInfoReader:Ljava/io/FileReader;
    .local v2, e:Ljava/io/IOException;
    .restart local v4       #frCPUInfoReader:Ljava/io/FileReader;
    :goto_2
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 206
    :cond_4
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 209
    :catch_1
    move-exception v3

    .line 211
    .local v3, ex:Ljava/lang/Exception;
    goto :goto_0

    .line 187
    .end local v0           #brReader:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #frCPUInfoReader:Ljava/io/FileReader;
    .restart local v1       #brReader:Ljava/io/BufferedReader;
    .restart local v5       #frCPUInfoReader:Ljava/io/FileReader;
    .restart local v6       #stBlock:Ljava/util/StringTokenizer;
    .restart local v8       #szFeature:Ljava/lang/String;
    .restart local v9       #szLine:Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string v12, "vfp"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasVFP:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .end local v6           #stBlock:Ljava/util/StringTokenizer;
    .end local v8           #szFeature:Ljava/lang/String;
    :cond_6
    move-object v0, v1

    .end local v1           #brReader:Ljava/io/BufferedReader;
    .restart local v0       #brReader:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #frCPUInfoReader:Ljava/io/FileReader;
    .restart local v4       #frCPUInfoReader:Ljava/io/FileReader;
    move v10, v11

    .line 199
    goto :goto_0

    .line 201
    .end local v9           #szLine:Ljava/lang/String;
    :catch_2
    move-exception v2

    goto :goto_2

    .end local v4           #frCPUInfoReader:Ljava/io/FileReader;
    .restart local v5       #frCPUInfoReader:Ljava/io/FileReader;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5           #frCPUInfoReader:Ljava/io/FileReader;
    .restart local v4       #frCPUInfoReader:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private ReadCPUInfoJni()V
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->IsCPUSupportNEON()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasNEON:Z

    .line 220
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->IsCPUSupportVFP()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasVFP:Z

    .line 221
    return-void
.end method


# virtual methods
.method public HasNEON()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasNEON:Z

    return v0
.end method

.method public HasVFP()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/vipercn/viper4android_v2/activity/Utils$CPUInfo;->m_bCPUHasVFP:Z

    return v0
.end method
