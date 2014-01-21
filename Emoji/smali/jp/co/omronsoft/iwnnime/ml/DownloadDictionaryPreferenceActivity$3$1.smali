.class Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;
.super Ljava/lang/Object;
.source "DownloadDictionaryPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

.field final synthetic val$checkBox:Landroid/preference/CheckBoxPreference;

.field final synthetic val$dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->val$dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    iput-object p3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->val$checkBox:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "di"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 438
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->val$dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->val$list:Ljava/util/ArrayList;

    #calls: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->deleteDictionary(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z
    invoke-static {v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$600(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->val$dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    const v4, 0x7f060093

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 451
    :goto_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->val$checkBox:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->val$dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    invoke-virtual {v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 454
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 455
    .local v1, rootPreferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v4, v4, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getDownloadDictionary(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->loadDownloadDictionaryPreference(Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)V
    invoke-static {v2, v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$700(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)V

    .line 456
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-virtual {v2, v1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 457
    return-void

    .line 446
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #rootPreferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    const v3, 0x7f060098

    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .restart local v0       #message:Ljava/lang/String;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
