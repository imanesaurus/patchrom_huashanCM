.class public final Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;
.super Ljava/lang/Object;
.source "AnimatedEmojiFactory.java"


# static fields
.field private static final DEBUG_EMOJI:Z = false

.field private static final TAG:Ljava/lang/String; = "AnimatedEmojiFactory"


# instance fields
.field private mName:Ljava/lang/String;

.field private mNativeAnimatedEmojiFactory:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "nativeAnimatedEmojiFactory"
    .parameter "name"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    .line 51
    iput-object p2, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static createInstance()Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {v0}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->createInstance(Ljava/lang/String;)Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;

    move-result-object v0

    return-object v0
.end method

.method public static native createInstance(Ljava/lang/String;)Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;
.end method

.method private declared-synchronized destructor()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    invoke-direct {p0, v0}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isType2()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method private native nativeDestructor(I)V
.end method

.method private native nativeGetBitmap(IIIF)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetDefaultFrameNumber(II)I
.end method

.method private native nativeGetFontSize(I)[[I
.end method

.method private native nativeGetFrameCount(II)I
.end method

.method private native nativeGetImageBinary(IIF)[B
.end method

.method private native nativeGetMovieDuration(I)I
.end method

.method private native nativeGetPuaCode(I)[I
.end method

.method private native nativeGetWidth(IIF)I
.end method

.method private native nativeIsEmoji(II)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    invoke-direct {p0}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->destructor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 66
    return-void

    .line 63
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getBitmap(IIF)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "code"
    .parameter "frameNo"
    .parameter "size"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    invoke-direct {p0, v1, p1, p2, p3}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->nativeGetBitmap(IIIF)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 176
    .local v0, ret:Landroid/graphics/Bitmap;
    monitor-exit p0

    return-object v0

    .line 174
    .end local v0           #ret:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDefaultFrameNumber(I)I
    .locals 1
    .parameter "code"

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    invoke-direct {p0, v0, p1}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->nativeGetDefaultFrameNumber(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFontSize()[[I
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    invoke-direct {p0, v0}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->nativeGetFontSize(I)[[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFrameCount(I)I
    .locals 1
    .parameter "code"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    invoke-direct {p0, v0, p1}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->nativeGetFrameCount(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImageBinary(IF)[B
    .locals 1
    .parameter "code"
    .parameter "size"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    invoke-direct {p0, v0, p1, p2}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->nativeGetImageBinary(IIF)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMovieDuration()I
    .locals 1

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    invoke-direct {p0, v0}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->nativeGetMovieDuration(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPuaCode()[I
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    invoke-direct {p0, v0}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->nativeGetPuaCode(I)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth(IF)I
    .locals 1
    .parameter "code"
    .parameter "size"

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    invoke-direct {p0, v0, p1, p2}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->nativeGetWidth(IIF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmoji(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mNativeAnimatedEmojiFactory:I

    invoke-direct {p0, v0, p1}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->nativeIsEmoji(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->mName:Ljava/lang/String;

    return-object v0
.end method
