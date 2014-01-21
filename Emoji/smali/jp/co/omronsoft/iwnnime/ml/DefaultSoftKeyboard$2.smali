.class Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$2;
.super Ljava/lang/Object;
.source "DefaultSoftKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->showCategoryChangeMenu()V
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
    .line 596
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 598
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 599
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSymbolEngine;->isHistoryExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    add-int/lit8 p2, p2, 0x1

    .line 602
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    #setter for: Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategorySelected:I
    invoke-static {v0, p2}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->access$102(Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;I)I

    .line 603
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mWnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v2, -0xfffa000

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->mCategorySelected:I
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;->access$100(Ljp/co/omronsoft/iwnnime/ml/DefaultSoftKeyboard;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 605
    return-void
.end method
