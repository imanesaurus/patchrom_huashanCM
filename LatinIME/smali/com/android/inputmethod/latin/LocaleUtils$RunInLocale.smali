.class public abstract Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RunInLocale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 169
    .local p0, this:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract job(Landroid/content/res/Resources;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")TT;"
        }
    .end annotation
.end method

.method public runInLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 5
    .parameter "res"
    .parameter "newLocale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/Locale;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, this:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<TT;>;"
    sget-object v3, Lcom/android/inputmethod/latin/LocaleUtils;->sLockForRunInLocale:Ljava/lang/Object;

    monitor-enter v3

    .line 181
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 182
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    .local v1, oldLocale:Ljava/util/Locale;
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    iput-object p2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 186
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;->job(Landroid/content/res/Resources;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 190
    if-eqz p2, :cond_1

    :try_start_2
    invoke-virtual {p2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 192
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    monitor-exit v3

    return-object v2

    .line 190
    :catchall_0
    move-exception v2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 191
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 192
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_2
    throw v2

    .line 195
    .end local v0           #conf:Landroid/content/res/Configuration;
    .end local v1           #oldLocale:Ljava/util/Locale;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
