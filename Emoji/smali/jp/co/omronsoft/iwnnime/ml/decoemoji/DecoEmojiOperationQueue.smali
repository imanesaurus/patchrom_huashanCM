.class public Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;
.super Ljava/lang/Object;
.source "DecoEmojiOperationQueue.java"


# static fields
.field private static final ATTRINFO_LOOP_CNT:I = 0xa

.field private static DEBUG:Z = false

.field private static final DECO_ID_FORMAT:Ljava/lang/String; = "%04d"

.field private static final ESC_CODE:C = '\u001b'

.field private static final MAX_OPERATION:I = 0x4e20

.field private static final MAX_YOMI_LEN:I = 0x18

.field private static final MIN_YOMI_LEN:I = 0x1

.field private static final PART_CATEGORY_1:B = 0x1t

.field private static final PART_NONE:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "DecoEmojiOperationQueue"

.field private static sInstance:Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;


# instance fields
.field private mOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    .line 48
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->sInstance:Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->mOperationQueue:Ljava/util/LinkedList;

    .line 57
    return-void
.end method

.method private static checkUpdate()Z
    .locals 4

    .prologue
    .line 289
    sget-boolean v2, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DecoEmojiOperationQueue"

    const-string v3, "checkUpdate() Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    const/4 v0, 0x0

    .line 294
    .local v0, result:Z
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v2

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->checkDecoEmojiDictionary()I

    move-result v1

    .line 297
    .local v1, ret:I
    if-ltz v1, :cond_2

    .line 298
    const/4 v0, 0x1

    .line 303
    :goto_0
    sget-boolean v2, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DecoEmojiOperationQueue"

    const-string v3, "checkUpdate() End"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1
    return v0

    .line 300
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static controlDecoEmojiDictionary([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V
    .locals 9
    .parameter "decoemojiattrinfo"
    .parameter "control_flag"

    .prologue
    .line 207
    sget-boolean v4, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DecoEmojiOperationQueue"

    const-string v5, "controlDecoEmojiDictionary() Start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 211
    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_4

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%04d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, p0, v0

    invoke-virtual {v8}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    const/16 v4, 0xa

    if-ge v2, v4, :cond_3

    .line 215
    aget-object v4, p0, v0

    invoke-virtual {v4, v2}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->isDecoEmojiAttrInfo(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 218
    aget-object v4, p0, v0

    invoke-virtual {v4, v2}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->getPart(I)B

    move-result v4

    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->repreceDecoEmojiAttrInfo(B)B

    move-result v3

    .line 220
    .local v3, part:B
    sget-boolean v4, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "DecoEmojiOperationQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " decoemojiattrinfo[i].getName(j) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p0, v0

    invoke-virtual {v6, v2}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->getName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " decoemojiattrinfo[i].getPart(j) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " control_flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v4

    aget-object v5, p0, v0

    invoke-virtual {v5, v2}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->getName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v3, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->controlDecoEmojiDictionary(Ljava/lang/String;Ljava/lang/String;II)V

    .line 213
    .end local v3           #part:B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 211
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 228
    .end local v2           #j:I
    :cond_4
    sget-boolean v4, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "DecoEmojiOperationQueue"

    const-string v5, "controlDecoEmojiDictionary() End"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_5
    return-void
.end method

.method private static deleteDictionary([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;)V
    .locals 2
    .parameter "decoemojiattrinfo"

    .prologue
    .line 160
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "deleteDictionary() Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->checkUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->controlDecoEmojiDictionary([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V

    .line 166
    :cond_1
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "deleteDictionary() End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    return-void
.end method

.method private static getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngineForService()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;
    .locals 2

    .prologue
    .line 65
    const-class v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->sInstance:Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static insertDictionary([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;)V
    .locals 2
    .parameter "decoemojiattrinfo"

    .prologue
    .line 144
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "insertDictionary() Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->checkUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->controlDecoEmojiDictionary([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V

    .line 150
    :cond_1
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "insertDictionary() End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    return-void
.end method

.method private static isDecoEmojiAttrInfo(Ljava/lang/String;I)Z
    .locals 5
    .parameter "name"
    .parameter "control_flag"

    .prologue
    const/16 v4, 0x18

    const/4 v3, 0x1

    .line 239
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DecoEmojiOperationQueue"

    const-string v2, "isDecoEmojiAttrInfo() Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, ret:Z
    if-nez p1, :cond_4

    .line 248
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 249
    :cond_1
    const/4 v0, 0x1

    .line 262
    :cond_2
    :goto_0
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "DecoEmojiOperationQueue"

    const-string v2, "isDecoEmojiAttrInfo() End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_3
    return v0

    .line 251
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 256
    if-eqz p0, :cond_2

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 258
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static repreceDecoEmojiAttrInfo(B)B
    .locals 2
    .parameter "part"

    .prologue
    .line 273
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "repreceDecoEmojiAttrInfo() Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    if-nez p0, :cond_2

    .line 276
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "repreceDecoEmojiAttrInfo() 0 to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    const/4 p0, 0x1

    .line 279
    :cond_2
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "repreceDecoEmojiAttrInfo() End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_3
    return p0
.end method

.method private static resetDecoEmojiDictionary()I
    .locals 3

    .prologue
    .line 190
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DecoEmojiOperationQueue"

    const-string v2, "resetDecoEmojiDictionary() Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->resetDecoEmojiDictionary()I

    move-result v0

    .line 194
    .local v0, ret:I
    sget-boolean v1, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DecoEmojiOperationQueue"

    const-string v2, "resetDecoEmojiDictionary() End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    return v0
.end method

.method private static resetDictionary()V
    .locals 2

    .prologue
    .line 175
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "resetDictionary() Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->checkUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->resetDecoEmojiDictionary()I

    .line 181
    :cond_1
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "resetDictionary() End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    return-void
.end method

.method private static switchOperate([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V
    .locals 2
    .parameter "decoemojiattrinfo"
    .parameter "type"

    .prologue
    .line 111
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "switchOperate() Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 134
    :cond_1
    :goto_0
    :pswitch_0
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "switchOperate() End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    return-void

    .line 115
    :pswitch_1
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "switchOperate()::insertDictionary Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->insertDictionary([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;)V

    .line 117
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "switchOperate()::insertDictionary End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :pswitch_2
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "switchOperate()::deleteDictionary Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_4
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->deleteDictionary([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;)V

    .line 123
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "switchOperate()::deleteDictionary End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :pswitch_3
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "switchOperate()::resetDictionary Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_5
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->resetDictionary()V

    .line 129
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DecoEmojiOperationQueue"

    const-string v1, "switchOperate()::resetDictionary End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized clearOperation()V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->mOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enqueueOperation([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V
    .locals 5
    .parameter "decoemojiattrinfo"
    .parameter "type"

    .prologue
    .line 72
    monitor-enter p0

    if-nez p1, :cond_1

    .line 73
    :try_start_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->mOperationQueue:Ljava/util/LinkedList;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;-><init>(Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->mOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    rsub-int v2, v2, 0x4e20

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 76
    .local v1, limit:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 77
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->mOperationQueue:Ljava/util/LinkedList;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;

    aget-object v4, p1, v0

    invoke-direct {v3, v4, p2}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;-><init>(Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0           #i:I
    .end local v1           #limit:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized executeOperation()Z
    .locals 3

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->mOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;

    .line 89
    .local v0, operation:Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;->getDecoEmojiAttrInfo()[Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;->getType()I

    move-result v2

    invoke-static {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->switchOperate([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    const/4 v1, 0x1

    .line 93
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 88
    .end local v0           #operation:Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
