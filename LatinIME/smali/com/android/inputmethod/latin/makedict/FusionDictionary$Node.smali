.class public final Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;
.super Ljava/lang/Object;
.source "FusionDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation


# instance fields
.field mCachedAddress:I

.field mCachedParentAddress:I

.field mCachedSize:I

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/makedict/FusionDictionary$CharGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 46
    iput v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedAddress:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mCachedParentAddress:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    .line 51
    return-void
.end method
