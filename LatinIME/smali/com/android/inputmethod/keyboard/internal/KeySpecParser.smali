.class public final Lcom/android/inputmethod/keyboard/internal/KeySpecParser;
.super Ljava/lang/Object;
.source "KeySpecParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;
    }
.end annotation


# static fields
.field private static COMMA:I

.field private static final DEBUG:Z

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->DEBUG:Z

    .line 55
    const/16 v0, 0x2c

    sput v0, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->COMMA:I

    .line 231
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static arrayAsList([Ljava/lang/Object;II)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    if-nez p0, :cond_0

    .line 218
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 220
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 221
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 224
    :cond_2
    sub-int v2, p2, p1

    invoke-static {v2}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 225
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 226
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_3
    return-object v1
.end method

.method private static filterOutEmptyString([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 234
    if-nez p0, :cond_1

    .line 235
    sget-object p0, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 251
    .end local p0
    .local v1, i:I
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 237
    .end local v1           #i:I
    .end local v2           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0
    :cond_1
    const/4 v2, 0x0

    .line 238
    .restart local v2       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 239
    aget-object v0, p0, v1

    .line 240
    .local v0, entry:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    if-nez v2, :cond_2

    .line 242
    const/4 v3, 0x0

    invoke-static {p0, v3, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->arrayAsList([Ljava/lang/Object;II)Ljava/util/ArrayList;

    move-result-object v2

    .line 238
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    :cond_3
    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 248
    .end local v0           #entry:Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object p0, v3

    goto :goto_0
.end method

.method public static getBooleanValue([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "moreKeys"
    .parameter "key"

    .prologue
    .line 454
    if-nez p0, :cond_1

    .line 455
    const/4 v2, 0x0

    .line 466
    :cond_0
    return v2

    .line 457
    :cond_1
    const/4 v2, 0x0

    .line 458
    .local v2, value:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 459
    aget-object v1, p0, v0

    .line 460
    .local v1, moreKeySpec:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 458
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_3
    const/4 v3, 0x0

    aput-object v3, p0, v0

    .line 464
    const/4 v2, 0x1

    goto :goto_1
.end method

.method static getCode(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;)I
    .locals 7
    .parameter "moreKeySpec"
    .parameter "codesSet"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x3

    const/4 v5, 0x0

    .line 170
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->hasCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    invoke-static {p0, v5}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, end:I
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 173
    new-instance v3, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple |: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0xc

    invoke-static {v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->parseCode(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;I)I

    move-result v3

    .line 191
    .end local v0           #end:I
    :cond_1
    :goto_0
    return v3

    .line 177
    :cond_2
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getOutputTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, outputText:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 181
    invoke-static {v2}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 182
    invoke-virtual {v2, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    goto :goto_0

    .line 186
    :cond_3
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, label:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 189
    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    goto :goto_0
.end method

.method public static getIconId(Ljava/lang/String;)I
    .locals 4
    .parameter "moreKeySpec"

    .prologue
    .line 207
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->hasIcon(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    const/16 v2, 0x7c

    const-string v3, "!icon/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 209
    .local v0, end:I
    if-gez v0, :cond_0

    const-string v2, "!icon/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, name:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIconId(Ljava/lang/String;)I

    move-result v2

    .line 213
    .end local v0           #end:I
    .end local v1           #name:Ljava/lang/String;
    :goto_1
    return v2

    .line 209
    .restart local v0       #end:I
    :cond_0
    const-string v2, "!icon/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 213
    .end local v0           #end:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getIntValue([Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .parameter "moreKeys"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 428
    if-nez p0, :cond_0

    .line 450
    .end local p2
    :goto_0
    return p2

    .line 431
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 432
    .local v3, keyLen:I
    const/4 v1, 0x0

    .line 433
    .local v1, foundValue:Z
    move v5, p2

    .line 434
    .local v5, value:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, p0

    if-ge v2, v6, :cond_3

    .line 435
    aget-object v4, p0, v2

    .line 436
    .local v4, moreKeySpec:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 434
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    :cond_2
    const/4 v6, 0x0

    aput-object v6, p0, v2

    .line 441
    if-nez v1, :cond_1

    .line 442
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 443
    const/4 v1, 0x1

    goto :goto_2

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "integer should follow after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #moreKeySpec:Ljava/lang/String;
    :cond_3
    move p2, v5

    .line 450
    goto :goto_0
.end method

.method public static getLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "moreKeySpec"

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->hasIcon(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const/4 v1, 0x0

    .line 131
    :cond_0
    return-object v1

    .line 125
    :cond_1
    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, end:I
    if-lez v0, :cond_2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, label:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    .end local v1           #label:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getOutputText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "moreKeySpec"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->hasCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-object v2

    .line 149
    :cond_1
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getOutputTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, outputText:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 151
    invoke-static {v1}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty outputText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_3
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 163
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_4
    invoke-static {v0}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_5

    move-object v0, v2

    .end local v0           #label:Ljava/lang/String;
    :cond_5
    move-object v2, v0

    goto :goto_0
.end method

.method private static getOutputTextInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "moreKeySpec"

    .prologue
    .line 135
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, end:I
    if-gtz v0, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 142
    :goto_0
    return-object v1

    .line 139
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 140
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple |: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static hasCode(Ljava/lang/String;)Z
    .locals 4
    .parameter "moreKeySpec"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-static {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, end:I
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v2, "!code/"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 78
    :cond_0
    return v1
.end method

.method private static hasIcon(Ljava/lang/String;)Z
    .locals 1
    .parameter "moreKeySpec"

    .prologue
    .line 69
    const-string v0, "!icon/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static indexOfLabelEnd(Ljava/lang/String;I)I
    .locals 7
    .parameter "moreKeySpec"
    .parameter "start"

    .prologue
    const/16 v6, 0x7c

    const/16 v5, 0x5c

    .line 101
    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_0

    .line 102
    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 103
    .local v1, end:I
    if-nez v1, :cond_3

    .line 104
    new-instance v4, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "| at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    .end local v1           #end:I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 109
    .local v2, length:I
    move v3, p1

    .local v3, pos:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 110
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 111
    .local v0, c:C
    if-ne v0, v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_2

    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 109
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_2
    if-ne v0, v6, :cond_1

    move v1, v3

    .line 118
    .end local v0           #c:C
    .end local v2           #length:I
    .end local v3           #pos:I
    :cond_3
    :goto_1
    return v1

    .restart local v2       #length:I
    .restart local v3       #pos:I
    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static insertAdditionalMoreKeys([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "moreKeySpecs"
    .parameter "additionalMoreKeySpecs"

    .prologue
    const/4 v11, 0x0

    .line 256
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->filterOutEmptyString([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, moreKeys:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->filterOutEmptyString([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, additionalMoreKeys:[Ljava/lang/String;
    array-length v8, v7

    .line 259
    .local v8, moreKeysCount:I
    array-length v0, v3

    .line 260
    .local v0, additionalCount:I
    const/4 v9, 0x0

    .line 261
    .local v9, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 262
    .local v1, additionalIndex:I
    const/4 v5, 0x0

    .local v5, moreKeyIndex:I
    :goto_0
    if-ge v5, v8, :cond_4

    .line 263
    aget-object v6, v7, v5

    .line 264
    .local v6, moreKeySpec:Ljava/lang/String;
    const-string v10, "%"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 265
    if-ge v1, v0, :cond_2

    .line 267
    aget-object v2, v3, v1

    .line 268
    .local v2, additionalMoreKey:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 269
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 262
    .end local v2           #additionalMoreKey:Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 271
    .restart local v2       #additionalMoreKey:Ljava/lang/String;
    :cond_1
    aput-object v2, v7, v5

    goto :goto_1

    .line 276
    .end local v2           #additionalMoreKey:Ljava/lang/String;
    :cond_2
    if-nez v9, :cond_0

    .line 277
    invoke-static {v7, v11, v5}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->arrayAsList([Ljava/lang/Object;II)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_2

    .line 281
    :cond_3
    if-eqz v9, :cond_0

    .line 282
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 286
    .end local v6           #moreKeySpec:Ljava/lang/String;
    :cond_4
    if-lez v0, :cond_6

    if-nez v1, :cond_6

    .line 289
    sget-boolean v10, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->DEBUG:Z

    if-eqz v10, :cond_5

    if-eqz v9, :cond_5

    .line 290
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Internal logic error: moreKeys="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " additionalMoreKeys="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 294
    :cond_5
    invoke-static {v3, v1, v0}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->arrayAsList([Ljava/lang/Object;II)Ljava/util/ArrayList;

    move-result-object v9

    .line 295
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v8, :cond_8

    .line 296
    aget-object v10, v7, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 298
    .end local v4           #i:I
    :cond_6
    if-ge v1, v0, :cond_8

    .line 301
    sget-boolean v10, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->DEBUG:Z

    if-eqz v10, :cond_7

    if-eqz v9, :cond_7

    .line 302
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Internal logic error: moreKeys="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " additionalMoreKeys="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 306
    :cond_7
    invoke-static {v7, v11, v8}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->arrayAsList([Ljava/lang/Object;II)Ljava/util/ArrayList;

    move-result-object v9

    .line 307
    move v4, v1

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v0, :cond_8

    .line 308
    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 311
    .end local v4           #i:I
    :cond_8
    if-nez v9, :cond_9

    if-lez v8, :cond_9

    .line 316
    .end local v7           #moreKeys:[Ljava/lang/String;
    :goto_5
    return-object v7

    .line 313
    .restart local v7       #moreKeys:[Ljava/lang/String;
    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 314
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v7, v10

    goto :goto_5

    .line 316
    :cond_a
    const/4 v7, 0x0

    goto :goto_5
.end method

.method public static parseCode(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;I)I
    .locals 2
    .parameter "text"
    .parameter "codesSet"
    .parameter "defCode"

    .prologue
    .line 196
    if-nez p0, :cond_0

    .line 202
    .end local p2
    :goto_0
    return p2

    .line 197
    .restart local p2
    :cond_0
    const-string v0, "!code/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "!code/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->getCode(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 199
    :cond_1
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    const-string v0, "0x"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0

    .line 202
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public static parseCsvString(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)[Ljava/lang/String;
    .locals 12
    .parameter "rawText"
    .parameter "textsSet"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 388
    invoke-static {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->resolveTextReference(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 390
    .local v4, size:I
    if-nez v4, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-object v7

    .line 393
    :cond_1
    invoke-static {v6}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 394
    invoke-virtual {v6, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    sget v9, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->COMMA:I

    if-eq v8, v9, :cond_0

    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v10

    goto :goto_0

    .line 397
    :cond_2
    const/4 v1, 0x0

    .line 398
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 399
    .local v5, start:I
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 400
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 401
    .local v0, c:C
    sget v8, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->COMMA:I

    if-ne v0, v8, :cond_6

    .line 403
    sub-int v8, v2, v5

    if-lez v8, :cond_4

    .line 404
    if-nez v1, :cond_3

    .line 405
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 407
    :cond_3
    invoke-virtual {v6, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_4
    add-int/lit8 v5, v2, 0x1

    .line 399
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    :cond_6
    const/16 v8, 0x5c

    if-ne v0, v8, :cond_5

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 416
    .end local v0           #c:C
    :cond_7
    sub-int v8, v4, v5

    if-lez v8, :cond_8

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, remain:Ljava/lang/String;
    :goto_3
    if-nez v1, :cond_9

    .line 418
    if-eqz v3, :cond_0

    new-array v7, v11, [Ljava/lang/String;

    aput-object v3, v7, v10

    goto :goto_0

    .end local v3           #remain:Ljava/lang/String;
    :cond_8
    move-object v3, v7

    .line 416
    goto :goto_3

    .line 420
    .restart local v3       #remain:Ljava/lang/String;
    :cond_9
    if-eqz v3, :cond_a

    .line 421
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x5c

    .line 82
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 97
    .end local p0
    :goto_0
    return-object p0

    .line 85
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 86
    .local v1, length:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    .local v0, c:C
    if-ne v0, v5, :cond_1

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_1

    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 97
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static resolveTextReference(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)Ljava/lang/String;
    .locals 13
    .parameter "rawText"
    .parameter "textsSet"

    .prologue
    .line 329
    const/4 v2, 0x0

    .line 330
    .local v2, level:I
    move-object v8, p0

    .line 333
    .local v8, text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 334
    const/16 v10, 0xa

    if-lt v2, v10, :cond_1

    .line 335
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "too many @string/resource indirection: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 338
    :cond_1
    const-string v10, "!text/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .line 339
    .local v5, prefixLen:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 340
    .local v7, size:I
    if-ge v7, v5, :cond_2

    move-object v9, v8

    .line 371
    .end local v8           #text:Ljava/lang/String;
    .local v9, text:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 344
    .end local v9           #text:Ljava/lang/String;
    .restart local v8       #text:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    .line 345
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, pos:I
    :goto_1
    if-ge v4, v7, :cond_8

    .line 346
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 347
    .local v0, c:C
    const-string v10, "!text/"

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz p1, :cond_5

    .line 348
    if-nez v6, :cond_3

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #sb:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_3
    add-int v10, v4, v5

    invoke-static {v8, v10}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->searchTextNameEnd(Ljava/lang/String;I)I

    move-result v1

    .line 352
    .local v1, end:I
    add-int v10, v4, v5

    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v4, v1, -0x1

    .line 345
    .end local v1           #end:I
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 355
    :cond_5
    const/16 v10, 0x5c

    if-ne v0, v10, :cond_7

    .line 356
    if-eqz v6, :cond_6

    .line 358
    add-int/lit8 v10, v4, 0x2

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 361
    :cond_7
    if-eqz v6, :cond_4

    .line 362
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 366
    .end local v0           #c:C
    :cond_8
    if-eqz v6, :cond_9

    .line 367
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 369
    :cond_9
    if-nez v6, :cond_0

    move-object v9, v8

    .line 371
    .end local v8           #text:Ljava/lang/String;
    .restart local v9       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method private static searchTextNameEnd(Ljava/lang/String;I)I
    .locals 4
    .parameter "text"
    .parameter "start"

    .prologue
    .line 375
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 376
    .local v2, size:I
    move v1, p1

    .local v1, pos:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 377
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 379
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    :cond_0
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_1

    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-gt v0, v3, :cond_3

    .line 376
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v1, v2

    .line 384
    .end local v1           #pos:I
    :cond_3
    return v1
.end method

.method public static toUpperCaseOfCodeForLocale(IZLjava/util/Locale;)I
    .locals 5
    .parameter "code"
    .parameter "needsToUpperCase"
    .parameter "locale"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 471
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isLetterCode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, p0

    .line 475
    :goto_0
    return v2

    .line 472
    :cond_1
    new-instance v1, Ljava/lang/String;

    new-array v2, v4, [I

    aput p0, v2, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    .line 473
    .local v1, text:Ljava/lang/String;
    invoke-static {v1, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->toUpperCaseOfStringForLocale(Ljava/lang/String;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, casedText:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    goto :goto_0

    :cond_2
    const/16 v2, -0xc

    goto :goto_0
.end method

.method public static toUpperCaseOfStringForLocale(Ljava/lang/String;ZLjava/util/Locale;)Ljava/lang/String;
    .locals 0
    .parameter "text"
    .parameter "needsToUpperCase"
    .parameter "locale"

    .prologue
    .line 481
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 482
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
