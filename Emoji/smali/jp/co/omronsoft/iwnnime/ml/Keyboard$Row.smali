.class public Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field public mode:I

.field private parent:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljp/co/omronsoft/iwnnime/ml/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->parent:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 237
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/R$styleable;->WnnKeyboardView:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x1a

    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I
    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->access$000(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v2

    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultWidth:I
    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->access$100(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultWidth:I

    .line 244
    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHeight:I
    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->access$200(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultHeight:I

    .line 246
    const/16 v1, 0x18

    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayWidth:I
    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->access$000(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v2

    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultHorizontalGap:I
    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->access$300(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->defaultHorizontalGap:I

    .line 249
    const/16 v1, 0x1b

    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDisplayHeight:I
    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->access$400(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v2

    #getter for: Ljp/co/omronsoft/iwnnime/ml/Keyboard;->mDefaultVerticalGap:I
    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->access$500(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->verticalGap:I

    .line 252
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->rowEdgeFlags:I

    .line 253
    const/16 v1, 0x16

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->mode:I

    .line 255
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    return-void
.end method

.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/Keyboard;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->parent:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 232
    return-void
.end method

.method static synthetic access$600(Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;)Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/Keyboard$Row;->parent:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    return-object v0
.end method
