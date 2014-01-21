.class public Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
.super Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;
.source "ContactsBinaryDictionary.java"


# static fields
.field private static DEBUG:Z

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_ID_ONLY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sContactCountAtLastRebuild:I


# instance fields
.field public final mLocale:Ljava/util/Locale;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mUseFirstLastBigrams:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->PROJECTION:[Ljava/lang/String;

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->PROJECTION_ID_ONLY:[Ljava/lang/String;

    .line 36
    const-class v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->TAG:Ljava/lang/String;

    .line 39
    sput-boolean v2, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->DEBUG:Z

    .line 53
    sput v2, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->sContactCountAtLastRebuild:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 66
    const-string v0, "contacts"

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->getFilenameWithLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mLocale:Ljava/util/Locale;

    .line 68
    invoke-direct {p0, p2}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->useFirstLastBigramsForLocale(Ljava/util/Locale;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mUseFirstLastBigrams:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->registerObserver(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->loadDictionary()V

    .line 74
    return-void
.end method

.method private addName(Ljava/lang/String;)V
    .locals 8
    .parameter "name"

    .prologue
    .line 164
    invoke-static {p1}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v2

    .line 165
    .local v2, len:I
    const/4 v3, 0x0

    .line 167
    .local v3, prevWord:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 169
    invoke-static {p1, v2, v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->getWordEndPosition(Ljava/lang/String;II)I

    move-result v0

    .line 170
    .local v0, end:I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, word:Ljava/lang/String;
    add-int/lit8 v1, v0, -0x1

    .line 174
    invoke-static {v4}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v5

    .line 175
    .local v5, wordLen:I
    const/16 v6, 0x30

    if-ge v5, v6, :cond_1

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 176
    const/4 v6, 0x0

    const/16 v7, 0x28

    invoke-super {p0, v4, v6, v7}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 178
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mUseFirstLastBigrams:Z

    if-eqz v6, :cond_0

    .line 179
    const/16 v6, 0x5a

    invoke-super {p0, v3, v4, v6}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    :cond_0
    move-object v3, v4

    .line 167
    .end local v0           #end:I
    .end local v4           #word:Ljava/lang/String;
    .end local v5           #wordLen:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_2
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->clearFusionDictionary()V

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, count:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    .line 135
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->isValidName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->addName(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 140
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 142
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getContactCount()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->PROJECTION_ID_ONLY:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 149
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 151
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    :goto_0
    return v0

    .line 153
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getWordEndPosition(Ljava/lang/String;II)I
    .locals 3
    .parameter "string"
    .parameter "len"
    .parameter "startIndex"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, cp:I
    add-int/lit8 v1, p2, 0x1

    .local v1, end:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 196
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    :cond_0
    return v1

    .line 194
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private isNameInDictionary(Ljava/lang/String;)Z
    .locals 9
    .parameter "name"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 263
    invoke-static {p1}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v2

    .line 264
    .local v2, len:I
    const/4 v3, 0x0

    .line 265
    .local v3, prevWord:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 267
    invoke-static {p1, v2, v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->getWordEndPosition(Ljava/lang/String;II)I

    move-result v0

    .line 268
    .local v0, end:I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, word:Ljava/lang/String;
    add-int/lit8 v1, v0, -0x1

    .line 270
    invoke-static {v4}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v5

    .line 271
    .local v5, wordLen:I
    const/16 v8, 0x30

    if-ge v5, v8, :cond_3

    if-le v5, v7, :cond_3

    .line 272
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mUseFirstLastBigrams:Z

    if-eqz v8, :cond_1

    .line 273
    invoke-super {p0, v3, v4}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->isValidBigramLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 285
    .end local v0           #end:I
    .end local v4           #word:Ljava/lang/String;
    .end local v5           #wordLen:I
    :cond_0
    :goto_1
    return v6

    .line 277
    .restart local v0       #end:I
    .restart local v4       #word:Ljava/lang/String;
    .restart local v5       #wordLen:I
    :cond_1
    invoke-super {p0, v4}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->isValidWordLocked(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 281
    :cond_2
    move-object v3, v4

    .line 265
    .end local v0           #end:I
    .end local v4           #word:Ljava/lang/String;
    .end local v5           #wordLen:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v6, v7

    .line 285
    goto :goto_1
.end method

.method private static isValidName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 253
    if-eqz p0, :cond_0

    const/4 v0, -0x1

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized registerObserver(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, cres:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/inputmethod/latin/ContactsBinaryDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary$1;-><init>(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    .end local v0           #cres:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private useFirstLastBigramsForLocale(Ljava/util/Locale;)Z
    .locals 2
    .parameter "locale"

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected hasContentChanged()Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 207
    .local v9, startTime:J
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->getContactCount()I

    move-result v6

    .line 208
    .local v6, contactCount:I
    const/16 v0, 0x2710

    if-le v6, v0, :cond_0

    move v0, v11

    .line 249
    :goto_0
    return v0

    .line 214
    :cond_0
    sget v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->sContactCountAtLastRebuild:I

    if-eq v6, v0, :cond_2

    .line 215
    sget-boolean v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 216
    sget-object v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact count changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->sContactCountAtLastRebuild:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v12

    .line 219
    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 226
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 228
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 229
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 230
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->isNameInDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 232
    sget-boolean v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 233
    sget-object v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact name missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (runtime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 236
    goto/16 :goto_0

    .line 238
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 242
    .end local v8           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_6
    sget-boolean v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 246
    sget-object v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contacts changed. (runtime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v11

    .line 249
    goto/16 :goto_0
.end method

.method public loadDictionaryAsync()V
    .locals 8

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 108
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 110
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->getContactCount()I

    move-result v0

    sput v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->sContactCountAtLastRebuild:I

    .line 112
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->addWords(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 121
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 115
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 119
    .local v7, e:Ljava/lang/IllegalStateException;
    sget-object v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->TAG:Ljava/lang/String;

    const-string v1, "Contacts DB is having problems"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reopen(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->registerObserver(Landroid/content/Context;)V

    .line 92
    return-void
.end method
