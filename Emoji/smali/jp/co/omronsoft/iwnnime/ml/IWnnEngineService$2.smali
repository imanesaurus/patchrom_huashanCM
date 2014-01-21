.class Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$2;
.super Ljava/lang/Object;
.source "IWnnEngineService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 202
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    invoke-static {p2}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;->asInterface(Landroid/os/IBinder;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    move-result-object v1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$002(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    .line 203
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 207
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;

    const/4 v1, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;->access$002(Ljp/co/omronsoft/iwnnime/ml/IWnnEngineService;Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    .line 208
    return-void
.end method
