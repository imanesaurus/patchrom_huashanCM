.class public Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_ACTIVE_NORMAL:[I

.field private static final KEY_STATE_ACTIVE_PRESSED:[I

.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field public isActionKey:Z

.field public isSecondKey:Z

.field public keyPreviewLabel:Ljava/lang/CharSequence;

.field private keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field public label:Ljava/lang/CharSequence;

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 322
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 327
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 333
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 337
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 342
    new-array v0, v2, [I

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 345
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 350
    new-array v0, v3, [I

    const v1, 0x10100a2

    aput v1, v0, v2

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_ACTIVE_NORMAL:[I

    .line 355
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_ACTIVE_PRESSED:[I

    return-void

    .line 322
    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 327
    :array_1
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 337
    :array_2
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
    .end array-data

    .line 355
    :array_3
    .array-data 0x4
        0xa2t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 10
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 375
    invoke-direct {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;-><init>(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)V

    .line 377
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    .line 378
    iput p4, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    .line 380
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    move-result-object v2

    .line 382
    .local v2, keyskin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    sget-object v6, Ljp/co/omronsoft/iwnnime/ml/R$styleable;->WnnKeyboardView:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 385
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v5, 0x1a

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I
    invoke-static {v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->access$000(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v6

    iget v7, p2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultWidth:I

    invoke-static {v0, v5, v6, v7}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    .line 389
    const/16 v5, 0x18

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I
    invoke-static {v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->access$000(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v6

    iget v7, p2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultHorizontalGap:I

    invoke-static {v0, v5, v6, v7}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->gap:I

    .line 392
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    .line 393
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 394
    .local v1, codesValue:Landroid/util/TypedValue;
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 396
    iget v5, v1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x10

    if-eq v5, v6, :cond_0

    iget v5, v1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_7

    .line 398
    :cond_0
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v7, v1, Landroid/util/TypedValue;->data:I

    aput v7, v5, v6

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    .line 403
    :cond_1
    :goto_0
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    if-eqz v5, :cond_8

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, -0x138

    if-ne v5, v6, :cond_8

    .line 404
    iget v5, p2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultHeight:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    .line 411
    :goto_1
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 412
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 413
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 414
    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 415
    .local v3, resid:I
    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 416
    .local v4, tmpicon:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 417
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 420
    .end local v3           #resid:I
    .end local v4           #tmpicon:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 423
    :cond_3
    const/16 v5, 0x22

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->keyPreviewLabel:Ljava/lang/CharSequence;

    .line 425
    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 427
    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->popupResId:I

    .line 429
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->repeatable:Z

    .line 431
    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->modifier:Z

    .line 433
    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->sticky:Z

    .line 435
    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->edgeFlags:I

    .line 436
    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->edgeFlags:I

    iget v6, p2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr v5, v6

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->edgeFlags:I

    .line 438
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 440
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 441
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 442
    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 443
    .restart local v3       #resid:I
    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 444
    .restart local v4       #tmpicon:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_4

    .line 445
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 448
    .end local v3           #resid:I
    .end local v4           #tmpicon:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 450
    :cond_5
    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 451
    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 453
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    if-nez v5, :cond_6

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 454
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget-object v7, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput v7, v5, v6

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    .line 456
    :cond_6
    const/16 v5, 0x21

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isSecondKey:Z

    .line 457
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 458
    return-void

    .line 399
    :cond_7
    iget v5, v1, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 400
    iget-object v5, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    goto/16 :goto_0

    .line 406
    :cond_8
    const/16 v5, 0x19

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayHeight:I
    invoke-static {v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->access$400(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v6

    iget v7, p2, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultHeight:I

    invoke-static {v0, v5, v6, v7}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    goto/16 :goto_1
.end method

.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isActionKey:Z

    .line 362
    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->parent:Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->access$600(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->keyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 363
    return-void
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 2

    .prologue
    .line 562
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 564
    .local v0, states:[I
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->on:Z

    if-eqz v1, :cond_2

    .line 565
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_1

    .line 566
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 589
    :cond_0
    :goto_0
    return-object v0

    .line 568
    :cond_1
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    .line 571
    :cond_2
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_4

    .line 572
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_3

    .line 573
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_0

    .line 575
    :cond_3
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_0

    .line 577
    :cond_4
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isActionKey:Z

    if-eqz v1, :cond_6

    .line 578
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_5

    .line 579
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_ACTIVE_PRESSED:[I

    goto :goto_0

    .line 581
    :cond_5
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_ACTIVE_NORMAL:[I

    goto :goto_0

    .line 584
    :cond_6
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_0

    .line 585
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->KEY_STATE_PRESSED:[I

    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 513
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_4

    move v1, v4

    .line 514
    .local v1, leftEdge:Z
    :goto_0
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_5

    move v2, v4

    .line 515
    .local v2, rightEdge:Z
    :goto_1
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_6

    move v3, v4

    .line 516
    .local v3, topEdge:Z
    :goto_2
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x8

    if-lez v6, :cond_7

    move v0, v4

    .line 517
    .local v0, bottomEdge:Z
    :goto_3
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    if-ge p1, v6, :cond_0

    if-eqz v1, :cond_8

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-gt p1, v6, :cond_8

    :cond_0
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-lt p1, v6, :cond_1

    if-eqz v2, :cond_8

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    if-lt p1, v6, :cond_8

    :cond_1
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    if-ge p2, v6, :cond_2

    if-eqz v3, :cond_8

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-gt p2, v6, :cond_8

    :cond_2
    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    iget v7, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-lt p2, v6, :cond_3

    if-eqz v0, :cond_8

    iget v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    if-lt p2, v6, :cond_8

    .line 523
    :cond_3
    :goto_4
    return v4

    .end local v0           #bottomEdge:Z
    .end local v1           #leftEdge:Z
    .end local v2           #rightEdge:Z
    .end local v3           #topEdge:Z
    :cond_4
    move v1, v5

    .line 513
    goto :goto_0

    .restart local v1       #leftEdge:Z
    :cond_5
    move v2, v5

    .line 514
    goto :goto_1

    .restart local v2       #rightEdge:Z
    :cond_6
    move v3, v5

    .line 515
    goto :goto_2

    .restart local v3       #topEdge:Z
    :cond_7
    move v0, v5

    .line 516
    goto :goto_3

    .restart local v0       #bottomEdge:Z
    :cond_8
    move v4, v5

    .line 523
    goto :goto_4
.end method

.method public isInside(IIII)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 536
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    add-int v1, p1, p3

    if-gt v0, v1, :cond_0

    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    add-int v1, p2, p4

    if-gt v0, v1, :cond_0

    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    .line 538
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPressed()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->pressed:Z

    .line 467
    return-void
.end method

.method public onReleased(Z)V
    .locals 2
    .parameter "inside"

    .prologue
    const/4 v0, 0x0

    .line 476
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->pressed:Z

    .line 477
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_1

    .line 478
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->on:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->on:Z

    .line 480
    :cond_1
    return-void
.end method

.method parseCSV(Ljava/lang/String;)[I
    .locals 9
    .parameter "value"

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, count:I
    const/4 v2, 0x0

    .line 485
    .local v2, lastIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 486
    add-int/lit8 v0, v0, 0x1

    .line 487
    :goto_0
    const-string v6, ","

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_0
    new-array v5, v0, [I

    .line 492
    .local v5, values:[I
    const/4 v0, 0x0

    .line 493
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v4, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .local v4, st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 496
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 499
    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    .line 497
    .end local v0           #count:I
    .restart local v1       #count:I
    :catch_0
    move-exception v3

    .line 498
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const-string v6, "Keyboard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing keycodes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 499
    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    .line 501
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    return-object v5
.end method

.method public squaredDistanceFrom(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 551
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v0, v2, p1

    .line 552
    .local v0, xDist:I
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v1, v2, p2

    .line 553
    .local v1, yDist:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method
