.class public final Lcom/android/inputmethod/compat/SuggestionsInfoCompatUtils;
.super Ljava/lang/Object;
.source "SuggestionsInfoCompatUtils.java"


# static fields
.field private static final FIELD_RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:Ljava/lang/reflect/Field;

.field private static final OBJ_RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:Ljava/lang/Integer;

.field private static final RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    const-class v0, Landroid/view/textservice/SuggestionsInfo;

    const-string v1, "RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS"

    invoke-static {v0, v1}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/SuggestionsInfoCompatUtils;->FIELD_RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:Ljava/lang/reflect/Field;

    .line 26
    sget-object v0, Lcom/android/inputmethod/compat/SuggestionsInfoCompatUtils;->FIELD_RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/SuggestionsInfoCompatUtils;->OBJ_RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:Ljava/lang/Integer;

    .line 28
    sget-object v0, Lcom/android/inputmethod/compat/SuggestionsInfoCompatUtils;->OBJ_RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/compat/SuggestionsInfoCompatUtils;->OBJ_RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    sput v0, Lcom/android/inputmethod/compat/SuggestionsInfoCompatUtils;->RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getValueOf_RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/inputmethod/compat/SuggestionsInfoCompatUtils;->RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:I

    return v0
.end method
