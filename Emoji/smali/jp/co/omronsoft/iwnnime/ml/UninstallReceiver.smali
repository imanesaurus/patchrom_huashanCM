.class public Ljp/co/omronsoft/iwnnime/ml/UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallReceiver.java"


# static fields
.field private static final ADD_SYMBOL_LIST_KEY:Ljava/lang/String; = "opt_add_symbol_list"

.field private static final KEYBOARD_IMAGE_KEY:Ljava/lang/String; = "keyboard_skin_add"

.field private static final WEBAPI_KEY:Ljava/lang/String; = "opt_multiwebapi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private restartIme()V
    .locals 6

    .prologue
    .line 102
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v2

    .line 103
    .local v2, wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v3, -0xfffffe4

    invoke-direct {v0, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    .line 105
    .local v0, ev:Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->requestHideSelf(I)V

    .line 106
    invoke-virtual {v2, v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "OpenWnn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UninstallReceiver::restartIme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 36
    .local v11, uri:Landroid/net/Uri;
    if-nez v11, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 40
    .local v10, uninstallPackageName:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 44
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 45
    .local v9, pref:Landroid/content/SharedPreferences;
    const-string v12, "keyboard_skin_add"

    const-string v13, ""

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, classname:Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 47
    const/4 v12, 0x0

    const/16 v13, 0x2e

    invoke-virtual {v2, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, packagename:Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 49
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 50
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v12, "keyboard_skin_add"

    const-string v13, ""

    invoke-interface {v3, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UninstallReceiver;->restartIme()V

    .line 57
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #packagename:Ljava/lang/String;
    :cond_2
    const-string v12, "opt_add_symbol_list"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    .line 58
    .local v7, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    .line 59
    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 60
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 61
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v12, "opt_add_symbol_list"

    invoke-interface {v3, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65
    const-string v12, "opt_add_symbol_list"

    invoke-interface {v3, v12, v7}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UninstallReceiver;->restartIme()V

    .line 72
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v12, "opt_multiwebapi"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 73
    .local v1, classNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 75
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 76
    .local v4, isModified:Z
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 77
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, className:Ljava/lang/String;
    const/4 v12, 0x0

    const/16 v13, 0x2e

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 80
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 81
    const/4 v4, 0x1

    goto :goto_1

    .line 85
    .end local v0           #className:Ljava/lang/String;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_0

    .line 86
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 87
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v12, "opt_multiwebapi"

    invoke-interface {v3, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    const-string v12, "opt_multiwebapi"

    invoke-interface {v3, v12, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UninstallReceiver;->restartIme()V

    goto/16 :goto_0
.end method
