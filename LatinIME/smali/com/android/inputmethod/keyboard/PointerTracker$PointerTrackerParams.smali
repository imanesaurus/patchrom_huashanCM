.class final Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PointerTrackerParams"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;


# instance fields
.field public final mSlidingKeyInputEnabled:Z

.field public final mSuppressKeyPreviewAfterBatchInputDuration:I

.field public final mTouchNoiseThresholdDistance:I

.field public final mTouchNoiseThresholdTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->DEFAULT:Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mSlidingKeyInputEnabled:Z

    .line 131
    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mTouchNoiseThresholdTime:I

    .line 132
    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mTouchNoiseThresholdDistance:I

    .line 133
    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mSuppressKeyPreviewAfterBatchInputDuration:I

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter "mainKeyboardViewAttr"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mSlidingKeyInputEnabled:Z

    .line 139
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mTouchNoiseThresholdTime:I

    .line 141
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mTouchNoiseThresholdDistance:I

    .line 143
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker$PointerTrackerParams;->mSuppressKeyPreviewAfterBatchInputDuration:I

    .line 145
    return-void
.end method
