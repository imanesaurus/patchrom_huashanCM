.class public Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "DownloadDictionaryPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    }
.end annotation


# static fields
.field private static final CONTENT_PROVIDER_URI:Ljava/lang/String; = "content://jp.co.omronsoft.cp.dldicprovider"

.field public static final DOWNLOAD_DICTIONARY_NAME_KEY:Ljava/lang/String; = "download_dic_name"

.field public static final MAX_DOWNLOAD_DIC:I = 0xa

.field private static final QUERY_PARAM_CACHE_FLAG:Ljava/lang/String; = "CACHE_FLAG"

.field private static final QUERY_PARAM_CONVERT_BASE:Ljava/lang/String; = "CONVERT_BASE"

.field private static final QUERY_PARAM_CONVERT_HIGH:Ljava/lang/String; = "CONVERT_HIGH"

.field private static final QUERY_PARAM_FILE:Ljava/lang/String; = "DICTIONARY_FILE"

.field private static final QUERY_PARAM_LIMIT:Ljava/lang/String; = "LIMIT"

.field private static final QUERY_PARAM_MORPHO_BASE:Ljava/lang/String; = "MORPHO_BASE"

.field private static final QUERY_PARAM_MORPHO_HIGH:Ljava/lang/String; = "MORPHO_HIGH"

.field private static final QUERY_PARAM_NAME:Ljava/lang/String; = "DICTIONARY_NAME"

.field private static final QUERY_PARAM_PREDICT_BASE:Ljava/lang/String; = "PREDICT_BASE"

.field private static final QUERY_PARAM_PREDICT_HIGH:Ljava/lang/String; = "PREDICT_HIGH"

.field private static final TAG:Ljava/lang/String; = "iWnn"


# instance fields
.field private mCheckBoxPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedPreference:Landroid/preference/Preference;

