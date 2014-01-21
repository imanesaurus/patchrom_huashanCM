.class public Ljp/co/omronsoft/android/emoji/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field private final mNativeMovie:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .parameter "nativeMovie"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput p1, p0, Ljp/co/omronsoft/android/emoji/Movie;->mNativeMovie:I

    .line 34
    return-void
.end method

.method public static native decodeByteArray([BII)Ljp/co/omronsoft/android/emoji/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Ljp/co/omronsoft/android/emoji/Movie;
    .locals 3
    .parameter "pathName"

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Ljp/co/omronsoft/android/emoji/Movie;->decodeTempStream(Ljava/io/InputStream;)Ljp/co/omronsoft/android/emoji/Movie;

    move-result-object v2

    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static native decodeStream(Ljava/io/InputStream;)Ljp/co/omronsoft/android/emoji/Movie;
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Ljp/co/omronsoft/android/emoji/Movie;
    .locals 2
    .parameter "is"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, moov:Ljp/co/omronsoft/android/emoji/Movie;
    :try_start_0
    invoke-static {p0}, Ljp/co/omronsoft/android/emoji/Movie;->decodeStream(Ljava/io/InputStream;)Ljp/co/omronsoft/android/emoji/Movie;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private native deleteMovie(I)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 1
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljp/co/omronsoft/android/emoji/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

.method public native draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Ljp/co/omronsoft/android/emoji/Movie;->mNativeMovie:I

    invoke-direct {p0, v0}, Ljp/co/omronsoft/android/emoji/Movie;->deleteMovie(I)V

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 82
    return-void
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
