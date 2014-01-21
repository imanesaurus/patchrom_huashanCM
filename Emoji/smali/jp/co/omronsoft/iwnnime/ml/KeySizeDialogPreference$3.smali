.class Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$3;
.super Ljava/lang/Object;
.source "KeySizeDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 216
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->onDialogClosed(Z)V

    .line 217
    return-void
.end method
