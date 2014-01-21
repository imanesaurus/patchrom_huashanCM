.class public final Lcom/android/inputmethod/latin/FileTransforms;
.super Ljava/lang/Object;
.source "FileTransforms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .parameter "in"

    .prologue
    .line 32
    return-object p0
.end method

.method public static getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
