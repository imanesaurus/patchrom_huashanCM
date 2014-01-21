.class Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;
.super Ljava/lang/Object;
.source "DefaultSoftKeyboardJAJP.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->showLongPressMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;)V
    .locals 0
    .parameter

    .prologue
    .line 3682
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "longPressDialog"
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3684
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->getCurrentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3685
    .local v0, c:Landroid/content/Context;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v3

    .line 3686
    .local v3, wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mMenuItem:[I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->access$000(Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;)[I

    move-result-object v4

    aget v4, v4, p2

    packed-switch v4, :pswitch_data_0

    .line 3728
    :cond_0
    :goto_0
    return-void

    .line 3689
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3690
    invoke-virtual {v3, v6}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->requestHideSelf(I)V

    .line 3691
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3692
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3693
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3694
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3699
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v4, "input_method"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 3701
    .local v2, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3702
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 3707
    .end local v2           #manager:Landroid/view/inputmethod/InputMethodManager;
    :pswitch_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3708
    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v5, -0xfffe000

    invoke-direct {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    goto :goto_0

    .line 3713
    :pswitch_3
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->access$100(Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;)I

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->access$200()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 3714
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    invoke-virtual {v4, v6}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboardType(I)V

    goto :goto_0

    .line 3715
    :cond_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->mCurrentKeyboardType:I
    invoke-static {v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->access$300(Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;)I

    move-result v4

    if-nez v4, :cond_0

    .line 3716
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    invoke-virtual {v4, v7}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyboardType(I)V

    goto :goto_0

    .line 3722
    :pswitch_4
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$16;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->showInputModeSwitchDialog()Z

    goto :goto_0

    .line 3686
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
