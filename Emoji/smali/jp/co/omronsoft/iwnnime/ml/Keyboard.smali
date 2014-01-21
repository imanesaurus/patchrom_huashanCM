.class public Ljp/co/omronsoft/iwnnime/ml/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;,
        Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field public static final KEYCODE_VOICE_INPUT:I = -0x138

.field private static final KEY_HEIGHT_LANDSCAPE_KEY:Ljava/lang/String; = "key_height_landscape"

.field private static final KEY_HEIGHT_PORTRAIT_KEY:Ljava/lang/String; = "key_height_portrait"

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_CASE:Ljava/lang/String; = "case"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"

.field private static final TAG_ROW_KEY:Ljava/lang/String; = "Row-Key"

.field private static final TAG_SWITCH:Ljava/lang/String; = "switch"

.field private static final VOICE_INPUT_KEYLINE:I = 0x2


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyX:I

.field private mKeyY:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mMiniKeyboardWidth:I

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mProximityThreshold:I

.field private mShiftKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

.field private mShiftKeyIndex:I

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private mXmlLayoutResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const v0, 0x3fe66666

    sput v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 599
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 600
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "modeId"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v2, -0x1

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShiftKeyIndex:I

    .line 199
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mMiniKeyboardWidth:I

    .line 201
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    .line 202
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    .line 610
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mContext:Landroid/content/Context;

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 612
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I

    .line 613
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayHeight:I

    .line 616
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    :goto_0
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mOrientation:I

    .line 621
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHorizontalGap:I

    .line 622
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultWidth:I

    .line 623
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultVerticalGap:I

    .line 624
    const/16 v1, 0x4b

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    .line 625
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    .line 626
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 627
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyboardMode:I

    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 630
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mXmlLayoutResId:I

    .line 631
    return-void

    .line 616
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 10
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 649
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 650
    const/4 v6, 0x0

    .line 651
    .local v6, x:I
    const/4 v7, 0x0

    .line 652
    .local v7, y:I
    const/4 v1, 0x0

    .line 653
    .local v1, column:I
    const/4 v8, 0x0

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    .line 655
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;

    invoke-direct {v5, p0}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;-><init>(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V

    .line 656
    .local v5, row:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    iput v8, v5, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultHeight:I

    .line 657
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultWidth:I

    iput v8, v5, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultWidth:I

    .line 658
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHorizontalGap:I

    iput v8, v5, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultHorizontalGap:I

    .line 659
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultVerticalGap:I

    iput v8, v5, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->verticalGap:I

    .line 660
    const/16 v8, 0xc

    iput v8, v5, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->rowEdgeFlags:I

    .line 661
    const/4 v8, -0x1

    if-ne p4, v8, :cond_3

    const v4, 0x7fffffff

    .line 662
    .local v4, maxColumns:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 663
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 664
    .local v0, c:C
    if-ge v1, v4, :cond_0

    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultWidth:I

    add-int/2addr v8, v6

    add-int/2addr v8, p5

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I

    div-int/lit8 v9, v9, 0x2

    if-lt v8, v9, :cond_1

    .line 666
    :cond_0
    const/4 v6, 0x0

    .line 667
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultVerticalGap:I

    iget v9, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 668
    const/4 v1, 0x0

    .line 670
    :cond_1
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    invoke-direct {v3, v5}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;-><init>(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)V

    .line 671
    .local v3, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    iput v6, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->x:I

    .line 672
    iput v7, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->y:I

    .line 673
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultWidth:I

    iput v8, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    .line 674
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    iput v8, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->height:I

    .line 675
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHorizontalGap:I

    iput v8, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->gap:I

    .line 676
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 677
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    iput-object v8, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    .line 678
    add-int/lit8 v1, v1, 0x1

    .line 679
    iget v8, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    iget v9, v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 680
    iget-object v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    if-le v6, v8, :cond_2

    .line 682
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    .line 662
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #c:C
    .end local v2           #i:I
    .end local v3           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .end local v4           #maxColumns:I
    :cond_3
    move v4, p4

    .line 661
    goto :goto_0

    .line 685
    .restart local v2       #i:I
    .restart local v4       #maxColumns:I
    :cond_4
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v7

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalHeight:I

    .line 686
    iget v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    iput v8, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mMiniKeyboardWidth:I

    .line 687
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$500(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 816
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getMinWidth()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0xa

    iput v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellWidth:I

    .line 817
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0x5

    iput v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellHeight:I

    .line 818
    const/16 v10, 0x32

    new-array v10, v10, [[I

    iput-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mGridNeighbors:[[I

    .line 819
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [I

    .line 820
    .local v6, indices:[I
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellWidth:I

    mul-int/lit8 v4, v10, 0xa

    .line 821
    .local v4, gridWidth:I
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellHeight:I

    mul-int/lit8 v3, v10, 0x5

    .line 822
    .local v3, gridHeight:I
    const/4 v8, 0x0

    .local v8, x:I
    :goto_0
    if-ge v8, v4, :cond_5

    .line 823
    const/4 v9, 0x0

    .local v9, y:I
    :goto_1
    if-ge v9, v3, :cond_4

    .line 824
    const/4 v1, 0x0

    .line 825
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_3

    .line 826
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 827
    .local v7, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    invoke-virtual {v7, v8, v9}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_1

    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10, v9}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_1

    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellHeight:I

    add-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_1

    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellHeight:I

    add-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v8, v10}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_1

    iget-object v10, v7, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    aget v10, v10, v13

    const/16 v11, 0x3000

    if-eq v10, v11, :cond_0

    iget-object v10, v7, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    aget v10, v10, v13

    const/16 v11, 0x20

    if-ne v10, v11, :cond_2

    :cond_0
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellWidth:I

    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellHeight:I

    invoke-virtual {v7, v8, v9, v10, v11}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->isInside(IIII)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 835
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    aput v5, v6, v1

    move v1, v2

    .line 825
    .end local v2           #count:I
    .restart local v1       #count:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 838
    .end local v7           #key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    :cond_3
    new-array v0, v1, [I

    .line 839
    .local v0, cell:[I
    invoke-static {v6, v13, v0, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 840
    iget-object v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mGridNeighbors:[[I

    iget v11, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellHeight:I

    div-int v11, v9, v11

    mul-int/lit8 v11, v11, 0xa

    iget v12, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellWidth:I

    div-int v12, v8, v12

    add-int/2addr v11, v12

    aput-object v0, v10, v11

    .line 823
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellHeight:I

    add-int/2addr v9, v10

    goto/16 :goto_1

    .line 822
    .end local v0           #cell:[I
    .end local v1           #count:I
    .end local v5           #i:I
    :cond_4
    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellWidth:I

    add-int/2addr v8, v10

    goto/16 :goto_0

    .line 843
    .end local v9           #y:I
    :cond_5
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "base"
    .parameter "defValue"

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 1170
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 1177
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 1171
    .restart local p3
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 1172
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    goto :goto_0

    .line 1173
    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1175
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0
.end method

.method private getParserOfLayout(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/res/XmlResourceParser;
    .locals 6
    .parameter "res"
    .parameter "parser"

    .prologue
    .line 946
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 947
    .local v0, attr:Landroid/util/AttributeSet;
    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/R$styleable;->WnnKeyboardView:[I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 948
    .local v1, keyboardAttr:Landroid/content/res/TypedArray;
    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 949
    .local v3, resId:I
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 950
    .local v2, parserForInclude:Landroid/content/res/XmlResourceParser;
    return-object v2
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 18
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 873
    const/4 v11, 0x0

    .line 874
    .local v11, inKey:Z
    const/4 v12, 0x0

    .line 875
    .local v12, inRow:Z
    const/4 v10, 0x0

    .line 876
    .local v10, inInclude:Z
    const/4 v14, 0x0

    .line 877
    .local v14, leftMostKey:Z
    const/4 v15, 0x0

    .line 878
    .local v15, row:I
    const/4 v13, 0x0

    .line 879
    .local v13, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    const/4 v4, 0x0

    .line 880
    .local v4, currentRow:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 881
    .local v3, res:Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 883
    .local v16, skipRow:Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    .line 884
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    .line 887
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    .local v9, event:I
    const/4 v2, 0x1

    if-eq v9, v2, :cond_3

    .line 888
    const/4 v2, 0x2

    if-ne v9, v2, :cond_7

    .line 889
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 890
    .local v17, tag:Ljava/lang/String;
    const-string v2, "Row"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 891
    const/4 v12, 0x1

    .line 892
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    .line 893
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;

    move-result-object v4

    .line 894
    iget v2, v4, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->mode:I

    if-eqz v2, :cond_1

    iget v2, v4, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyboardMode:I

    if-eq v2, v5, :cond_1

    const/16 v16, 0x1

    .line 895
    :goto_1
    if-eqz v16, :cond_0

    .line 896
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 897
    const/4 v12, 0x0

    goto :goto_0

    .line 894
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 899
    :cond_2
    const-string v2, "Key"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 900
    const/4 v11, 0x1

    .line 901
    move-object/from16 v0, p0

    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    move-object/from16 v0, p0

    iget v6, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-result-object v13

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v2, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    .line 904
    move-object/from16 v0, p0

    iput-object v13, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShiftKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShiftKeyIndex:I

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 935
    .end local v9           #event:I
    .end local v17           #tag:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 936
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "Keyboard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 939
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    move-object/from16 v0, p0

    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultVerticalGap:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalHeight:I

    .line 940
    return-void

    .line 907
    .restart local v9       #event:I
    .restart local v17       #tag:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v2, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/4 v5, -0x6

    if-ne v2, v5, :cond_0

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 910
    :cond_5
    const-string v2, "include"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 911
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->loadTagInclude(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)V

    .line 912
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 913
    :cond_6
    const-string v2, "Keyboard"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_0

    .line 916
    .end local v17           #tag:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x3

    if-ne v9, v2, :cond_0

    .line 917
    if-eqz v11, :cond_8

    .line 918
    const/4 v11, 0x0

    .line 919
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    iget v5, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->gap:I

    iget v6, v13, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    .line 920
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    move-object/from16 v0, p0

    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    if-le v2, v5, :cond_0

    .line 921
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    goto/16 :goto_0

    .line 923
    :cond_8
    if-eqz v10, :cond_9

    .line 924
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 925
    :cond_9
    if-eqz v12, :cond_0

    .line 926
    const/4 v12, 0x0

    .line 927
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    iget v5, v4, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->verticalGap:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    .line 928
    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    iget v5, v4, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultHeight:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 929
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0
.end method

.method private loadTagInclude(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)V
    .locals 8
    .parameter "parser"
    .parameter "res"
    .parameter "currentRow"

    .prologue
    .line 957
    const/4 v3, 0x0

    .line 958
    .local v3, selected:Z
    invoke-direct {p0, p2, p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getParserOfLayout(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 961
    .local v2, parserForInclude:Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 962
    .local v1, event:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    .line 963
    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 964
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 965
    .local v4, tag:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 966
    const-string v5, "Row-Key"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 967
    invoke-direct {p0, v2, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->loadTagKeyFromXml(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)Z

    move-result v3

    goto :goto_0

    .line 968
    :cond_1
    const-string v5, "switch"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 969
    invoke-direct {p0, v2, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->loadTagSwitchFromXml(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 974
    .end local v4           #tag:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 975
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Keyboard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parse error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 978
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private loadTagKeyFromXml(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)Z
    .locals 14
    .parameter "parser"
    .parameter "res"
    .parameter "currentRow"

    .prologue
    .line 1068
    const/4 v10, 0x0

    .line 1069
    .local v10, inRow:Z
    const/4 v9, 0x0

    .line 1070
    .local v9, inKey:Z
    const/4 v12, 0x0

    .line 1071
    .local v12, skipRow:Z
    const/4 v11, 0x0

    .line 1074
    .local v11, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    const/4 v8, 0x0

    .line 1075
    .local v8, event:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v1, 0x1

    if-eq v8, v1, :cond_3

    .line 1076
    const/4 v1, 0x2

    if-ne v8, v1, :cond_5

    .line 1077
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1078
    .local v13, tag:Ljava/lang/String;
    const-string v1, "Row"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1079
    const/4 v10, 0x1

    .line 1080
    const/4 v1, 0x0

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    .line 1081
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;

    move-result-object p3

    .line 1082
    move-object/from16 v0, p3

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->mode:I

    if-eqz v1, :cond_1

    move-object/from16 v0, p3

    iget v1, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->mode:I

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyboardMode:I

    if-eq v1, v2, :cond_1

    const/4 v12, 0x1

    .line 1083
    :goto_1
    if-eqz v12, :cond_0

    .line 1084
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 1085
    const/4 v10, 0x0

    goto :goto_0

    .line 1082
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 1087
    :cond_2
    const-string v1, "Key"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    if-eqz p3, :cond_0

    .line 1091
    const/4 v9, 0x1

    .line 1092
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-result-object v11

    .line 1093
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v1, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 1095
    iput-object v11, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShiftKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 1096
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShiftKeyIndex:I

    .line 1097
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1116
    .end local v13           #tag:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1117
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "Keyboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1120
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 1098
    .restart local v13       #tag:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v1, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, -0x6

    if-ne v1, v2, :cond_0

    .line 1099
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1102
    .end local v13           #tag:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x3

    if-ne v8, v1, :cond_0

    .line 1103
    if-eqz v9, :cond_6

    .line 1104
    const/4 v9, 0x0

    .line 1105
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    iget v2, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->gap:I

    iget v3, v11, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    .line 1106
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    if-le v1, v2, :cond_0

    .line 1107
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    goto/16 :goto_0

    .line 1109
    :cond_6
    if-eqz v10, :cond_0

    .line 1110
    const/4 v10, 0x0

    .line 1111
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    move-object/from16 v0, p3

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->verticalGap:I

    add-int/2addr v1, v2

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    .line 1112
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    move-object/from16 v0, p3

    iget v2, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private loadTagSwitchFromXml(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)Z
    .locals 22
    .parameter "parser"
    .parameter "res"
    .parameter "currentRow"

    .prologue
    .line 984
    const/16 v18, 0x0

    .line 985
    .local v18, selected:Z
    const/4 v12, 0x0

    .line 986
    .local v12, inCase:Z
    const/4 v15, 0x0

    .line 987
    .local v15, inRow:Z
    const/4 v14, 0x0

    .line 988
    .local v14, inKey:Z
    const/4 v13, 0x0

    .line 989
    .local v13, inInclude:Z
    const/16 v20, 0x0

    .line 990
    .local v20, skipRow:Z
    const/16 v16, 0x0

    .line 993
    .local v16, key:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    const/4 v11, 0x0

    .line 994
    .local v11, event:I
    const/16 v19, 0x0

    .line 995
    .local v19, setIsKey:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v3, 0x1

    if-eq v11, v3, :cond_4

    .line 996
    const/4 v3, 0x2

    if-ne v11, v3, :cond_7

    .line 997
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 998
    .local v21, tag:Ljava/lang/String;
    if-nez v19, :cond_1

    .line 999
    const-string v3, "case"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1000
    const/4 v12, 0x1

    .line 1001
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Ljp/co/omronsoft/iwnnime/ml/R$styleable;->WnnKeyboardView:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1003
    .local v9, a:Landroid/content/res/TypedArray;
    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 1004
    .local v17, rowCondition:I
    invoke-static/range {v17 .. v17}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->getKeyboardCondition(I)Z

    move-result v19

    .line 1005
    goto :goto_0

    .line 1007
    .end local v9           #a:Landroid/content/res/TypedArray;
    .end local v17           #rowCondition:I
    :cond_1
    const-string v3, "Row"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1008
    const/4 v15, 0x1

    .line 1009
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    .line 1010
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;

    move-result-object p3

    .line 1011
    move-object/from16 v0, p3

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->mode:I

    if-eqz v3, :cond_2

    move-object/from16 v0, p3

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyboardMode:I

    if-eq v3, v4, :cond_2

    const/16 v20, 0x1

    .line 1012
    :goto_1
    if-eqz v20, :cond_0

    .line 1013
    invoke-direct/range {p0 .. p1}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 1014
    const/4 v15, 0x0

    goto :goto_0

    .line 1011
    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    .line 1016
    :cond_3
    const-string v3, "Key"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1017
    if-eqz p3, :cond_0

    .line 1020
    const/4 v14, 0x1

    .line 1021
    move-object/from16 v0, p0

    iget v6, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    move-object/from16 v0, p0

    iget v7, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-result-object v16

    .line 1022
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    move-object/from16 v0, v16

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 1024
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShiftKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    .line 1025
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShiftKeyIndex:I

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mModifierKeys:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1057
    .end local v21           #tag:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1058
    .local v10, e:Ljava/lang/Exception;
    const-string v3, "Keyboard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1061
    .end local v10           #e:Ljava/lang/Exception;
    :cond_4
    :goto_2
    return v18

    .line 1027
    .restart local v21       #tag:Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, v16

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, -0x6

    if-ne v3, v4, :cond_0

    .line 1028
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mModifierKeys:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1030
    :cond_6
    const-string v3, "include"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1031
    invoke-direct/range {p0 .. p3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->loadTagInclude(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)V

    .line 1032
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1035
    .end local v21           #tag:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x3

    if-ne v11, v3, :cond_0

    .line 1036
    if-eqz v14, :cond_8

    .line 1037
    const/4 v14, 0x0

    .line 1038
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    move-object/from16 v0, v16

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->gap:I

    move-object/from16 v0, v16

    iget v5, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    .line 1039
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    if-le v3, v4, :cond_0

    .line 1040
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyX:I

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    goto/16 :goto_0

    .line 1042
    :cond_8
    if-eqz v13, :cond_9

    .line 1043
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1044
    :cond_9
    if-eqz v15, :cond_a

    .line 1045
    const/4 v15, 0x0

    .line 1046
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    move-object/from16 v0, p3

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->verticalGap:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    .line 1047
    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I

    move-object/from16 v0, p3

    iget v4, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeyY:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1048
    :cond_a
    if-eqz v12, :cond_0

    .line 1049
    const/4 v12, 0x0

    .line 1050
    if-eqz v19, :cond_0

    .line 1051
    const/16 v18, 0x1

    .line 1052
    goto :goto_2
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 6
    .parameter "res"
    .parameter "parser"

    .prologue
    const/4 v5, 0x0

    .line 1135
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Ljp/co/omronsoft/iwnnime/ml/R$styleable;->WnnKeyboardView:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1138
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x1a

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0xa

    invoke-static {v0, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultWidth:I

    .line 1141
    const/16 v2, 0x19

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayHeight:I

    const/16 v4, 0x4b

    invoke-static {v0, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    .line 1146
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1148
    .local v1, pref:Landroid/content/SharedPreferences;
    const/16 v2, 0x18

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I

    invoke-static {v0, v2, v3, v5}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHorizontalGap:I

    .line 1151
    const/16 v2, 0x1b

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayHeight:I

    invoke-static {v0, v2, v3, v5}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultVerticalGap:I

    .line 1155
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "key_height_portrait"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1156
    const-string v2, "key_height_portrait"

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    .line 1161
    :cond_0
    :goto_0
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultVerticalGap:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    .line 1163
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultWidth:I

    int-to-float v2, v2

    sget v3, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mProximityThreshold:I

    .line 1164
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mProximityThreshold:I

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mProximityThreshold:I

    mul-int/2addr v2, v3

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mProximityThreshold:I

    .line 1165
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1166
    return-void

    .line 1157
    :cond_1
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "key_height_landscape"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1158
    const-string v2, "key_height_landscape"

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    goto :goto_0
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1127
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;
    .locals 6
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 869
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;-><init>(Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;
    .locals 1
    .parameter "res"
    .parameter "parser"

    .prologue
    .line 864
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;-><init>(Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getMiniKeyboardWidth()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mMiniKeyboardWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 853
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->computeNearestNeighbors()V

    .line 854
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 855
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 856
    .local v0, index:I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 857
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 860
    .end local v0           #index:I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public getShiftKeyIndex()I
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShiftKeyIndex:I

    return v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public getXmlLayoutResId()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mXmlLayoutResId:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShifted:Z

    return v0
.end method

.method protected setHorizontalGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 712
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHorizontalGap:I

    .line 713
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 728
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I

    .line 729
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 736
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultWidth:I

    .line 737
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .parameter "shiftState"

    .prologue
    .line 777
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShiftKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShiftKey:Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;

    iput-boolean p1, v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Key;->on:Z

    .line 780
    :cond_0
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_1

    .line 781
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mShifted:Z

    .line 782
    const/4 v0, 0x1

    .line 784
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setVerticalGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 720
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultVerticalGap:I

    .line 721
    return-void
.end method
