.class Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$1;
.super Ljava/lang/Object;
.source "KeySizeDialogPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->onBindDialogView(Landroid/view/View;)V
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
    .line 120
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 124
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;

    #calls: Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->setSeekBarLandscape()V
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->access$000(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)V

    .line 125
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 129
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 133
    return-void
.end method
