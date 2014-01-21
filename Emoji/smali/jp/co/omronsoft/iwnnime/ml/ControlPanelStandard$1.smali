.class Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;
.super Ljava/lang/Object;
.source "ControlPanelStandard.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 378
    const-string v5, "choosed_language"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 379
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    const-string v6, "jp"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #calls: Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->setSummaryOfLanguageSetting(Ljava/lang/String;)V
    invoke-static {v5, v6}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$100(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v4

    .line 381
    .local v4, wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/LanguageManager;->getChosenLanguageType(Landroid/content/SharedPreferences;)I

    move-result v3

    .line 382
    .local v3, languageType:I
    instance-of v5, v4, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    if-eqz v5, :cond_0

    .line 383
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v2

    .line 384
    .local v2, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    .end local v4           #wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getLocale(I)Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->setLanguage(Ljava/util/Locale;ZZ)V

    .line 387
    .end local v2           #engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    :cond_0
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    #calls: Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->changeShowingByLanguage(I)V
    invoke-static {v5, v3}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$200(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;I)V

    .line 389
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    .line 390
    .local v0, context:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/AdditionalDictionaryPreferenceActivity;->isEnableAdditionalDictionary(Landroid/content/Context;)Z

    move-result v1

    .line 391
    .local v1, enable:Z
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$300(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    move-result-object v5

    const-string v6, "additional_dictionary"

    invoke-virtual {v5, v6, v1}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 392
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->isEnableDownloadDictionary(Landroid/content/Context;)Z

    move-result v1

    .line 393
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    #getter for: Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->mShutterManager:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$300(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;

    move-result-object v5

    const-string v6, "download_dictionary"

    invoke-virtual {v5, v6, v1}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$PreferenceShutterManager;->showPreferenceByKey(Ljava/lang/String;Z)V

    .line 399
    .end local v0           #context:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;
    .end local v1           #enable:Z
    .end local v3           #languageType:I
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    const-string v5, "voice_input"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 395
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    #calls: Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->onClickForVoiceInput(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    invoke-static {v5, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$400(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_3
    const-string v5, "flick_input"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "flick_toggle_input"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 397
    :cond_4
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;

    #calls: Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->changeShowingByAutoCursorMovement()V
    invoke-static {v5}, Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;->access$000(Ljp/co/omronsoft/iwnnime/ml/ControlPanelStandard;)V

    goto :goto_0
.end method
