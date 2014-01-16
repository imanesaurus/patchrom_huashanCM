.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;

.field private final synthetic val$ctxInstance:Landroid/content/Context;

.field private final synthetic val$szResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->this$3:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;

    iput-object p2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->val$ctxInstance:Landroid/content/Context;

    iput-object p3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->val$szResult:Ljava/lang/String;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f060098

    .line 342
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->val$ctxInstance:Landroid/content/Context;

    iget-object v2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->val$szResult:Ljava/lang/String;

    invoke-static {v2}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->DetermineCPUWithDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vipercn/viper4android_v2/activity/Utils;->InstallDrv_FX(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, mResult:Landroid/app/AlertDialog$Builder;
    const-string v1, "ViPER4Android"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 346
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 347
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 358
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 359
    return-void

    .line 352
    .end local v0           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    .restart local v0       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v1, "ViPER4Android"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 354
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 355
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
