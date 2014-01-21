.class Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference$1;
.super Ljava/lang/Object;
.source "MultiChoicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 118
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;

    invoke-virtual {v0, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/MultiChoicePreference;->onMultiChoiceItemsClick(IZ)V

    .line 119
    return-void
.end method
