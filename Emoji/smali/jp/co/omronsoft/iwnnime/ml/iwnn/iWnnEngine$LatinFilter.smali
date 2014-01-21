.class Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;
.super Ljava/lang/Object;
.source "iWnnEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LatinFilter"
.end annotation


# static fields
.field private static final CASE_HEAD_UPPER:I = 0x3

.field private static final CASE_LOWER:I = 0x0

.field private static final CASE_UPPER:I = 0x1


# instance fields
.field private mCandEnglishTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateCase:I

.field private mInputString:Ljava/lang/String;

.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;


# direct methods
.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;)V
    .locals 1
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandEnglishTable:Ljava/util/HashMap;

    .line 562
    return-void
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->candidateConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 536
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->clearLatinFilter()V

    return-void
.end method

.method static synthetic access$500(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->setSearchKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->putCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v0

    return v0
.end method

.method private candidateConversion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "candidate"

    .prologue
    const/4 v5, 0x0

    .line 604
    move-object v0, p1

    .line 606
    .local v0, str:Ljava/lang/String;
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->access$000(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;)Ljava/lang/String;

    move-result-object v4

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->access$100(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->mSearchKey:Ljava/lang/String;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->access$000(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;)Ljava/lang/String;

    move-result-object v3

    .line 630
    :goto_0
    return-object v3

    .line 610
    :cond_0
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandidateCase:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move-object v3, v0

    .line 630
    goto :goto_0

    .line 612
    :pswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 613
    .local v2, top:C
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 614
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->access$200(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, tmp:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 616
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 622
    .end local v1           #tmp:Ljava/lang/String;
    .end local v2           #top:C
    :pswitch_2
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->access$200(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    .restart local v1       #tmp:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 624
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->access$200(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 610
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearLatinFilter()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandEnglishTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 569
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandidateCase:I

    .line 570
    return-void
.end method

.method private putCandidate(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 5
    .parameter "word"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 639
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mInputString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 640
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandEnglishTable:Ljava/util/HashMap;

    iget-object v3, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 643
    :cond_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandEnglishTable:Ljava/util/HashMap;

    iget-object v2, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 644
    goto :goto_0

    .line 646
    :cond_2
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandEnglishTable:Ljava/util/HashMap;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    iget-object v4, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->access$100(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandEnglishTable:Ljava/util/HashMap;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    iget-object v3, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    #calls: Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->access$100(Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 650
    goto :goto_0
.end method

.method private setSearchKey(Ljava/lang/String;)V
    .locals 3
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 579
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mInputString:Ljava/lang/String;

    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandidateCase:I

    goto :goto_0

    .line 589
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandidateCase:I

    goto :goto_0

    .line 592
    :cond_2
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine$LatinFilter;->mCandidateCase:I

    goto :goto_0
.end method
