.class public Lcom/cyanogenmod/settings/device/Startup;
.super Landroid/content/BroadcastReceiver;
.source "Startup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "bootintent"

    .prologue
    .line 27
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/HapticFragmentActivity;->restore(Landroid/content/Context;)V

    .line 28
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->restore(Landroid/content/Context;)V

    .line 29
    return-void
.end method
