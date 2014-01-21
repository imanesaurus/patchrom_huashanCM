.class Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme$1;
.super Ljava/lang/Object;
.source "IWnnMorpheme.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 33
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;

    invoke-static {p2}, Ljp/co/omronsoft/iwnnime/ml/IMorphemeService$Stub;->asInterface(Landroid/os/IBinder;)Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;

    move-result-object v1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->access$002(Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;)Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;

    .line 34
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 38
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;

    const/4 v1, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->mServiceIf:Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;->access$002(Ljp/co/omronsoft/iwnnime/ml/IWnnMorpheme;Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;)Ljp/co/omronsoft/iwnnime/ml/IMorphemeService;

    .line 39
    return-void
.end method
