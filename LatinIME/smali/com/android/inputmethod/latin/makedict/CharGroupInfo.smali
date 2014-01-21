.class public final Lcom/android/inputmethod/latin/makedict/CharGroupInfo;
.super Ljava/lang/Object;
.source "CharGroupInfo.java"


# instance fields
.field public final mBigrams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/PendingAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public final mCharacters:[I

.field public final mChildrenAddress:I

.field public final mEndAddress:I

.field public final mFlags:I

.field public final mFrequency:I

.field public final mOriginalAddress:I

.field public final mParentAddress:I

.field public final mShortcutTargets:Ljava/util/ArrayList;
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
.method public constructor <init>(III[IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "originalAddress"
    .parameter "endAddress"
    .parameter "flags"
    .parameter "characters"
    .parameter "frequency"
    .parameter "parentAddress"
    .parameter "childrenAddress"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[IIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/PendingAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p8, shortcutTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$WeightedString;>;"
    .local p9, bigrams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/PendingAttribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mOriginalAddress:I

    .line 43
    iput p2, p0, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mEndAddress:I

    .line 44
    iput p3, p0, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mFlags:I

    .line 45
    iput-object p4, p0, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mCharacters:[I

    .line 46
    iput p5, p0, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mFrequency:I

    .line 47
    iput p6, p0, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mParentAddress:I

    .line 48
    iput p7, p0, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mChildrenAddress:I

    .line 49
    iput-object p8, p0, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mShortcutTargets:Ljava/util/ArrayList;

    .line 50
    iput-object p9, p0, Lcom/android/inputmethod/latin/makedict/CharGroupInfo;->mBigrams:Ljava/util/ArrayList;

    .line 51
    return-void
.end method
