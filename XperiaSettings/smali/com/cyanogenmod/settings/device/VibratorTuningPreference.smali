.class public Lcom/cyanogenmod/settings/device/VibratorTuningPreference;
.super Landroid/preference/DialogPreference;
.source "VibratorTuningPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static DEFAULT_VALUE:I

.field private static FILE_PATH:Ljava/lang/String;

.field private static MAX_VALUE:I

.field private static MIN_VALUE:I

.field private static WARNING_THRESHOLD:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOriginalValue:Ljava/lang/String;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressThumb:Landroid/graphics/drawable/Drawable;

.field private mRedFilter:Landroid/graphics/LightingColorFilter;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:Landroid/widget/TextView;

.field private mWarning:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MAX_VALUE:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->WARNING_THRESHOLD:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->DEFAULT_VALUE:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MIN_VALUE:I

    .line 74
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->setDialogLayoutResource(I)V

    .line 75
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->DEFAULT_VALUE:I

    return v0
.end method

.method static synthetic access$100(Lcom/cyanogenmod/settings/device/VibratorTuningPreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 167
    invoke-static {p0}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static percentToStrength(I)I
    .locals 3
    .parameter "percent"

    .prologue
    .line 215
    sget v1, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MAX_VALUE:I

    sget v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MIN_VALUE:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x64

    sget v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MIN_VALUE:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 217
    .local v0, strength:I
    sget v1, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MAX_VALUE:I

    if-le v0, v1, :cond_1

    .line 218
    sget v0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MAX_VALUE:I

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    sget v1, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MIN_VALUE:I

    if-ge v0, v1, :cond_0

    .line 220
    sget v0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MIN_VALUE:I

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    .line 151
    sget-object v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MAX_VALUE:I

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->DEFAULT_VALUE:I

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MIN_VALUE:I

    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "percent"

    sget v3, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->DEFAULT_VALUE:I

    invoke-static {v3}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->strengthToPercent(I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->percentToStrength(I)I

    move-result v1

    .line 162
    .local v1, strength:I
    const-string v2, "VibratorTuningPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring vibration setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static strengthToPercent(I)I
    .locals 12
    .parameter "strength"

    .prologue
    const-wide/high16 v10, 0x4059

    .line 198
    sget v6, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MAX_VALUE:I

    int-to-double v0, v6

    .line 199
    .local v0, maxValue:D
    sget v6, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->MIN_VALUE:I

    int-to-double v2, v6

    .line 201
    .local v2, minValue:D
    int-to-double v6, p0

    sub-double/2addr v6, v2

    sub-double v8, v0, v2

    div-double v8, v10, v8

    mul-double v4, v6, v8

    .line 203
    .local v4, percent:D
    cmpl-double v6, v4, v10

    if-lez v6, :cond_1

    .line 204
    const-wide/high16 v4, 0x4059

    .line 208
    :cond_0
    :goto_0
    double-to-int v6, v4

    return v6

    .line 205
    :cond_1
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 206
    const-wide/16 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 90
    const v5, 0x7f070002

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 91
    const v5, 0x7f070001

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mValue:Landroid/widget/TextView;

    .line 92
    const v5, 0x7f070003

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mWarning:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000b

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget v9, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->WARNING_THRESHOLD:I

    invoke-static {v9}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->strengthToPercent(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, strWarnMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mWarning:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 98
    .local v2, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    move-object v0, v2

    .line 99
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 100
    .local v0, ld:Landroid/graphics/drawable/LayerDrawable;
    const v5, 0x102000d

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    .end local v0           #ld:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    .line 103
    new-instance v5, Landroid/graphics/LightingColorFilter;

    const/high16 v6, -0x100

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1060016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mRedFilter:Landroid/graphics/LightingColorFilter;

    .line 107
    sget-object v5, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mOriginalValue:Ljava/lang/String;

    .line 110
    iget-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 111
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v5, "percent"

    sget v6, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->DEFAULT_VALUE:I

    invoke-static {v6}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->strengthToPercent(I)I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, percent:I
    iget-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 114
    iget-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 115
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 137
    if-eqz p1, :cond_0

    .line 139
    iget-object v2, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 140
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "percent"

    iget-object v3, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 144
    :cond_0
    sget-object v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mOriginalValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 79
    const v0, 0x7f060006

    new-instance v1, Lcom/cyanogenmod/settings/device/VibratorTuningPreference$1;

    invoke-direct {v1, p0}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference$1;-><init>(Lcom/cyanogenmod/settings/device/VibratorTuningPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    sget v3, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->WARNING_THRESHOLD:I

    invoke-static {v3}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->strengthToPercent(I)I

    move-result v3

    if-lt p2, v3, :cond_3

    move v0, v1

    .line 173
    .local v0, shouldWarn:Z
    :goto_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 174
    iget-object v5, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :cond_1
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    :cond_2
    sget-object v3, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    invoke-static {p2}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->percentToStrength(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->mValue:Landroid/widget/TextView;

    const-string v4, "%d%%"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void

    .end local v0           #shouldWarn:Z
    :cond_3
    move v0, v2

    .line 172
    goto :goto_0

    .restart local v0       #shouldWarn:Z
    :cond_4
    move-object v3, v4

    .line 174
    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 186
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 191
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 192
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 124
    .local v0, d:Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 125
    .local v1, defaultsButton:Landroid/widget/Button;
    new-instance v2, Lcom/cyanogenmod/settings/device/VibratorTuningPreference$2;

    invoke-direct {v2, p0}, Lcom/cyanogenmod/settings/device/VibratorTuningPreference$2;-><init>(Lcom/cyanogenmod/settings/device/VibratorTuningPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method
