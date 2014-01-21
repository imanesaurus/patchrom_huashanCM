.class public Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;
.super Landroid/content/BroadcastReceiver;
.source "DecoEmojiListener.java"


# static fields
.field private static final ATTRINFO_MAX_OPERATE_CNT:I = 0x64

.field private static DEBUG:Z = false

.field public static final PREF_KEY:Ljava/lang/String; = "preferenceId"

.field private static final TAG:Ljava/lang/String; = "DecoEmojiListener"


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->mPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method private reciveOperation([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V
    .locals 3
    .parameter "decoemojiattrinfo"
    .parameter "type"

    .prologue
    .line 214
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->enqueueOperation([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V

    .line 216
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    .line 217
    .local v0, wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    if-eqz v0, :cond_0

    .line 218
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffb000

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 220
    :cond_0
    return-void
.end method

.method private updateConfirm(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "updatePrefInt"

    .prologue
    .line 169
    sget-boolean v7, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "DecoEmojiListener"

    const-string v8, "updateConfirm() Start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v7, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, confirmIntent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v5

    .line 178
    .local v5, retService:Landroid/content/ComponentName;
    if-nez v5, :cond_2

    .line 179
    const-string v7, "DecoEmojiListener"

    const-string v8, "(Warning) Service does not exist!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v5           #retService:Landroid/content/ComponentName;
    :cond_1
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v6

    .line 184
    .local v6, se:Ljava/lang/SecurityException;
    const-string v7, "DecoEmojiListener"

    const-string v8, "(Exception) startService Error!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v6           #se:Ljava/lang/SecurityException;
    .restart local v5       #retService:Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {p0, p1, v1}, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 190
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;->asInterface(Landroid/os/IBinder;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    move-result-object v3

    .line 192
    .local v3, managerInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    if-eqz v3, :cond_3

    .line 195
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, p2, v7}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;->aidl_checkDecoEmoji(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :cond_3
    :goto_1
    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 204
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "preferenceId"

    invoke-interface {v2, v7, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    sget-boolean v7, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "DecoEmojiListener"

    const-string v8, "updateConfirm() End"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_1
    move-exception v4

    .line 197
    .local v4, re:Landroid/os/RemoteException;
    const-string v7, "DecoEmojiListener"

    const-string v8, "(Exception) call Service(checkDecoEmoji) Error!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 70
    sget-boolean v15, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->DEBUG:Z

    if-eqz v15, :cond_0

    const-string v15, "DecoEmojiListener"

    const-string v16, "onReceive() Start"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v3

    .line 73
    .local v3, assist:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    if-eqz v3, :cond_2

    .line 74
    invoke-virtual {v3}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getEmojiFunctionType()I

    move-result v7

    .line 75
    .local v7, functype:I
    if-nez v7, :cond_2

    .line 159
    .end local v7           #functype:I
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    sget-object v16, Ljp/co/omronsoft/iwnnime/ml/OnReceiveLock;->lock:Ljava/lang/Object;

    monitor-enter v16

    .line 84
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->mPref:Landroid/content/SharedPreferences;

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, action:Ljava/lang/String;
    const-string v15, "jp.co.omronsoft.android.decoemojimanager"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 94
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 96
    .local v4, bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_4

    .line 99
    const-string v15, "Type"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 102
    .local v14, type:I
    const/4 v15, 0x4

    if-ne v14, v15, :cond_5

    .line 103
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->getInstance()Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;

    move-result-object v15

    invoke-virtual {v15}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperationQueue;->clearOperation()V

    .line 104
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->reciveOperation([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V

    .line 107
    move-object/from16 v0, p0

    iget-object v15, v0, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 108
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v15, "preferenceId"

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-interface {v6, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v14           #type:I
    :cond_4
    :goto_1
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    sget-boolean v15, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->DEBUG:Z

    if-eqz v15, :cond_1

    const-string v15, "DecoEmojiListener"

    const-string v16, "onReceive() End"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .restart local v4       #bundle:Landroid/os/Bundle;
    .restart local v14       #type:I
    :cond_5
    const/16 v15, 0x9

    if-eq v14, v15, :cond_4

    .line 115
    :try_start_1
    const-string v15, "DecoEmojiInformation"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 118
    .local v13, receivedatalist:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;>;"
    if-eqz v13, :cond_4

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 121
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    .line 124
    .local v10, len:I
    new-array v5, v10, [Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;

    .line 127
    .local v5, decoemojiattrinfo:[Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;
    invoke-interface {v13, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 130
    array-length v15, v5

    const/16 v17, 0x64

    move/from16 v0, v17

    if-gt v15, v0, :cond_4

    .line 131
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->reciveOperation([Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V

    .line 133
    if-nez v14, :cond_4

    .line 134
    const/4 v9, 0x0

    .line 135
    .local v9, isSerialConfirmFlag:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->mPref:Landroid/content/SharedPreferences;

    const-string v17, "preferenceId"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 138
    .local v12, prefInt:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v15, v5

    if-ge v8, v15, :cond_7

    .line 140
    aget-object v15, v5, v8

    invoke-virtual {v15}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->getId()I

    move-result v11

    .line 142
    .local v11, newSerial:I
    if-ge v12, v11, :cond_6

    .line 143
    move v12, v11

    .line 144
    const/4 v9, 0x1

    .line 138
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 148
    .end local v11           #newSerial:I
    :cond_7
    if-eqz v9, :cond_4

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Ljp/co/omronsoft/iwnnime/ml/DecoEmojiListener;->updateConfirm(Landroid/content/Context;I)V

    goto :goto_1

    .line 157
    .end local v2           #action:Ljava/lang/String;
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #decoemojiattrinfo:[Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;
    .end local v8           #i:I
    .end local v9           #isSerialConfirmFlag:Z
    .end local v10           #len:I
    .end local v12           #prefInt:I
    .end local v13           #receivedatalist:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;>;"
    .end local v14           #type:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15
.end method
