.class public final Lcom/android/inputmethod/latin/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;
    }
.end annotation


# static fields
.field private static final EMPTY_LT_HASH_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field static final sLockForRunInLocale:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/LocaleUtils;->EMPTY_LT_HASH_MAP:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/LocaleUtils;->sLockForRunInLocale:Ljava/lang/Object;

    .line 199
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .parameter "localeStr"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 205
    if-nez p0, :cond_0

    .line 206
    const/4 v2, 0x0

    .line 222
    :goto_0
    return-object v2

    .line 207
    :cond_0
    sget-object v3, Lcom/android/inputmethod/latin/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 208
    :try_start_0
    sget-object v2, Lcom/android/inputmethod/latin/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    sget-object v2, Lcom/android/inputmethod/latin/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    monitor-exit v3

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 210
    :cond_1
    const/4 v1, 0x0

    .line 211
    .local v1, retval:Ljava/util/Locale;
    :try_start_1
    const-string v2, "_"

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, localeParams:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v5, :cond_4

    .line 213
    new-instance v1, Ljava/util/Locale;

    .end local v1           #retval:Ljava/util/Locale;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v1       #retval:Ljava/util/Locale;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 220
    sget-object v2, Lcom/android/inputmethod/latin/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_3
    monitor-exit v3

    move-object v2, v1

    goto :goto_0

    .line 214
    :cond_4
    array-length v2, v0

    if-ne v2, v6, :cond_5

    .line 215
    new-instance v1, Ljava/util/Locale;

    .end local v1           #retval:Ljava/util/Locale;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #retval:Ljava/util/Locale;
    goto :goto_1

    .line 216
    :cond_5
    array-length v2, v0

    if-ne v2, v7, :cond_2

    .line 217
    new-instance v1, Ljava/util/Locale;

    .end local v1           #retval:Ljava/util/Locale;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-direct {v1, v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #retval:Ljava/util/Locale;
    goto :goto_1
.end method

.method public static getMatchLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "referenceLocale"
    .parameter "testedLocale"

    .prologue
    const/4 v8, 0x2

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v2

    .line 113
    :cond_1
    const/16 v2, 0xa

    goto :goto_0

    .line 115
    :cond_2
    if-nez p1, :cond_3

    move v2, v3

    goto :goto_0

    .line 116
    :cond_3
    const-string v5, "_"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, referenceParams:[Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, testedParams:[Ljava/lang/String;
    aget-object v5, v0, v3

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    goto :goto_0

    .line 120
    :cond_4
    array-length v5, v0

    packed-switch v5, :pswitch_data_0

    move v2, v3

    .line 139
    goto :goto_0

    .line 122
    :pswitch_0
    array-length v3, v1

    if-eq v7, v3, :cond_0

    const/16 v2, 0xf

    goto :goto_0

    .line 124
    :pswitch_1
    array-length v3, v1

    if-ne v7, v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 125
    :cond_5
    aget-object v3, v0, v7

    aget-object v5, v1, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v2, v4

    .line 126
    goto :goto_0

    .line 127
    :cond_6
    array-length v3, v1

    if-ne v4, v3, :cond_0

    const/16 v2, 0x14

    goto :goto_0

    .line 130
    :pswitch_2
    array-length v3, v1

    if-ne v7, v3, :cond_7

    move v2, v4

    goto :goto_0

    .line 131
    :cond_7
    aget-object v3, v0, v7

    aget-object v5, v1, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v2, v4

    .line 132
    goto :goto_0

    .line 133
    :cond_8
    array-length v3, v1

    if-ne v8, v3, :cond_9

    const/4 v2, 0x6

    goto :goto_0

    .line 134
    :cond_9
    aget-object v3, v0, v8

    aget-object v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    const/4 v2, 0x6

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isMatch(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 164
    const/16 v0, 0xa

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static localeAndTimeHashMapToStr(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    :cond_0
    const-string v4, ""

    .line 257
    :goto_0
    return-object v4

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    .local v2, localeStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 251
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 254
    .local v3, time:Ljava/lang/Long;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 257
    .end local v2           #localeStr:Ljava/lang/String;
    .end local v3           #time:Ljava/lang/Long;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static localeAndTimeStrToHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 228
    sget-object v3, Lcom/android/inputmethod/latin/LocaleUtils;->EMPTY_LT_HASH_MAP:Ljava/util/HashMap;

    .line 241
    :cond_0
    :goto_0
    return-object v3

    .line 230
    :cond_1
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, ss:[Ljava/lang/String;
    array-length v0, v4

    .line 232
    .local v0, N:I
    const/4 v7, 0x2

    if-lt v0, v7, :cond_2

    rem-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_3

    .line 233
    :cond_2
    sget-object v3, Lcom/android/inputmethod/latin/LocaleUtils;->EMPTY_LT_HASH_MAP:Ljava/util/HashMap;

    goto :goto_0

    .line 235
    :cond_3
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 236
    .local v3, retval:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    div-int/lit8 v7, v0, 0x2

    if-ge v1, v7, :cond_0

    .line 237
    mul-int/lit8 v7, v1, 0x2

    aget-object v2, v4, v7

    .line 238
    .local v2, localeStr:Ljava/lang/String;
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 239
    .local v5, time:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
