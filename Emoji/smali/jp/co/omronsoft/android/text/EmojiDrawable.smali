.class public Ljp/co/omronsoft/android/text/EmojiDrawable;
.super Ljava/lang/Object;
.source "EmojiDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap;
    }
.end annotation


# static fields
.field public static final ANIMATION_INFINITE:I = -0x3e7

.field public static final ANIMATION_OFF:I = 0x0

.field private static final BASE_CACHE_SIZE:I = 0x1

.field private static final CALLBACK_MESSAGE:I = 0x3e7

.field private static final DEBUG_EMOJI:Z = false

.field private static final EMOJI_LIBRARY_PATH:Ljava/lang/String; = "/data/data/jp.co.omronsoft.android.decoemojimanager_docomo/lib/"

.field private static final GIF_CHECK_NUM:I = 0x4

.field private static final GIF_HEADER:[C = null

.field private static final GIF_START_CHAR:C = 'G'

.field private static final JPG_CHECK_NUM:I = 0x2

.field private static final JPG_HEADER:[C = null

.field private static final JPG_START_CHAR:C = '\u00ff'

.field private static final MAX_FONT_SIZE:F = 65535.0f

.field private static final MAX_MSG_COUNT:I = 0x270f

.field private static final TAG:Ljava/lang/String; = "EmojiDrawable"

.field private static sDuration:I

.field private static sEmojiArray:[I

.field private static sEmojiLibraryPath:Ljava/lang/String;

.field private static final sFactory:Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;

.field private static sFontSizeConvArray:[[I

.field private static sHasLoadedLibrary:Z

.field private static sTmpFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private static sTmpPaint:Landroid/graphics/Paint;

.field private static sTmpTextPaint:Landroid/text/TextPaint;

.field private static sWeakDataCache:Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap",
            "<",
            "Ljp/co/omronsoft/android/text/EmojiCacheKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sWeakEmojiCache:Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap",
            "<",
            "Ljp/co/omronsoft/android/text/EmojiCacheKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljp/co/omronsoft/android/emoji/Movie;",
            ">;>;"
        }
    .end annotation
.end field

.field private static searchKey:Ljp/co/omronsoft/android/text/EmojiCacheKey;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCode:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsStartedCallback:Z

.field private mLastFrame:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoopCount:I

.field private mMaxMsgCount:I

.field private mSavedCurrentTime:J

.field private mSentMsgCounter:I

.field private mText:Ljava/lang/String;

.field private mWhat:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/omronsoft/android/text/EmojiDrawable;->JPG_HEADER:[C

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Ljp/co/omronsoft/android/text/EmojiDrawable;->GIF_HEADER:[C

    .line 130
    sput-object v1, Ljp/co/omronsoft/android/text/EmojiDrawable;->sWeakEmojiCache:Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap;

    .line 135
    sput-object v1, Ljp/co/omronsoft/android/text/EmojiDrawable;->sWeakDataCache:Ljp/co/omronsoft/android/text/EmojiDrawable$CustomLinkedHashMap;

    .line 195
    sput-object v1, Ljp/co/omronsoft/android/text/EmojiDrawable;->sFactory:Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;

    .line 200
    const/16 v0, 0x258

    sput v0, Ljp/co/omronsoft/android/text/EmojiDrawable;->sDuration:I

    .line 205
    sput-object v1, Ljp/co/omronsoft/android/text/EmojiDrawable;->sEmojiArray:[I

    move-object v0, v1

    .line 209
    check-cast v0, [[I

    sput-object v0, Ljp/co/omronsoft/android/text/EmojiDrawable;->sFontSizeConvArray:[[I

    .line 214
    new-instance v0, Ljp/co/omronsoft/android/text/EmojiCacheKey;

    invoke-direct {v0}, Ljp/co/omronsoft/android/text/EmojiCacheKey;-><init>()V

    sput-object v0, Ljp/co/omronsoft/android/text/EmojiDrawable;->searchKey:Ljp/co/omronsoft/android/text/EmojiCacheKey;

    .line 224
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ljp/co/omronsoft/android/text/EmojiDrawable;->sTmpPaint:Landroid/graphics/Paint;

    .line 229
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Ljp/co/omronsoft/android/text/EmojiDrawable;->sTmpTextPaint:Landroid/text/TextPaint;

    .line 234
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    sput-object v0, Ljp/co/omronsoft/android/text/EmojiDrawable;->sTmpFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 239
    sput-object v1, Ljp/co/omronsoft/android/text/EmojiDrawable;->sEmojiLibraryPath:Ljava/lang/String;

    .line 279
    return-void

    .line 110
    nop

    :array_0
    .array-data 0x2
        0xfft 0x0t
        0xd8t 0x0t
    .end array-data

    .line 125
    :array_1
    .array-data 0x2
        0x47t 0x0t
        0x49t 0x0t
        0x46t 0x0t
        0x38t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mCode:I

    .line 145
    iput-object v3, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mCanvas:Landroid/graphics/Canvas;

    .line 150
    iput-object v3, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mHandler:Landroid/os/Handler;

    .line 155
    iput v2, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mWhat:I

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mWidth:F

    .line 165
    iput-boolean v2, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mIsStartedCallback:Z

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mSavedCurrentTime:J

    .line 175
    iput-object v3, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mText:Ljava/lang/String;

    .line 180
    iput v2, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mMaxMsgCount:I

    .line 185
    iput v2, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mSentMsgCounter:I

    .line 190
    const/16 v0, -0x3e7

    iput v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mLoopCount:I

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mLastFrame:Ljava/util/HashMap;

    .line 284
    iput-object v3, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->handler:Landroid/os/Handler;

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mCode:I

    .line 145
    iput-object v3, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mCanvas:Landroid/graphics/Canvas;

    .line 150
    iput-object v3, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mHandler:Landroid/os/Handler;

    .line 155
    iput v2, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mWhat:I

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mWidth:F

    .line 165
    iput-boolean v2, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mIsStartedCallback:Z

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mSavedCurrentTime:J

    .line 175
    iput-object v3, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mText:Ljava/lang/String;

    .line 180
    iput v2, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mMaxMsgCount:I

    .line 185
    iput v2, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mSentMsgCounter:I

    .line 190
    const/16 v0, -0x3e7

    iput v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mLoopCount:I

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->mLastFrame:Ljava/util/HashMap;

    .line 284
    iput-object v3, p0, Ljp/co/omronsoft/android/text/EmojiDrawable;->handler:Landroid/os/Handler;

    .line 296
    return-void
.end method

.method private static checkEmojiData([BLjava/lang/ref/WeakReference;Ljp/co/omronsoft/android/text/EmojiCacheKey;)Ljava/lang/Object;
    .locals 1
    .parameter "buffer"
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljp/co/omronsoft/android/text/EmojiCacheKey;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 597
    .local v0, obj:Ljava/lang/Object;
    return-object v0
.end method

.method private static compareHeader([C[CI)Z
    .locals 1
    .parameter "checkHeader"
    .parameter "header"
    .parameter "num"

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method private drawCharInString(FFFCFLandroid/graphics/Canvas;Landroid/graphics/Paint;)F
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "nextX"
    .parameter "c"
    .parameter "maxWidth"
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method private drawEmojiInString(FFFIFLandroid/graphics/Canvas;FFLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "nextX"
    .parameter "code"
    .parameter "maxWidth"
    .parameter "canvas"
    .parameter "textSize"
    .parameter "textScaleX"
    .parameter "fm"

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method private static getEmojiData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 575
    const/4 v0, 0x0

    .line 577
    .local v0, obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static getEmojiGifData(IF)[B
    .locals 1
    .parameter "code"
    .parameter "textsize"

    .prologue
    .line 618
    sget-object v0, Ljp/co/omronsoft/android/text/EmojiDrawable;->sFactory:Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;

    invoke-virtual {v0, p0, p1}, Ljp/co/omronsoft/android/emoji/AnimatedEmojiFactory;->getImageBinary(IF)[B

    move-result-object v0

    return-object v0
.end method

.method public static final native getEmojiLibraryPath()Ljava/lang/String;
.end method

.method public static getEmojiWidth(ILandroid/graphics/Paint;)F
    .locals 1
    .parameter "code"
    .parameter "paint"

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method private static getFontLevel(F)I
    .locals 1
    .parameter "fontsize"

    .prologue
    .line 314
    const/4 v0, -0x1

    return v0
.end method

.method private static getMovie(IF)Ljp/co/omronsoft/android/emoji/Movie;
    .locals 1
    .parameter "code"
    .parameter "fontsize"

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNextDuration()J
    .locals 2

    .prologue
    .line 328
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getTextWidths(Ljava/lang/CharSequence;Landroid/text/TextPaint;[F)I
    .locals 1
    .parameter "text"
    .parameter "paint"
    .parameter "widths"

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method private getTimeFrame(I)I
    .locals 1
    .parameter "duration"

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method private static initializeLibraryPath()V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public static isAnimatedEmoji(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public static isEmoji(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public static isEmoji(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public static isLoadedLibrary()Z
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method private static loadEmojiLibrary(Ljava/lang/String;)V
    .locals 0
    .parameter "libraryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 626
    return-void
.end method

.method private maxCallbackMsgCnt(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 372
    return-void
.end method

.method private maxCallbackMsgCnt(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 365
    return-void
.end method

.method private static safeLoadLibrary(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, result:Z
    return v0
.end method

.method private saveCurrentTime()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method private setDefaultTimeFrame(I)I
    .locals 1
    .parameter "code"

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method private setSpecificTimeFrame(II)I
    .locals 1
    .parameter "code"
    .parameter "duration"

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public drawDecoEmoji(FFLjava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/content/Context;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "uri"
    .parameter "canvas"
    .parameter "paint"
    .parameter "context"

    .prologue
    .line 566
    return-void
.end method

.method public drawEmoji(FFFFLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "textSize"
    .parameter "textScaleX"
    .parameter "fm"

    .prologue
    .line 465
    return-void
.end method

.method public drawEmoji(FFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 453
    return-void
.end method

.method public drawString(FFLandroid/graphics/Paint;F)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "paint"
    .parameter "maxWidth"

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawnWidth()F
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public setAnimationLoopCount(I)V
    .locals 0
    .parameter "cnt"

    .prologue
    .line 524
    return-void
.end method

.method public setCallbackDrawing(Landroid/os/Handler;I)V
    .locals 0
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 430
    return-void
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 517
    return-void
.end method

.method public setEmoji(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 531
    return-void
.end method

.method public setEmojiCacheSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 553
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 538
    return-void
.end method

.method public startCallbackDrawing()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public stopCallbackDrawing()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method
