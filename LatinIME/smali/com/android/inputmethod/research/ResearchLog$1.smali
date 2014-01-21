.class Lcom/android/inputmethod/research/ResearchLog$1;
.super Ljava/lang/Object;
.source "ResearchLog.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/research/ResearchLog;->close(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/research/ResearchLog;

.field final synthetic val$onClosed:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/research/ResearchLog;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iput-object p2, p0, Lcom/android/inputmethod/research/ResearchLog$1;->val$onClosed:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    #getter for: Lcom/android/inputmethod/research/ResearchLog;->mHasWrittenData:Z
    invoke-static {v1}, Lcom/android/inputmethod/research/ResearchLog;->access$100(Lcom/android/inputmethod/research/ResearchLog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    #getter for: Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;
    invoke-static {v1}, Lcom/android/inputmethod/research/ResearchLog;->access$200(Lcom/android/inputmethod/research/ResearchLog;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 103
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    #getter for: Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;
    invoke-static {v1}, Lcom/android/inputmethod/research/ResearchLog;->access$200(Lcom/android/inputmethod/research/ResearchLog;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonWriter;->flush()V

    .line 104
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    #getter for: Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;
    invoke-static {v1}, Lcom/android/inputmethod/research/ResearchLog;->access$200(Lcom/android/inputmethod/research/ResearchLog;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V

    .line 108
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    const/4 v2, 0x0

    #setter for: Lcom/android/inputmethod/research/ResearchLog;->mHasWrittenData:Z
    invoke-static {v1, v2}, Lcom/android/inputmethod/research/ResearchLog;->access$102(Lcom/android/inputmethod/research/ResearchLog;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-object v1, v1, Lcom/android/inputmethod/research/ResearchLog;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-object v1, v1, Lcom/android/inputmethod/research/ResearchLog;->mFile:Ljava/io/File;

    invoke-virtual {v1, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->val$onClosed:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->val$onClosed:Ljava/lang/Runnable;

    :goto_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 125
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLog;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error when closing ResearchLog:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-object v1, v1, Lcom/android/inputmethod/research/ResearchLog;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-object v1, v1, Lcom/android/inputmethod/research/ResearchLog;->mFile:Ljava/io/File;

    invoke-virtual {v1, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->val$onClosed:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$1;->val$onClosed:Ljava/lang/Runnable;

    goto :goto_0

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-object v2, v2, Lcom/android/inputmethod/research/ResearchLog;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLog$1;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-object v2, v2, Lcom/android/inputmethod/research/ResearchLog;->mFile:Ljava/io/File;

    invoke-virtual {v2, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 121
    :cond_4
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLog$1;->val$onClosed:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    .line 122
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLog$1;->val$onClosed:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 118
    :cond_5
    throw v1
.end method
