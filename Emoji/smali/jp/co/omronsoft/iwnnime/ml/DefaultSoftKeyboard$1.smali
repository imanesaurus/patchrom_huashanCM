.class Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;
.super Ljava/lang/Object;
.source "DefaultSoftKeyboard.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 6
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 524
    sparse-switch p1, :sswitch_data_0

    .line 558
    :goto_0
    return-void

    .line 526
    :sswitch_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xffffff9

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 531
    :sswitch_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffd000

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 535
    :sswitch_2
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->showCategoryChangeMenu()V

    goto :goto_0

    .line 538
    :sswitch_3
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfff9fff

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 541
    :sswitch_4
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfff9ffe

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 545
    :sswitch_5
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffcfff

    invoke-direct {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 549
    :sswitch_6
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 552
    :sswitch_7
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->handleLanguageSwitchKey()V

    goto :goto_0

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        -0x25a -> :sswitch_4
        -0x259 -> :sswitch_3
        -0x258 -> :sswitch_2
        -0x19c -> :sswitch_7
        -0xea -> :sswitch_6
        -0xe9 -> :sswitch_5
        -0xe8 -> :sswitch_1
        -0xe7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPress(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 560
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    #calls: Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->playSoundAndVibration(I)V
    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->access$000(Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;I)V

    .line 561
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 568
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->deleteSurrogateText(I)V

    .line 569
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 562
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method
