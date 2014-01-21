.class Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$1;
.super Ljava/lang/Object;
.source "DownloadDictionaryPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->loadDownloadDictionaryPreference(Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)V
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
    .line 326
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 328
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    #setter for: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckedPreference:Landroid/preference/Preference;
    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$002(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 329
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;

    #calls: Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->showDownloadDictionaryList(Landroid/preference/Preference;)V
    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->access$100(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Landroid/preference/Preference;)V

    .line 330
    const/4 v0, 0x1

    return v0
.end method
