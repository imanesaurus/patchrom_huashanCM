.class public final Lcom/android/inputmethod/keyboard/internal/KeysCache;
.super Ljava/lang/Object;
.source "KeysCache.java"


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeysCache;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeysCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 29
    return-void
.end method

.method public get(Lcom/android/inputmethod/keyboard/Key;)Lcom/android/inputmethod/keyboard/Key;
    .locals 2
    .parameter "key"

    .prologue
    .line 32
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeysCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/Key;

    .line 33
    .local v0, existingKey:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    .line 38
    .end local v0           #existingKey:Lcom/android/inputmethod/keyboard/Key;
    :goto_0
    return-object v0

    .line 37
    .restart local v0       #existingKey:Lcom/android/inputmethod/keyboard/Key;
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeysCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 38
    goto :goto_0
.end method
