.class public Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;
.super Landroid/preference/DialogPreference;
.source "KeySizeDialogPreference.java"


# static fields
.field private static final KEY_HEIGHT_DEFAULT_VALUE:I = 0x4b

.field private static final KEY_HEIGHT_LANDSCAPE_KEY:Ljava/lang/String; = "key_height_landscape"

.field private static final KEY_HEIGHT_LANDSCAPE_SYMBOL_KEY:Ljava/lang/String; = "key_height_landscape_symbol"

.field private static final KEY_HEIGHT_PORTRAIT_KEY:Ljava/lang/String; = "key_height_portrait"

.field private static final KEY_HEIGHT_PORTRAIT_SYMBOL_KEY:Ljava/lang/String; = "key_height_portrait_symbol"

.field private static final KEY_HEIGHT_RATE_UNIT:Ljava/lang/String; = "%"


# instance fields
.field private mDefaultHeightLandScape:I

.field private mDefaultHeightPortrait:I

.field private mMaxHeightLandScape:I

.field private mMaxHeightPortrait:I

.field private mMinHeightLandScape:I

.field private mMinHeightPortrait:I

.field private mSeekBarLandScape:Landroid/widget/SeekBar;

.field private mSeekBarPortrait:Landroid/widget/SeekBar;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTxtLandScape:Ljava/lang/String;

.field private mTxtPortrait:Ljava/lang/String;

.field private mTxtViewLandScape:Landroid/widget/TextView;

.field private mTxtViewPortrait:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 83
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->setDialogLayoutResource(I)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->setSeekBarLandscape()V

    return-void
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->setSeekBarPortrait()V

    return-void
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightPortrait:I

    return v0
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightLandScape:I

    return v0
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->editKeyHeight(II)V

    return-void
.end method

