.class public Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.super Landroid/os/Handler;
.source "StaticInnerHandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private final mOuterInstanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;,"Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper<TT;>;"
    .local p1, outerInstance:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outerInstance is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->mOuterInstanceRef:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method


# virtual methods
.method public getOuterInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;,"Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper<TT;>;"
    iget-object v0, p0, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->mOuterInstanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
