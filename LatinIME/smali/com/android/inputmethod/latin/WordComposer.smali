.class public final Lcom/android/inputmethod/latin/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# instance fields
.field private mAutoCorrection:Ljava/lang/CharSequence;

.field private mCapitalizedMode:I

.field private mCapsCount:I

.field private mCodePointSize:I

.field private mDigitsCount:I

.field private final mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

.field private mIsBatchMode:Z

.field private mIsFirstCharCapitalized:Z

.field private mIsResumed:Z

.field private mPrimaryKeyCodes:[I

.field private mTrailingSingleQuotesCount:I

.field private final mTypedWord:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x30

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/inputmethod/latin/InputPointers;

    invoke-direct {v0, v2}, Lcom/android/inputmethod/latin/InputPointers;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    .line 58
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPrimaryKeyCodes:[I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 61
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    .line 62
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsResumed:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsBatchMode:Z

    .line 64
    invoke-direct {p0}, Lcom/android/inputmethod/latin/WordComposer;->refreshSize()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/inputmethod/latin/InputPointers;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/InputPointers;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    .line 68
    iget-object v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mPrimaryKeyCodes:[I

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mPrimaryKeyCodes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPrimaryKeyCodes:[I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/InputPointers;->copy(Lcom/android/inputmethod/latin/InputPointers;)V

    .line 71
    iget v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 72
    iget v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mDigitsCount:I

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mDigitsCount:I

    .line 73
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 74
    iget v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mCapitalizedMode:I

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapitalizedMode:I

    .line 75
    iget v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    .line 76
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mIsResumed:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsResumed:Z

    .line 77
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mIsBatchMode:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsBatchMode:Z

    .line 78
    invoke-direct {p0}, Lcom/android/inputmethod/latin/WordComposer;->refreshSize()V

    .line 79
    return-void
.end method

.method private addKeyInfo(ILcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 5
    .parameter "codePoint"
    .parameter "keyboard"

    .prologue
    .line 182
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/inputmethod/keyboard/Keyboard;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    .line 183
    iget v3, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 184
    .local v1, x:I
    iget v3, v0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 189
    .end local v0           #key:Lcom/android/inputmethod/keyboard/Key;
    .local v2, y:I
    :goto_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/inputmethod/latin/WordComposer;->add(III)V

    .line 190
    return-void

    .line 186
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    const/4 v1, -0x1

    .line 187
    .restart local v1       #x:I
    const/4 v2, -0x1

    .restart local v2       #y:I
    goto :goto_0
.end method

.method private static isFirstCharCapitalized(IIZ)Z
    .locals 1
    .parameter "index"
    .parameter "codePoint"
    .parameter "previous"

    .prologue
    .line 125
    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final refreshSize()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->codePointCount(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodePointSize:I

    .line 98
    return-void
.end method


# virtual methods
.method public add(III)V
    .locals 6
    .parameter "primaryCode"
    .parameter "keyX"
    .parameter "keyY"

    .prologue
    const/4 v4, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    .line 134
    .local v1, newIndex:I
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p0}, Lcom/android/inputmethod/latin/WordComposer;->refreshSize()V

    .line 136
    const/16 v0, 0x30

    if-ge v1, v0, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mPrimaryKeyCodes:[I

    const/16 v0, 0x20

    if-lt p1, v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    :goto_0
    aput v0, v2, v1

    .line 142
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsBatchMode:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/latin/InputPointers;->addPointer(IIIII)V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    invoke-static {v1, p1, v0}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized(IIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 149
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 150
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mDigitsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mDigitsCount:I

    .line 151
    :cond_2
    const/16 v0, 0x27

    if-ne v0, p1, :cond_4

    .line 152
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    .line 156
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 157
    return-void

    :cond_3
    move v0, p1

    .line 137
    goto :goto_0

    .line 154
    :cond_4
    iput v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    goto :goto_1
.end method

.method public commitWord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/LastComposedWord;
    .locals 8
    .parameter "type"
    .parameter "committedWord"
    .parameter "separatorString"
    .parameter "prevWord"

    .prologue
    const/4 v7, 0x0

    .line 348
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mPrimaryKeyCodes:[I

    .line 349
    .local v1, primaryKeyCodes:[I
    const/16 v2, 0x30

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mPrimaryKeyCodes:[I

    .line 350
    new-instance v0, Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/LastComposedWord;-><init>([ILcom/android/inputmethod/latin/InputPointers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 353
    .local v0, lastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;
    iget-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/InputPointers;->reset()V

    .line 354
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LastComposedWord;->deactivate()V

    .line 358
    :cond_0
    iput v7, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 359
    iput v7, p0, Lcom/android/inputmethod/latin/WordComposer;->mDigitsCount:I

    .line 360
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsBatchMode:Z

    .line 361
    iget-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 362
    iput v7, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    .line 363
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 364
    invoke-direct {p0}, Lcom/android/inputmethod/latin/WordComposer;->refreshSize()V

    .line 365
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 366
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsResumed:Z

    .line 367
    return-object v0
.end method

.method public deleteLast()V
    .locals 6

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v2

    .line 211
    .local v2, size:I
    if-lez v2, :cond_3

    .line 213
    iget-object v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 214
    .local v3, stringBuilderLength:I
    if-ge v3, v2, :cond_0

    .line 215
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "In WordComposer: mCodes and mTypedWords have non-matching lengths"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v1

    .line 219
    .local v1, lastChar:I
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 220
    iget-object v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 224
    :goto_0
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 225
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mDigitsCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mDigitsCount:I

    .line 226
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/latin/WordComposer;->refreshSize()V

    .line 229
    .end local v1           #lastChar:I
    .end local v3           #stringBuilderLength:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 230
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 232
    :cond_4
    iget v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    if-lez v4, :cond_7

    .line 233
    iget v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    .line 242
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 243
    return-void

    .line 222
    .restart local v1       #lastChar:I
    .restart local v3       #stringBuilderLength:I
    :cond_6
    iget-object v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 235
    .end local v1           #lastChar:I
    .end local v3           #stringBuilderLength:I
    :cond_7
    iget-object v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 236
    .local v0, i:I
    :goto_1
    if-lez v0, :cond_5

    .line 237
    iget-object v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v0

    .line 238
    const/16 v4, 0x27

    iget-object v5, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 239
    iget v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    goto :goto_1
.end method

.method public getAutoCorrectionOrNull()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCodeAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 114
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    .line 115
    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPrimaryKeyCodes:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getInputPointers()Lcom/android/inputmethod/latin/InputPointers;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    return-object v0
.end method

.method public getTypedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDigits()Z
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mDigitsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllUpperCase()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 271
    iget v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapitalizedMode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapitalizedMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 274
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public isBatchMode()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsBatchMode:Z

    return v0
.end method

.method public final isComposingWord()Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstCharCapitalized()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 287
    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsResumed:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 87
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 88
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mDigitsCount:I

    .line 89
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 90
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    .line 91
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsResumed:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsBatchMode:Z

    .line 93
    invoke-direct {p0}, Lcom/android/inputmethod/latin/WordComposer;->refreshSize()V

    .line 94
    return-void
.end method

.method public setAutoCorrection(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "correction"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 326
    return-void
.end method

.method public setBatchInputPointers(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 1
    .parameter "batchPointers"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/InputPointers;->set(Lcom/android/inputmethod/latin/InputPointers;)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsBatchMode:Z

    .line 162
    return-void
.end method

.method public setBatchInputWord(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "word"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 165
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 166
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsBatchMode:Z

    .line 167
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 168
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 169
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 172
    .local v0, codePoint:I
    invoke-virtual {p0, v0, v3, v3}, Lcom/android/inputmethod/latin/WordComposer;->add(III)V

    .line 168
    invoke-static {p1, v1, v4}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v1

    goto :goto_0

    .line 174
    .end local v0           #codePoint:I
    :cond_0
    return-void
.end method

.method public setCapitalizedModeAtStartComposingTime(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 309
    iput p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapitalizedMode:I

    .line 310
    return-void
.end method

.method public setComposingWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 4
    .parameter "word"
    .parameter "keyboard"

    .prologue
    const/4 v3, 0x1

    .line 197
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 198
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 199
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 200
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 201
    .local v0, codePoint:I
    invoke-direct {p0, v0, p2}, Lcom/android/inputmethod/latin/WordComposer;->addKeyInfo(ILcom/android/inputmethod/keyboard/Keyboard;)V

    .line 199
    invoke-static {p1, v1, v3}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v1

    goto :goto_0

    .line 203
    .end local v0           #codePoint:I
    :cond_0
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsResumed:Z

    .line 204
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodePointSize:I

    return v0
.end method

.method public trailingSingleQuotesCount()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTrailingSingleQuotesCount:I

    return v0
.end method

.method public wasAutoCapitalized()Z
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapitalizedMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapitalizedMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wasShiftedNoLock()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 279
    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapitalizedMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapitalizedMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
