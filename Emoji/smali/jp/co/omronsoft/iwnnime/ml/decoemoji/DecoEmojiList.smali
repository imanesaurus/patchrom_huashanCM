.class public Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;
.super Ljava/lang/Object;
.source "DecoEmojiList.java"


# static fields
.field private static final MAX_CATEGORY:I = 0x48

.field private static final TAG:Ljava/lang/String; = "iWnn"


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoriesNextIndex:I

.field private mCategoryId:I

.field private mCreatedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasEnded:Z

.field private mIsJapanese:Z

.field private mNextItem:Ljava/lang/String;

.field private mPageId:I

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUriListNextIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategories:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCreatedList:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method private createNextCategory()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategoriesNextIndex:I

    if-gt v2, v3, :cond_0

    .line 135
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mHasEnded:Z

    .line 136
    const/4 v2, 0x0

    .line 150
    :goto_0
    return-object v2

    .line 139
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategories:Ljava/util/ArrayList;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategoriesNextIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;

    .line 140
    .local v1, info:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategoriesNextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategoriesNextIndex:I

    .line 142
    invoke-virtual {v1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->getCategoryId()I

    move-result v2

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->createUriList(I)V

    .line 145
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mIsJapanese:Z

    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {v1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->getCategoryName_jpn()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, categoryText:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 148
    .end local v0           #categoryText:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->getCategoryName_eng()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #categoryText:Ljava/lang/String;
    goto :goto_1
.end method

.method private createNextUriList()V
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mPageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mPageId:I

    .line 168
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->getUriList()V

    .line 169
    return-void
.end method

.method private createUriList(I)V
    .locals 1
    .parameter "categoryId"

    .prologue
    .line 158
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategoryId:I

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mPageId:I

    .line 160
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->createNextUriList()V

    .line 161
    return-void
.end method

.method private getDecoEmojiBindInterface()Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getDecoEmojiBindInterface()Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    move-result-object v0

    return-object v0
.end method

.method private getUriList()V
    .locals 6

    .prologue
    .line 175
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 176
    const/4 v3, 0x0

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriListNextIndex:I

    .line 178
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->getDecoEmojiBindInterface()Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    move-result-object v0

    .line 179
    .local v0, bind:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    :try_start_0
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategoryId:I

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mPageId:I

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriList:Ljava/util/ArrayList;

    invoke-interface {v0, v3, v4, v5}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;->aidl_getDecoUriList(IILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 185
    .local v2, ret:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 192
    .end local v2           #ret:I
    :goto_1
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "iWnn"

    const-string v4, "Fail to get URI list"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    .line 95
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCreatedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 96
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCreatedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    :goto_0
    return-object v1

    .line 100
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCreatedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 101
    const-string v2, "iWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request index is mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCreatedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mHasEnded:Z

    if-eqz v2, :cond_2

    .line 105
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mNextItem:Ljava/lang/String;

    .line 110
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .line 111
    .local v0, nextCategory:Z
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriListNextIndex:I

    if-gt v2, v3, :cond_3

    .line 112
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->createNextUriList()V

    .line 113
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 114
    const/4 v0, 0x1

    .line 118
    :cond_3
    if-eqz v0, :cond_4

    .line 119
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->createNextCategory()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mNextItem:Ljava/lang/String;

    .line 125
    :goto_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCreatedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_4
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriList:Ljava/util/ArrayList;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriListNextIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mNextItem:Ljava/lang/String;

    .line 122
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriListNextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mUriListNextIndex:I

    goto :goto_1
.end method

.method public initializeList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCreatedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 63
    iput-boolean v6, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mHasEnded:Z

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mIsJapanese:Z

    .line 66
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 67
    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategoriesNextIndex:I

    .line 69
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->getDecoEmojiBindInterface()Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    move-result-object v0

    .line 70
    .local v0, bind:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/16 v3, 0x48

    :try_start_0
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mCategories:Ljava/util/ArrayList;

    invoke-interface {v0, v3, v4}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;->aidl_getCategoryList(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 76
    .local v2, ret:I
    if-ne v2, v6, :cond_0

    .line 85
    iput-boolean v5, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mHasEnded:Z

    .line 86
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->createNextCategory()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiList;->mNextItem:Ljava/lang/String;

    goto :goto_0

    .line 80
    .end local v2           #ret:I
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "iWnn"

    const-string v4, "Fail to get category list"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
