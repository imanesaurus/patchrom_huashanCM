.class public abstract Lcom/android/inputmethod/keyboard/internal/KeyStyle;
.super Ljava/lang/Object;
.source "KeyStyle.java"


# instance fields
.field private final mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;


# direct methods
.method protected constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)V
    .locals 0
    .parameter "textsSet"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract getFlag(Landroid/content/res/TypedArray;I)I
.end method

.method public abstract getInt(Landroid/content/res/TypedArray;II)I
.end method

.method public abstract getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;
.end method

.method public abstract getStringArray(Landroid/content/res/TypedArray;I)[Ljava/lang/String;
.end method

.method protected parseString(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->resolveTextReference(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseStringArray(Landroid/content/res/TypedArray;I)[Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 41
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->parseCsvString(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
