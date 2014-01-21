.class Ljp/co/omronsoft/iwnnime/ml/OpenWnn$1;
.super Ljava/lang/Object;
.source "OpenWnn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 148
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onServiceConnected() START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-static {p2}, Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager$Stub;->asInterface(Landroid/os/IBinder;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    move-result-object v1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$102(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    .line 151
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    #calls: Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getPreferenceId()I
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$200(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    #calls: Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->callCheckDecoEmoji()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$300(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)V

    .line 155
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OpenWnn"

    const-string v1, "onServiceConnected() END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 159
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onServiceDisconnected() START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    const/4 v1, 0x0

    #setter for: Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mDecoEmojiInterface:Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$102(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;)Ljp/co/omronsoft/android/decoemojimanager/interfacedata/IDecoEmojiManager;

    .line 161
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "onServiceDisconnected() END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    return-void
.end method
