.class Ljp/co/omronsoft/android/text/EmojiCacheKey;
.super Ljava/lang/Object;
.source "EmojiDrawable.java"


# static fields
.field private static final DEBUG_EMOJI:Z = false

.field private static final TAG:Ljava/lang/String; = "EmojiDrawable"


# instance fields
.field public first:I

.field public second:I

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 673
    invoke-direct {p0, v0, v0}, Ljp/co/omronsoft/android/text/EmojiCacheKey;-><init>(II)V

    .line 674
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "code"
    .parameter "fontLevel"

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public setData(II)V
    .locals 0
    .parameter "code"
    .parameter "fontLevel"

    .prologue
    .line 697
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 704
    return-void
.end method
