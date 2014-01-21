.class Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;
.super Ljava/lang/Object;
.source "AdditionalDictionaryPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->showAdditionalDictionaryList(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;

.field final synthetic val$list:[Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;Landroid/preference/Preference;[Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;

    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;->val$pref:Landroid/preference/Preference;

    iput-object p3, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;->val$list:[Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "di"
    .parameter "position"

    .prologue
    .line 204
    if-lez p2, :cond_0

    .line 205
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;->val$pref:Landroid/preference/Preference;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;->val$list:[Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    #calls: Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->saveLocalDictionary(Landroid/preference/Preference;Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)V
    invoke-static {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->access$100(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;Landroid/preference/Preference;Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$AdditionalDictionary;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity$2;->val$pref:Landroid/preference/Preference;

    #calls: Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->initializeLocalDictionary(Landroid/preference/Preference;)V
    invoke-static {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->access$200(Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;Landroid/preference/Preference;)V

    goto :goto_0
.end method
