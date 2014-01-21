.class public Ljp/co/omronsoft/iwnnime/ml/WnnWord;
.super Ljava/lang/Object;
.source "WnnWord.java"


# instance fields
.field public attribute:I

.field public candidate:Ljava/lang/String;

.field public frequency:I

.field public id:I

.field public lexicalCategory:I

.field public partOfSpeech:Ljp/co/omronsoft/iwnnime/ml/WnnPOS;

.field public stroke:Ljava/lang/String;

.field public symbolMode:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string v2, ""

    const-string v3, ""

    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;

    invoke-direct {v4}, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;-><init>()V

    move-object v0, p0

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-direct/range {v0 .. v7}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;III)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;I)V
    .locals 8
    .parameter "id"
    .parameter "candidate"
    .parameter "stroke"
    .parameter "posTag"
    .parameter "frequency"

    .prologue
    const/4 v6, 0x0

    .line 91
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;III)V

    .line 92
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;II)V
    .locals 8
    .parameter "id"
    .parameter "candidate"
    .parameter "stroke"
    .parameter "posTag"
    .parameter "frequency"
    .parameter "attribute"

    .prologue
    .line 105
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;III)V

    .line 106
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;III)V
    .locals 1
    .parameter "id"
    .parameter "candidate"
    .parameter "stroke"
    .parameter "posTag"
    .parameter "frequency"
    .parameter "attribute"
    .parameter "lexicalCategory"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->symbolMode:I

    .line 120
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->id:I

    .line 121
    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    .line 123
    iput p5, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->frequency:I

    .line 124
    iput-object p4, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->partOfSpeech:Ljp/co/omronsoft/iwnnime/ml/WnnPOS;

    .line 125
    iput p6, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    .line 126
    iput p7, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->lexicalCategory:I

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "candidate"
    .parameter "stroke"

    .prologue
    const/4 v1, 0x0

    .line 44
    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;

    invoke-direct {v4}, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-direct/range {v0 .. v7}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;III)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "candidate"
    .parameter "stroke"
    .parameter "frequency"

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;

    invoke-direct {v4}, Ljp/co/omronsoft/iwnnime/ml/WnnPOS;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, v1

    move v7, v1

    invoke-direct/range {v0 .. v7}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;III)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;)V
    .locals 8
    .parameter "candidate"
    .parameter "stroke"
    .parameter "posTag"

    .prologue
    const/4 v1, 0x0

    .line 66
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-direct/range {v0 .. v7}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;III)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;I)V
    .locals 8
    .parameter "candidate"
    .parameter "stroke"
    .parameter "posTag"
    .parameter "frequency"

    .prologue
    const/4 v1, 0x0

    .line 78
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, v1

    move v7, v1

    invoke-direct/range {v0 .. v7}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/iwnnime/ml/WnnPOS;III)V

    .line 79
    return-void
.end method


# virtual methods
.method public getSymbolMode()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->symbolMode:I

    return v0
.end method

.method public setSymbolMode(I)V
    .locals 0
    .parameter "symbolMode"

    .prologue
    .line 141
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->symbolMode:I

    .line 142
    return-void
.end method
