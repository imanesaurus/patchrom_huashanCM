.class public final Lcom/android/inputmethod/latin/TargetApplicationGetter;
.super Landroid/os/AsyncTask;
.source "TargetApplicationGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/TargetApplicationGetter$OnTargetApplicationKnownListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static sCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/inputmethod/latin/TargetApplicationGetter$OnTargetApplicationKnownListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/android/inputmethod/latin/TargetApplicationGetter;->sCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/TargetApplicationGetter$OnTargetApplicationKnownListener;)V
    .locals 0
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/inputmethod/latin/TargetApplicationGetter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/inputmethod/latin/TargetApplicationGetter;->mListener:Lcom/android/inputmethod/latin/TargetApplicationGetter$OnTargetApplicationKnownListener;

    .line 50
    return-void
.end method

.method public static getCachedApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 31
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/TargetApplicationGetter;->sCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static removeApplicationInfoCache(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 36
    sget-object v0, Lcom/android/inputmethod/latin/TargetApplicationGetter;->sCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v4, p0, Lcom/android/inputmethod/latin/TargetApplicationGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 55
    .local v1, pm:Landroid/content/pm/PackageManager;
    iput-object v3, p0, Lcom/android/inputmethod/latin/TargetApplicationGetter;->mContext:Landroid/content/Context;

    .line 57
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 59
    .local v2, targetAppInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v4, Lcom/android/inputmethod/latin/TargetApplicationGetter;->sCache:Landroid/util/LruCache;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v4, v5, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v2           #targetAppInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 61
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v3

    .line 62
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/TargetApplicationGetter;->doInBackground([Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/inputmethod/latin/TargetApplicationGetter;->mListener:Lcom/android/inputmethod/latin/TargetApplicationGetter$OnTargetApplicationKnownListener;

    invoke-interface {v0, p1}, Lcom/android/inputmethod/latin/TargetApplicationGetter$OnTargetApplicationKnownListener;->onTargetApplicationKnown(Landroid/content/pm/ApplicationInfo;)V

    .line 69
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/TargetApplicationGetter;->onPostExecute(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method
