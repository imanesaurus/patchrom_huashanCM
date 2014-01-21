.class final Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager$1;
.super Ljava/lang/Object;
.source "LanguageManager.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getUserDictionaryGatekeeper(Landroid/content/Context;)Landroid/preference/Preference$OnPreferenceClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onPreferenceClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600b1

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 244
    const/4 v1, 0x1

    .line 248
    :goto_0
    return v1

    .line 246
    :cond_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getInstance()Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->updateLanguageInfoForUserDictionary(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method
