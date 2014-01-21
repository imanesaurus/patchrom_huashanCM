.class Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$1;
.super Ljava/lang/Object;
.source "UserDictionaryToolsEdit.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->setAddButtonControl()V
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
    .line 196
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 198
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 200
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 203
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->access$000(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCandidateEditText:Landroid/widget/EditText;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->access$100(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEntryButton:Landroid/widget/Button;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->access$200(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEntryButton:Landroid/widget/Button;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->access$200(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
