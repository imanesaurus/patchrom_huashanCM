.class public final Lcom/android/inputmethod/latin/InputTypeUtils;
.super Ljava/lang/Object;
.source "InputTypeUtils.java"

# interfaces
.implements Landroid/text/InputType;


# static fields
.field private static final SUPPRESSING_AUTO_SPACES_FIELD_VARIATION:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/InputTypeUtils;->SUPPRESSING_AUTO_SPACES_FIELD_VARIATION:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static isAutoSpaceFriendlyType(I)Z
    .locals 8
    .parameter "inputType"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    and-int/lit8 v7, p0, 0xf

    if-eq v6, v7, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v5

    .line 99
    :cond_1
    and-int/lit16 v4, p0, 0xff0

    .line 100
    .local v4, variation:I
    sget-object v0, Lcom/android/inputmethod/latin/InputTypeUtils;->SUPPRESSING_AUTO_SPACES_FIELD_VARIATION:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 101
    .local v1, fieldVariation:I
    if-eq v4, v1, :cond_0

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #fieldVariation:I
    :cond_2
    move v5, v6

    .line 103
    goto :goto_0
.end method

.method public static isEmailVariation(I)Z
    .locals 1
    .parameter "variation"

    .prologue
    .line 71
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/android/inputmethod/latin/InputTypeUtils;->isWebEmailAddressVariation(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNumberPasswordInputType(I)Z
    .locals 1
    .parameter "inputType"

    .prologue
    .line 58
    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 84
    and-int/lit16 v0, p0, 0xfff

    .line 86
    .local v0, maskedInputType:I
    invoke-static {v0}, Lcom/android/inputmethod/latin/InputTypeUtils;->isTextPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/latin/InputTypeUtils;->isWebPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/latin/InputTypeUtils;->isNumberPasswordInputType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTextPasswordInputType(I)Z
    .locals 1
    .parameter "inputType"

    .prologue
    .line 63
    const/16 v0, 0x81

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVisiblePasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 92
    and-int/lit16 v0, p0, 0xfff

    .line 94
    .local v0, maskedInputType:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isWebEmailAddressVariation(I)Z
    .locals 1
    .parameter "variation"

    .prologue
    .line 67
    const/16 v0, 0xd0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWebPasswordInputType(I)Z
    .locals 1
    .parameter "inputType"

    .prologue
    .line 48
    const/16 v0, 0xe1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
