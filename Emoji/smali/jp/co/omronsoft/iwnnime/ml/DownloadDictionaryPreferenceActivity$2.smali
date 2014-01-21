.class Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$2;
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
    .line 365
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$2;->val$pref:Landroid/preference/Preference;

    iput-object p3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$2;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "di"
    .parameter "position"

    .prologue
    .line 367
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$2;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    .line 368
    .local v2, index:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckBoxPreference:Ljava/util/ArrayList;
    invoke-static {v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$200(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 369
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .line 370
    .local v1, dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->isEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 371
    return-void
.end method
