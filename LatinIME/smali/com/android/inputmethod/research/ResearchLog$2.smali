.class Lcom/android/inputmethod/research/ResearchLog$2;
.super Ljava/lang/Object;
.source "ResearchLog.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/research/ResearchLog;->abort()V
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


# direct methods
.method constructor <init>(Lcom/android/inputmethod/research/ResearchLog;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLog$2;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog$2;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    #getter for: Lcom/android/inputmethod/research/ResearchLog;->mHasWrittenData:Z
    invoke-static {v0}, Lcom/android/inputmethod/research/ResearchLog;->access$100(Lcom/android/inputmethod/research/ResearchLog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog$2;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    #getter for: Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;
    invoke-static {v0}, Lcom/android/inputmethod/research/ResearchLog;->access$200(Lcom/android/inputmethod/research/ResearchLog;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 141
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog$2;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    #getter for: Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;
    invoke-static {v0}, Lcom/android/inputmethod/research/ResearchLog;->access$200(Lcom/android/inputmethod/research/ResearchLog;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    .line 142
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog$2;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    const/4 v1, 0x0

    #setter for: Lcom/android/inputmethod/research/ResearchLog;->mHasWrittenData:Z
    invoke-static {v0, v1}, Lcom/android/inputmethod/research/ResearchLog;->access$102(Lcom/android/inputmethod/research/ResearchLog;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog$2;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$2;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-object v1, v1, Lcom/android/inputmethod/research/ResearchLog;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    #setter for: Lcom/android/inputmethod/research/ResearchLog;->mIsAbortSuccessful:Z
    invoke-static {v0, v1}, Lcom/android/inputmethod/research/ResearchLog;->access$402(Lcom/android/inputmethod/research/ResearchLog;Z)Z

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$2;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLog$2;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-object v2, v2, Lcom/android/inputmethod/research/ResearchLog;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    #setter for: Lcom/android/inputmethod/research/ResearchLog;->mIsAbortSuccessful:Z
    invoke-static {v1, v2}, Lcom/android/inputmethod/research/ResearchLog;->access$402(Lcom/android/inputmethod/research/ResearchLog;Z)Z

    throw v0
.end method
