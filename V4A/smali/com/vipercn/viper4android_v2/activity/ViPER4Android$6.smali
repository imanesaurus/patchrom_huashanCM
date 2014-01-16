.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 553
    const-string v0, "ViPER4Android"

    const-string v1, "Init environment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->InitEnvironment(Landroid/content/Context;)V

    .line 557
    const-string v0, "ViPER4Android"

    const-string v1, "Check driver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #calls: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->ProcessDriverCheck()V
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$5(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V

    .line 559
    return-void
.end method
