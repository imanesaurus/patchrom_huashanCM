.class final Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OptionalAttributes"
.end annotation


# instance fields
.field public final mAltCode:I

.field public final mDisabledIconId:I

.field public final mOutputText:Ljava/lang/String;

.field public final mPreviewIconId:I

.field public final mVisualInsetsLeft:I

.field public final mVisualInsetsRight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .parameter "outputText"
    .parameter "altCode"
    .parameter "disabledIconId"
    .parameter "previewIconId"
    .parameter "visualInsetsLeft"
    .parameter "visualInsetsRight"

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mOutputText:Ljava/lang/String;

    .line 157
    iput p2, p0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mAltCode:I

    .line 158
    iput p3, p0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mDisabledIconId:I

    .line 159
    iput p4, p0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mPreviewIconId:I

    .line 160
    iput p5, p0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mVisualInsetsLeft:I

    .line 161
    iput p6, p0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mVisualInsetsRight:I

    .line 162
    return-void
.end method
