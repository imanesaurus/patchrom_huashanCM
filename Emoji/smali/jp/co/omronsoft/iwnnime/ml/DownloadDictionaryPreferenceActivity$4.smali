.class Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$4;
.super Ljava/lang/Object;
.source "DownloadDictionaryPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 473
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckedPreference:Landroid/preference/Preference;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$000(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    .line 474
    .local v1, index:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckBoxPreference:Ljava/util/ArrayList;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$200(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 475
    .local v0, check:Landroid/preference/CheckBoxPreference;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$4;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mDownloadDictionaries:Ljava/util/ArrayList;
    invoke-static {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$800(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 476
    return-void
.end method
