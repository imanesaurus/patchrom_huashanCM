.class public final Lcom/google/ads/bs;
.super Lcom/google/ads/e/ac;


# instance fields
.field public final a:Lcom/google/ads/e/af;

.field public final b:Lcom/google/ads/e/ag;

.field public final c:Lcom/google/ads/e/ag;


# direct methods
.method public constructor <init>(Lcom/google/ads/bv;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/e/ac;-><init>()V

    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "disableNativeScroll"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bs;->c:Lcom/google/ads/e/ag;

    new-instance v0, Lcom/google/ads/e/af;

    const-string v1, "slotState"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/af;

    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "adLoader"

    new-instance v2, Lcom/google/ads/b/n;

    invoke-direct {v2, p0}, Lcom/google/ads/b/n;-><init>(Lcom/google/ads/bs;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ag;

    return-void
.end method
