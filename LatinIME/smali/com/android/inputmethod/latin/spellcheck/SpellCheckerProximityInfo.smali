.class public final Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo;
.super Ljava/lang/Object;
.source "SpellCheckerProximityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo$Cyrillic;,
        Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo$Latin;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method protected static final buildProximityIndices([ILjava/util/TreeMap;)V
    .locals 3
    .parameter "proximity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, indices:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 46
    const/4 v1, -0x1

    aget v2, p0, v0

    if-eq v1, v2, :cond_0

    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    div-int/lit8 v2, v0, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method protected static final computeIndex(ILjava/util/TreeMap;)I
    .locals 2
    .parameter "characterCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, indices:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 52
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 53
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private static getIndexOfCodeForScript(II)I
    .locals 3
    .parameter "codePoint"
    .parameter "script"

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_0

    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong script supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :pswitch_0
    invoke-static {p0}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo$Latin;->getIndexOf(I)I

    move-result v0

    .line 195
    :goto_0
    return v0

    :pswitch_1
    invoke-static {p0}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo$Cyrillic;->getIndexOf(I)I

    move-result v0

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getProximityForScript(I)[I
    .locals 3
    .parameter "script"

    .prologue
    .line 180
    packed-switch p0, :pswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong script supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_0
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo$Latin;->PROXIMITY:[I

    .line 184
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo$Cyrillic;->PROXIMITY:[I

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getXYForCodePointAndScript(II)I
    .locals 5
    .parameter "codePoint"
    .parameter "script"

    .prologue
    const/4 v3, -0x1

    .line 206
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo;->getIndexOfCodeForScript(II)I

    move-result v0

    .line 207
    .local v0, index:I
    if-ne v3, v0, :cond_0

    .line 214
    :goto_0
    return v3

    .line 208
    :cond_0
    div-int/lit8 v2, v0, 0xb

    .line 209
    .local v2, y:I
    rem-int/lit8 v1, v0, 0xb

    .line 210
    .local v1, x:I
    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 212
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Wrong y coordinate in spell checker proximity"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    :cond_1
    shl-int/lit8 v3, v2, 0x10

    add-int/2addr v3, v1

    goto :goto_0
.end method
