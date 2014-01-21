.class Ljp/co/omronsoft/iwnnime/ml/OpenWnn$2;
.super Landroid/content/BroadcastReceiver;
.source "OpenWnn.java"


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
    .line 173
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 181
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mIsEmojiAssistWorking:Z
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$400(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$500(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->startAnimation()V

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    invoke-interface {v0}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->dismissPopupKeyboard()V

    .line 190
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onFinishInput()V

    .line 192
    :cond_1
    return-void

    .line 184
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/OpenWnn$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->mEmojiAssist:Ljp/co/omronsoft/android/emoji/EmojiAssist;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->access$500(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;)Ljp/co/omronsoft/android/emoji/EmojiAssist;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/omronsoft/android/emoji/EmojiAssist;->stopAnimation()V

    goto :goto_0
.end method
