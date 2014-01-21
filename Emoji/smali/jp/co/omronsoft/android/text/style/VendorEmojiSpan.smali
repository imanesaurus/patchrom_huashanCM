.class public Ljp/co/omronsoft/android/text/style/VendorEmojiSpan;
.super Landroid/text/style/ReplacementSpan;
.source "VendorEmojiSpan.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VendorEmojiSpan"


# instance fields
.field private mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/android/text/style/VendorEmojiSpan;->mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

    .line 45
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 9
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 90
    iget-object v7, p0, Ljp/co/omronsoft/android/text/style/VendorEmojiSpan;->mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

    .line 91
    .local v7, drawable:Ljp/co/omronsoft/android/text/EmojiDrawable;
    if-eqz v7, :cond_0

    move-object v1, p1

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p9

    .line 92
    invoke-static/range {v1 .. v6}, Ljp/co/omronsoft/android/text/style/EmojiSpanUtil;->drawTextState(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {v7, p1}, Ljp/co/omronsoft/android/text/EmojiDrawable;->setCanvas(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, textString:Ljava/lang/String;
    invoke-virtual {v8, p3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {v7, v1}, Ljp/co/omronsoft/android/text/EmojiDrawable;->setEmoji(I)V

    .line 97
    move/from16 v0, p7

    int-to-float v1, v0

    move-object/from16 v0, p9

    invoke-virtual {v7, p5, v1, v0}, Ljp/co/omronsoft/android/text/EmojiDrawable;->drawEmoji(FFLandroid/graphics/Paint;)V

    .line 101
    .end local v8           #textString:Ljava/lang/String;
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v1, "VendorEmojiSpan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw parameter is fail mEmojiDrawable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljp/co/omronsoft/android/text/style/VendorEmojiSpan;->mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public setEmojiDrawable(Ljp/co/omronsoft/android/text/EmojiDrawable;)V
    .locals 0
    .parameter "emoji"

    .prologue
    .line 52
    iput-object p1, p0, Ljp/co/omronsoft/android/text/style/VendorEmojiSpan;->mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

    .line 53
    return-void
.end method
