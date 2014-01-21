.class Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;
.super Ljava/lang/Thread;
.source "ExpandableBinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncReloadDictionaryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;-><init>(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;

    #calls: Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->syncReloadDictionaryInternal()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;->access$500(Lcom/android/inputmethod/latin/ExpandableBinaryDictionary;)V

    .line 433
    return-void
.end method
