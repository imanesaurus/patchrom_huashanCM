.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;
.super Landroid/app/DialogFragment;
.source "ViPER4Android.java"


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


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    .line 749
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .parameter "inflater"
    .parameter "container"
    .parameter "state"

    .prologue
    .line 754
    iget-object v11, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v11}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v11

    if-nez v11, :cond_0

    .line 756
    const/high16 v11, 0x7f03

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 757
    .local v10, v:Landroid/view/View;
    const/high16 v11, 0x7f08

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 758
    .local v9, tv:Landroid/widget/TextView;
    const v11, 0x7f0600aa

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 798
    :goto_0
    return-object v10

    .line 763
    .end local v9           #tv:Landroid/widget/TextView;
    .end local v10           #v:Landroid/view/View;
    :cond_0
    iget-object v11, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v11}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->StartStatusUpdating()V

    .line 764
    const-wide/16 v11, 0x1f4

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 765
    iget-object v11, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v11}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->StopStatusUpdating()V

    .line 767
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06008a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 768
    .local v5, szDrvNEONEnabled:Ljava/lang/String;
    iget-object v11, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v11}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverNEON()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06008b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 769
    :cond_1
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06008a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, szDrvEnabled:Ljava/lang/String;
    iget-object v11, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v11}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06008b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 771
    :cond_2
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06008c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 772
    .local v8, szDrvUsable:Ljava/lang/String;
    iget-object v11, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v11}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverUsable()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06008d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 773
    :cond_3
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06008a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 774
    .local v6, szDrvProcess:Ljava/lang/String;
    iget-object v11, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v11}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverProcess()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06008b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 776
    :cond_4
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060083

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, szDrvEffType:Ljava/lang/String;
    iget-object v11, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v11}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverEffectType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 778
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060084

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 782
    :cond_5
    :goto_1
    new-instance v0, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;

    new-instance v11, Lcom/vipercn/viper4android_v2/activity/Utils;

    invoke-direct {v11}, Lcom/vipercn/viper4android_v2/activity/Utils;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v11}, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;-><init>(Lcom/vipercn/viper4android_v2/activity/Utils;)V

    .line 783
    .local v0, aeuUtils:Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;
    invoke-virtual {v0}, Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;->GetViPER4AndroidEngineVersion()[I

    move-result-object v1

    .line 784
    .local v1, iaDrvVer:[I
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget v12, v1, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 786
    .local v2, szDriverVersion:Ljava/lang/String;
    const-string v7, ""

    .line 787
    .local v7, szDrvStatus:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0600a9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 788
    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 789
    aput-object v2, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    const/4 v12, 0x2

    .line 790
    aput-object v4, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    const/4 v12, 0x4

    aput-object v6, v11, v12

    const/4 v12, 0x5

    .line 791
    aput-object v3, v11, v12

    const/4 v12, 0x6

    .line 792
    iget-object v13, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v13}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverSamplingRate()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x7

    .line 793
    iget-object v13, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v13}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverChannels()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 788
    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 795
    const/high16 v11, 0x7f03

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 796
    .restart local v10       #v:Landroid/view/View;
    const/high16 v11, 0x7f08

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 797
    .restart local v9       #tv:Landroid/widget/TextView;
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 779
    .end local v0           #aeuUtils:Lcom/vipercn/viper4android_v2/activity/Utils$AudioEffectUtils;
    .end local v1           #iaDrvVer:[I
    .end local v2           #szDriverVersion:Ljava/lang/String;
    .end local v7           #szDrvStatus:Ljava/lang/String;
    .end local v9           #tv:Landroid/widget/TextView;
    .end local v10           #v:Landroid/view/View;
    :cond_6
    iget-object v11, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v11}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverEffectType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 780
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060086

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method
