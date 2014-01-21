.class public final Lcom/android/inputmethod/latin/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field private static final HARDWARE_PREFIX:Ljava/lang/String;

.field private static final sDeviceOverrideValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/ResourceUtils;->HARDWARE_PREFIX:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/ResourceUtils;->sDeviceOverrideValueMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getDeviceOverrideValue(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "res"
    .parameter "overrideResId"
    .parameter "defValue"

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v5, v7, Landroid/content/res/Configuration;->orientation:I

    .line 40
    .local v5, orientation:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, key:Ljava/lang/String;
    sget-object v7, Lcom/android/inputmethod/latin/ResourceUtils;->sDeviceOverrideValueMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 42
    move-object v6, p2

    .line 43
    .local v6, overrideValue:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 44
    .local v1, element:Ljava/lang/String;
    sget-object v7, Lcom/android/inputmethod/latin/ResourceUtils;->HARDWARE_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 45
    sget-object v7, Lcom/android/inputmethod/latin/ResourceUtils;->HARDWARE_PREFIX:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 49
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    sget-object v7, Lcom/android/inputmethod/latin/ResourceUtils;->sDeviceOverrideValueMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v6           #overrideValue:Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/android/inputmethod/latin/ResourceUtils;->sDeviceOverrideValueMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    return-object v7

    .line 43
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #element:Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #overrideValue:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "base"
    .parameter "defValue"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 91
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 99
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 94
    .restart local p3
    :cond_1
    invoke-static {v0}, Lcom/android/inputmethod/latin/ResourceUtils;->isFractionValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p3

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v0}, Lcom/android/inputmethod/latin/ResourceUtils;->isDimensionValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    goto :goto_0
.end method

.method public static getDimensionPixelSize(Landroid/content/res/TypedArray;I)I
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    const/4 v1, -0x1

    .line 81
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 82
    .local v0, value:Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/latin/ResourceUtils;->isDimensionValue(Landroid/util/TypedValue;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    goto :goto_0
.end method

.method public static getEnumValue(Landroid/content/res/TypedArray;II)I
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 104
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 110
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 107
    .restart local p2
    :cond_1
    invoke-static {v0}, Lcom/android/inputmethod/latin/ResourceUtils;->isIntegerValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    goto :goto_0
.end method

.method public static getFraction(Landroid/content/res/TypedArray;I)F
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 77
    const/high16 v0, -0x4080

    invoke-static {p0, p1, v0}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v0

    return v0
.end method

.method public static getFraction(Landroid/content/res/TypedArray;IF)F
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "defValue"

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 70
    .local v0, value:Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/latin/ResourceUtils;->isFractionValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-virtual {p0, p1, v2, v2, p2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    goto :goto_0
.end method

.method public static isDimensionValue(Landroid/util/TypedValue;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 118
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFractionValue(Landroid/util/TypedValue;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 114
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIntegerValue(Landroid/util/TypedValue;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 122
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStringValue(Landroid/util/TypedValue;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 126
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDimensionPixelSize(I)Z
    .locals 1
    .parameter "dimension"

    .prologue
    .line 60
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidFraction(F)Z
    .locals 1
    .parameter "fraction"

    .prologue
    .line 55
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
