.class Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$1;
.super Ljava/lang/Object;
.source "AdditionalDictionaryPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 128
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;

    #calls: Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->showAdditionalDictionaryList(Landroid/preference/Preference;)V
    invoke-static {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->access$000(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;Landroid/preference/Preference;)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method
