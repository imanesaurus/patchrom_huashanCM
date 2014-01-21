.class public final Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;
.super Ljava/lang/Object;
.source "KeyboardIconsSet.java"


# static fields
.field private static final ATTR_ID_TO_ICON_ID:Landroid/util/SparseIntArray;

.field private static final ICON_NAMES:[Ljava/lang/String;

.field private static final NAMES_AND_ATTR_IDS:[Ljava/lang/Object;

.field private static NUM_ICONS:I

.field private static final TAG:Ljava/lang/String;

.field private static final sNameToIdsMap:Ljava/util/HashMap;
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
.field private final mIcons:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xe

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/4 v0, 0x0

    .line 31
    const-class v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->TAG:Ljava/lang/String;

    .line 36
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->ATTR_ID_TO_ICON_ID:Landroid/util/SparseIntArray;

    .line 39
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->sNameToIdsMap:Ljava/util/HashMap;

    .line 41
    const/16 v1, 0x22

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "undefined"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "shift_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "delete_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "settings_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "space_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "enter_key"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "search_key"

    aput-object v2, v1, v4

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "tab_key"

    aput-object v2, v1, v6

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x10

    const-string v3, "shortcut_key"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "shortcut_for_label"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "space_key_for_number_layout"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "shift_key_shifted"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "shortcut_key_disabled"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "tab_key_preview"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "language_switch_key"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "zwnj_key"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "zwj_key"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->NAMES_AND_ATTR_IDS:[Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->NAMES_AND_ATTR_IDS:[Ljava/lang/Object;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->NUM_ICONS:I

    .line 62
    sget v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->NUM_ICONS:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->ICON_NAMES:[Ljava/lang/String;

    move v2, v0

    move v3, v0

    .line 67
    :goto_0
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->NAMES_AND_ATTR_IDS:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 68
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->NAMES_AND_ATTR_IDS:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 69
    sget-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->NAMES_AND_ATTR_IDS:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->ATTR_ID_TO_ICON_ID:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    :cond_0
    sget-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->sNameToIdsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->ICON_NAMES:[Ljava/lang/String;

    aput-object v0, v1, v3

    .line 75
    add-int/lit8 v1, v3, 0x1

    .line 67
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    move v3, v1

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->NUM_ICONS:I

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static getIconId(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 105
    sget-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->sNameToIdsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 106
    .local v0, iconId:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown icon name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getIconName(I)Ljava/lang/String;
    .locals 2
    .parameter "iconId"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->isValidIconId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->ICON_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isValidIconId(I)Z
    .locals 1
    .parameter "iconId"

    .prologue
    .line 97
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->ICON_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setDefaultBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    .line 120
    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "iconId"

    .prologue
    .line 113
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->isValidIconId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown icon id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIconName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadIcons(Landroid/content/res/TypedArray;)V
    .locals 9
    .parameter "keyboardAttrs"

    .prologue
    .line 80
    sget-object v6, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->ATTR_ID_TO_ICON_ID:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 81
    .local v5, size:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 82
    sget-object v6, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->ATTR_ID_TO_ICON_ID:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 84
    .local v0, attrId:I
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 85
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 86
    sget-object v6, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->ATTR_ID_TO_ICON_ID:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 87
    .local v3, iconId:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-object v2, v6, v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #iconId:Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v6, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Drawable resource for icon #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    .end local v0           #attrId:I
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    return-void
.end method
