.class public Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;
.super Ljava/lang/Object;
.source "IWnnImeBase.java"


# static fields
.field public static final ENGINE_MODE_SYMBOL_ADD_SYMBOL:I = 0x6f

.field public static final ENGINE_MODE_SYMBOL_DECOEMOJI:I = 0x6e

.field public static final ENGINE_MODE_SYMBOL_EMOJI:I = 0x6b

.field public static final ENGINE_MODE_SYMBOL_EMOJI_UNI6:I = 0x70

.field public static final ENGINE_MODE_SYMBOL_KAO_MOJI:I = 0x6d

.field public static final ENGINE_MODE_SYMBOL_SYMBOL:I = 0x6c

.field protected static final PREF_HAS_USED_VOICE_INPUT:Ljava/lang/String; = "has_used_voice_input"

.field protected static final TAG:Ljava/lang/String; = "iWnn"


# instance fields
.field protected mAfterVoiceInput:Z

.field protected mConfigurationChanging:Z

.field private mConvertingForFuncKey:Z

.field protected mEditorSelectionEnd:I

.field protected mEditorSelectionStart:I

.field protected mHasCommitedByVoiceInput:Z

.field protected mHasUsedVoiceInput:Z

.field protected mIsOnFinishInput:Z

.field protected mRecognizing:Z

.field protected mVibrator:Landroid/os/Vibrator;

.field protected mVoiceWarningDialog:Landroid/app/AlertDialog;

.field protected mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;


# direct methods
.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;)V
    .locals 2
    .parameter "wnn"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    .line 90
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionStart:I

    .line 93
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionEnd:I

    .line 114
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mIsOnFinishInput:Z

    .line 117
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mVibrator:Landroid/os/Vibrator;

    .line 120
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mHasCommitedByVoiceInput:Z

    .line 123
    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mConvertingForFuncKey:Z

    .line 147
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    .line 148
    return-void
.end method


