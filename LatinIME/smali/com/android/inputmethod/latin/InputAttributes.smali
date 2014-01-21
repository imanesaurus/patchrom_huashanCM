.class public final Lcom/android/inputmethod/latin/InputAttributes;
.super Ljava/lang/Object;
.source "InputAttributes.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final mApplicationSpecifiedCompletionOn:Z

.field private final mInputType:I

.field public final mInputTypeNoAutoCorrect:Z

.field public final mIsSettingsSuggestionStripOn:Z

.field public final mShouldInsertSpacesAutomatically:Z


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/android/inputmethod/latin/InputAttributes;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    .line 36
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 37
    :goto_0
    and-int/lit8 v2, v0, 0xf

    .line 38
    iput v0, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputType:I

    .line 39
    if-eq v2, v3, :cond_4

    .line 44
    if-nez p1, :cond_2

    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "No editor info for this field. Bug?"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputTypeNoAutoCorrect:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mShouldInsertSpacesAutomatically:Z

    .line 101
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 36
    goto :goto_0

    .line 46
    :cond_2
    if-nez v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "InputType.TYPE_NULL is specified"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 49
    :cond_3
    if-nez v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/inputmethod/latin/InputAttributes;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected input class: inputType=0x%08x imeOptions=0x%08x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    :cond_4
    and-int/lit16 v7, v0, 0xff0

    .line 61
    const/high16 v2, 0x8

    and-int/2addr v2, v0

    if-eqz v2, :cond_8

    move v6, v3

    .line 63
    :goto_3
    const/high16 v2, 0x2

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    move v5, v3

    .line 65
    :goto_4
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_a

    move v4, v3

    .line 67
    :goto_5
    const/high16 v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_b

    move v2, v3

    .line 72
    :goto_6
    invoke-static {v0}, Lcom/android/inputmethod/latin/InputTypeUtils;->isPasswordInputType(I)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v0}, Lcom/android/inputmethod/latin/InputTypeUtils;->isVisiblePasswordInputType(I)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v7}, Lcom/android/inputmethod/latin/InputTypeUtils;->isEmailVariation(I)Z

    move-result v8

    if-nez v8, :cond_5

    const/16 v8, 0x10

    if-eq v8, v7, :cond_5

    const/16 v8, 0xb0

    if-eq v8, v7, :cond_5

    if-nez v6, :cond_5

    if-eqz v2, :cond_c

    .line 79
    :cond_5
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    .line 84
    :goto_7
    invoke-static {v0}, Lcom/android/inputmethod/latin/InputTypeUtils;->isAutoSpaceFriendlyType(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/InputAttributes;->mShouldInsertSpacesAutomatically:Z

    .line 90
    const/16 v0, 0xa0

    if-ne v7, v0, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    if-nez v6, :cond_7

    if-nez v4, :cond_d

    if-nez v5, :cond_d

    .line 94
    :cond_7
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputTypeNoAutoCorrect:Z

    .line 99
    :goto_8
    if-eqz v2, :cond_e

    if-eqz p2, :cond_e

    :goto_9
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    goto/16 :goto_2

    :cond_8
    move v6, v1

    .line 61
    goto :goto_3

    :cond_9
    move v5, v1

    .line 63
    goto :goto_4

    :cond_a
    move v4, v1

    .line 65
    goto :goto_5

    :cond_b
    move v2, v1

    .line 67
    goto :goto_6

    .line 81
    :cond_c
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    goto :goto_7

    .line 96
    :cond_d
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputTypeNoAutoCorrect:Z

    goto :goto_8

    :cond_e
    move v3, v1

    .line 99
    goto :goto_9
.end method

.method public static inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3
    .parameter "packageName"
    .parameter "key"
    .parameter "editorInfo"

    .prologue
    .line 179
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 182
    :goto_0
    return v1

    .line 180
    :cond_0
    if-eqz p0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, findingKey:Ljava/lang/String;
    :goto_1
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/StringUtils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .end local v0           #findingKey:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 180
    goto :goto_1
.end method


# virtual methods
.method public isSameInputType(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .parameter "editorInfo"

    .prologue
    .line 104
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n mInputTypeNoAutoCorrect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mInputTypeNoAutoCorrect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n mIsSettingsSuggestionStripOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n mApplicationSpecifiedCompletionOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
