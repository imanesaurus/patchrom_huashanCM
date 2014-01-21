.class public Landroid/text/Styled;
.super Ljava/lang/Object;
.source "Styled.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 29
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 253
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-nez v4, :cond_6

    .line 254
    const/16 v28, 0x0

    .line 256
    .local v28, ret:F
    if-eqz p5, :cond_4

    .line 257
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 260
    .local v5, tmp:Ljava/lang/CharSequence;
    sub-int v7, p3, p2

    .line 262
    .local v7, tmpend:I
    if-nez p0, :cond_0

    if-eqz p13, :cond_1

    .line 263
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v5, v4, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v28

    .line 265
    :cond_1
    if-eqz p0, :cond_2

    .line 266
    const/4 v6, 0x0

    sub-float v8, p6, v28

    move/from16 v0, p8

    int-to-float v9, v0

    move-object/from16 v4, p0

    move-object/from16 v10, p11

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 276
    .end local v5           #tmp:Ljava/lang/CharSequence;
    .end local v7           #tmpend:I
    :cond_2
    :goto_0
    if-eqz p10, :cond_3

    .line 277
    move-object/from16 v0, p11

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 280
    :cond_3
    move/from16 v0, p4

    int-to-float v4, v0

    mul-float v4, v4, v28

    .line 329
    .end local v28           #ret:F
    :goto_1
    return v4

    .line 269
    .restart local v28       #ret:F
    :cond_4
    if-eqz p13, :cond_5

    .line 270
    move-object/from16 v0, p11

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v28

    .line 272
    :cond_5
    if-eqz p0, :cond_2

    .line 273
    move/from16 v0, p8

    int-to-float v13, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p6

    move-object/from16 v14, p11

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 283
    .end local v28           #ret:F
    :cond_6
    move/from16 v27, p6

    .line 284
    .local v27, ox:F
    const/16 v25, 0x0

    .local v25, minAscent:I
    const/16 v24, 0x0

    .local v24, maxDescent:I
    const/16 v26, 0x0

    .local v26, minTop:I
    const/16 v23, 0x0

    .local v23, maxBottom:I
    move-object/from16 v9, p1

    .line 286
    check-cast v9, Landroid/text/Spanned;

    .line 289
    .local v9, sp:Landroid/text/Spanned;
    if-nez p0, :cond_c

    .line 290
    const-class v22, Landroid/text/style/MetricAffectingSpan;

    .line 295
    .local v22, division:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    move/from16 v10, p2

    .local v10, i:I
    :goto_3
    move/from16 v0, p3

    if-ge v10, v0, :cond_e

    .line 296
    move/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v9, v10, v0, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    .line 301
    .local v11, next:I
    if-nez p13, :cond_7

    move/from16 v0, p3

    if-eq v11, v0, :cond_d

    :cond_7
    const/16 v21, 0x1

    :goto_4
    move-object/from16 v8, p0

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v18, p10

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    invoke-static/range {v8 .. v21}, Landroid/text/Styled;->drawUniformRun(Landroid/graphics/Canvas;Landroid/text/Spanned;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v4

    add-float p6, p6, v4

    .line 305
    if-eqz p10, :cond_b

    .line 306
    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v25

    if-ge v4, v0, :cond_8

    .line 307
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v25, v0

    .line 308
    :cond_8
    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v24

    if-le v4, v0, :cond_9

    .line 309
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v24, v0

    .line 311
    :cond_9
    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v26

    if-ge v4, v0, :cond_a

    .line 312
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v26, v0

    .line 313
    :cond_a
    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v23

    if-le v4, v0, :cond_b

    .line 314
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v23, v0

    .line 295
    :cond_b
    move v10, v11

    goto :goto_3

    .line 292
    .end local v10           #i:I
    .end local v11           #next:I
    .end local v22           #division:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c
    const-class v22, Landroid/text/style/CharacterStyle;

    .restart local v22       #division:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_2

    .line 301
    .restart local v10       #i:I
    .restart local v11       #next:I
    :cond_d
    const/16 v21, 0x0

    goto :goto_4

    .line 318
    .end local v11           #next:I
    :cond_e
    if-eqz p10, :cond_f

    .line 319
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_10

    .line 320
    move-object/from16 v0, p11

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 329
    :cond_f
    :goto_5
    sub-float v4, p6, v27

    goto/16 :goto_1

    .line 322
    :cond_10
    move/from16 v0, v25

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 323
    move/from16 v0, v24

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 324
    move/from16 v0, v26

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 325
    move/from16 v0, v23

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_5
.end method

.method public static drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 13
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "direction"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 403
    if-ltz p4, :cond_0

    const/16 p4, 0x1

    .line 410
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v0 .. v12}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v0

    return v0

    .line 403
    :cond_0
    const/16 p4, -0x1

    goto :goto_0