.field private mDownloadDictionaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckBoxPreference:Ljava/util/ArrayList;

    .line 275
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckedPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$002(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckedPreference:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->showDownloadDictionaryList(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckBoxPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Ljava/util/ArrayList;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getEnableDicitonaries(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->enableDictionary(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->disableDictionary(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->deleteDictionary(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->loadDownloadDictionaryPreference(Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mDownloadDictionaries:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static checkConsistency(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, contentProv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    .local p1, sharedPref:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 774
    .local v5, prefIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 775
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .line 776
    .local v4, prefDic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    const/4 v3, 0x0

    .line 777
    .local v3, match:Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 778
    .local v1, contIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 779
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .line 780
    .local v0, contDic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    invoke-virtual {v4, v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 781
    const/4 v3, 0x1

    goto :goto_1

    .line 784
    .end local v0           #contDic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    :cond_2
    if-nez v3, :cond_0

    .line 785
    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->disable()V

    .line 787
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://jp.co.omronsoft.cp.dldicprovider"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DICTIONARY_FILE"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->file()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_2
    invoke-static {p1, p2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->writeDownloadDictionaryToSharedPreferences(Ljava/util/ArrayList;Landroid/content/Context;)Z

    goto :goto_0

    .line 790
    :catch_0
    move-exception v2

    .line 791
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "iWnn"

    const-string v7, "Error occured deleting Content Provider."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 797
    .end local v1           #contIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #match:Z
    .end local v4           #prefDic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 798
    .restart local v1       #contIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 799
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .line 800
    .restart local v0       #contDic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->disable()V

    .line 801
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 802
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 803
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .line 804
    .restart local v4       #prefDic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    invoke-virtual {v0, v4}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 805
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->enable()V

    goto :goto_3

    .line 811
    .end local v0           #contDic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    .end local v4           #prefDic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    :cond_6
    return-object p0
.end method

.method private static checkDictionaryFilePath(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, cpDictionary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v2, retDic:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 748
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 749
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .line 750
    .local v0, dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->file()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 751
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 754
    .end local v0           #dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    :cond_1
    return-object v2
.end method

.method public static createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .parameter "key"

    .prologue
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download_dic_name"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteDictionary(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter "dictionary"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, dicArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 542
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->disable()V

    .line 543
    const/4 v1, 0x0

    .line 545
    .local v1, result:I
    :try_start_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://jp.co.omronsoft.cp.dldicprovider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DICTIONARY_FILE"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->file()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 551
    :goto_0
    invoke-static {p2, p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->writeDownloadDictionaryToSharedPreferences(Ljava/util/ArrayList;Landroid/content/Context;)Z

    .line 552
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setUpdateDownloadDictionary(Z)V

    .line 553
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(Ljava/lang/Object;)Z

    .line 554
    if-ne v1, v2, :cond_0

    :goto_1
    return v2

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "iWnn"

    const-string v5, "Error occured deleting Content Provider."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    move v2, v3

    .line 554
    goto :goto_1
.end method

.method private disableDictionary(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z
    .locals 3
    .parameter "dictionary"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 523
    .local p2, dicArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    const/4 v0, 0x0

    .line 525
    .local v0, ret:Z
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->file()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->disable()V

    .line 527
    invoke-direct {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->writeDownloadDictionaryToSharedPreferences(Ljava/util/ArrayList;)Z

    move-result v0

    .line 528
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setUpdateDownloadDictionary(Z)V

    .line 529
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(Ljava/lang/Object;)Z

    .line 531
    :cond_0
    return v0
.end method

.method private enableDictionary(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;Ljava/util/ArrayList;)Z
    .locals 3
    .parameter "dictionary"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, dicArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    const/4 v0, 0x0

    .line 506
    .local v0, ret:Z
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->file()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->enable()V

    .line 508
    invoke-direct {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->writeDownloadDictionaryToSharedPreferences(Ljava/util/ArrayList;)Z

    move-result v0

    .line 509
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setUpdateDownloadDictionary(Z)V

    .line 510
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDictionary(Ljava/lang/Object;)Z

    .line 512
    :cond_0
    return v0
.end method

.method private static getDictionaryFromContentProvider(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v12, dicList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "content://jp.co.omronsoft.cp.dldicprovider"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v14, 0x0

    new-array v2, v14, [Ljava/lang/String;

    const-string v3, ""

    const/4 v14, 0x0

    new-array v4, v14, [Ljava/lang/String;

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 706
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 707
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 708
    const-string v0, "DICTIONARY_NAME"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, dictionaryName:Ljava/lang/String;
    const-string v0, "DICTIONARY_FILE"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, dictionaryFile:Ljava/lang/String;
    const-string v0, "CONVERT_HIGH"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 711
    .local v3, convertHigh:I
    const-string v0, "CONVERT_BASE"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 712
    .local v4, convertBase:I
    const-string v0, "PREDICT_HIGH"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 713
    .local v5, predictHigh:I
    const-string v0, "PREDICT_BASE"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 714
    .local v6, predictBase:I
    const-string v0, "MORPHO_HIGH"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 715
    .local v7, morphoHigh:I
    const-string v0, "MORPHO_BASE"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 716
    .local v8, morphoBase:I
    const-string v0, "CACHE_FLAG"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v9, 0x0

    .line 718
    .local v9, cacheFlag:Z
    :goto_1
    const-string v0, "LIMIT"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 720
    .local v10, limit:I
    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    invoke-direct/range {v0 .. v10}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIZI)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 727
    .end local v1           #dictionaryName:Ljava/lang/String;
    .end local v2           #dictionaryFile:Ljava/lang/String;
    .end local v3           #convertHigh:I
    .end local v4           #convertBase:I
    .end local v5           #predictHigh:I
    .end local v6           #predictBase:I
    .end local v7           #morphoHigh:I
    .end local v8           #morphoBase:I
    .end local v9           #cacheFlag:Z
    .end local v10           #limit:I
    :catch_0
    move-exception v13

    .line 728
    .local v13, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v0, "iWnn"

    const-string v14, "Error occured querying Content Provider."

    invoke-static {v0, v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    if-eqz v11, :cond_1

    .line 731
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 734
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_2
    return-object v12

    .line 716
    .restart local v1       #dictionaryName:Ljava/lang/String;
    .restart local v2       #dictionaryFile:Ljava/lang/String;
    .restart local v3       #convertHigh:I
    .restart local v4       #convertBase:I
    .restart local v5       #predictHigh:I
    .restart local v6       #predictBase:I
    .restart local v7       #morphoHigh:I
    .restart local v8       #morphoBase:I
    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    .line 730
    .end local v1           #dictionaryName:Ljava/lang/String;
    .end local v2           #dictionaryFile:Ljava/lang/String;
    .end local v3           #convertHigh:I
    .end local v4           #convertBase:I
    .end local v5           #predictHigh:I
    .end local v6           #predictBase:I
    .end local v7           #morphoHigh:I
    .end local v8           #morphoBase:I
    :cond_3
    if-eqz v11, :cond_1

    .line 731
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 730
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_4

    .line 731
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getEnableDicitonaries(Ljava/util/ArrayList;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, dictionaries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    const/4 v0, 0x0

    .line 488
    .local v0, counter:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 489
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    add-int/lit8 v0, v0, 0x1

    .line 488
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :cond_1
    return v0
.end method

.method public static isEnableDownloadDictionary(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 302
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getDictionaryFromContentProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 303
    .local v0, cp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->checkDictionaryFilePath(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 304
    .local v2, fp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->readDownloadDictionaryFromSharedPreferences(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 306
    .local v3, sp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-static {v2, v3, p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->checkConsistency(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 308
    .local v1, dictionary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 309
    const/4 v4, 0x0

    .line 312
    :cond_0
    return v4
.end method

.method private loadDownloadDictionaryPreference(Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "rootPreferenceScreen"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, dictionary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 323
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 325
    .local v8, sharedPref:Landroid/content/SharedPreferences;
    new-instance v6, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$1;

    invoke-direct {v6, p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)V

    .line 334
    .local v6, listener:Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 335
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    const/4 v3, 0x0

    .line 336
    .local v3, index:I
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckBoxPreference:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 337
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 338
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .line 339
    .local v0, dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    new-instance v7, Landroid/preference/CheckBoxPreference;

    invoke-direct {v7, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 340
    .local v7, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v9, 0xa

    if-ge v2, v9, :cond_1

    .line 342
    const-string v9, "DICTIONARY_FILE"

    invoke-static {v2, v9}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, file:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->file()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 344
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 341
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 347
    .end local v1           #file:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 348
    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 350
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 351
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mCheckBoxPreference:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 352
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 353
    .end local v0           #dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    .end local v2           #i:I
    .end local v7           #preference:Landroid/preference/CheckBoxPreference;
    :cond_2
    return-void
.end method

.method private static readDownloadDictionaryFromSharedPreferences(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 594
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->readDownloadDictionaryFromSharedPreferences(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static readDownloadDictionaryFromSharedPreferences(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;
    .locals 15
    .parameter "sharedPref"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 565
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v11, dicArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v12, v1, :cond_1

    .line 567
    const-string v1, "DICTIONARY_FILE"

    invoke-static {v12, v1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 568
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    const-string v1, "DICTIONARY_NAME"

    invoke-static {v12, v1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DICTIONARY_FILE"

    invoke-static {v12, v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONVERT_HIGH"

    invoke-static {v12, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "CONVERT_BASE"

    invoke-static {v12, v4}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "PREDICT_HIGH"

    invoke-static {v12, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "PREDICT_BASE"

    invoke-static {v12, v6}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "MORPHO_HIGH"

    invoke-static {v12, v7}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "MORPHO_BASE"

    invoke-static {v12, v8}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "CACHE_FLAG"

    invoke-static {v12, v9}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v9, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "LIMIT"

    invoke-static {v12, v10}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v10, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-direct/range {v0 .. v10}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIZI)V

    .line 579
    .local v0, dictionary:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->enable()V

    .line 580
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v0           #dictionary:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 583
    :cond_1
    return-object v11
.end method

.method private static removeAllDownloadDictionaryFromSharedPreferences(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 644
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 645
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 646
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 647
    const-string v3, "DICTIONARY_FILE"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 648
    const-string v3, "DICTIONARY_NAME"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 649
    const-string v3, "DICTIONARY_FILE"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 650
    const-string v3, "CONVERT_HIGH"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 651
    const-string v3, "CONVERT_BASE"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 652
    const-string v3, "PREDICT_HIGH"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 653
    const-string v3, "PREDICT_BASE"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 654
    const-string v3, "MORPHO_HIGH"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 655
    const-string v3, "MORPHO_BASE"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 656
    const-string v3, "CACHE_FLAG"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    const-string v3, "LIMIT"

    invoke-static {v1, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 646
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 661
    invoke-static {p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->setDownloadDictionary(Landroid/content/Context;)Z

    .line 662
    return-void
.end method

.method public static setDownloadDictionary(Landroid/content/Context;)Z
    .locals 19
    .parameter "context"

    .prologue
    .line 821
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 822
    .local v18, pref:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->readDownloadDictionaryFromSharedPreferences(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;

    move-result-object v15

    .line 823
    .local v15, dicArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 824
    .local v17, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    const/4 v1, 0x0

    .line 825
    .local v1, index:I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .line 827
    .local v14, dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    add-int/lit8 v16, v1, 0x1

    .end local v1           #index:I
    .local v16, index:I
    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->file()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->convertHigh()I

    move-result v4

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->convertBase()I

    move-result v5

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->predictHigh()I

    move-result v6

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->predictBase()I

    move-result v7

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->morphoHigh()I

    move-result v8

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->morphoBase()I

    move-result v9

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->cache()Z

    move-result v10

    invoke-virtual {v14}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->limit()I

    move-result v11

    invoke-virtual/range {v0 .. v11}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDownloadDictionary(ILjava/lang/String;Ljava/lang/String;IIIIIIZI)V

    move/from16 v1, v16

    .line 840
    .end local v16           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 841
    .end local v14           #dic:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    :cond_0
    move v3, v1

    .local v3, i:I
    :goto_1
    const/16 v0, 0xa

    if-ge v3, v0, :cond_1

    .line 842
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->setDownloadDictionary(ILjava/lang/String;Ljava/lang/String;IIIIIIZI)V

    .line 841
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 845
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->getEngine()Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/iWnnEngine;->refreshConfFile()Z

    move-result v0

    return v0
.end method

.method private showDownloadDictionaryList(Landroid/preference/Preference;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v5, 0x1

    .line 360
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mDownloadDictionaries:Ljava/util/ArrayList;

    .line 362
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 364
    const v2, 0x7f06009b

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$2;

    invoke-direct {v3, p0, p1, v1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Landroid/preference/Preference;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    const v2, 0x7f060090

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 375
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f06008d

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x7f06008e

    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const v4, 0x7f06008f

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;

    invoke-direct {v3, p0, p1, v1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$3;-><init>(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;Landroid/preference/Preference;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 471
    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$4;

    invoke-direct {v2, p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$4;-><init>(Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 479
    return-void
.end method

.method private writeDownloadDictionaryToSharedPreferences(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, dicArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-static {p1, p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->writeDownloadDictionaryToSharedPreferences(Ljava/util/ArrayList;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static writeDownloadDictionaryToSharedPreferences(Ljava/util/ArrayList;Landroid/content/Context;)Z
    .locals 7
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, dicArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->removeAllDownloadDictionaryFromSharedPreferences(Landroid/content/Context;)V

    .line 607
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 608
    .local v4, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 609
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 610
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    const/4 v2, 0x0

    .line 611
    .local v2, i:I
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 612
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;

    .line 613
    .local v0, dictionary:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 614
    const-string v5, "DICTIONARY_NAME"

    invoke-static {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 615
    const-string v5, "DICTIONARY_FILE"

    invoke-static {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->file()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 616
    const-string v5, "CONVERT_HIGH"

    invoke-static {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->convertHigh()I

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 617
    const-string v5, "CONVERT_BASE"

    invoke-static {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->convertBase()I

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 618
    const-string v5, "PREDICT_HIGH"

    invoke-static {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->predictHigh()I

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 619
    const-string v5, "PREDICT_BASE"

    invoke-static {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->predictBase()I

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 620
    const-string v5, "MORPHO_HIGH"

    invoke-static {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->morphoHigh()I

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 621
    const-string v5, "MORPHO_BASE"

    invoke-static {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->morphoBase()I

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 622
    const-string v5, "CACHE_FLAG"

    invoke-static {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->cache()Z

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 623
    const-string v5, "LIMIT"

    invoke-static {v2, v5}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->createSharedPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;->limit()I

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 627
    .end local v0           #dictionary:Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 628
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->setDownloadDictionary(Landroid/content/Context;)Z

    move-result v5

    return v5
.end method


# virtual methods
.method public getDownloadDictionary(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getDictionaryFromContentProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 686
    .local v0, cp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-static {v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->checkDictionaryFilePath(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 687
    .local v2, fp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->readDownloadDictionaryFromSharedPreferences(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 689
    .local v3, sp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-static {v2, v3, p1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->checkConsistency(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 691
    .local v1, dictionary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->mDownloadDictionaries:Ljava/util/ArrayList;

    .line 693
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 281
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 282
    .local v1, rootPreferenceScreen:Landroid/preference/PreferenceScreen;
    const v2, 0x7f06008a

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 284
    invoke-virtual {p0, p0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getDownloadDictionary(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 286
    .local v0, dictionary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity$DownloadDictionary;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 287
    invoke-direct {p0, v1, v0}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->loadDownloadDictionaryPreference(Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)V

    .line 293
    :goto_0
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 294
    return-void

    .line 289
    :cond_0
    const v2, 0x7f060095

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/DownloadDictionaryPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
