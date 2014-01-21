.class Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeyDivider;
.super Lcom/android/inputmethod/keyboard/Key$Spacer;
.source "MoreKeysKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoreKeyDivider"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;Landroid/graphics/drawable/Drawable;II)V
    .locals 6
    .parameter "params"
    .parameter "icon"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 364
    iget v4, p1, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDividerWidth:I

    iget v5, p1, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDefaultRowHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/Key$Spacer;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;IIII)V

    .line 365
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeyDivider;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 366
    return-void
.end method


# virtual methods
.method public getIcon(Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "iconSet"
    .parameter "alpha"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeyDivider;->mIcon:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 374
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeyDivider;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
