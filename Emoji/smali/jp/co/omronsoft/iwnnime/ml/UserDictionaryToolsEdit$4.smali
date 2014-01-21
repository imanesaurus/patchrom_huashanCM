.class Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$4;
.super Ljava/lang/Object;
.source "UserDictionaryToolsEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 325
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 327
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEntryButton:Landroid/widget/Button;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->access$200(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->access$300(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    return-void
.end method
