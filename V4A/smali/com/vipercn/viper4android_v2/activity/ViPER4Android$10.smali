.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

.field private final synthetic val$nCurrentPage:I


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    iput p2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->val$nCurrentPage:I

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    .locals 1
    .parameter

    .prologue
    .line 859
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v11, 0x7f060098

    const/4 v10, 0x2

    .line 863
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetV4AProfilePath()Ljava/lang/String;

    move-result-object v6

    .line 864
    .local v6, szProfilePath:Ljava/lang/String;
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Load effect profile, current page = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->val$nCurrentPage:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    .line 866
    .local v4, szPreferenceName:[Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "com.vipercn.viper4android_v2.headset"

    aput-object v8, v4, v7

    .line 867
    const/4 v7, 0x1

    const-string v8, "com.vipercn.viper4android_v2.speaker"

    aput-object v8, v4, v7

    .line 868
    const-string v7, "com.vipercn.viper4android_v2.bluetooth"

    aput-object v7, v4, v10

    .line 871
    iget v2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->val$nCurrentPage:I

    .line 872
    .local v2, nIndex:I
    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 873
    :cond_0
    if-le v2, v10, :cond_1

    const/4 v2, 0x2

    .line 876
    :cond_1
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 877
    .local v0, arrayProfileList:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, nPrfIdx:I
    :goto_0
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 879
    aget-object v5, v0, p2

    .line 880
    .local v5, szProfileName:Ljava/lang/String;
    aget-object v7, v4, v2

    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/vipercn/viper4android_v2/activity/Utils;->LoadProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 882
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 883
    .local v1, mResult:Landroid/app/AlertDialog$Builder;
    const-string v7, "ViPER4Android"

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 884
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060095

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 885
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10$1;

    invoke-direct {v8, p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10$1;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 887
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 897
    :goto_1
    return-void

    .line 878
    .end local v1           #mResult:Landroid/app/AlertDialog$Builder;
    .end local v5           #szProfileName:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v0, v3

    .line 877
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 891
    .restart local v5       #szProfileName:Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 892
    .restart local v1       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v7, "ViPER4Android"

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 893
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060096

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 894
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 895
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method
