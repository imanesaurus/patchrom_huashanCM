.class Lcom/android/inputmethod/latin/UserBinaryDictionary$1;
.super Landroid/database/ContentObserver;
.source "UserBinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/UserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/UserBinaryDictionary;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/UserBinaryDictionary;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary$1;->this$0:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    iput-object p3, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "self"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/inputmethod/latin/UserBinaryDictionary$1;->onChange(ZLandroid/net/Uri;)V

    .line 96
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .parameter "self"
    .parameter "uri"

    .prologue
    .line 102
    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary$1;->this$0:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->setRequiresReload(Z)V

    .line 106
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary$1;->val$context:Landroid/content/Context;

    instance-of v3, v3, Lcom/android/inputmethod/latin/LatinIME;

    if-nez v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 108
    .local v0, changedRowId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary$1;->this$0:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    #calls: Lcom/android/inputmethod/latin/UserBinaryDictionary;->getChangedWordForUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->access$000(Lcom/android/inputmethod/latin/UserBinaryDictionary;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, changedWord:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/inputmethod/latin/UserBinaryDictionary$1;->val$context:Landroid/content/Context;

    check-cast v3, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3, v2}, Lcom/android/inputmethod/latin/LatinIME;->onWordAddedToUserDictionary(Ljava/lang/String;)V

    goto :goto_0
.end method
