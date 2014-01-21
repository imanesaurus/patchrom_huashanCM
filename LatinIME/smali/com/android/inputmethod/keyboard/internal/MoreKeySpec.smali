.class public final Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
.super Ljava/lang/Object;
.source "MoreKeySpec.java"


# instance fields
.field public final mCode:I

.field public final mIconId:I

.field public final mLabel:Ljava/lang/String;

.field public final mOutputText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/Locale;Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;)V
    .locals 2
    .parameter "moreKeySpec"
    .parameter "needsToUpperCase"
    .parameter "locale"
    .parameter "codesSet"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->toUpperCaseOfStringForLocale(Ljava/lang/String;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mLabel:Ljava/lang/String;

    .line 36
    invoke-static {p1, p4}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getCode(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;)I

    move-result v1

    invoke-static {v1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->toUpperCaseOfCodeForLocale(IZLjava/util/Locale;)I

    move-result v0

    .line 38
    .local v0, code:I
    const/16 v1, -0xc

    if-ne v0, v1, :cond_0

    .line 41
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mCode:I

    .line 42
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mOutputText:Ljava/lang/String;

    .line 48
    :goto_0
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getIconId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mIconId:I

    .line 49
    return-void

    .line 44
    :cond_0
    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mCode:I

    .line 45
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getOutputText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->toUpperCaseOfStringForLocale(Ljava/lang/String;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mOutputText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p0, p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    instance-of v3, p1, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 65
    check-cast v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    .line 66
    .local v0, other:Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mCode:I

    iget v4, v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mCode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mIconId:I

    iget v4, v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mIconId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mOutputText:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mOutputText:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #other:Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
    :cond_3
    move v1, v2

    .line 71
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, hashCode:I
    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mCode:I

    add-int/lit8 v0, v1, 0x1f

    .line 55
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mIconId:I

    add-int v0, v1, v3

    .line 56
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 57
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mOutputText:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 58
    return v0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mOutputText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mIconId:I

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mLabel:Ljava/lang/String;

    .line 78
    .local v0, label:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mCode:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mOutputText:Ljava/lang/String;

    .line 80
    .local v1, output:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mCode:I

    if-ne v2, v3, :cond_2

    .line 83
    .end local v1           #output:Ljava/lang/String;
    :goto_2
    return-object v1

    .line 76
    .end local v0           #label:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!icon/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mIconId:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIconName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    .restart local v0       #label:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mCode:I

    invoke-static {v2}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 83
    .restart local v1       #output:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
