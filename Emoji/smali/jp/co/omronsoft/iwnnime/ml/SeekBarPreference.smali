.class public Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field private mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;->setDialogLayoutResource(I)V

    .line 42
    const v0, 0x7f06009a

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;->setPositiveButtonText(I)V

    .line 43
    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;->setNegativeButtonText(I)V

    .line 46
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "dialogView"

    .prologue
    .line 63
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 54
    const v1, 0x7f08003d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .local v0, iconView:Landroid/widget/ImageView;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
