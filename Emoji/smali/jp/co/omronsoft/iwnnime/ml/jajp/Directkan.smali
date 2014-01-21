.class public Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan;
.super Ljava/lang/Object;
.source "Directkan.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/LetterConverter;


# static fields
.field private static final MAX_LENGTH:I = 0x4

.field private static final directkanTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan$1;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan$1;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan;->directkanTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method public convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)Z
    .locals 13
    .parameter "text"

    .prologue
    .line 103
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getCursor(I)I

    move-result v1

    .line 105
    .local v1, cursor:I
    if-gtz v1, :cond_0

    .line 107
    const/4 v8, 0x0

    .line 144
    :goto_0
    return v8

    .line 110
    :cond_0
    const/4 v8, 0x4

    new-array v7, v8, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 111
    .local v7, str:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    const/4 v6, 0x4

    .line 112
    .local v6, start:I
    const/4 v8, 0x4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 113
    .local v0, checkLength:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-gt v2, v0, :cond_1

    .line 114
    rsub-int/lit8 v8, v2, 0x4

    const/4 v9, 0x1

    sub-int v10, v1, v2

    invoke-virtual {p1, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    move-result-object v9

    aput-object v9, v7, v8

    .line 115
    add-int/lit8 v6, v6, -0x1

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v3, key:Ljava/lang/StringBuffer;
    :goto_2
    const/4 v8, 0x4

    if-ge v6, v8, :cond_5

    .line 120
    move v2, v6

    :goto_3
    const/4 v8, 0x4

    if-ge v2, v8, :cond_2

    .line 121
    aget-object v8, v7, v2

    iget-object v8, v8, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 123
    :cond_2
    sget-object v8, Ljp/co/omronsoft/iwnnime/ml/jajp/Directkan;->directkanTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 124
    .local v4, match:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 126
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 127
    const/4 v8, 0x1

    new-array v5, v8, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 128
    .local v5, out:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    const/4 v8, 0x0

    new-instance v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    aget-object v10, v7, v6

    iget v10, v10, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    const/4 v11, 0x3

    aget-object v11, v7, v11

    iget v11, v11, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    invoke-direct {v9, v4, v10, v11}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v9, v5, v8

    .line 129
    const/4 v8, 0x1

    rsub-int/lit8 v9, v6, 0x4

    invoke-virtual {p1, v8, v5, v9}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V

    .line 138
    :goto_4
    const/4 v8, 0x1

    goto :goto_0

    .line 131
    .end local v5           #out:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_3
    const/4 v8, 0x2

    new-array v5, v8, [Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    .line 132
    .restart local v5       #out:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    const/4 v8, 0x0

    new-instance v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v6

    iget v11, v11, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->from:I

    const/4 v12, 0x3

    aget-object v12, v7, v12

    iget v12, v12, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v9, v10, v11, v12}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v9, v5, v8

    .line 134
    const/4 v8, 0x1

    new-instance v9, Ljp/co/omronsoft/iwnnime/ml/StrSegment;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v7, v11

    iget v11, v11, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    const/4 v12, 0x3

    aget-object v12, v7, v12

    iget v12, v12, Ljp/co/omronsoft/iwnnime/ml/StrSegment;->to:I

    invoke-direct {v9, v10, v11, v12}, Ljp/co/omronsoft/iwnnime/ml/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v9, v5, v8

    .line 136
    const/4 v8, 0x1

    rsub-int/lit8 v9, v6, 0x4

    invoke-virtual {p1, v8, v5, v9}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/iwnnime/ml/StrSegment;I)V

    goto :goto_4

    .line 140
    .end local v5           #out:[Ljp/co/omronsoft/iwnnime/ml/StrSegment;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 141
    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 144
    .end local v4           #match:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 148
    return-void
.end method
