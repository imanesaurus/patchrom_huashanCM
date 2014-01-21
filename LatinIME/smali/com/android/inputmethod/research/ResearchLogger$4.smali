.class Lcom/android/inputmethod/research/ResearchLogger$4;
.super Ljava/lang/Object;
.source "ResearchLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/research/ResearchLogger;->sendFeedback(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/research/ResearchLogger;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/research/ResearchLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLogger$4;->this$0:Lcom/android/inputmethod/research/ResearchLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger$4;->this$0:Lcom/android/inputmethod/research/ResearchLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/ResearchLogger;->uploadNow()V

    .line 566
    return-void
.end method