.end method

.method static drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 16
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 345
    const/4 v1, -0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    if-eqz p5, :cond_2

    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_2

    .line 348
    :cond_1
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-static/range {v1 .. v14}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v15

    .line 352
    .local v15, ch:F
    move/from16 v0, p4

    int-to-float v1, v0

    mul-float/2addr v15, v1

    .line 353
    move/from16 v0, p4

    neg-int v5, v0

    add-float v7, p6, v15

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-static/range {v1 .. v14}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    .line 360
    .end local v15           #ch:F
    :goto_0
    return v15

    :cond_2
    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    invoke-static/range {v1 .. v14}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v15

    goto :goto_0
.end method

.method private static drawUniformRun(Landroid/graphics/Canvas;Landroid/text/Spanned;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 24
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 62
    const/4 v15, 0x0

    .line 63
    .local v15, haveWidth:Z
    const/16 v17, 0x0

    .line 64
    .local v17, ret:F
    const-class v5, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/CharacterStyle;

    .line 66
    .local v20, spans:[Landroid/text/style/CharacterStyle;
    const/4 v4, 0x0

    .line 71
    .local v4, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v5, 0x0

    move-object/from16 v0, p11

    iput v5, v0, Landroid/text/TextPaint;->bgColor:I

    .line 72
    const/4 v5, 0x0

    move-object/from16 v0, p11

    iput v5, v0, Landroid/text/TextPaint;->baselineShift:I

    .line 73
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 75
    move-object/from16 v0, v20

    array-length v5, v0

    if-lez v5, :cond_1

    .line 76
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, v20

    array-length v5, v0

    move/from16 v0, v16

    if-ge v0, v5, :cond_1

    .line 77
    aget-object v19, v20, v16

    .line 79
    .local v19, span:Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v19

    instance-of v5, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_0

    move-object/from16 v4, v19

    .line 80
    check-cast v4, Landroid/text/style/ReplacementSpan;

    .line 76
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 83
    :cond_0
    move-object/from16 v0, v19

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 88
    .end local v16           #i:I
    .end local v19           #span:Landroid/text/style/CharacterStyle;
    :cond_1
    if-nez v4, :cond_d

    .line 92
    if-eqz p5, :cond_8

    .line 93
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 94
    .local v21, tmp:Ljava/lang/CharSequence;
    const/16 v23, 0x0

    .line 96
    .local v23, tmpstart:I
    sub-int v22, p3, p2

    .line 103
    .local v22, tmpend:I
    :goto_2
    if-eqz p10, :cond_2

    .line 104
    move-object/from16 v0, p12

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 107
    :cond_2
    if-eqz p0, :cond_c

    .line 108
    move-object/from16 v0, p12

    iget v5, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v5, :cond_4

    .line 109
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->getColor()I

    move-result v14

    .line 110
    .local v14, c:I
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v18

    .line 111
    .local v18, s:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p12

    iget v5, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p12

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 112
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p12

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    if-nez v15, :cond_3

    .line 115
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v17

    .line 116
    const/4 v15, 0x1

    .line 119
    :cond_3
    const/4 v5, -0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_9

    .line 120
    sub-float v5, p6, v17

    move/from16 v0, p7

    int-to-float v6, v0

    move/from16 v0, p9

    int-to-float v8, v0

    move-object/from16 v4, p0

    move/from16 v7, p6

    move-object/from16 v9, p12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    .end local v4           #replacement:Landroid/text/style/ReplacementSpan;
    :goto_3
    move-object/from16 v0, p12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    move-object/from16 v0, p12

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 128
    .end local v14           #c:I
    .end local v18           #s:Landroid/graphics/Paint$Style;
    :cond_4
    const/4 v5, -0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_a

    .line 129
    if-nez v15, :cond_5

    .line 130
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v17

    .line 131
    const/4 v15, 0x1

    .line 134
    :cond_5
    sub-float v8, p6, v17

    move-object/from16 v0, p12

    iget v5, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v5, v5, p8

    int-to-float v9, v5

    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move/from16 v6, v23

    move/from16 v7, v22

    move-object/from16 v10, p12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 166
    .end local v21           #tmp:Ljava/lang/CharSequence;
    .end local v22           #tmpend:I
    .end local v23           #tmpstart:I
    :cond_6
    :goto_4
    const/4 v5, -0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_7

    .line 167
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    .line 169
    .end local v17           #ret:F
    :cond_7
    return v17

    .line 98
    .restart local v4       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v17       #ret:F
    :cond_8
    move-object/from16 v21, p1

    .line 99
    .restart local v21       #tmp:Ljava/lang/CharSequence;
    move/from16 v23, p2

    .line 100
    .restart local v23       #tmpstart:I
    move/from16 v22, p3

    .restart local v22       #tmpend:I
    goto/16 :goto_2

    .line 122
    .restart local v14       #c:I
    .restart local v18       #s:Landroid/graphics/Paint$Style;
    :cond_9
    move/from16 v0, p7

    int-to-float v6, v0

    add-float v7, p6, v17

    move/from16 v0, p9

    int-to-float v8, v0

    move-object/from16 v4, p0

    move/from16 v5, p6

    move-object/from16 v9, p12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 137
    .end local v4           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v14           #c:I
    .end local v18           #s:Landroid/graphics/Paint$Style;
    :cond_a
    if-eqz p13, :cond_b

    .line 138
    if-nez v15, :cond_b

    .line 139
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v17

    .line 140
    const/4 v15, 0x1

    .line 144
    :cond_b
    move-object/from16 v0, p12

    iget v5, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v5, v5, p8

    int-to-float v9, v5

    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move/from16 v6, v23

    move/from16 v7, v22

    move/from16 v8, p6

    move-object/from16 v10, p12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 148
    .restart local v4       #replacement:Landroid/text/style/ReplacementSpan;
    :cond_c
    if-eqz p13, :cond_6

    if-nez v15, :cond_6

    .line 149
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v17

    .line 150
    const/4 v15, 0x1

    goto :goto_4

    .end local v21           #tmp:Ljava/lang/CharSequence;
    .end local v22           #tmpend:I
    .end local v23           #tmpstart:I
    :cond_d
    move-object/from16 v5, p12

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p10

    .line 154
    invoke-virtual/range {v4 .. v9}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v5

    int-to-float v0, v5

    move/from16 v17, v0

    .line 156
    if-eqz p0, :cond_6

    .line 157
    const/4 v5, -0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_e

    .line 158
    sub-float v9, p6, v17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p12

    invoke-virtual/range {v4 .. v13}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p12

    .line 161
    invoke-virtual/range {v4 .. v13}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method public static getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I
    .locals 11
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"
    .parameter "fmi"

    .prologue
    .line 193
    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p2, p3, p4, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/MetricAffectingSpan;

    .line 196
    .local v9, spans:[Landroid/text/style/MetricAffectingSpan;
    const/4 v1, 0x0

    .line 197
    .local v1, replacement:Landroid/text/style/ReplacementSpan;
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 199
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v2, v9

    if-ge v7, v2, :cond_1

    .line 200
    aget-object v8, v9, v7

    .line 201
    .local v8, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    move-object v1, v8

    .line 202
    check-cast v1, Landroid/text/style/ReplacementSpan;

    .line 199
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v8, p1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 209
    .end local v8           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v1, :cond_3

    .line 210
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 211
    invoke-virtual/range {p1 .. p5}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 221
    :cond_2
    sub-int v2, p4, p3

    return v2

    :cond_3
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p6

    .line 213
    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v10

    .line 215
    .local v10, wid:I
    if-le p4, p3, :cond_2

    .line 216
    const/4 v2, 0x0

    int-to-float v3, v10

    aput v3, p5, v2

    .line 217
    add-int/lit8 v7, p3, 0x1

    :goto_2
    if-ge v7, p4, :cond_2

    .line 218
    sub-int v2, v7, p3

    const/4 v3, 0x0

    aput v3, p5, v2

    .line 217
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 14
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fmi"

    .prologue
    .line 433
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v10, p5

    move-object v11, p0

    move-object v12, p1

    invoke-static/range {v0 .. v13}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v0

    return v0
.end method
