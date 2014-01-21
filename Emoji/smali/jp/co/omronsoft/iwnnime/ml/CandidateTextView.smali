.class public Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;
.super Landroid/widget/TextView;
.source "CandidateTextView.java"


# static fields
.field private static final CHANGE_FONTSIZE_WIDTH:I = 0x78

.field private static final CUSTOM_FONTSIZE:[F

.field private static final WIDTH_SIZE:[I

.field private static sTmpFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private static sTmpPaint:Landroid/graphics/Paint;

.field private static sTmpTextPaint:Landroid/text/TextPaint;


# instance fields
.field private mCandidateDialog:Landroid/app/Dialog;

.field private mCandidateMinimumHeight:I

.field private mCandidateMinimumWidth:I

.field private mChangeFontSize:I

.field private mMaxWidth:I

.field private mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->WIDTH_SIZE:[I

    .line 38
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->CUSTOM_FONTSIZE:[F

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->sTmpPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->sTmpTextPaint:Landroid/text/TextPaint;

    .line 64
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->sTmpFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-void

    .line 36
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_1
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x88t 0x41t
        0x0t 0x0t 0x70t 0x41t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateDialog:Landroid/app/Dialog;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .parameter "context"
    .parameter "candidateMinimumHeight"
    .parameter "candidateMinimumWidth"
    .parameter "maxWidth"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v2, 0x0

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateDialog:Landroid/app/Dialog;

    .line 83
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setSoundEffectsEnabled(Z)V

    .line 84
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v1

    .line 85
    .local v1, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    const v2, 0x7f0a0003

    invoke-virtual {v1, p1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setTextColor(I)V

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackgroundOneLine()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    :cond_0
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :goto_0
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setGravity(I)V

    .line 97
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setSingleLine()V

    .line 98
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setMinHeight(I)V

    .line 102
    invoke-virtual {p0, p3}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setMinimumWidth(I)V

    .line 103
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateMinimumWidth:I

    .line 104
    iput p4, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mMaxWidth:I

    .line 105
    add-int/lit8 v2, p4, -0x78

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mChangeFontSize:I

    .line 106
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateMinimumHeight:I

    .line 107
    return-void

    .line 94
    :cond_1
    const v2, 0x7f020017

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static getTextWidths(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I
    .locals 17
    .parameter "text"
    .parameter "paint"

    .prologue
    .line 244
    const/4 v14, 0x0

    .line 246
    .local v14, result:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v15, v14

    .line 281
    .end local v14           #result:I
    .local v15, result:I
    :goto_0
    return v15

    .line 250
    .end local v15           #result:I
    .restart local v14       #result:I
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 251
    .local v12, length:I
    new-array v6, v12, [F

    .line 253
    .local v6, charWidths:[F
    move-object/from16 v0, p0

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_4

    .line 254
    sget-object v16, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->sTmpTextPaint:Landroid/text/TextPaint;

    monitor-enter v16

    .line 255
    :try_start_0
    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->sTmpTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sget-object v7, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->sTmpFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    move-result v14

    .line 257
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :goto_1
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->sTmpPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 263
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->sTmpPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 264
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v12, :cond_5

    .line 265
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 266
    .local v10, high:C
    invoke-static {v10}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    add-int/lit8 v1, v11, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 268
    .local v13, low:C
    invoke-static {v13}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    invoke-static {v10, v13}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v9

    .line 270
    .local v9, codePoint:I
    invoke-static {v9}, Ljp/co/omronsoft/android/text/EmojiDrawable;->isEmoji(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->sTmpPaint:Landroid/graphics/Paint;

    invoke-static {v9, v1}, Ljp/co/omronsoft/android/text/EmojiDrawable;->getEmojiWidth(ILandroid/graphics/Paint;)F

    move-result v1

    aput v1, v6, v11

    .line 273
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 264
    .end local v9           #codePoint:I
    .end local v13           #low:C
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 257
    .end local v10           #high:C
    .end local v11           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 259
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v14

    goto :goto_1

    .line 278
    .restart local v11       #i:I
    :cond_5
    const/4 v8, 0x0

    .local v8, cnt:I
    :goto_3
    array-length v1, v6

    if-ge v8, v1, :cond_6

    .line 279
    int-to-float v1, v14

    aget v2, v6, v8

    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 278
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    move v15, v14

    .line 281
    .end local v14           #result:I
    .restart local v15       #result:I
    goto/16 :goto_0
.end method


# virtual methods
.method public displayCandidateDialog(Landroid/app/Dialog;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 190
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 192
    const/4 v2, 0x0

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateDialog:Landroid/app/Dialog;

    .line 194
    :cond_0
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateDialog:Landroid/app/Dialog;

    .line 195
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 196
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 197
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 198
    const/16 v2, 0x3eb

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 199
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 200
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 201
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 202
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "me"

    .prologue
    .line 218
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->isPopupKeyboard()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->closePopupKeyboard()V

    .line 221
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 207
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 210
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "d"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 178
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0b002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b002e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0b002f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setPadding(IIII)V

    .line 182
    return-void
.end method

.method public setCandidateTextView(Ljp/co/omronsoft/iwnnime/ml/WnnWord;ILandroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;
    .locals 3
    .parameter "word"
    .parameter "wordCount"
    .parameter "candidateOnClick"
    .parameter "candidateOnLongClick"

    .prologue
    const/4 v2, 0x0

    .line 120
    sget-object v1, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->CUSTOM_FONTSIZE:[F

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setTextSize(F)V

    .line 121
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getSpannedCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 122
    .local v0, candidate:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setId(I)V

    .line 124
    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setVisibility(I)V

    .line 125
    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setPressed(Z)V

    .line 126
    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setWidth(I)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 128
    invoke-virtual {p0, p3}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0, p4}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 130
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setCustomCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    .line 131
    return-object p0
.end method

.method public setCustomCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
    .locals 6
    .parameter "word"

    .prologue
    .line 141
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 142
    .local v1, paint:Landroid/text/TextPaint;
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->getSpannedCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 143
    .local v2, spanCand:Ljava/lang/CharSequence;
    invoke-static {v2, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getTextWidths(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v3

    .line 144
    .local v3, width:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 146
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateMinimumWidth:I

    if-le v3, v4, :cond_3

    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->WIDTH_SIZE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 149
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mChangeFontSize:I

    sget-object v5, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->WIDTH_SIZE:[I

    aget v5, v5, v0

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 150
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->CUSTOM_FONTSIZE:[F

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setTextSize(F)V

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {v2, v1}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getTextWidths(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v3

    .line 155
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 157
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mMaxWidth:I

    if-lt v3, v4, :cond_2

    .line 158
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mMaxWidth:I

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setWidth(I)V

    .line 159
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mMaxWidth:I

    .line 160
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 169
    .end local v0           #i:I
    :goto_1
    return v3

    .line 162
    .restart local v0       #i:I
    :cond_2
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setWidth(I)V

    goto :goto_1

    .line 165
    .end local v0           #i:I
    :cond_3
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateMinimumWidth:I

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->setWidth(I)V

    .line 166
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mCandidateMinimumWidth:I

    goto :goto_1
.end method

.method public setmWnn(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V
    .locals 0
    .parameter "Wnn"

    .prologue
    .line 233
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/CandidateTextView;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    .line 234
    return-void
.end method
