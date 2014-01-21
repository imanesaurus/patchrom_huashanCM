.class Lcom/android/inputmethod/latin/ContactsBinaryDictionary$1;
.super Landroid/database/ContentObserver;
.source "ContactsBinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->registerObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary$1;->this$0:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "self"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary$1;->this$0:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->setRequiresReload(Z)V

    .line 86
    return-void
.end method
