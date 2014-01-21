.class final Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyboardTheme"
.end annotation


# instance fields
.field public final mStyleId:I

.field public final mThemeId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "themeId"
    .parameter "styleId"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;->mThemeId:I

    .line 55
    iput p2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardTheme;->mStyleId:I

    .line 56
    return-void
.end method
