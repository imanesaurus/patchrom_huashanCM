.class public final Lcom/android/inputmethod/latin/AdditionalSubtype;
.super Ljava/lang/Object;
.source "AdditionalSubtype.java"


# static fields
.field private static final EMPTY_SUBTYPE_ARRAY:[Landroid/view/inputmethod/InputMethodSubtype;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    sput-object v0, Lcom/android/inputmethod/latin/AdditionalSubtype;->EMPTY_SUBTYPE_ARRAY:[Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static createAdditionalSubtype(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 7
    .parameter "prefSubtype"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 78
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, elems:[Ljava/lang/String;
    array-length v4, v0

    if-lt v4, v5, :cond_0

    array-length v4, v0

    if-le v4, v6, :cond_1

    .line 80
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown additional subtype specified: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_1
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 83
    .local v3, localeString:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, v0, v4

    .line 84
    .local v2, keyboardLayoutSetName:Ljava/lang/String;
    array-length v4, v0

    if-ne v4, v6, :cond_2

    aget-object v1, v0, v5

    .line 85
    .local v1, extraValue:Ljava/lang/String;
    :goto_0
    invoke-static {v3, v2, v1}, Lcom/android/inputmethod/latin/AdditionalSubtype;->createAdditionalSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    return-object v4

    .line 84
    .end local v1           #extraValue:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createAdditionalSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 12
    .parameter "localeString"
    .parameter "keyboardLayoutSetName"
    .parameter "extraValue"

    .prologue
    const/4 v6, 0x0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyboardLayoutSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 48
    .local v11, layoutExtraValue:Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->isExceptionalLocale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, layoutDisplayName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UntranslatableReplacementStringInSubtypeName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/inputmethod/latin/StringUtils;->appendToCsvIfNotExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 57
    .end local v9           #layoutDisplayName:Ljava/lang/String;
    .local v10, layoutDisplayNameExtraValue:Ljava/lang/String;
    :goto_0
    const-string v0, "isAdditionalSubtype"

    invoke-static {v0, v10}, Lcom/android/inputmethod/latin/StringUtils;->appendToCsvIfNotExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, additionalSubtypeExtraValue:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeNameId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 60
    .local v1, nameId:I
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    const v2, 0x7f02002c

    const-string v4, "keyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0

    .line 55
    .end local v1           #nameId:I
    .end local v8           #additionalSubtypeExtraValue:Ljava/lang/String;
    .end local v10           #layoutDisplayNameExtraValue:Ljava/lang/String;
    :cond_0
    move-object v10, p2

    .restart local v10       #layoutDisplayNameExtraValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static createAdditionalSubtypesArray(Ljava/lang/String;)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 9
    .parameter "prefSubtypes"

    .prologue
    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    sget-object v7, Lcom/android/inputmethod/latin/AdditionalSubtype;->EMPTY_SUBTYPE_ARRAY:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 104
    :goto_0
    return-object v7

    .line 92
    :cond_0
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, prefSubtypeArray:[Ljava/lang/String;
    array-length v7, v4

    invoke-static {v7}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 95
    .local v6, subtypesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 96
    .local v3, prefSubtype:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/inputmethod/latin/AdditionalSubtype;->createAdditionalSubtype(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 97
    .local v5, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v7

    const v8, 0x7f0a001e

    if-ne v7, v8, :cond_1

    .line 95
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    .end local v3           #prefSubtype:Ljava/lang/String;
    .end local v5           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0
.end method

.method public static createPrefSubtypes([Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;
    .locals 6
    .parameter "subtypes"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 109
    :cond_0
    const-string v5, ""

    .line 118
    :goto_0
    return-object v5

    .line 111
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v3, sb:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[Landroid/view/inputmethod/InputMethodSubtype;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 113
    .local v4, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 114
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_2
    invoke-static {v4}, Lcom/android/inputmethod/latin/AdditionalSubtype;->getPrefSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    .end local v4           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static createPrefSubtypes([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "prefSubtypes"

    .prologue
    .line 122
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 123
    :cond_0
    const-string v5, ""

    .line 132
    :goto_0
    return-object v5

    .line 125
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 127
    .local v3, prefSubtype:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 128
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v3           #prefSubtype:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getPrefSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;
    .locals 7
    .parameter "subtype"

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, localeString:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, keyboardLayoutSetName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyboardLayoutSet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, layoutExtraValue:Ljava/lang/String;
    const-string v5, "isAdditionalSubtype"

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/inputmethod/latin/StringUtils;->removeFromCsvIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/inputmethod/latin/StringUtils;->removeFromCsvIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, extraValue:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, basePrefSubtype:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v0           #basePrefSubtype:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #basePrefSubtype:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
