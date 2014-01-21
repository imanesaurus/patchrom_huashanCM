.class Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$1;
.super Ljava/lang/Object;
.source "PhraseEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 50
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mFieldPhrase:Landroid/widget/EditText;
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->access$000(Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, phrase:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;

    #calls: Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->savePhrase(Ljava/lang/String;)V
    invoke-static {v1, v0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->access$100(Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
