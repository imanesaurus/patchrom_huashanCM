.class final Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;
.super Ljava/lang/Object;
.source "GesturePreviewTrail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkingSet"
.end annotation


# instance fields
.field public a1:F

.field public a2:F

.field public aa:F

.field public arc1:Landroid/graphics/RectF;

.field public arc2:Landroid/graphics/RectF;

.field public p1ax:F

.field public p1ay:F

.field public p1bx:F

.field public p1by:F

.field public p1x:F

.field public p1y:F

.field public p2ax:F

.field public p2ay:F

.field public p2bx:F

.field public p2by:F

.field public p2x:F

.field public p2y:F

.field public r1:F

.field public r2:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->arc1:Landroid/graphics/RectF;

    .line 146
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$WorkingSet;->arc2:Landroid/graphics/RectF;

    return-void
.end method
