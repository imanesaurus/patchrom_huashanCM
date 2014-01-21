.class Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo$1;
.super Ljava/lang/Object;
.source "DecoEmojiCategoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo$1;->createFromParcel(Landroid/os/Parcel;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 34
    new-instance v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;

    invoke-direct {v0, p1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo$1;->newArray(I)[Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 37
    new-array v0, p1, [Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;

    return-object v0
.end method
