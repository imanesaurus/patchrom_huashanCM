.class Lcom/android/inputmethod/research/ResearchLog$3;
.super Ljava/lang/Object;
.source "ResearchLog.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/research/ResearchLog;
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
    .line 169
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLog$3;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLog$3;->this$0:Lcom/android/inputmethod/research/ResearchLog;

    #getter for: Lcom/android/inputmethod/research/ResearchLog;->mJsonWriter:Landroid/util/JsonWriter;
    invoke-static {v0}, Lcom/android/inputmethod/research/ResearchLog;->access$200(Lcom/android/inputmethod/research/ResearchLog;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method
