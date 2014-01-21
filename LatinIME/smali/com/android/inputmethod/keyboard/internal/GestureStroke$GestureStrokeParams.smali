.class public final Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/GestureStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GestureStrokeParams"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

.field public static final FOR_TEST:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;


# instance fields
.field public final mDetectFastMoveSpeedThreshold:F

.field public final mDynamicDistanceThresholdFrom:F

.field public final mDynamicDistanceThresholdTo:F

.field public final mDynamicThresholdDecayDuration:I

.field public final mDynamicTimeThresholdFrom:I

.field public final mDynamicTimeThresholdTo:I

.field public final mRecognitionMinimumTime:I

.field public final mRecognitionSpeedThreshold:F

.field public final mSamplingMinimumDistance:F

.field public final mStaticTimeThresholdAfterFastTyping:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->FOR_TEST:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    .line 80
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->FOR_TEST:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mStaticTimeThresholdAfterFastTyping:I

    .line 85
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDetectFastMoveSpeedThreshold:F

    .line 86
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicThresholdDecayDuration:I

    .line 87
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicTimeThresholdFrom:I

    .line 88
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicTimeThresholdTo:I

    .line 89
    const/high16 v0, 0x40c0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicDistanceThresholdFrom:F

    .line 90
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicDistanceThresholdTo:F

    .line 92
    const v0, 0x3e2aaaab

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mSamplingMinimumDistance:F

    .line 93
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mRecognitionMinimumTime:I

    .line 94
    const/high16 v0, 0x40b0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mRecognitionSpeedThreshold:F

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter "mainKeyboardViewAttr"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/16 v0, 0x14

    sget-object v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mStaticTimeThresholdAfterFastTyping:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mStaticTimeThresholdAfterFastTyping:I

    .line 101
    const/16 v0, 0x15

    sget-object v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDetectFastMoveSpeedThreshold:F

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDetectFastMoveSpeedThreshold:F

    .line 104
    const/16 v0, 0x16

    sget-object v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicThresholdDecayDuration:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicThresholdDecayDuration:I

    .line 107
    const/16 v0, 0x17

    sget-object v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicTimeThresholdFrom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicTimeThresholdFrom:I

    .line 110
    const/16 v0, 0x18

    sget-object v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicTimeThresholdTo:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicTimeThresholdTo:I

    .line 113
    const/16 v0, 0x19

    sget-object v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicDistanceThresholdFrom:F

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicDistanceThresholdFrom:F

    .line 116
    const/16 v0, 0x1a

    sget-object v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicDistanceThresholdTo:F

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mDynamicDistanceThresholdTo:F

    .line 119
    const/16 v0, 0x1b

    sget-object v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mSamplingMinimumDistance:F

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mSamplingMinimumDistance:F

    .line 122
    const/16 v0, 0x1c

    sget-object v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mRecognitionMinimumTime:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mRecognitionMinimumTime:I

    .line 125
    const/16 v0, 0x1d

    sget-object v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->DEFAULT:Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mRecognitionSpeedThreshold:F

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/latin/ResourceUtils;->getFraction(Landroid/content/res/TypedArray;IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/GestureStroke$GestureStrokeParams;->mRecognitionSpeedThreshold:F

    .line 128
    return-void
.end method
