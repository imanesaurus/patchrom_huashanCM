.class public final Lcom/android/inputmethod/compat/EditorInfoCompatUtils;
.super Ljava/lang/Object;
.source "EditorInfoCompatUtils.java"


# static fields
.field private static final FIELD_IME_FLAG_FORCE_ASCII:Ljava/lang/reflect/Field;

.field private static final OBJ_IME_FLAG_FORCE_ASCII:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    const-class v0, Landroid/view/inputmethod/EditorInfo;

    const-string v1, "IME_FLAG_FORCE_ASCII"

    invoke-static {v0, v1}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_FORCE_ASCII:Ljava/lang/reflect/Field;

    .line 27
    sget-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_FORCE_ASCII:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_FORCE_ASCII:Ljava/lang/Integer;

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

.method public static hasFlagForceAscii(I)Z
    .locals 2
    .parameter "imeOptions"

    .prologue
    const/4 v0, 0x0

    .line 35
    sget-object v1, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_FORCE_ASCII:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_FORCE_ASCII:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
