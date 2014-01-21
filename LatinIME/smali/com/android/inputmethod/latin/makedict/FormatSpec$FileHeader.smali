.class final Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;
.super Ljava/lang/Object;
.source "FormatSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/makedict/FormatSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FileHeader"
.end annotation


# instance fields
.field public final mDictionaryOptions:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;

.field public final mFormatOptions:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

.field public final mHeaderSize:I


# direct methods
.method public constructor <init>(ILcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;)V
    .locals 0
    .parameter "headerSize"
    .parameter "dictionaryOptions"
    .parameter "formatOptions"

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput p1, p0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mHeaderSize:I

    .line 250
    iput-object p2, p0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mDictionaryOptions:Lcom/android/inputmethod/latin/makedict/FusionDictionary$DictionaryOptions;

    .line 251
    iput-object p3, p0, Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;->mFormatOptions:Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;

    .line 252
    return-void
.end method
