.class public final Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;
.super Ljava/lang/Object;
.source "FusionDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharGroup"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mBigrams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;"
        }
    .end annotation
.end field

.field mCachedAddress:I

.field mCachedSize:I

.field final mChars:[I

.field mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

.field mFrequency:I

.field mIsBlacklistEntry:Z

.field mIsNotAWord:Z

.field mShortcutTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([ILjava/util/ArrayList;Ljava/util/ArrayList;IZZ)V
    .locals 1
    .parameter "chars"
    .parameter
    .parameter
    .parameter "frequency"
    .parameter "isNotAWord"
    .parameter "isBlacklistEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;IZZ)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    .local p3, bigrams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    .line 113
    iput p4, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    .line 114
    iput-object p2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    .line 115
    iput-object p3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .line 117
    iput-boolean p5, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsNotAWord:Z

    .line 118
    iput-boolean p6, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsBlacklistEntry:Z

    .line 119
    return-void
.end method

.method public constructor <init>([ILjava/util/ArrayList;Ljava/util/ArrayList;IZZLcom/android/inputmethod/latin/makedict/FusionDictionary$Node;)V
    .locals 0
    .parameter "chars"
    .parameter
    .parameter
    .parameter "frequency"
    .parameter "isNotAWord"
    .parameter "isBlacklistEntry"
    .parameter "children"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;IZZ",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    .local p3, bigrams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    .line 125
    iput p4, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    .line 126
    iput-object p2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    .line 127
    iput-object p3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    .line 128
    iput-object p7, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;

    .line 129
    iput-boolean p5, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsNotAWord:Z

    .line 130
    iput-boolean p6, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsBlacklistEntry:Z

    .line 131
    return-void
.end method


# virtual methods
.method public addBigram(Ljava/lang/String;I)V
    .locals 2
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->getBigram(Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    move-result-object v0

    .line 158
    .local v0, bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    if-eqz v0, :cond_1

    .line 159
    iput p2, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_1
    new-instance v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    .end local v0           #bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    invoke-direct {v0, p1, p2}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;-><init>(Ljava/lang/String;I)V

    .line 162
    .restart local v0       #bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getBigram(Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .locals 4
    .parameter "word"

    .prologue
    .line 190
    iget-object v3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 192
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 193
    iget-object v3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    .line 194
    .local v0, bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    iget-object v3, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    .end local v0           #bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .end local v1           #i:I
    .end local v2           #size:I
    :goto_1
    return-object v0

    .line 192
    .restart local v0       #bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v0           #bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getShortcut(Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .locals 4
    .parameter "word"

    .prologue
    .line 172
    iget-object v3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 174
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    .line 176
    .local v1, shortcut:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    iget-object v3, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    .end local v0           #i:I
    .end local v1           #shortcut:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .end local v2           #size:I
    :goto_1
    return-object v1

    .line 174
    .restart local v0       #i:I
    .restart local v1       #shortcut:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .restart local v2       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v0           #i:I
    .end local v1           #shortcut:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .end local v2           #size:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasSeveralChars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 145
    sget-boolean v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v1, v1

    if-gtz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminal()Z
    .locals 2

    .prologue
    .line 141
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(ILjava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 8
    .parameter "frequency"
    .parameter
    .parameter
    .parameter "isNotAWord"
    .parameter "isBlacklistEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    .local p3, bigrams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    iget v6, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    if-le p1, v6, :cond_0

    .line 211
    iput p1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mFrequency:I

    .line 213
    :cond_0
    if-eqz p2, :cond_1

    .line 214
    iget-object v6, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 215
    iput-object p2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    .line 229
    :cond_1
    if-eqz p3, :cond_2

    .line 230
    iget-object v6, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-nez v6, :cond_6

    .line 231
    iput-object p3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    .line 245
    :cond_2
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsNotAWord:Z

    .line 246
    iput-boolean p5, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mIsBlacklistEntry:Z

    .line 247
    return-void

    .line 217
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 218
    .local v5, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 219
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    .line 220
    .local v4, shortcut:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    iget-object v6, v4, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->getShortcut(Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    move-result-object v2

    .line 221
    .local v2, existingShortcut:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    if-nez v2, :cond_5

    .line 222
    iget-object v6, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_5
    iget v6, v2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    iget v7, v4, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    if-ge v6, v7, :cond_4

    .line 224
    iget v6, v4, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    iput v6, v2, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    goto :goto_1

    .line 233
    .end local v2           #existingShortcut:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .end local v3           #i:I
    .end local v4           #shortcut:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    .end local v5           #size:I
    :cond_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 234
    .restart local v5       #size:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 235
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    .line 236
    .local v0, bigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    iget-object v6, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->getBigram(Ljava/lang/String;)Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;

    move-result-object v1

    .line 237
    .local v1, existingBigram:Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;
    if-nez v1, :cond_8

    .line 238
    iget-object v6, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 239
    :cond_8
    iget v6, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    iget v7, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    if-ge v6, v7, :cond_7

    .line 240
    iget v6, v0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    iput v6, v1, Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;->mFrequency:I

    goto :goto_3
.end method
