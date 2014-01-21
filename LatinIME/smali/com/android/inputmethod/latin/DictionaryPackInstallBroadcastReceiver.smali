.class public final Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DictionaryPackInstallBroadcastReceiver.java"


# instance fields
.field final mService:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 41
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 49
    .local v6, manager:Landroid/content/pm/PackageManager;
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 51
    .local v9, packageUri:Landroid/net/Uri;
    if-nez v9, :cond_1

    .line 90
    .end local v9           #packageUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v9       #packageUri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, packageName:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 55
    invoke-static {v8}, Lcom/android/inputmethod/latin/TargetApplicationGetter;->removeApplicationInfoCache(Ljava/lang/String;)V

    .line 58
    const/16 v11, 0x8

    :try_start_0
    invoke-virtual {v6, v8, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 62
    .local v7, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 63
    .local v10, providers:[Landroid/content/pm/ProviderInfo;
    if-eqz v10, :cond_0

    .line 66
    move-object v1, v10

    .local v1, arr$:[Landroid/content/pm/ProviderInfo;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v4, v1, v3

    .line 67
    .local v4, info:Landroid/content/pm/ProviderInfo;
    const-string v11, "com.android.inputmethod.latin.dictionarypack"

    iget-object v12, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 68
    iget-object v11, p0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v11}, Lcom/android/inputmethod/latin/LatinIME;->resetSuggestMainDict()V

    goto :goto_0

    .line 59
    .end local v1           #arr$:[Landroid/content/pm/ProviderInfo;
    .end local v3           #i$:I
    .end local v4           #info:Landroid/content/pm/ProviderInfo;
    .end local v5           #len$:I
    .end local v7           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v10           #providers:[Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v2

    .line 60
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 66
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #arr$:[Landroid/content/pm/ProviderInfo;
    .restart local v3       #i$:I
    .restart local v4       #info:Landroid/content/pm/ProviderInfo;
    .restart local v5       #len$:I
    .restart local v7       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v10       #providers:[Landroid/content/pm/ProviderInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    .end local v1           #arr$:[Landroid/content/pm/ProviderInfo;
    .end local v3           #i$:I
    .end local v4           #info:Landroid/content/pm/ProviderInfo;
    .end local v5           #len$:I
    .end local v7           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #packageUri:Landroid/net/Uri;
    .end local v10           #providers:[Landroid/content/pm/ProviderInfo;
    :cond_3
    const-string v11, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "android.intent.extra.REPLACING"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_4

    .line 86
    iget-object v11, p0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v11}, Lcom/android/inputmethod/latin/LatinIME;->resetSuggestMainDict()V

    goto :goto_0

    .line 87
    :cond_4
    const-string v11, "com.android.inputmethod.latin.dictionarypack.newdict"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 88
    iget-object v11, p0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v11}, Lcom/android/inputmethod/latin/LatinIME;->resetSuggestMainDict()V

    goto :goto_0
.end method