.method private editKeyHeight(II)V
    .locals 12
    .parameter "portraitHeight"
    .parameter "landscapeHeight"

    .prologue
    const/high16 v11, 0x7f0b

    .line 257
    int-to-float v9, p1

    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightPortrait:I

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 258
    .local v6, keyHeightPortraitRate:F
    int-to-float v9, p2

    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightLandScape:I

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 260
    .local v4, keyHeightLandscapeRate:F
    const/4 v9, 0x1

    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightPortrait:I

    invoke-direct {p0, v11, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->getKeyHeight(III)I

    move-result v7

    .line 263
    .local v7, keyHeightPortraitSymbol:I
    const/4 v9, 0x2

    iget v10, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightLandScape:I

    invoke-direct {p0, v11, v9, v10}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->getKeyHeight(III)I

    move-result v5

    .line 268
    .local v5, keyHeightLandscapeSymbol:I
    iget-object v9, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 270
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "key_height_portrait"

    invoke-interface {v1, v9, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    const-string v9, "key_height_landscape"

    invoke-interface {v1, v9, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    const-string v9, "key_height_portrait_symbol"

    int-to-float v10, v7

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 274
    const-string v9, "key_height_landscape_symbol"

    int-to-float v10, v5

    mul-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 279
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v8

    .line 280
    .local v8, wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    const v0, -0xfffffe4

    .line 281
    .local v0, code:I
    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;

    invoke-direct {v2, v0}, Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;-><init>(I)V

    .line 283
    .local v2, ev:Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;
    :try_start_0
    invoke-virtual {v8, v2}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v3

    .line 285
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "iWnn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KeySizeDialogPreference::editKeyHeight "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getKeyHeight(III)I
    .locals 6
    .parameter "id"
    .parameter "orientation"
    .parameter "defauleValue"

    .prologue
    .line 299
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 300
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 303
    .local v2, nowConfig:Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    .line 306
    .local v3, nowOrientation:I
    iput p2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 307
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 309
    const/4 v1, 0x0

    .line 311
    .local v1, height:I
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 317
    :goto_0
    iput v3, v2, Landroid/content/res/Configuration;->orientation:I

    .line 318
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 320
    return v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    move v1, p3

    goto :goto_0
.end method

.method private setSeekBarLandscape()V
    .locals 6

    .prologue
    .line 195
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarLandScape:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMinHeightLandScape:I

    add-int v2, v3, v4

    .line 196
    .local v2, presentValue:I
    int-to-float v3, v2

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightLandScape:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 197
    .local v1, keyHeightValue:F
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 200
    .local v0, keyHeightRate:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mTxtViewLandScape:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mTxtLandScape:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method private setSeekBarPortrait()V
    .locals 6

    .prologue
    .line 182
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarPortrait:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMinHeightPortrait:I

    add-int v2, v3, v4

    .line 183
    .local v2, presentValue:I
    int-to-float v3, v2

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightPortrait:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 184
    .local v1, keyHeightValue:F
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 187
    .local v0, keyHeightRate:I
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mTxtViewPortrait:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mTxtPortrait:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/high16 v5, 0x7f0b

    const/16 v4, 0x4b

    .line 94
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 96
    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMaxHeightPortrait:I

    .line 97
    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMinHeightPortrait:I

    .line 99
    const/4 v3, 0x1

    invoke-direct {p0, v5, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->getKeyHeight(III)I

    move-result v3

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightPortrait:I

    .line 103
    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMaxHeightLandScape:I

    .line 104
    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMinHeightLandScape:I

    .line 106
    const/4 v3, 0x2

    invoke-direct {p0, v5, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->getKeyHeight(III)I

    move-result v3

    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightLandScape:I

    .line 110
    const v3, 0x7f08004e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarLandScape:Landroid/widget/SeekBar;

    .line 111
    const v3, 0x7f08004d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mTxtViewLandScape:Landroid/widget/TextView;

    .line 112
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mTxtViewLandScape:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mTxtLandScape:Ljava/lang/String;

    .line 115
    const v3, 0x7f08004c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarPortrait:Landroid/widget/SeekBar;

    .line 116
    const v3, 0x7f08004b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mTxtViewPortrait:Landroid/widget/TextView;

    .line 117
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mTxtViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mTxtPortrait:Ljava/lang/String;

    .line 120
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarLandScape:Landroid/widget/SeekBar;

    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$1;

    invoke-direct {v4, p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 138
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarPortrait:Landroid/widget/SeekBar;

    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$2;

    invoke-direct {v4, p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 156
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarPortrait:Landroid/widget/SeekBar;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMaxHeightPortrait:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMinHeightPortrait:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 157
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarLandScape:Landroid/widget/SeekBar;

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMaxHeightLandScape:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMinHeightLandScape:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 160
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_height_portrait"

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightPortrait:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, portraitHeight:I
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMinHeightPortrait:I

    sub-int/2addr v1, v3

    .line 163
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_height_landscape"

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mDefaultHeightLandScape:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, landscapeHeight:I
    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMinHeightLandScape:I

    sub-int/2addr v0, v3

    .line 167
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarPortrait:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 168
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarLandScape:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 171
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->setSeekBarPortrait()V

    .line 172
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->setSeekBarLandscape()V

    .line 175
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarPortrait:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMinHeightPortrait:I

    add-int v1, v2, v3

    .line 240
    .local v1, portraitHeight:I
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mSeekBarLandScape:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->mMinHeightLandScape:I

    add-int v0, v2, v3

    .line 242
    .local v0, landscapeHeight:I
    invoke-direct {p0, v1, v0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->editKeyHeight(II)V

    .line 245
    .end local v0           #landscapeHeight:I
    .end local v1           #portraitHeight:I
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 212
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 213
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f06009a

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$3;

    invoke-direct {v2, p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$3;-><init>(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$4;

    invoke-direct {v2, p0}, Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference$4;-><init>(Ljp/co/omronsoft/iwnnime/ml/KeySizeDialogPreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    const v1, 0x7f06009b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    return-void
.end method
