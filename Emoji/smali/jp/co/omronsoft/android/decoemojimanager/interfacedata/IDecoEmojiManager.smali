.class public interface abstract Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
.super Ljava/lang/Object;
.source "IDecoEmojiManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract aidl_changeDecoEmojiInfo(Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiModInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract aidl_checkDecoEmoji(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract aidl_getCategoryList(ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiCategoryInfo;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract aidl_getDecoUri(ILjp/co/omronsoft/android/decoemojimanager/interfacedata/DecoEmojiUriInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract aidl_getDecoUriList(IILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract aidl_operateDecoEmoji(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
