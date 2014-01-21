.class Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase$1;
.super Ljava/lang/Object;
.source "IWnnImeBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->showVoiceWarningDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 691
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->reallyStartShortcutIME()V

    .line 692
    return-void
.end method