# virtual methods
.method protected callMushRoom(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    .locals 8
    .parameter "word"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 606
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    move-result-object v0

    .line 607
    .local v0, candidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->isFocusCandidate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;->getFocusedWnnWord()Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-result-object p1

    .line 611
    :cond_0
    if-nez p1, :cond_6

    .line 612
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    move-result-object v1

    .line 613
    .local v1, composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    invoke-virtual {v1, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 614
    invoke-virtual {v1, v5}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v5, v6, v4}, Ljp/co/omronsoft/iwnnime/ml/decoemoji/DecoEmojiUtil;->convertComposingToCommitText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;III)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 648
    .end local v1           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .local v3, oldString:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->initializeScreen()V

    .line 649
    invoke-virtual {p0, v6}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->requestHideSelf(I)V

    .line 650
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->getInstance()Ljp/co/omronsoft/iwnnime/ml/MushroomControl;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->startMushroomLauncher(Ljava/lang/String;)V

    .line 651
    return-void

    .line 616
    .end local v3           #oldString:Ljava/lang/String;
    .restart local v1       #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    :cond_1
    invoke-virtual {v1, v7}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->size(I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 617
    invoke-virtual {v1, v7}, Ljp/co/omronsoft/iwnnime/ml/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #oldString:Ljava/lang/String;
    goto :goto_0

    .line 619
    .end local v3           #oldString:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 620
    .local v2, inputConnection:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_5

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionStart:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionEnd:I

    if-eq v4, v5, :cond_5

    .line 621
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionStart:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionStart:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 622
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionStart:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionEnd:I

    if-ge v4, v5, :cond_4

    .line 623
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionEnd:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionStart:I

    sub-int/2addr v4, v5

    invoke-interface {v2, v4, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 624
    .restart local v3       #oldString:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 625
    const-string v3, ""

    .line 633
    :cond_3
    :goto_1
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionStart:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionEnd:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto :goto_0

    .line 628
    .end local v3           #oldString:Ljava/lang/String;
    :cond_4
    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionStart:I

    iget v5, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionEnd:I

    sub-int/2addr v4, v5

    invoke-interface {v2, v4, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 629
    .restart local v3       #oldString:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 630
    const-string v3, ""

    goto :goto_1

    .line 635
    .end local v3           #oldString:Ljava/lang/String;
    :cond_5
    const-string v3, ""

    .restart local v3       #oldString:Ljava/lang/String;
    goto :goto_0

    .line 639
    .end local v1           #composingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .end local v2           #inputConnection:Landroid/view/inputmethod/InputConnection;
    .end local v3           #oldString:Ljava/lang/String;
    :cond_6
    iget v4, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_7

    iget v4, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v4, v4, 0x800

    if-nez v4, :cond_7

    iget v4, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->attribute:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_8

    .line 642
    :cond_7
    const-string v3, ""

    .restart local v3       #oldString:Ljava/lang/String;
    goto :goto_0

    .line 644
    .end local v3           #oldString:Ljava/lang/String;
    :cond_8
    iget-object v3, p1, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    .restart local v3       #oldString:Ljava/lang/String;
    goto :goto_0
.end method

.method public close(Z)V
    .locals 0
    .parameter "now"

    .prologue
    .line 334
    return-void
.end method

.method protected commitMushRoomString()V
    .locals 3

    .prologue
    .line 669
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->getInstance()Ljp/co/omronsoft/iwnnime/ml/MushroomControl;

    move-result-object v2

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/MushroomControl;->getResultString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 672
    .local v0, inputConnection:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 673
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 674
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 676
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->requestShowSelf()V

    .line 678
    :cond_1
    return-void
.end method

.method protected commitVoiceResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 775
    return-void
.end method

.method public getCandidatesViewManager()Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    return-object v0
.end method

.method public getComposingText()Ljp/co/omronsoft/iwnnime/ml/ComposingText;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    return-object v0
.end method

.method public getConverter()Ljp/co/omronsoft/iwnnime/ml/WnnEngine;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    return-object v0
.end method

.method protected getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    return-object v0
.end method

.method public getPreConverter()Ljp/co/omronsoft/iwnnime/ml/LetterConverter;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mPreConverter:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    return-object v0
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    return-object v0
.end method

.method protected getVibrator(Landroid/content/SharedPreferences;)Landroid/os/Vibrator;
    .locals 5
    .parameter "preference"

    .prologue
    .line 759
    const/4 v2, 0x0

    .line 761
    .local v2, vibrator:Landroid/os/Vibrator;
    :try_start_0
    const-string v3, "key_vibration"

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/Vibrator;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :cond_0
    :goto_0
    return-object v2

    .line 764
    :catch_0
    move-exception v1

    .line 765
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "iWnn"

    const-string v4, "NO VIBRATOR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hideWindow()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public hideWindowOpenWnn()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->hideWindowOpenWnn()V

    .line 256
    return-void
.end method

.method protected initializeScreen()V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method public isAutoHideMode()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mAutoHideMode:Z

    return v0
.end method

.method public isConvertingForFuncKey()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mConvertingForFuncKey:Z

    return v0
.end method

.method public isDirectInputMode()Z
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mDirectInputMode:Z

    return v0
.end method

.method protected isFullTenKeyCode(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, result:Z
    packed-switch p1, :pswitch_data_0

    .line 888
    :goto_0
    :pswitch_0
    return v0

    .line 881
    :pswitch_1
    const/4 v0, 0x1

    .line 882
    goto :goto_0

    .line 861
    nop

    :pswitch_data_0
    .packed-switch 0x90
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected isInputViewShown()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->isInputViewShown()Z

    move-result v0

    return v0
.end method

.method protected isTenKeyCode(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 829
    const/4 v0, 0x0

    .line 830
    .local v0, result:Z
    packed-switch p1, :pswitch_data_0

    .line 849
    :goto_0
    :pswitch_0
    return v0

    .line 842
    :pswitch_1
    const/4 v0, 0x1

    .line 843
    goto :goto_0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x90
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected isThroughKeyCode(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 785
    sparse-switch p1, :sswitch_data_0

    .line 808
    const/4 v0, 0x0

    .line 812
    .local v0, result:Z
    :goto_0
    return v0

    .line 804
    .end local v0           #result:Z
    :sswitch_0
    const/4 v0, 0x1

    .line 805
    .restart local v0       #result:Z
    goto :goto_0

    .line 785
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xcd -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 231
    return-void
.end method

.method public onConfigurationChangedOpenWnn(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 239
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->onConfigurationChangedOpenWnn(Landroid/content/res/Configuration;)V

    .line 240
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputViewOpenWnn()Landroid/view/View;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOpenWnn()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->onCreateOpenWnn()V

    .line 176
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public onEvaluateFullscreenModeOpenWnn()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->onEvaluateFullscreenModeOpenWnn()Z

    move-result v0

    return v0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onEvent(Ljp/co/omronsoft/iwnnime/ml/OpenWnnEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 283
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public onFinishInput()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public onFinishInputOpenWnn()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->onFinishInputOpenWnn()V

    .line 327
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 205
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->commitMushRoomString()V

    .line 206
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionStart:I

    .line 207
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionEnd:I

    .line 208
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 215
    return-void
.end method

.method public onStartInputViewOpenWnn(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 223
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0, p1, p2}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->onStartInputViewOpenWnn(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 224
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 0
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 263
    return-void
.end method

.method public onUpdateSelectionOpenWnn(IIIIII)V
    .locals 7
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 271
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->onUpdateSelectionOpenWnn(IIIIII)V

    .line 272
    iput p3, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionStart:I

    .line 273
    iput p4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mEditorSelectionEnd:I

    .line 274
    return-void
.end method

.method protected reallyStartShortcutIME()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 735
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mHasUsedVoiceInput:Z

    if-nez v1, :cond_0

    .line 738
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 740
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "has_used_voice_input"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 741
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 742
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mHasUsedVoiceInput:Z

    .line 746
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->initializeScreen()V

    .line 748
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->updateShortcutIME()V

    .line 749
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->getSwitcher()Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->switchToShortcutIME()V

    .line 750
    return-void
.end method

.method public removeMessages()V
    .locals 0

    .prologue
    .line 895
    return-void
.end method

.method protected requestHideSelf(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 411
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->requestHideSelf(I)V

    .line 412
    return-void
.end method

.method public restartSelf(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 820
    return-void
.end method

.method protected searchToggleCharacter(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "prevChar"
    .parameter "toggleTable"
    .parameter "reverse"

    .prologue
    .line 424
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->searchToggleCharacter(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sendDownUpKeyEvents(I)V
    .locals 1
    .parameter "keyEventCode"

    .prologue
    .line 373
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->sendDownUpKeyEvents(I)V

    .line 374
    return-void
.end method

.method protected sendKeyChar(C)V
    .locals 1
    .parameter "charCode"

    .prologue
    .line 382
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->sendKeyChar(C)V

    .line 383
    return-void
.end method

.method public setAutoHideMode(Z)V
    .locals 1
    .parameter "autoHideMode"

    .prologue
    .line 545
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iput-boolean p1, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mAutoHideMode:Z

    .line 546
    return-void
.end method

.method public setCandidatesViewManager(Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;)V
    .locals 1
    .parameter "candidatesViewManager"

    .prologue
    .line 455
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iput-object p1, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mCandidatesViewManager:Ljp/co/omronsoft/iwnnime/ml/CandidatesViewManager;

    .line 456
    return-void
.end method

.method public setComposingText(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)V
    .locals 1
    .parameter "composingText"

    .prologue
    .line 527
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iput-object p1, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mComposingText:Ljp/co/omronsoft/iwnnime/ml/ComposingText;

    .line 528
    return-void
.end method

.method public setConverter(Ljp/co/omronsoft/iwnnime/ml/WnnEngine;)V
    .locals 1
    .parameter "converter"

    .prologue
    .line 491
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iput-object p1, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mConverter:Ljp/co/omronsoft/iwnnime/ml/WnnEngine;

    .line 492
    return-void
.end method

.method public setConvertingForFuncKey(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 131
    iput-boolean p1, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mConvertingForFuncKey:Z

    .line 132
    return-void
.end method

.method public setDirectInputMode(Z)V
    .locals 1
    .parameter "directInputMode"

    .prologue
    .line 563
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iput-boolean p1, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mDirectInputMode:Z

    .line 564
    return-void
.end method

.method public setFunFun(I)V
    .locals 1
    .parameter "funfun"

    .prologue
    .line 659
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->getCurrentIme()Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    move-result-object v0

    .line 660
    .local v0, wnn:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;
    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->setFunfun(I)V

    .line 663
    :cond_0
    return-void
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .parameter "inputConnection"

    .prologue
    .line 581
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iput-object p1, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 582
    return-void
.end method

.method protected setInputView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 363
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->setInputView(Landroid/view/View;)V

    .line 364
    return-void
.end method

.method public setInputViewManager(Ljp/co/omronsoft/iwnnime/ml/InputViewManager;)V
    .locals 1
    .parameter "inputViewManager"

    .prologue
    .line 473
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iput-object p1, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mInputViewManager:Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    .line 474
    return-void
.end method

.method public setPreConverter(Ljp/co/omronsoft/iwnnime/ml/LetterConverter;)V
    .locals 1
    .parameter "preConverter"

    .prologue
    .line 509
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iput-object p1, v0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->mPreConverter:Ljp/co/omronsoft/iwnnime/ml/LetterConverter;

    .line 510
    return-void
.end method

.method protected showVoiceWarningDialog(Z)V
    .locals 7
    .parameter "swipe"

    .prologue
    .line 686
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 687
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 688
    const v4, 0x7f02002d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 689
    const v4, 0x7f06009a

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase$1;

    invoke-direct {v5, p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 694
    const v4, 0x7f06009b

    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase$2;

    invoke-direct {v5, p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06015b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06015c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 703
    const v4, 0x7f06015a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 704
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 706
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 707
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 708
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->getInputViewManager()Ljp/co/omronsoft/iwnnime/ml/InputViewManager;

    move-result-object v4

    invoke-interface {v4}, Ljp/co/omronsoft/iwnnime/ml/InputViewManager;->getCurrentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 709
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 710
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 711
    const/high16 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 712
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 713
    return-void
.end method

.method protected startShortcutIME()V
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mHasUsedVoiceInput:Z

    if-nez v0, :cond_0

    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->showVoiceWarningDialog(Z)V

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->reallyStartShortcutIME()V

    goto :goto_0
.end method

.method protected updateFullscreenMode()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/IWnnImeBase;->mWnnSwitcher:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->updateFullscreenMode()V

    .line 394
    return-void
.end method
