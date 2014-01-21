.class final Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;
.super Ljava/lang/Object;
.source "FusionDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Position"
.end annotation


# instance fields
.field public length:I

.field public pos:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 752
    .local p1, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;->pos:Ljava/util/Iterator;

    .line 754
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryIterator$Position;->length:I

    .line 755
    return-void
.end method
