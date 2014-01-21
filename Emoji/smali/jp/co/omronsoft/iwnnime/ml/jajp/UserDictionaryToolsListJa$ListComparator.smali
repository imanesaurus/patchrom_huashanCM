.class public Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa$ListComparator;
.super Ljava/lang/Object;
.source "UserDictionaryToolsListJa.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;


# direct methods
.method protected constructor <init>(Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa$ListComparator;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isHiragana(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 85
    const/16 v0, 0x3041

    if-gt v0, p1, :cond_0

    const/16 v0, 0x3096

    if-gt p1, v0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    check-cast p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .end local p1
    check-cast p2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa$ListComparator;->compare(Ljp/co/omronsoft/iwnnime/ml/WnnWord;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    move-result v0

    return v0
.end method

.method public compare(Ljp/co/omronsoft/iwnnime/ml/WnnWord;Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
    .locals 6
    .parameter "word1"
    .parameter "word2"

    .prologue
    const/4 v5, 0x0

    .line 63
    iget-object v2, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    .line 64
    .local v2, string1:Ljava/lang/String;
    iget-object v3, p2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    .line 65
    .local v3, string2:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa$ListComparator;->isHiragana(C)Z

    move-result v0

    .line 66
    .local v0, hiragana1:Z
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/UserDictionaryToolsListJa$ListComparator;->isHiragana(C)Z

    move-result v1

    .line 68
    .local v1, hiragana2:Z
    if-ne v0, v1, :cond_0

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 75
    :goto_0
    return v4

    .line 72
    :cond_0
    if-eqz v0, :cond_1

    .line 73
    const/4 v4, -0x1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method
