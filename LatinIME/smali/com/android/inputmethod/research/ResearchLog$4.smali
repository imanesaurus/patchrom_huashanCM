.class Lcom/android/inputmethod/research/ResearchLog$4;
.super Ljava/lang/Object;
.source "ResearchLog.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/research/ResearchLog;->publish(Lcom/android/inputmethod/research/LogUnit;Z)V
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

.field final synthetic val$isIncludingPrivateData:Z

.field final synthetic val$logUnit:Lcom/android/inputmethod/research/LogUnit;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/research/ResearchLog;Lcom/android/inputmethod/research/LogUnit;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLog$4;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iput-object p2, p0, Lcom/android/inputmethod/research/ResearchLog$4;->val$logUnit:Lcom/android/inputmethod/research/LogUnit;

    iput-boolean p3, p0, Lcom/android/inputmethod/research/ResearchLog$4;->val$isIncludingPrivateData:Z

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
    .line 196
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog$4;->val$logUnit:Lcom/android/inputmethod/research/LogUnit;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLog$4;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    iget-boolean v2, p0, Lcom/android/inputmethod/research/ResearchLog$4;->val$isIncludingPrivateData:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/research/LogUnit;->publishTo(Lcom/android/inputmethod/research/ResearchLog;Z)V

    .line 197
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog$4;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    #calls: Lcom/android/inputmethod/research/ResearchLog;->scheduleFlush()V
    invoke-static {v0}, Lcom/android/inputmethod/research/ResearchLog;->access$500(Lcom/android/inputmethod/research/ResearchLog;)V

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method
