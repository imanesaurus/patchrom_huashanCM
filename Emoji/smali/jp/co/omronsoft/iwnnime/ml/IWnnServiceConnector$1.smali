.class Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;
.super Ljava/lang/Object;
.source "IWnnServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v2, 0x1

    .line 77
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;

    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->asInterface(Landroid/os/IBinder;)Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    move-result-object v1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->access$002(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;Ljp/co/omronsoft/iwnnime/ml/IEngineService;)Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    .line 78
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mIsBind:Z
    invoke-static {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->access$102(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;Z)Z

    .line 79
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;

    invoke-virtual {v0, v2}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->init(I)I

    .line 80
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mConnectListener:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;)Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mConnectListener:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;)Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;

    move-result-object v0

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;->onConnect()V

    .line 83
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 88
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;

    const/4 v1, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IEngineService;
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->access$002(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;Ljp/co/omronsoft/iwnnime/ml/IEngineService;)Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    .line 89
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;

    const/4 v1, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mIsBind:Z
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->access$102(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;Z)Z

    .line 90
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mConnectListener:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;)Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->mConnectListener:Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;->access$200(Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector;)Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;

    move-result-object v0

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnServiceConnector$OnConnectListener;->onDisconnect()V

    .line 93
    :cond_0
    return-void
.end method
