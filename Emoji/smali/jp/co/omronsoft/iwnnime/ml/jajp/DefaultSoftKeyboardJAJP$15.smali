.class Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;
.super Ljava/lang/Object;
.source "DefaultSoftKeyboardJAJP.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->showInputModeSwitchDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

.field final synthetic val$itemValues:[I


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3328
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->val$itemValues:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "inputModeSwitchDialog"
    .parameter "position"

    .prologue
    .line 3330
    packed-switch p2, :pswitch_data_0

    .line 3366
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3367
    return-void

    .line 3332
    :pswitch_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->val$itemValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_0

    .line 3336
    :pswitch_1
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->val$itemValues:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_0

    .line 3340
    :pswitch_2
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->val$itemValues:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_0

    .line 3344
    :pswitch_3
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->val$itemValues:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_0

    .line 3348
    :pswitch_4
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->val$itemValues:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_0

    .line 3352
    :pswitch_5
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->val$itemValues:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_0

    .line 3356
    :pswitch_6
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->val$itemValues:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_0

    .line 3360
    :pswitch_7
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP$15;->val$itemValues:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/jajp/DefaultSoftKeyboardJAJP;->changeKeyMode(I)V

    goto :goto_0

    .line 3330
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
