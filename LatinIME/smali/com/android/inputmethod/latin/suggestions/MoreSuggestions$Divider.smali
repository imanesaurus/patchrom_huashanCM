.class final Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Divider;
.super Lcom/android/inputmethod/keyboard/Key$Spacer;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/suggestions/MoreSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Divider"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6
    .parameter "params"
    .parameter "icon"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/Key$Spacer;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;IIII)V

    .line 227
    iput-object p2, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Divider;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 228
    return-void
.end method


# virtual methods
.method public getIcon(Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "iconSet"
    .parameter "alpha"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Divider;->mIcon:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 236
    iget-object v0, p0, Lcom/android/inputmethod/latin/suggestions/MoreSuggestions$Divider;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
