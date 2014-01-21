.class Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$3;
.super Ljava/lang/Object;
.source "ControlPanelStandard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 521
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 522
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mVoicePreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$600(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 524
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    const/4 v1, 0x1

    #setter for: Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mOkClicked:Z
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$702(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;Z)Z

    goto :goto_0
.end method
