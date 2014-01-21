.class Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$2;
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
    .line 56
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->finish()V

    .line 59
    return-void
.end method
