.class public final Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;
.super Ljava/lang/Object;
.source "AudioAndHapticFeedbackManager.java"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mSettingsValues:Lcom/android/inputmethod/latin/SettingsValues;

.field private mSoundOn:Z

.field private final mVibratorUtils:Lcom/android/inputmethod/latin/VibratorUtils;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/SettingsValues;)V
    .locals 1
    .parameter "latinIme"
    .parameter "settingsValues"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mSettingsValues:Lcom/android/inputmethod/latin/SettingsValues;

    .line 42
    invoke-static {p1}, Lcom/android/inputmethod/latin/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/latin/VibratorUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mVibratorUtils:Lcom/android/inputmethod/latin/VibratorUtils;

    .line 43
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->reevaluateIfSoundIsOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mSoundOn:Z

    .line 45
    return-void
.end method

.method private playKeyClick(I)V
    .locals 3
    .parameter "primaryCode"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mSoundOn:Z

    if-eqz v1, :cond_0

    .line 66
    sparse-switch p1, :sswitch_data_0

    .line 77
    const/4 v0, 0x5

    .line 80
    .local v0, sound:I
    :goto_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mSettingsValues:Lcom/android/inputmethod/latin/SettingsValues;

    iget v2, v2, Lcom/android/inputmethod/latin/SettingsValues;->mFxVolume:F

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    goto :goto_0

    .line 68
    .end local v0           #sound:I
    :sswitch_0
    const/4 v0, 0x7

    .line 69
    .restart local v0       #sound:I
    goto :goto_1

    .line 71
    .end local v0           #sound:I
    :sswitch_1
    const/16 v0, 0x8

    .line 72
    .restart local v0       #sound:I
    goto :goto_1

    .line 74
    .end local v0           #sound:I
    :sswitch_2
    const/4 v0, 0x6

    .line 75
    .restart local v0       #sound:I
    goto :goto_1

    .line 66
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private reevaluateIfSoundIsOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mSettingsValues:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v1, v1, Lcom/android/inputmethod/latin/SettingsValues;->mSoundOn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hapticAndAudioFeedback(ILandroid/view/View;)V
    .locals 0
    .parameter "primaryCode"
    .parameter "viewToPerformHapticFeedbackOn"

    .prologue
    .line 49
    invoke-virtual {p0, p2}, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->vibrate(Landroid/view/View;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->playKeyClick(I)V

    .line 51
    return-void
.end method

.method public onRingerModeChanged()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->reevaluateIfSoundIsOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mSoundOn:Z

    .line 103
    return-void
.end method

.method public vibrate(Landroid/view/View;)V
    .locals 3
    .parameter "viewToPerformHapticFeedbackOn"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mSettingsValues:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mVibrateOn:Z

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mSettingsValues:Lcom/android/inputmethod/latin/SettingsValues;

    iget v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mKeypressVibrationDuration:I

    if-gez v0, :cond_2

    .line 91
    if-eqz p1, :cond_0

    .line 92
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mVibratorUtils:Lcom/android/inputmethod/latin/VibratorUtils;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mVibratorUtils:Lcom/android/inputmethod/latin/VibratorUtils;

    iget-object v1, p0, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->mSettingsValues:Lcom/android/inputmethod/latin/SettingsValues;

    iget v1, v1, Lcom/android/inputmethod/latin/SettingsValues;->mKeypressVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/VibratorUtils;->vibrate(J)V

    goto :goto_0
.end method
