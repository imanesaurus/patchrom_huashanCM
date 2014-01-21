.class public Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;
.super Ljava/lang/Object;
.source "DecoEmojiUriInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo$1;

    invoke-direct {v0}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo$1;-><init>()V

    .line 25
    sput-object v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;->mUri:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 81
    iput-object p1, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;->mUri:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
