.class final Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;
.super Ljava/lang/Object;
.source "BinaryDictionaryGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/BinaryDictionaryGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileAndMatchLevel"
.end annotation


# instance fields
.field final mFile:Ljava/io/File;

.field final mMatchLevel:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0
    .parameter "file"
    .parameter "matchLevel"

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;->mFile:Ljava/io/File;

    .line 257
    iput p2, p0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$FileAndMatchLevel;->mMatchLevel:I

    .line 258
    return-void
.end method
