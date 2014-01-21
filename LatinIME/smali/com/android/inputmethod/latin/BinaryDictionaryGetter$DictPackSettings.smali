.class final Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;
.super Ljava/lang/Object;
.source "BinaryDictionaryGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/BinaryDictionaryGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DictPackSettings"
.end annotation


# instance fields
.field final mDictPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, dictPackContext:Landroid/content/Context;
    const v3, 0x7f0a0026

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, dictPackName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    .end local v1           #dictPackName:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_1
    iput-object v3, p0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->mDictPreferences:Landroid/content/SharedPreferences;

    .line 209
    return-void

    .line 201
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not find a dictionary pack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "LatinImeDictPrefs"

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public isWordListActive(Ljava/lang/String;)Z
    .locals 2
    .parameter "dictId"

    .prologue
    const/4 v0, 0x1

    .line 211
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->mDictPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 223
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->mDictPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
