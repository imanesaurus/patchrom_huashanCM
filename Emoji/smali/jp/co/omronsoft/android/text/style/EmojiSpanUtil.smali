.class public Ljp/co/omronsoft/android/text/style/EmojiSpanUtil;
.super Ljava/lang/Object;
.source "EmojiSpanUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EmojiSpanUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawTextState(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 44
    instance-of v0, p5, Landroid/text/TextPaint;

    if-eqz v0, :cond_1

    move-object v5, p5

    .line 45
    check-cast v5, Landroid/text/TextPaint;

    .line 46
    .local v5, tp:Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    add-float v3, p1, v0

    .line 47
    .local v3, right:F
    iget v0, v5, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v5}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    .line 50
    .local v6, c:I
    invoke-virtual {v5}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 52
    .local v7, s:Landroid/graphics/Paint$Style;
    iget v0, v5, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 53
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    int-to-float v2, p2

    int-to-float v4, p4

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    invoke-virtual {p5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    .end local v6           #c:I
    .end local v7           #s:Landroid/graphics/Paint$Style;
    :cond_0
    invoke-virtual {v5}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 65
    int-to-float v0, p2

    int-to-float v1, p4

    invoke-virtual {p0, p1, v0, v3, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 69
    const-string v0, "\u3000\u3000"

    iget v1, v5, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    invoke-virtual {p0, v0, p1, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 79
    .end local v3           #right:F
    .end local v5           #tp:Landroid/text/TextPaint;
    :cond_1
    return-void
.end method
