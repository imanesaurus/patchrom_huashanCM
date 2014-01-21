.class public final Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;
.super Ljava/lang/Object;
.source "KeyboardCodesSet.java"


# static fields
.field private static final DEFAULT:[I

.field private static final ID_TO_NAME:[Ljava/lang/String;

.field private static final LANGUAGE_AND_CODES:[Ljava/lang/Object;

.field private static final RTL:[I

.field private static final sLanguageToCodesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final sNameToIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCodes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 25
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->sLanguageToCodesMap:Ljava/util/HashMap;

    .line 26
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->sNameToIdMap:Ljava/util/HashMap;

    .line 41
    const/16 v3, 0x17

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "key_tab"

    aput-object v4, v3, v7

    const-string v4, "key_enter"

    aput-object v4, v3, v8

    const-string v4, "key_space"

    aput-object v4, v3, v9

    const-string v4, "key_shift"

    aput-object v4, v3, v10

    const-string v4, "key_switch_alpha_symbol"

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const-string v5, "key_output_text"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "key_delete"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "key_settings"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "key_shortcut"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "key_action_enter"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "key_action_next"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "key_action_previous"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "key_language_switch"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "key_research"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "key_unspecified"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "key_left_parenthesis"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "key_right_parenthesis"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "key_less_than"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "key_greater_than"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "key_left_square_bracket"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "key_right_square_bracket"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "key_left_curly_bracket"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "key_right_curly_bracket"

    aput-object v5, v3, v4

    sput-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->ID_TO_NAME:[Ljava/lang/String;

    .line 76
    const/16 v3, 0x17

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    .line 102
    const/16 v3, 0x17

    new-array v3, v3, [I

    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    aget v4, v4, v7

    aput v4, v3, v7

    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    aget v4, v4, v8

    aput v4, v3, v8

    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    aget v4, v4, v9

    aput v4, v3, v9

    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    aget v4, v4, v10

    aput v4, v3, v10

    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    aget v4, v4, v11

    aput v4, v3, v11

    const/4 v4, 0x5

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    aput v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    aput v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    aput v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    aput v5, v3, v4

    const/16 v4, 0x9

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    aput v5, v3, v4

    const/16 v4, 0xa

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    aput v5, v3, v4

    const/16 v4, 0xb

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    aput v5, v3, v4

    const/16 v4, 0xc

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    const/16 v6, 0xc

    aget v5, v5, v6

    aput v5, v3, v4

    const/16 v4, 0xd

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    aput v5, v3, v4

    const/16 v4, 0xe

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    aput v5, v3, v4

    const/16 v4, 0xf

    const/16 v5, 0x29

    aput v5, v3, v4

    const/16 v4, 0x10

    const/16 v5, 0x28

    aput v5, v3, v4

    const/16 v4, 0x11

    const/16 v5, 0x3e

    aput v5, v3, v4

    const/16 v4, 0x12

    const/16 v5, 0x3c

    aput v5, v3, v4

    const/16 v4, 0x13

    const/16 v5, 0x5d

    aput v5, v3, v4

    const/16 v4, 0x14

    const/16 v5, 0x5b

    aput v5, v3, v4

    const/16 v4, 0x15

    const/16 v5, 0x7d

    aput v5, v3, v4

    const/16 v4, 0x16

    const/16 v5, 0x7b

    aput v5, v3, v4

    sput-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->RTL:[I

    .line 133
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "DEFAULT"

    aput-object v4, v3, v7

    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    aput-object v4, v3, v8

    const-string v4, "ar"

    aput-object v4, v3, v9

    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->RTL:[I

    aput-object v4, v3, v10

    const-string v4, "fa"

    aput-object v4, v3, v11

    const/4 v4, 0x5

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->RTL:[I

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "iw"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->RTL:[I

    aput-object v5, v3, v4

    sput-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->LANGUAGE_AND_CODES:[Ljava/lang/Object;

    .line 141
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->ID_TO_NAME:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 142
    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->sNameToIdMap:Ljava/util/HashMap;

    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->ID_TO_NAME:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->LANGUAGE_AND_CODES:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 146
    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->LANGUAGE_AND_CODES:[Ljava/lang/Object;

    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, language:Ljava/lang/String;
    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->LANGUAGE_AND_CODES:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 148
    .local v0, codes:[I
    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->sLanguageToCodesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 150
    .end local v0           #codes:[I
    .end local v2           #language:Ljava/lang/String;
    :cond_1
    return-void

    .line 76
    :array_0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xfbt 0xfft 0xfft 0xfft
        0xfat 0xfft 0xfft 0xfft
        0xf9t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xf7t 0xfft 0xfft 0xfft
        0xf6t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf4t 0xfft 0xfft 0xfft
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->mCodes:[I

    return-void
.end method


# virtual methods
.method public getCode(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 36
    sget-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->sNameToIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 37
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown key code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->mCodes:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    return v1
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2
    .parameter "language"

    .prologue
    .line 31
    sget-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->sLanguageToCodesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 32
    .local v0, codes:[I
    if-eqz v0, :cond_0

    .end local v0           #codes:[I
    :goto_0
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->mCodes:[I

    .line 33
    return-void

    .line 32
    .restart local v0       #codes:[I
    :cond_0
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->DEFAULT:[I

    goto :goto_0
.end method
