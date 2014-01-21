.class Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;
.super Ljava/lang/Object;
.source "DownloadDictionaryPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->showDownloadDictionaryList(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Landroid/preference/Preference;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->val$pref:Landroid/preference/Preference;

    iput-object p3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "di"
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    .line 381
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    .line 382
    .local v3, index:I
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckBoxPreference:Ljava/util/ArrayList;
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$200(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 383
    .local v1, checkBox:Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .line 385
    .local v2, dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    packed-switch p2, :pswitch_data_0

    .line 469
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->isEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 470
    return-void

    .line 388
    :pswitch_0
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 389
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->val$list:Ljava/util/ArrayList;

    #calls: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getEnableDicitonaries(Ljava/util/ArrayList;)I
    invoke-static {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$300(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Ljava/util/ArrayList;)I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_2

    .line 390
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->val$list:Ljava/util/ArrayList;

    #calls: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->enableDictionary(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z
    invoke-static {v5, v2, v6}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$400(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    const v7, 0x7f060091

    invoke-virtual {v6, v7}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, message:Ljava/lang/String;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 397
    .end local v4           #message:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    const v6, 0x7f060096

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 399
    .restart local v4       #message:Ljava/lang/String;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 403
    .end local v4           #message:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    const v7, 0x7f060099

    invoke-virtual {v6, v7}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 406
    .restart local v4       #message:Ljava/lang/String;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 414
    .end local v4           #message:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 415
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->val$list:Ljava/util/ArrayList;

    #calls: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->disableDictionary(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z
    invoke-static {v5, v2, v6}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$500(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    const v7, 0x7f060092

    invoke-virtual {v6, v7}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 419
    .restart local v4       #message:Ljava/lang/String;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 422
    .end local v4           #message:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    const v6, 0x7f060097

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 424
    .restart local v4       #message:Ljava/lang/String;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 432
    .end local v4           #message:Ljava/lang/String;
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    .local v0, builder2:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 435
    const v5, 0x7f06009a

    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;

    invoke-direct {v6, p0, v2, v1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    const v5, 0x7f06009b

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 460
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    const v6, 0x7f060094

    invoke-virtual {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 462
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
