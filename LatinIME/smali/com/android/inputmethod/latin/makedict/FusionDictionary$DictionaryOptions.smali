.class public final Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;
.super Ljava/lang/Object;
.source "FusionDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DictionaryOptions"
.end annotation


# instance fields
.field public final mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mFrenchLigatureProcessing:Z

.field public final mGermanUmlautProcessing:Z


# direct methods
.method public constructor <init>(Ljava/util/HashMap;ZZ)V
    .locals 0
    .parameter
    .parameter "germanUmlautProcessing"
    .parameter "frenchLigatureProcessing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;->mAttributes:Ljava/util/HashMap;

    .line 262
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;->mGermanUmlautProcessing:Z

    .line 263
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;->mFrenchLigatureProcessing:Z

    .line 264
    return-void
.end method
