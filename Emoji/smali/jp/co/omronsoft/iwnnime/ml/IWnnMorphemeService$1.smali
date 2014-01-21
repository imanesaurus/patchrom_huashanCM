.class Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService$1;
.super Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub;
.source "IWnnMorphemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public splitWord(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 19
    .parameter "input"
    .parameter "readingsMax"

    .prologue
    .line 42
    add-int/lit8 v16, p2, 0x1

    move/from16 v0, v16

    new-array v8, v0, [Ljava/util/ArrayList;

    check-cast v8, [Ljava/util/ArrayList;

    .line 43
    .local v8, resultLists:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    add-int/lit8 v16, p2, 0x1

    move/from16 v0, v16

    if-ge v3, v0, :cond_0

    .line 44
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    aput-object v16, v8, v3

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v14, wordClassList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v12, v0, [I

    .line 49
    .local v12, splitResult:[I
    add-int/lit8 v16, p2, 0x1

    const/16 v17, 0x2

    filled-new-array/range {v16 .. v17}, [I

    move-result-object v16

    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    .line 51
    .local v9, segment:[[Ljava/lang/String;
    const/4 v7, 0x0

    .line 52
    .local v7, processLength:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 53
    .local v4, inputLength:I
    :cond_1
    if-ge v7, v4, :cond_2

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;

    move-object/from16 v16, v0

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;
    invoke-static/range {v16 .. v16}, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->access$000(Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    move-result-object v16

    add-int/lit8 v17, v7, 0x32

    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->splitWord(Ljava/lang/String;[I)V

    .line 58
    const/16 v16, 0x0

    aget v10, v12, v16

    .line 59
    .local v10, segmentCount:I
    const/16 v16, 0x1

    aget v6, v12, v16

    .line 61
    .local v6, length:I
    if-gtz v10, :cond_3

    .line 79
    .end local v6           #length:I
    .end local v10           #segmentCount:I
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v2, b:Landroid/os/Bundle;
    const/16 v16, 0x0

    aget-object v16, v8, v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 82
    .local v11, size:I
    const-string v17, "strings"

    const/16 v16, 0x0

    aget-object v16, v8, v16

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v16, p2, 0x1

    move/from16 v0, v16

    if-ge v3, v0, :cond_5

    .line 86
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readings"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aget-object v16, v8, v3

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    .end local v2           #b:Landroid/os/Bundle;
    .end local v11           #size:I
    .restart local v6       #length:I
    .restart local v10       #segmentCount:I
    :cond_3
    add-int/2addr v7, v6

    .line 66
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_1

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;

    move-object/from16 v16, v0

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;
    invoke-static/range {v16 .. v16}, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->access$000(Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v9}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getMorphemeText(I[[Ljava/lang/String;)V

    .line 68
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    add-int/lit8 v16, p2, 0x1

    move/from16 v0, v16

    if-ge v5, v0, :cond_4

    .line 69
    aget-object v16, v8, v5

    aget-object v17, v9, v5

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    aget-object v16, v8, v5

    aget-object v17, v9, v5

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 72
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;

    move-object/from16 v16, v0

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;
    invoke-static/range {v16 .. v16}, Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;->access$000(Ljp/co/omronsoft/iwnnime/ml/IWnnMorphemeService;)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->getMorphemePartOfSpeech(I)S

    move-result v13

    .line 73
    .local v13, wordClass:S
    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 90
    .end local v5           #j:I
    .end local v6           #length:I
    .end local v10           #segmentCount:I
    .end local v13           #wordClass:S
    .restart local v2       #b:Landroid/os/Bundle;
    .restart local v11       #size:I
    :cond_5
    new-array v15, v11, [S

    .line 91
    .local v15, wordClassValues:[S
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v11, :cond_6

    .line 92
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Short;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Short;->shortValue()S

    move-result v16

    aput-short v16, v15, v3

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 94
    :cond_6
    const-string v16, "wordclasses"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 96
    return-object v2
.end method
