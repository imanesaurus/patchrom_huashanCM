.class Lcom/cyanogenmod/settings/device/VibratorTuningPreference$2;
.super Ljava/lang/Object;
.source "VibratorTuningPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/device/VibratorTuningPreference;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/device/VibratorTuningPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference$2;->this$0:Lcom/cyanogenmod/settings/device/VibratorTuningPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference$2;->this$0:Lcom/cyanogenmod/settings/device/VibratorTuningPreference;

    #getter for: Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->access$100(Lcom/cyanogenmod/settings/device/VibratorTuningPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->access$000()I

    move-result v1

    invoke-static {v1}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->strengthToPercent(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    return-void
.end method
