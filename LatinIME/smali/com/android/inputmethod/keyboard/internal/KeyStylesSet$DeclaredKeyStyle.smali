.class final Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;
.super Lcom/android/inputmethod/keyboard/internal/KeyStyle;
.source "KeyStylesSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeclaredKeyStyle"
.end annotation


# instance fields
.field private final mParentStyleName:Ljava/lang/String;

.field private final mStyleAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/keyboard/internal/KeyStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;Ljava/util/HashMap;)V
    .locals 1
    .parameter "parentStyleName"
    .parameter "textsSet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/keyboard/internal/KeyStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p3, styles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyStyle;>;"
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)V

    .line 77
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyleAttributes:Landroid/util/SparseArray;

    .line 82
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mParentStyleName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyles:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method private readFlag(Landroid/content/res/TypedArray;I)V
    .locals 4
    .parameter "a"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyleAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 169
    .local v0, value:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyleAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    or-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    .end local v0           #value:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private readInt(Landroid/content/res/TypedArray;I)V
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 161
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyleAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    :cond_0
    return-void
.end method

.method private readString(Landroid/content/res/TypedArray;I)V
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 155
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyleAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->parseString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    :cond_0
    return-void
.end method

.method private readStringArray(Landroid/content/res/TypedArray;I)V
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 174
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyleAttributes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->parseStringArray(Landroid/content/res/TypedArray;I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public getFlag(Landroid/content/res/TypedArray;I)I
    .locals 5
    .parameter "a"
    .parameter "index"

    .prologue
    .line 127
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 128
    .local v0, flags:I
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyleAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 130
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v0, v3

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyles:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mParentStyleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/internal/KeyStyle;

    .line 133
    .local v1, parentStyle:Lcom/android/inputmethod/keyboard/internal/KeyStyle;
    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getFlag(Landroid/content/res/TypedArray;I)I

    move-result v3

    or-int/2addr v3, v0

    return v3
.end method

.method public getInt(Landroid/content/res/TypedArray;II)I
    .locals 4
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 114
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 122
    :goto_0
    return v2

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyleAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 119
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #value:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 121
    .restart local v1       #value:Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyles:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mParentStyleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/internal/KeyStyle;

    .line 122
    .local v0, parentStyle:Lcom/android/inputmethod/keyboard/internal/KeyStyle;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v2

    goto :goto_0
.end method

.method public getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .locals 4
    .parameter "a"
    .parameter "index"

    .prologue
    .line 101
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->parseString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyleAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 105
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 106
    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyles:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mParentStyleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/internal/KeyStyle;

    .line 109
    .local v0, parentStyle:Lcom/android/inputmethod/keyboard/internal/KeyStyle;
    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStringArray(Landroid/content/res/TypedArray;I)[Ljava/lang/String;
    .locals 4
    .parameter "a"
    .parameter "index"

    .prologue
    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->parseStringArray(Landroid/content/res/TypedArray;I)[Ljava/lang/String;

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyleAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 93
    check-cast v1, [Ljava/lang/String;

    .end local v1           #value:Ljava/lang/Object;
    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    .line 95
    .restart local v1       #value:Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mStyles:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->mParentStyleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/internal/KeyStyle;

    .line 96
    .local v0, parentStyle:Lcom/android/inputmethod/keyboard/internal/KeyStyle;
    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getStringArray(Landroid/content/res/TypedArray;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public readKeyAttributes(Landroid/content/res/TypedArray;)V
    .locals 1
    .parameter "keyAttr"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readString(Landroid/content/res/TypedArray;I)V

    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readString(Landroid/content/res/TypedArray;I)V

    .line 140
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readString(Landroid/content/res/TypedArray;I)V

    .line 141
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readString(Landroid/content/res/TypedArray;I)V

    .line 142
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readString(Landroid/content/res/TypedArray;I)V

    .line 143
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readStringArray(Landroid/content/res/TypedArray;I)V

    .line 144
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readStringArray(Landroid/content/res/TypedArray;I)V

    .line 145
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readFlag(Landroid/content/res/TypedArray;I)V

    .line 146
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readString(Landroid/content/res/TypedArray;I)V

    .line 147
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readString(Landroid/content/res/TypedArray;I)V

    .line 148
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readString(Landroid/content/res/TypedArray;I)V

    .line 149
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 150
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 151
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readFlag(Landroid/content/res/TypedArray;I)V

    .line 152
    return-void
.end method
