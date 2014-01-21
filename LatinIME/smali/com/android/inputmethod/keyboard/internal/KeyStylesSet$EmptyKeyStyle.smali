.class final Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$EmptyKeyStyle;
.super Lcom/android/inputmethod/keyboard/internal/KeyStyle;
.source "KeyStylesSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyKeyStyle"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)V
    .locals 0
    .parameter "textsSet"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getFlag(Landroid/content/res/TypedArray;I)I
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInt(Landroid/content/res/TypedArray;II)I
    .locals 1
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 65
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$EmptyKeyStyle;->parseString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(Landroid/content/res/TypedArray;I)[Ljava/lang/String;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$EmptyKeyStyle;->parseStringArray(Landroid/content/res/TypedArray;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
