.class final Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;
.super Ljava/lang/Object;
.source "GesturePreviewTrail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Params"
.end annotation


# instance fields
.field public final mFadeoutDuration:I

.field public final mFadeoutStartDelay:I

.field public final mTrailColor:I

.field public final mTrailEndWidth:F

.field public final mTrailLingerDuration:I

.field public final mTrailStartWidth:F

.field public final mUpdateInterval:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 3
    .parameter "keyboardViewAttr"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x1b

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mTrailColor:I

    .line 53
    const/16 v0, 0x1c

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mTrailStartWidth:F

    .line 55
    const/16 v0, 0x1d

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mTrailEndWidth:F

    .line 57
    const/16 v0, 0x18

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mFadeoutStartDelay:I

    .line 59
    const/16 v0, 0x19

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mFadeoutDuration:I

    .line 61
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mFadeoutStartDelay:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mFadeoutDuration:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mTrailLingerDuration:I

    .line 62
    const/16 v0, 0x1a

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GesturePreviewTrail$Params;->mUpdateInterval:I

    .line 64
    return-void
.end method
