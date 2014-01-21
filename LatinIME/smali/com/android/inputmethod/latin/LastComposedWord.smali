.class public final Lcom/android/inputmethod/latin/LastComposedWord;
.super Ljava/lang/Object;
.source "LastComposedWord.java"


# static fields
.field public static final NOT_A_COMPOSED_WORD:Lcom/android/inputmethod/latin/LastComposedWord;


# instance fields
.field private mActive:Z

.field public final mCommittedWord:Ljava/lang/String;

.field public final mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

.field public final mPrevWord:Ljava/lang/CharSequence;

.field public final mPrimaryKeyCodes:[I

.field public final mSeparatorString:Ljava/lang/String;

.field public final mTypedWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 52
    new-instance v0, Lcom/android/inputmethod/latin/LastComposedWord;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v2, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/LastComposedWord;-><init>([ILcom/android/inputmethod/latin/InputPointers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/android/inputmethod/latin/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/android/inputmethod/latin/LastComposedWord;

    return-void
.end method

.method public constructor <init>([ILcom/android/inputmethod/latin/InputPointers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "primaryKeyCodes"
    .parameter "inputPointers"
    .parameter "typedWord"
    .parameter "committedWord"
    .parameter "separatorString"
    .parameter "prevWord"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/inputmethod/latin/InputPointers;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/InputPointers;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    .line 60
    iput-object p1, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mPrimaryKeyCodes:[I

    .line 61
    if-eqz p2, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mInputPointers:Lcom/android/inputmethod/latin/InputPointers;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/latin/InputPointers;->copy(Lcom/android/inputmethod/latin/InputPointers;)V

    .line 64
    :cond_0
    iput-object p3, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mTypedWord:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mCommittedWord:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mSeparatorString:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mActive:Z

    .line 68
    iput-object p6, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mPrevWord:Ljava/lang/CharSequence;

    .line 69
    return-void
.end method

.method private didCommitTypedWord()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mTypedWord:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mCommittedWord:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static getSeparatorLength(Ljava/lang/String;)I
    .locals 1
    .parameter "separatorString"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public canRevertCommit()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mCommittedWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LastComposedWord;->didCommitTypedWord()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LastComposedWord;->mActive:Z

    .line 73
    return-void
.end method
