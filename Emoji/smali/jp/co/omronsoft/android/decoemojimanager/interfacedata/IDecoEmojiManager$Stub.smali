.class public abstract Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;
.super Landroid/os/Binder;
.source "IDecoEmojiManager.java"

# interfaces
.implements Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "jp.co.omronsoft.android.decoemojimanager.interfacedata.IDecoEmojiManager"

.field static final TRANSACTION_aidl_changeDecoEmojiInfo:I = 0x5

.field static final TRANSACTION_aidl_checkDecoEmoji:I = 0x2

.field static final TRANSACTION_aidl_getCategoryList:I = 0x3

.field static final TRANSACTION_aidl_getDecoUri:I = 0x6

.field static final TRANSACTION_aidl_getDecoUriList:I = 0x4

.field static final TRANSACTION_aidl_operateDecoEmoji:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "jp.co.omronsoft.android.decoemojimanager.interfacedata.IDecoEmojiManager"

    invoke-virtual {p0, p0, v0}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "jp.co.omronsoft.android.decoemojimanager.interfacedata.IDecoEmojiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "jp.co.omronsoft.android.decoemojimanager.interfacedata.IDecoEmojiManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "jp.co.omronsoft.android.decoemojimanager.interfacedata.IDecoEmojiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;->aidl_operateDecoEmoji(Ljava/lang/String;I)I

    move-result v4

    .line 53
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_2
    const-string v6, "jp.co.omronsoft.android.decoemojimanager.interfacedata.IDecoEmojiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;->aidl_checkDecoEmoji(ILjava/lang/String;)I

    move-result v4

    .line 65
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_3
    const-string v6, "jp.co.omronsoft.android.decoemojimanager.interfacedata.IDecoEmojiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0       #_arg0:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, _arg1:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;>;"
    invoke-virtual {p0, v0, v2}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;->aidl_getCategoryList(ILjava/util/List;)I

    move-result v4

    .line 77
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;>;"
    .end local v4           #_result:I
    :sswitch_4
    const-string v6, "jp.co.omronsoft.android.decoemojimanager.interfacedata.IDecoEmojiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .local v1, _arg1:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v3, _arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1, v3}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;->aidl_getDecoUriList(IILjava/util/List;)I

    move-result v4

    .line 92
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 99
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_result:I
    :sswitch_5
    const-string v6, "jp.co.omronsoft.android.decoemojimanager.interfacedata.IDecoEmojiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    sget-object v6, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;

    .line 107
    .local v0, _arg0:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;
    :goto_1
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;->aidl_changeDecoEmojiInfo(Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;)I

    move-result v4

    .line 108
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 105
    .end local v0           #_arg0:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;
    .end local v4           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;
    goto :goto_1

    .line 114
    .end local v0           #_arg0:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;
    :sswitch_6
    const-string v6, "jp.co.omronsoft.android.decoemojimanager.interfacedata.IDecoEmojiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .local v0, _arg0:I
    new-instance v1, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;

    invoke-direct {v1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;-><init>()V

    .line 119
    .local v1, _arg1:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;
    invoke-virtual {p0, v0, v1}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;->aidl_getDecoUri(ILjp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;)I

    move-result v4

    .line 120
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {v1, p3, v5}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
