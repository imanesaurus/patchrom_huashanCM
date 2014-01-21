.class public Ljp/co/omronsoft/iwnnime/ml/WebApiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WebApiReceiver.java"


# static fields
.field private static final WEBAPI_CANDIDATE_KEYCODE:Ljava/lang/String; = "candidate"

.field private static final WEBAPI_ERROR_CODE_KEYCODE:Ljava/lang/String; = "error_code"

.field private static final WEBAPI_ERROR_KEYCODE:Ljava/lang/String; = "error"

.field private static final WEBAPI_HINSHI_KEYCODE:Ljava/lang/String; = "hinshi"

.field private static final WEBAPI_PACKAGE_KEYCODE:Ljava/lang/String; = "package"

.field private static final WEBAPI_YOMI_KEYCODE:Ljava/lang/String; = "yomi_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "yomi_key"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, yomi:Ljava/lang/String;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v2

    .line 45
    .local v2, engine:Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;
    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getSendingYomiToWebApi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 46
    const-string v7, "error"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 48
    .local v3, error:Z
    const-string v7, "package"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v3, :cond_2

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v2, v8, v7}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setWebApiResult(Ljava/lang/String;Z)V

    .line 49
    if-eqz v3, :cond_3

    .line 50
    const-string v7, "error_code"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, errorCode:Ljava/lang/String;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v7

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xfffeffe

    invoke-direct {v8, v9, v4}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 59
    .end local v4           #errorCode:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isWebApiAllReceived()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 60
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->isWebApiSuccessReceived()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v7

    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    const v9, -0xfffefff

    invoke-direct {v8, v9}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    invoke-virtual {v7, v8}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z

    .line 63
    :cond_0
    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->onDoneGettingCandidates()V

    .line 66
    .end local v3           #error:Z
    :cond_1
    return-void

    .line 48
    .restart local v3       #error:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 54
    :cond_3
    const-string v7, "candidate"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, candidate:[Ljava/lang/String;
    const-string v7, "hinshi"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v5

    .line 56
    .local v5, hinshi:[S
    invoke-virtual {v2, v6, v1, v5}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setWebApiCandidates(Ljava/lang/String;[Ljava/lang/String;[S)V

    goto :goto_1
.end method
