.class public Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;
.super Ljava/lang/Object;
.source "IWnnUserDictionaryToolsEngineInterface.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;


# static fields
.field private static sSelf:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;


# instance fields
.field private mFilesDirPath:Ljava/lang/String;

.field protected mHashCode:I

.field protected mLanguage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->sSelf:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .parameter "language"
    .parameter "hashCode"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->mFilesDirPath:Ljava/lang/String;

    .line 40
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->mLanguage:I

    .line 41
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->mHashCode:I

    .line 42
    return-void
.end method

.method public static getEngineInterface()Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->sSelf:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    return-object v0
.end method

.method public static getEngineInterface(II)Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;
    .locals 1
    .parameter "language"
    .parameter "hashCode"

    .prologue
    .line 140
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    invoke-direct {v0, p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;-><init>(II)V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->sSelf:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    .line 141
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->sSelf:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;

    return-object v0
.end method

.method private getUserDictionaryEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 106
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v1

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->mFilesDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->init(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setEmojiFilter(Z)V

    .line 110
    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setEmailAddressFilter(Z)V

    .line 111
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->mLanguage:I

    const/16 v2, 0xa

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->mHashCode:I

    invoke-virtual {v0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(III)Z

    .line 112
    return-object v0
.end method


# virtual methods
.method public addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I
    .locals 2
    .parameter "addWord"

    .prologue
    .line 95
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getUserDictionaryEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 96
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    move-result v1

    return v1
.end method

.method public deleteWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z
    .locals 6
    .parameter "searchWord"

    .prologue
    .line 52
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getUserDictionaryEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    .line 53
    .local v1, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    iget-object v4, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->searchWords(Ljava/lang/String;)I

    .line 55
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_0

    .line 56
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v2

    .line 57
    .local v2, getword:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-nez v2, :cond_1

    .line 74
    .end local v2           #getword:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 61
    .restart local v2       #getword:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_1
    iget-object v4, v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    iget-object v5, v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->deleteWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v0

    .line 67
    .local v0, deleted:Z
    if-eqz v0, :cond_0

    .line 68
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->mLanguage:I

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->writeoutDictionary(II)Z

    .line 69
    const/4 v4, 0x1

    goto :goto_1

    .line 55
    .end local v0           #deleted:Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->mLanguage:I

    return v0
.end method

.method public getWords()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getUserDictionaryEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 80
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->searchWords(Ljava/lang/String;)I

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/WnnWord;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x1f4

    if-ge v1, v4, :cond_0

    .line 84
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getNextCandidate()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object v3

    .line 85
    .local v3, word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    if-nez v3, :cond_1

    .line 90
    .end local v3           #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_0
    return-object v2

    .line 88
    .restart local v3       #word:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initializeDictionary()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->getUserDictionaryEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    .line 47
    .local v0, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->mLanguage:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->initializeUserDictionary(II)Z

    .line 48
    return-void
.end method

.method public setDirPath(Ljava/lang/String;)V
    .locals 0
    .parameter "dirPath"

    .prologue
    .line 145
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnUserDictionaryToolsEngineInterface;->mFilesDirPath:Ljava/lang/String;

    .line 146
    return-void
.end method
