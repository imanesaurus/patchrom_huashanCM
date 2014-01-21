.class Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$4;
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
    .line 220
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 223
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightPortrait:I
    invoke-static {v1}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->access$200(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)I

    move-result v1

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightLandScape:I
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->access$300(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)I

    move-result v2

    #calls: Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->editKeyHeight(II)V
    invoke-static {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->access$400(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;II)V

    .line 225
    return-void
.end method
