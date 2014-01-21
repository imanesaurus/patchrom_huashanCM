.class public Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;
.super Ljava/lang/Object;
.source "DecoEmojiUtil.java"


# static fields
.field private static final DECOEMOJI_ID_LENGTH:I = 0x5

.field private static final DECOEMOJI_ID_PREFIX:I = 0x1b

.field private static final STATE_ERROR_DISABLE_DECOEMOJI:I = -0x64

.field private static final STATE_ERROR_INVALID_ID:I = -0x65

.field private static final STATE_ERROR_NOT_BIND_MANAGER:I = -0x66

.field private static final STATE_ERROR_NOT_FOUND_FILE:I = -0x68

.field private static final STATE_ERROR_REMOTE_EXCEPTION_MANAGER:I = -0x67

.field private static final STATE_NOT_DECOEMOJI:I = 0x0

.field private static final STATE_SPANNED_DECOEMOJI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "iWnn"

.field private static sEnableDecoEmoji:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;III)Ljava/lang/CharSequence;
    .locals 2
    .parameter "composingText"
    .parameter "targetLayer"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 232
    invoke-virtual {p0, p1, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, composingString:Ljava/lang/CharSequence;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 234
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getSpannedText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 236
    .end local v0           #composingString:Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method

.method private static convertToEmojiIdInt([BI)I
    .locals 8
    .parameter "charArray"
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 159
    array-length v5, p0

    add-int/lit8 v6, p1, 0x5

    if-ge v5, v6, :cond_0

    .line 174
    :goto_0
    return v4

    .line 163
    :cond_0
    const/4 v2, 0x0

    .line 164
    .local v2, id:I
    add-int/lit8 v3, p1, 0x5

    .line 165
    .local v3, last:I
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 166
    aget-byte v5, p0, v1

    add-int/lit8 v0, v5, -0x30

    .line 167
    .local v0, digit:I
    if-gez v0, :cond_1

    .line 168
    const-string v5, "iWnn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "digit = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_1
    add-int/2addr v2, v0

    .line 172
    mul-int/lit8 v2, v2, 0xa

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    .end local v0           #digit:I
    :cond_2
    div-int/lit8 v4, v2, 0xa

    goto :goto_0
.end method

.method public static getSpannedCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "word"

    .prologue
    .line 66
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->sEnableDecoEmoji:Z

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getDecoEmojiText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getSpannedText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSpannedText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {p0, v0, v1}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getSpannedText(Ljava/lang/CharSequence;Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;[I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSpannedText(Ljava/lang/CharSequence;Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;[I)Ljava/lang/CharSequence;
    .locals 13
    .parameter "text"
    .parameter "manager"
    .parameter "status"

    .prologue
    const/16 v12, 0x1b

    const/4 v11, 0x0

    .line 96
    aput v11, p2, v11

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_1

    .line 147
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 102
    .restart local p0
    :cond_1
    sget-boolean v8, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->sEnableDecoEmoji:Z

    if-nez v8, :cond_2

    .line 103
    const/16 v8, -0x64

    aput v8, p2, v11

    .line 105
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v8

    if-nez v8, :cond_0

    .line 108
    const-string p0, ""

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 112
    .local v1, charArray:[B
    const/4 v6, 0x0

    .line 113
    .local v6, left:I
    array-length v5, v1

    .line 114
    .local v5, last:I
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 115
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_7

    .line 116
    aget-byte v8, v1, v4

    if-ne v8, v12, :cond_6

    .line 117
    sub-int v2, v4, v6

    .line 118
    .local v2, count:I
    if-lez v2, :cond_3

    .line 119
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v6, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    :cond_3
    invoke-static {v1, v4}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->convertToEmojiIdInt([BI)I

    move-result v8

    invoke-static {v8, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getUri(ILjp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;[I)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, uri:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 125
    aget v8, p2, v11

    if-nez v8, :cond_4

    .line 126
    const/16 v8, -0x68

    aput v8, p2, v11

    .line 128
    :cond_4
    const-string p0, ""

    goto :goto_0

    .line 131
    :cond_5
    invoke-static {}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getInstance()Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->getDecoEmojiText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 132
    add-int/lit8 v4, v4, 0x5

    .line 133
    move v6, v4

    .line 134
    goto :goto_1

    .line 135
    .end local v2           #count:I
    .end local v3           #file:Ljava/io/File;
    .end local v7           #uri:Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    :cond_7
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 140
    if-ge v6, v5, :cond_8

    .line 141
    new-instance v8, Ljava/lang/String;

    sub-int v9, v5, v6

    invoke-direct {v8, v1, v6, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    :cond_8
    const/4 v8, 0x1

    aput v8, p2, v11

    move-object p0, v0

    .line 145
    goto/16 :goto_0
.end method

.method private static getUri(ILjp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;[I)Ljava/lang/String;
    .locals 8
    .parameter "decoEmojiId"
    .parameter "manager"
    .parameter "status"

    .prologue
    const/4 v7, 0x0

    .line 186
    if-gez p0, :cond_0

    .line 187
    const/16 v5, -0x65

    aput v5, p2, v7

    .line 188
    const-string v5, ""

    .line 218
    :goto_0
    return-object v5

    .line 191
    :cond_0
    const/4 v0, 0x0

    .line 192
    .local v0, decoEmojiManager:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    if-eqz p1, :cond_2

    .line 193
    move-object v0, p1

    .line 202
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 203
    :try_start_0
    new-instance v3, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;

    invoke-direct {v3}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;-><init>()V

    .line 204
    .local v3, uriInfo:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;
    invoke-interface {v0, p0, v3}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;->aidl_getDecoUri(ILjp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;)I

    move-result v2

    .line 205
    .local v2, ret:I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 206
    invoke-virtual {v3}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;->getUri()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 195
    .end local v2           #ret:I
    .end local v3           #uriInfo:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;
    :cond_2
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v4

    .line 196
    .local v4, wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    if-eqz v4, :cond_1

    .line 197
    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getDecoEmojiBindInterface()Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    move-result-object v0

    goto :goto_1

    .line 208
    .end local v4           #wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    .restart local v2       #ret:I
    .restart local v3       #uriInfo:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    aput v2, p2, v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    .end local v2           #ret:I
    .end local v3           #uriInfo:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;
    :goto_2
    const-string v5, ""

    goto :goto_0

    .line 210
    :cond_4
    const/4 v5, 0x0

    const/16 v6, -0x66

    :try_start_2
    aput v6, p2, v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, re:Landroid/os/RemoteException;
    const/16 v5, -0x67

    aput v5, p2, v7

    .line 215
    const-string v5, "iWnn"

    const-string v6, "Fail to get URI"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static isDecoEmoji(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "text"

    .prologue
    .line 246
    const/4 v0, 0x1

    .line 247
    .local v0, ret:Z
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    :cond_0
    return v0
.end method

.method public static setConvertFunctionEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 55
    sput-boolean p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->sEnableDecoEmoji:Z

    .line 56
    return-void
.end method
