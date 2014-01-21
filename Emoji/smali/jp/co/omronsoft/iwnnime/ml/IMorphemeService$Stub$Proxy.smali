.class Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMorphemeService.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 75
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IMorphemeService"

    return-object v0
.end method

.method public splitWord(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 6
    .parameter "input"
    .parameter "readingsMax"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 97
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "jp.co.omronsoft.iwnnime.ml.IMorphemeService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .local v2, _result:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    return-object v2

    .line 106
    .end local v2           #_result:Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/os/Bundle;
    goto :goto_0

    .line 110
    .end local v2           #_result:Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
