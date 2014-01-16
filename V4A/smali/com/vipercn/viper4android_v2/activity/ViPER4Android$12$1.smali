.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

.field private final synthetic val$nCurrentPage:I


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    iput p2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->val$nCurrentPage:I

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;
    .locals 1
    .parameter

    .prologue
    .line 924
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v8, 0x7f060093

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 929
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->editProfileName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Landroid/widget/EditText;

    move-result-object v6

    if-nez v6, :cond_0

    .line 931
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->dismiss()V

    .line 1010
    :goto_0
    return-void

    .line 934
    :cond_0
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->editProfileName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 936
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->dismiss()V

    goto :goto_0

    .line 939
    :cond_1
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->editProfileName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 941
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->dismiss()V

    goto :goto_0

    .line 946
    :cond_2
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->editProfileName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 947
    .local v4, szProfileName:Ljava/lang/String;
    if-nez v4, :cond_3

    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$1(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v6

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1009
    :goto_1
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->dismiss()V

    goto :goto_0

    .line 948
    :cond_3
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$1(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v6

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 952
    :cond_4
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetV4AProfilePath()Ljava/lang/String;

    move-result-object v5

    .line 953
    .local v5, szProfilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 954
    .local v1, mProfileDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    .line 956
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 957
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 959
    :cond_5
    new-instance v1, Ljava/io/File;

    .end local v1           #mProfileDir:Ljava/io/File;
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    .restart local v1       #mProfileDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 962
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$1(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v6

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060097

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 963
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->dismiss()V

    goto/16 :goto_0

    .line 967
    :cond_6
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$1(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v6

    #setter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->szSaveProfileNameGlobal:Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;Ljava/lang/String;)V

    .line 968
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetV4AProfilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vipercn/viper4android_v2/activity/Utils;->CheckProfileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 971
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$1(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v6

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 972
    .local v0, mConfirm:Landroid/app/AlertDialog$Builder;
    const-string v6, "ViPER4Android"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 973
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060094

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 974
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06008a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1$1;

    iget v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->val$nCurrentPage:I

    invoke-direct {v7, p0, v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1$1;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;I)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 991
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 992
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 993
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->dismiss()V

    goto/16 :goto_0

    .line 998
    .end local v0           #mConfirm:Landroid/app/AlertDialog$Builder;
    :cond_7
    const-string v6, "ViPER4Android"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Save effect profile, current page = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->val$nCurrentPage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/String;

    .line 1000
    .local v3, szPreferenceName:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "com.vipercn.viper4android_v2.headset"

    aput-object v7, v3, v6

    .line 1001
    const-string v6, "com.vipercn.viper4android_v2.speaker"

    aput-object v6, v3, v9

    .line 1002
    const-string v6, "com.vipercn.viper4android_v2.bluetooth"

    aput-object v6, v3, v10

    .line 1003
    iget v2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->val$nCurrentPage:I

    .line 1004
    .local v2, nIndex:I
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 1005
    :cond_8
    if-le v2, v10, :cond_9

    const/4 v2, 0x2

    .line 1006
    :cond_9
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetV4AProfilePath()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v3, v2

    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$1(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v8

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/vipercn/viper4android_v2/activity/Utils;->SaveProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1007
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->access$1(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v6

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$4(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$12;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060092

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
