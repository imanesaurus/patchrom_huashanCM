.class public Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;
.super Ljava/lang/Object;
.source "DecoEmojiAttrInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mName:[Ljava/lang/String;

.field private mNote:[Ljava/lang/String;

.field private mPart:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo$1;

    invoke-direct {v0}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo$1;-><init>()V

    .line 31
    sput-object v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mName:[Ljava/lang/String;

    .line 24
    new-array v0, v1, [B

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mPart:[B

    .line 26
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mNote:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/16 v1, 0xa

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mName:[Ljava/lang/String;

    .line 24
    new-array v0, v1, [B

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mPart:[B

    .line 26
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mNote:[Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mId:I

    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .parameter "idx"

    .prologue
    .line 102
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mName:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNote(I)Ljava/lang/String;
    .locals 1
    .parameter "idx"

    .prologue
    .line 134
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mNote:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPart(I)B
    .locals 1
    .parameter "idx"

    .prologue
    .line 110
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mPart:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mId:I

    .line 78
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mName:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mPart:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 80
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mNote:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setID(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 94
    iput p1, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mId:I

    .line 95
    return-void
.end method

.method public setName(ILjava/lang/String;)V
    .locals 1
    .parameter "idx"
    .parameter "name"

    .prologue
    .line 118
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mName:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 119
    return-void
.end method

.method public setNote(ILjava/lang/String;)V
    .locals 1
    .parameter "idx"
    .parameter "note"

    .prologue
    .line 142
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mNote:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 143
    return-void
.end method

.method public setPart(IB)V
    .locals 1
    .parameter "idx"
    .parameter "part"

    .prologue
    .line 126
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mPart:[B

    aput-byte p2, v0, p1

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 65
    iget v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mName:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mPart:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 68
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiAttrInfo;->mNote:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 69
    return-void
.end method
