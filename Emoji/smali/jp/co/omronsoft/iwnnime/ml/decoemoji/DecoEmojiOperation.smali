.class public Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;
.super Ljava/lang/Object;
.source "DecoEmojiOperation.java"


# instance fields
.field private mDecoEmojiAttrInfo:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;

.field private mType:I


# direct methods
.method public constructor <init>(Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;I)V
    .locals 0
    .parameter "decoemojiattrinfo"
    .parameter "type"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;->mDecoEmojiAttrInfo:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;

    .line 24
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;->mType:I

    .line 25
    return-void
.end method


# virtual methods
.method public getDecoEmojiAttrInfo()[Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;

    const/4 v1, 0x0

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;->mDecoEmojiAttrInfo:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiOperation;->mType:I

    return v0
.end method
