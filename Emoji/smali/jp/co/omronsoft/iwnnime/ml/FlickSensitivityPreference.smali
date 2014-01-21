.class public Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;
.super Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;
.source "FlickSensitivityPreference.java"


# instance fields
.field private mFlickSensitivityDefault:I

.field private mFlickSensitivityMax:I

.field private mFlickSensitivityMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 42
    const v0, 0x7f0600a9

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->setDialogTitle(I)V

    .line 43
    const v0, 0x7f06009a

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->setPositiveButtonText(I)V

    .line 44
    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->setNegativeButtonText(I)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mFlickSensitivityMin:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mFlickSensitivityMax:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mFlickSensitivityDefault:I

    .line 48
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 57
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 59
    invoke-static {p1}, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 60
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mFlickSensitivityMax:I

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mFlickSensitivityMin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 62
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mFlickSensitivityDefault:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 63
    .local v1, setting:I
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mFlickSensitivityMax:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 64
    .local v0, sense:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 65
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mFlickSensitivityMax:I

    sub-int/2addr v2, v3

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mFlickSensitivityMin:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 75
    .local v0, sense:I
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->mFlickSensitivityMin:I

    add-int v1, v0, v2

    .line 76
    .local v1, setting:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/FlickSensitivityPreference;->persistString(Ljava/lang/String;)Z

    .line 80
    .end local v0           #sense:I
    .end local v1           #setting:I
    :cond_0
    invoke-super {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/SeekBarPreference;->onDialogClosed(Z)V

    .line 81
    return-void
.end method
