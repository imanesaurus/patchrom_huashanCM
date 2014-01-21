.class public Lcom/android/inputmethod/latin/UserBinaryDictionary;
.super Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;
.source "UserBinaryDictionary.java"


# static fields
.field private static final PROJECTION_QUERY:[Ljava/lang/String;


# instance fields
.field private final mAlsoUseMoreRestrictiveLocales:Z

.field private final mLocale:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "word"

    aput-object v1, v0, v2

    const-string v1, "shortcut"

    aput-object v1, v0, v3

    const-string v1, "frequency"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "word"

    aput-object v1, v0, v2

    const-string v1, "frequency"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/UserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "locale"
    .parameter "alsoUseMoreRestrictiveLocales"

    .prologue
    .line 77
    const-string v1, "userunigram"

    invoke-static {v1, p2}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->getFilenameWithLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 79
    :cond_0
    const-string v1, "zz"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const-string v1, ""

    iput-object v1, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mLocale:Ljava/lang/String;

    .line 85
    :goto_0
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mAlsoUseMoreRestrictiveLocales:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, cres:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/inputmethod/latin/UserBinaryDictionary$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/android/inputmethod/latin/UserBinaryDictionary$1;-><init>(Lcom/android/inputmethod/latin/UserBinaryDictionary;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 113
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->loadDictionary()V

    .line 116
    return-void

    .line 83
    .end local v0           #cres:Landroid/content/ContentResolver;
    :cond_1
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mLocale:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/UserBinaryDictionary;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->getChangedWordForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 12
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    const/16 v11, 0x30

    const/4 v7, 0x0

    .line 237
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_1

    const/4 v1, 0x1

    .line 238
    .local v1, hasShortcutColumn:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->clearFusionDictionary()V

    .line 239
    if-nez p1, :cond_2

    .line 258
    :cond_0
    return-void

    .end local v1           #hasShortcutColumn:Z
    :cond_1
    move v1, v7

    .line 237
    goto :goto_0

    .line 240
    .restart local v1       #hasShortcutColumn:Z
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 241
    const-string v9, "word"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 242
    .local v4, indexWord:I
    if-eqz v1, :cond_5

    const-string v7, "shortcut"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 243
    .local v3, indexShortcut:I
    :goto_1
    const-string v7, "frequency"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 244
    .local v2, indexFrequency:I
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_0

    .line 245
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, word:Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, shortcut:Ljava/lang/String;
    :goto_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 249
    .local v0, frequency:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v11, :cond_3

    .line 250
    invoke-super {p0, v6, v8, v0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v11, :cond_4

    .line 253
    invoke-super {p0, v5, v6, v0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .end local v0           #frequency:I
    .end local v2           #indexFrequency:I
    .end local v3           #indexShortcut:I
    .end local v5           #shortcut:Ljava/lang/String;
    .end local v6           #word:Ljava/lang/String;
    :cond_5
    move v3, v7

    .line 242
    goto :goto_1

    .restart local v2       #indexFrequency:I
    .restart local v3       #indexShortcut:I
    .restart local v6       #word:Ljava/lang/String;
    :cond_6
    move-object v5, v8

    .line 246
    goto :goto_3
.end method

.method private getChangedWordForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/inputmethod/latin/UserBinaryDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 125
    :goto_0
    return-object v3

    .line 123
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 124
    :cond_1
    :try_start_1
    const-string v0, "word"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 125
    .local v7, indexWord:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 127
    .end local v7           #indexWord:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addWordToUserDictionary(Ljava/lang/String;I)V
    .locals 3
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    .line 233
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "locale"

    iget-object v2, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 137
    :cond_0
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected hasContentChanged()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 200
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 201
    .local v0, client:Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 203
    const/4 v2, 0x1

    .line 205
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadDictionaryAsync()V
    .locals 13

    .prologue
    const/4 v2, 0x3

    .line 146
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mLocale:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;

    .line 148
    .local v9, localeElements:[Ljava/lang/String;
    :goto_0
    array-length v8, v9

    .line 150
    .local v8, length:I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v0, "(locale is NULL)"

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v12, request:Ljava/lang/StringBuilder;
    const-string v11, ""

    .line 154
    .local v11, localeSoFar:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v9, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v9, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 165
    const-string v0, " or (locale=?)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 146
    .end local v7           #i:I
    .end local v8           #length:I
    .end local v9           #localeElements:[Ljava/lang/String;
    .end local v11           #localeSoFar:Ljava/lang/String;
    .end local v12           #request:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mLocale:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 173
    .restart local v7       #i:I
    .restart local v8       #length:I
    .restart local v9       #localeElements:[Ljava/lang/String;
    .restart local v11       #localeSoFar:Ljava/lang/String;
    .restart local v12       #request:Ljava/lang/StringBuilder;
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mAlsoUseMoreRestrictiveLocales:Z

    if-eqz v0, :cond_3

    if-ge v8, v2, :cond_3

    .line 174
    const-string v0, " or (locale like ?)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v0, v8, 0x1

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 178
    .local v10, localeElementsWithMoreRestrictiveLocalesIncluded:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v8, -0x1

    aget-object v1, v9, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 180
    move-object v4, v10

    .line 189
    .end local v10           #localeElementsWithMoreRestrictiveLocalesIncluded:[Ljava/lang/String;
    .local v4, requestArguments:[Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/UserBinaryDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 192
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->addWords(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_2
    return-void

    .line 187
    .end local v4           #requestArguments:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    move-object v4, v9

    .restart local v4       #requestArguments:[Ljava/lang/String;
    goto :goto_2

    .line 194
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
