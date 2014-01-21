.class public final Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestedWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuggestedWordInfo"
.end annotation


# instance fields
.field public final mCodePointCount:I

.field private mDebugString:Ljava/lang/String;

.field public final mKind:I

.field public final mScore:I

.field public final mSourceDict:Ljava/lang/String;

.field public final mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILjava/lang/String;)V
    .locals 1
    .parameter "word"
    .parameter "score"
    .parameter "kind"
    .parameter "sourceDict"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    .line 141
    iput p2, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    .line 142
    iput p3, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mKind:I

    .line 143
    iput-object p4, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mSourceDict:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mCodePointCount:I

    .line 145
    return-void
.end method

.method public static removeDups(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 192
    :cond_0
    return-void

    .line 179
    :cond_1
    const/4 v1, 0x1

    .line 180
    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 181
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 182
    .local v0, cur:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 183
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 184
    .local v3, previous:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    iget-object v4, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    iget v4, v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    iget v5, v3, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mScore:I

    if-ge v4, v5, :cond_2

    move v2, v1

    .end local v2           #j:I
    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 186
    add-int/lit8 v1, v1, -0x1

    .line 190
    .end local v3           #previous:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 191
    goto :goto_0

    .line 182
    .restart local v2       #j:I
    .restart local v3       #previous:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/String;

    return-object v0
.end method

.method public setDebugString(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 149
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Debug info is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    .line 170
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
