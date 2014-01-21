.class Ljp/co/omronsoft/android/inputmethodservice/EmojiExtractEditText;
.super Landroid/inputmethodservice/ExtractEditText;
.source "EmojiExtractEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .parameter "spannable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 122
    if-ne p1, p2, :cond_1

    .line 132
    :cond_0
    return-void

    .line 126
    :cond_1
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, spans:[Ljava/lang/Object;
    array-length v0, v1

    .line 128
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 129
    add-int/lit8 v0, v0, -0x1

    .line 130
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setExtractedTextTextView(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 71
    invoke-virtual {p0}, Ljp/co/omronsoft/android/inputmethodservice/EmojiExtractEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 72
    .local v1, content:Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 73
    if-nez v1, :cond_3

    .line 74
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Ljp/co/omronsoft/android/inputmethodservice/EmojiExtractEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljp/co/omronsoft/android/inputmethodservice/EmojiExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 94
    .local v3, sp:Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 95
    .local v0, N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 96
    .local v4, start:I
    if-gez v4, :cond_7

    const/4 v4, 0x0

    .line 98
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 99
    .local v2, end:I
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 101
    :cond_2
    :goto_2
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 104
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    .line 105
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 109
    :goto_3
    return-void

    .line 75
    .end local v0           #N:I
    .end local v2           #end:I
    .end local v3           #sp:Landroid/text/Spannable;
    .end local v4           #start:I
    :cond_3
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_4

    .line 76
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Ljp/co/omronsoft/android/inputmethodservice/EmojiExtractEditText;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 77
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 79
    :cond_4
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 80
    .restart local v0       #N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 81
    .restart local v4       #start:I
    if-le v4, v0, :cond_5

    move v4, v0

    .line 82
    :cond_5
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 83
    .restart local v2       #end:I
    if-le v2, v0, :cond_6

    move v2, v0

    .line 84
    :cond_6
    invoke-static {v1, v4, v2}, Ljp/co/omronsoft/android/inputmethodservice/EmojiExtractEditText;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 85
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 97
    .end local v2           #end:I
    .restart local v3       #sp:Landroid/text/Spannable;
    :cond_7
    if-le v4, v0, :cond_1

    move v4, v0

    goto :goto_1

    .line 100
    .restart local v2       #end:I
    :cond_8
    if-le v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    .line 107
    :cond_9
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method


# virtual methods
.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Ljp/co/omronsoft/android/inputmethodservice/EmojiExtractEditText;->startInternalChanges()V

    .line 58
    invoke-direct {p0, p1}, Ljp/co/omronsoft/android/inputmethodservice/EmojiExtractEditText;->setExtractedTextTextView(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Ljp/co/omronsoft/android/inputmethodservice/EmojiExtractEditText;->finishInternalChanges()V

    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljp/co/omronsoft/android/inputmethodservice/EmojiExtractEditText;->finishInternalChanges()V

    throw v0
.end method
