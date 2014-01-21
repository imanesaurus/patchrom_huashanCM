.class public Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;
.super Ljava/lang/Object;
.source "DecoEmojiModInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mName:[Ljava/lang/String;

.field private mNote:[Ljava/lang/String;

.field private mPart:[B

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo$1;

    invoke-direct {v0}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo$1;-><init>()V

    .line 30
    sput-object v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mName:[Ljava/lang/String;

    .line 24
    new-array v0, v1, [B

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mPart:[B

    .line 26
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mNote:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/16 v1, 0xa

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mName:[Ljava/lang/String;

    .line 24
    new-array v0, v1, [B

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mPart:[B

    .line 26
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mNote:[Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .parameter "idx"

    .prologue
    .line 115
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mName:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNote(I)Ljava/lang/String;
    .locals 1
    .parameter "idx"

    .prologue
    .line 140
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mNote:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPart(I)B
    .locals 1
    .parameter "idx"

    .prologue
    .line 124
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mPart:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mUri:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mName:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mPart:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 76
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mNote:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setName(ILjava/lang/String;)V
    .locals 1
    .parameter "idx"
    .parameter "name"

    .prologue
    .line 98
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mName:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 99
    return-void
.end method

.method public setNote(ILjava/lang/String;)V
    .locals 1
    .parameter "idx"
    .parameter "note"

    .prologue
    .line 132
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mNote:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 133
    return-void
.end method

.method public setPart(IB)V
    .locals 1
    .parameter "idx"
    .parameter "part"

    .prologue
    .line 107
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mPart:[B

    aput-byte p2, v0, p1

    .line 108
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 90
    iput-object p1, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mUri:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public sortParts()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 150
    new-array v2, v7, [Ljava/lang/String;

    .line 151
    .local v2, saveName:[Ljava/lang/String;
    new-array v4, v7, [B

    .line 152
    .local v4, savePart:[B
    new-array v3, v7, [Ljava/lang/String;

    .line 153
    .local v3, saveNote:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 156
    .local v1, roopNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 161
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v7, :cond_1

    .line 171
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v7, :cond_3

    .line 176
    return-void

    .line 157
    :cond_0
    const-string v5, ""

    aput-object v5, v2, v0

    .line 158
    const-string v5, ""

    aput-object v5, v3, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v5, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mName:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 163
    iget-object v5, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mName:[Ljava/lang/String;

    aget-object v5, v5, v0

    aput-object v5, v2, v1

    .line 164
    iget-object v5, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mPart:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v1

    .line 165
    iget-object v5, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mNote:[Ljava/lang/String;

    aget-object v5, v5, v0

    aput-object v5, v3, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    .line 161
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :cond_3
    iget-object v5, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mName:[Ljava/lang/String;

    aget-object v6, v2, v0

    aput-object v6, v5, v0

    .line 173
    iget-object v5, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mPart:[B

    aget-byte v6, v4, v0

    aput-byte v6, v5, v0

    .line 174
    iget-object v5, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mNote:[Ljava/lang/String;

    aget-object v6, v3, v0

    aput-object v6, v5, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 63
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mName:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mPart:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 66
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->mNote:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 67
    return-void
.end method
