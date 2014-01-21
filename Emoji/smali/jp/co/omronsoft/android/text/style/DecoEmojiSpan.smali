.class public Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DecoEmojiSpan.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DecoEmojiSpan"

.field private static final TEXT_UTILS_DECO_EMOJI_SPAN:I = 0x3e7


# instance fields
.field private mContentUri:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 53
    iput-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mExtras:Landroid/os/Bundle;

    .line 58
    iput-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mContentUri:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mExtras:Landroid/os/Bundle;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 53
    iput-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mExtras:Landroid/os/Bundle;

    .line 58
    iput-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

    .line 70
    iput-object p1, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mContentUri:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 181
    iget-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p8

    move-object/from16 v5, p9

    .line 182
    invoke-static/range {v0 .. v5}, Ljp/co/omronsoft/android/text/style/EmojiSpanUtil;->drawTextState(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V

    .line 184
    iget-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

    int-to-float v2, p7

    iget-object v3, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mContentUri:Ljava/lang/String;

    iget-object v6, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mContext:Landroid/content/Context;

    move v1, p5

    move-object v4, p1

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v6}, Ljp/co/omronsoft/android/text/EmojiDrawable;->drawDecoEmoji(FFLjava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/content/Context;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v0, "DecoEmojiSpan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "draw parameter is fail mEmojiDrawable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x3e7

    return v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 122
    iput-object p1, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method public setEmojiDrawable(Ljp/co/omronsoft/android/text/EmojiDrawable;)V
    .locals 0
    .parameter "emoji"

    .prologue
    .line 130
    iput-object p1, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mEmojiDrawable:Ljp/co/omronsoft/android/text/EmojiDrawable;

    .line 131
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 114
    iput-object p1, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mExtras:Landroid/os/Bundle;

    .line 115
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 105
    iget-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mContentUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Ljp/co/omronsoft/android/text/style/DecoEmojiSpan;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method
