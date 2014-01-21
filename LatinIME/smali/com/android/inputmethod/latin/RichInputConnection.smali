.class public final Lcom/android/inputmethod/latin/RichInputConnection;
.super Ljava/lang/Object;
.source "RichInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/RichInputConnection$Range;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final spaceRegex:Ljava/util/regex/Pattern;


# instance fields
.field private mCharAfterTheCursor:Ljava/lang/CharSequence;

.field private mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

.field private mComposingText:Ljava/lang/StringBuilder;

.field private mCurrentCursorPosition:I

.field mIC:Landroid/view/inputmethod/InputConnection;

.field mNestLevel:I

.field private final mParent:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/RichInputConnection;->spaceRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCharAfterTheCursor:Ljava/lang/CharSequence;

    .line 83
    iput-object p1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    .line 86
    return-void
.end method

.method private getCursorPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 516
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 517
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-nez v2, :cond_1

    .line 522
    :cond_0
    :goto_0
    return v1

    .line 518
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 519
    .local v0, extracted:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 522
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getNthPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "prev"
    .parameter "sentenceSeperators"
    .parameter "n"

    .prologue
    const/4 v2, 0x0

    .line 490
    if-nez p0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-object v2

    .line 491
    :cond_1
    sget-object v3, Lcom/android/inputmethod/latin/RichInputConnection;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, w:[Ljava/lang/String;
    array-length v3, v1

    if-lt v3, p2, :cond_0

    array-length v3, v1

    sub-int/2addr v3, p2

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 497
    array-length v3, v1

    sub-int/2addr v3, p2

    aget-object v3, v1, v3

    array-length v4, v1

    sub-int/2addr v4, p2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 498
    .local v0, lastChar:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 500
    array-length v2, v1

    sub-int/2addr v2, p2

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method private static isSeparator(ILjava/lang/String;)Z
    .locals 2
    .parameter "code"
    .parameter "sep"

    .prologue
    .line 469
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 3

    .prologue
    .line 120
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    sget-object v0, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nest level too deep : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 4
    .parameter "completionInfo"

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 408
    .local v0, text:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 409
    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 410
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 411
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 418
    :cond_0
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .parameter "correctionInfo"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 402
    :cond_0
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "text"
    .parameter "i"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 185
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 186
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 187
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 193
    :cond_0
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 4
    .parameter "i"
    .parameter "j"

    .prologue
    const/4 v3, 0x0

    .line 260
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v1, v2, p1

    .line 261
    .local v1, remainingChars:I
    if-ltz v1, :cond_1

    .line 262
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 270
    :goto_0
    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-le v2, p1, :cond_2

    .line 271
    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 275
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 282
    :cond_0
    return-void

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 266
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 268
    .local v0, len:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 273
    .end local v0           #len:I
    :cond_2
    iput v3, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    goto :goto_1
.end method

.method public endBatchEdit()V
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    if-gtz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    const-string v1, "Batch edit not in progress!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 142
    :cond_1
    return-void
.end method

.method public finishComposingText()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 171
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 172
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 173
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 179
    :cond_0
    return-void
.end method

.method public getCodePointBeforeCursor()I
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCursorCapsMode(ILjava/util/Locale;Z)I
    .locals 3
    .parameter "inputType"
    .parameter "locale"
    .parameter "hasSpaceBefore"

    .prologue
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 213
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-nez v1, :cond_0

    .line 235
    :goto_0
    return v0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 215
    if-eqz p3, :cond_1

    .line 218
    and-int/lit16 v0, p1, 0x3000

    goto :goto_0

    .line 221
    :cond_1
    and-int/lit16 v0, p1, 0x1000

    goto :goto_0

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-virtual {p0, v2, v0}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-static {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/StringUtils;->getCapsMode(Ljava/lang/CharSequence;ILjava/util/Locale;Z)I

    move-result v0

    goto :goto_0
.end method

.method public getNthPreviousWord(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "sentenceSeperators"
    .parameter "n"

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 422
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 439
    :goto_0
    return-object v1

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    const/16 v2, 0x61

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 439
    .local v0, prev:Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/RichInputConnection;->getNthPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "i"
    .parameter "j"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 254
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "i"
    .parameter "j"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 248
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWordAtCursor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "separators"

    .prologue
    .line 511
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->getWordRangeAtCursor(Ljava/lang/String;I)Lcom/android/inputmethod/latin/RichInputConnection$Range;

    move-result-object v0

    .line 512
    .local v0, r:Lcom/android/inputmethod/latin/RichInputConnection$Range;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/inputmethod/latin/RichInputConnection$Range;->mWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWordBeforeCursorIfAtEndOfWord(Lcom/android/inputmethod/latin/SettingsValues;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "settings"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 625
    invoke-virtual {p0, v8, v7}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 626
    .local v2, textAfterCursor:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    .line 657
    :cond_0
    :goto_0
    return-object v3

    .line 631
    :cond_1
    iget-object v5, p1, Lcom/android/inputmethod/latin/SettingsValues;->mWordSeparators:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/RichInputConnection;->getWordAtCursor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, word:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x27

    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_2

    .line 635
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v3, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 637
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 639
    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 642
    .local v1, lastCodePoint:I
    invoke-static {v1}, Ljava/lang/Character;->isDefined(I)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v3, v4

    goto :goto_0

    .line 646
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v3, v4

    goto :goto_0

    .line 647
    :cond_5
    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 648
    .local v0, firstChar:C
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v8, :cond_6

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_6

    move-object v3, v4

    goto :goto_0

    .line 652
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/latin/SettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    .line 654
    goto :goto_0
.end method

.method public getWordRangeAtCursor(Ljava/lang/String;I)Lcom/android/inputmethod/latin/RichInputConnection$Range;
    .locals 13
    .parameter "sep"
    .parameter "additionalPrecedingWordsCount"

    .prologue
    const/16 v11, 0x3e8

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 534
    iget-object v10, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v10}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    iput-object v10, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 535
    iget-object v10, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v10, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v8, v9

    .line 587
    :goto_0
    return-object v8

    .line 538
    :cond_1
    iget-object v10, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v10, v11, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 539
    .local v1, before:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v10, v11, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 540
    .local v0, after:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move-object v8, v9

    .line 541
    goto :goto_0

    .line 546
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 547
    .local v6, start:I
    const/4 v5, 0x1

    .line 549
    .local v5, isStoppingAtWhitespace:Z
    :cond_4
    :goto_1
    if-lez v6, :cond_5

    .line 550
    invoke-static {v1, v6}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 551
    .local v2, codePoint:I
    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/RichInputConnection;->isSeparator(ILjava/lang/String;)Z

    move-result v10

    if-ne v5, v10, :cond_8

    .line 562
    .end local v2           #codePoint:I
    :cond_5
    if-eqz v5, :cond_9

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_9

    .line 569
    const/4 v4, -0x1

    .line 570
    .local v4, end:I
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 571
    invoke-static {v0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 572
    .restart local v2       #codePoint:I
    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/RichInputConnection;->isSeparator(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 580
    .end local v2           #codePoint:I
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/latin/RichInputConnection;->getCursorPosition()I

    move-result v3

    .line 581
    .local v3, cursor:I
    if-ltz v6, :cond_c

    add-int v10, v3, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/2addr v11, v12

    if-gt v10, v11, :cond_c

    .line 582
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 584
    .local v7, word:Ljava/lang/String;
    new-instance v8, Lcom/android/inputmethod/latin/RichInputConnection$Range;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-direct {v8, v9, v4, v7}, Lcom/android/inputmethod/latin/RichInputConnection$Range;-><init>(IILjava/lang/String;)V

    goto :goto_0

    .line 554
    .end local v3           #cursor:I
    .end local v4           #end:I
    .end local v7           #word:Ljava/lang/String;
    .restart local v2       #codePoint:I
    :cond_8
    add-int/lit8 v6, v6, -0x1

    .line 555
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 556
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 565
    .end local v2           #codePoint:I
    :cond_9
    if-nez v5, :cond_a

    const/4 v5, 0x1

    :goto_3
    goto :goto_1

    :cond_a
    move v5, v8

    goto :goto_3

    .line 575
    .restart local v2       #codePoint:I
    .restart local v4       #end:I
    :cond_b
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 576
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #codePoint:I
    .restart local v3       #cursor:I
    :cond_c
    move-object v8, v9

    .line 587
    goto/16 :goto_0
.end method

.method public isBelatedExpectedUpdate(II)Z
    .locals 4
    .parameter "oldSelStart"
    .parameter "newSelStart"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 719
    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-ne p2, v2, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v0

    .line 722
    :cond_1
    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-ne p1, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 726
    :cond_2
    sub-int v2, p2, p1

    iget v3, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    sub-int/2addr v3, p2

    mul-int/2addr v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isCursorTouchingWord(Lcom/android/inputmethod/latin/SettingsValues;)Z
    .locals 5
    .parameter "settingsValues"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 591
    invoke-virtual {p0, v2, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 592
    .local v1, before:Ljava/lang/CharSequence;
    invoke-virtual {p0, v2, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 593
    .local v0, after:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/inputmethod/latin/SettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v2

    .line 597
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/inputmethod/latin/SettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    .line 601
    goto :goto_0
.end method

.method public performEditorAction(I)V
    .locals 1
    .parameter "actionId"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 286
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 292
    :cond_0
    return-void
.end method

.method public removeTrailingSpace()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 606
    invoke-virtual {p0, v4, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 607
    .local v0, lastOne:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 609
    invoke-virtual {p0, v4, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 611
    :cond_0
    return-void
.end method

.method public resetCachesUponCursorMove(I)V
    .locals 3
    .parameter "newCursorPosition"

    .prologue
    const/4 v2, 0x0

    .line 145
    iput p1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 146
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 147
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 148
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    .local v0, textBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 150
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCharAfterTheCursor:Ljava/lang/CharSequence;

    .line 151
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 157
    :cond_1
    return-void
.end method

.method public revertDoubleSpace()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 664
    invoke-virtual {p0, v4, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 665
    .local v0, textBeforeCursor:Ljava/lang/CharSequence;
    const-string v3, ". "

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 669
    sget-object v2, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    const-string v3, "Tried to revert double-space combo but we didn\'t find \". \" just before the cursor."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_0
    return v1

    .line 673
    :cond_0
    invoke-virtual {p0, v4, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 674
    const-string v1, "  "

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    move v1, v2

    .line 675
    goto :goto_0
.end method

.method public revertSwapPunctuation()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 682
    invoke-virtual {p0, v5, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 685
    .local v0, textBeforeCursor:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 690
    :cond_0
    sget-object v1, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    const-string v3, "Tried to revert a swap of punctuation but we didn\'t find a space just before the cursor."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 696
    :goto_0
    return v1

    .line 694
    :cond_1
    invoke-virtual {p0, v5, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public sameAsTextBeforeCursor(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "text"

    .prologue
    .line 614
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 615
    .local v0, beforeText:Ljava/lang/CharSequence;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 328
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    aput v2, v1, v3

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([III)V

    .line 329
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 334
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 340
    :cond_1
    return-void

    .line 306
    :sswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    goto :goto_0

    .line 310
    :sswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 319
    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    goto :goto_0

    .line 317
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 322
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public setComposingRegion(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 345
    iput p2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 346
    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x64

    invoke-virtual {p0, v2, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 348
    .local v1, textBeforeCursor:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v3, p2, p1

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 350
    .local v0, indexOfStartOfComposingText:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 353
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-interface {v1, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 358
    :cond_0
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "text"
    .parameter "i"

    .prologue
    .line 363
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 364
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 365
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 374
    :cond_0
    return-void
.end method

.method public setSelection(II)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 385
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 386
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 387
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 388
    return-void
.end method
