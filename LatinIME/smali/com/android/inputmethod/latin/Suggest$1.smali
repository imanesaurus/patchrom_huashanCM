.class Lcom/android/inputmethod/latin/Suggest$1;
.super Ljava/lang/Thread;
.source "Suggest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Suggest;->resetMainDict(Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Suggest;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Suggest;Ljava/lang/String;Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest$1;->this$0:Lcom/android/inputmethod/latin/Suggest;

    iput-object p3, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$locale:Ljava/util/Locale;

    iput-object p5, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$listener:Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/DictionaryFactory;->createMainDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v0

    .line 110
    .local v0, newMainDict:Lcom/android/inputmethod/latin/DictionaryCollection;
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest$1;->this$0:Lcom/android/inputmethod/latin/Suggest;

    #getter for: Lcom/android/inputmethod/latin/Suggest;->mDictionaries:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/inputmethod/latin/Suggest;->access$000(Lcom/android/inputmethod/latin/Suggest;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-string v2, "main"

    #calls: Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V
    invoke-static {v1, v2, v0}, Lcom/android/inputmethod/latin/Suggest;->access$100(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 111
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest$1;->this$0:Lcom/android/inputmethod/latin/Suggest;

    #setter for: Lcom/android/inputmethod/latin/Suggest;->mMainDictionary:Lcom/android/inputmethod/latin/Dictionary;
    invoke-static {v1, v0}, Lcom/android/inputmethod/latin/Suggest;->access$202(Lcom/android/inputmethod/latin/Suggest;Lcom/android/inputmethod/latin/Dictionary;)Lcom/android/inputmethod/latin/Dictionary;

    .line 112
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$listener:Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$listener:Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest$1;->this$0:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;->onUpdateMainDictionaryAvailability(Z)V

    .line 115
    :cond_0
    return-void
.end method
