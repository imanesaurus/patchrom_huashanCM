.class public Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;
.super Ljava/lang/Object;
.source "DecoEmojiCategoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategory_id:I

.field private mCategory_name_eng:Ljava/lang/String;

.field private mCategory_name_jpn:Ljava/lang/String;

.field private mPageCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo$1;

    invoke-direct {v0}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo$1;-><init>()V

    .line 31
    sput-object v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->readFromParcel(Landroid/os/Parcel;)V

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

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_id:I

    return v0
.end method

.method public getCategoryName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName_jpn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_name_jpn:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCnt()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mPageCnt:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_id:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_name_jpn:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_name_eng:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mPageCnt:I

    .line 81
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .parameter "category_id"

    .prologue
    .line 116
    iput p1, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_id:I

    .line 117
    return-void
.end method

.method public setCategoryName_eng(Ljava/lang/String;)V
    .locals 0
    .parameter "category_name"

    .prologue
    .line 130
    iput-object p1, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_name_eng:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setCategoryName_jpn(Ljava/lang/String;)V
    .locals 0
    .parameter "category_name"

    .prologue
    .line 123
    iput-object p1, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_name_jpn:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPageCnt(I)V
    .locals 0
    .parameter "pagecnt"

    .prologue
    .line 137
    iput p1, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mPageCnt:I

    .line 138
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 65
    iget v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_name_jpn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mCategory_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;->mPageCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method
