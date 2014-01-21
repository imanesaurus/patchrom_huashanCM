.class Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$3;
.super Ljava/lang/Object;
.source "UserDictionaryToolsEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 334
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEntryButton:Landroid/widget/Button;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->access$200(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->access$300(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    return-void
.end method
