.class Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;
.super Ljava/lang/Thread;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->closeAllDictionaries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

.field final synthetic val$oldPools:Ljava/util/Map;

.field final synthetic val$oldUserDictionaries:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;->this$0:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    iput-object p3, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;->val$oldPools:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;->val$oldUserDictionaries:Ljava/util/Map;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 373
    iget-object v4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;->val$oldPools:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .line 374
    .local v3, pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    invoke-virtual {v3}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->close()V

    goto :goto_0

    .line 376
    .end local v3           #pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;->val$oldUserDictionaries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/UserBinaryDictionary;

    .line 377
    .local v0, dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_1

    .line 379
    .end local v0           #dict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;->this$0:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    #getter for: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUseContactsLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$100(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 380
    :try_start_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;->this$0:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    #getter for: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    invoke-static {v4}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$200(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 384
    iget-object v4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;->this$0:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    #getter for: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    invoke-static {v4}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$200(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    move-result-object v1

    .line 387
    .local v1, dictToClose:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    iget-object v4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$1;->this$0:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    const/4 v6, 0x0

    #setter for: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    invoke-static {v4, v6}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$202(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    .line 388
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->close()V

    .line 390
    .end local v1           #dictToClose:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    :cond_2
    monitor-exit v5

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
