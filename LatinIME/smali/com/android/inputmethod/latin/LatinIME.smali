.class public final Lcom/android/inputmethod/latin/LatinIME;
.super Landroid/inputmethodservice/InputMethodService;
.source "LatinIME.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/KeyboardActionListener;
.implements Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;
.implements Lcom/android/inputmethod/latin/TargetApplicationGetter$OnTargetApplicationKnownListener;
.implements Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;,
        Lcom/android/inputmethod/latin/LatinIME$SubtypeState;,
        Lcom/android/inputmethod/latin/LatinIME$UIHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

.field private mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

.field private mDeleteCount:I

.field private mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mDisplayOrientation:I

.field private mEnteredText:Ljava/lang/CharSequence;

.field private mExpectingUpdateSelection:Z

.field private mExtractArea:Landroid/view/View;

.field private mFeedbackManager:Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;

.field public final mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

.field private mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

.field private mIsAutoCorrectionIndicatorOn:Z

.field private final mIsHardwareAcceleratedDrawingEnabled:Z

.field private mIsMainDictionaryAvailable:Z

.field private mIsUserDictionaryAvailable:Z

.field private mKeyPreviewBackingView:Landroid/view/View;

.field final mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field private mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

.field private mLastKeyTime:J

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mSpaceState:I

.field private final mSubtypeState:Lcom/android/inputmethod/latin/LatinIME$SubtypeState;

.field private final mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field private mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

.field private mSuggestionsContainer:Landroid/view/View;

.field private mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mUserDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;

.field private mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

.field private final mWordComposer:Lcom/android/inputmethod/latin/WordComposer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 399
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 144
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeState:Lcom/android/inputmethod/latin/LatinIME$SubtypeState;

    .line 151
    sget-object v0, Lcom/android/inputmethod/latin/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/android/inputmethod/latin/LastComposedWord;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    .line 154
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    .line 155
    new-instance v0, Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/RichInputConnection;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    .line 159
    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 160
    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 174
    new-instance v0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    .line 2370
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$2;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$2;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 400
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 401
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 402
    invoke-static {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatUtils;->enableHardwareAcceleration(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsHardwareAcceleratedDrawingEnabled:Z

    .line 404
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware accelerated drawing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsHardwareAcceleratedDrawingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestionStrip()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->showGesturePreviewAndSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SubtypeSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mFeedbackManager:Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/LatinIME;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/LatinIME;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/WordComposer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/inputmethod/latin/LatinIME;I)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->getSuggestedWords(I)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    return-object v0
.end method

.method private addToUserHistoryDictionary(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "suggestion"

    .prologue
    const/4 v4, 0x0

    .line 2203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 2231
    :goto_0
    return-object v1

    .line 2204
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v5, :cond_1

    move-object v1, v4

    goto :goto_0

    .line 2209
    :cond_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v5, v5, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-nez v5, :cond_2

    move-object v1, v4

    goto :goto_0

    .line 2211
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    .line 2212
    .local v3, userHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;
    if-eqz v3, :cond_7

    .line 2213
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v6, v6, Lcom/android/inputmethod/latin/SettingsValues;->mWordSeparators:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/inputmethod/latin/RichInputConnection;->getNthPreviousWord(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2216
    .local v1, prevWord:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->wasAutoCapitalized()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->isMostlyCaps()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2217
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 2224
    .local v2, secondWord:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/inputmethod/latin/AutoCorrection;->getMaxFrequency(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;)I

    move-result v0

    .line 2226
    .local v0, maxFreq:I
    if-nez v0, :cond_4

    move-object v1, v4

    goto :goto_0

    .line 2220
    .end local v0           #maxFreq:I
    .end local v2           #secondWord:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #secondWord:Ljava/lang/String;
    goto :goto_1

    .line 2227
    .restart local v0       #maxFreq:I
    :cond_4
    if-nez v1, :cond_5

    move-object v5, v4

    :goto_2
    if-lez v0, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v5, v2, v4}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->addToUserHistory(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .end local v0           #maxFreq:I
    .end local v1           #prevWord:Ljava/lang/CharSequence;
    .end local v2           #secondWord:Ljava/lang/String;
    :cond_7
    move-object v1, v4

    .line 2231
    goto :goto_0
.end method

.method private static canBeFollowedByPeriod(I)Z
    .locals 1
    .parameter "codePoint"

    .prologue
    .line 1214
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearSuggestionStrip()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1933
    sget-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    .line 1934
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setAutoCorrectionIndicator(Z)V

    .line 1935
    return-void
.end method

.method private commitChosenWord(Ljava/lang/CharSequence;ILjava/lang/String;)V
    .locals 5
    .parameter "chosenWord"
    .parameter "commitType"
    .parameter "separatorString"

    .prologue
    .line 2179
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v1

    .line 2180
    .local v1, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsMainDictionaryAvailable:Z

    invoke-static {p0, p1, v1, v3}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithSuggestionSpan(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;Z)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    .line 2183
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->addToUserHistoryDictionary(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2188
    .local v0, prevWord:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3, p3, v0}, Lcom/android/inputmethod/latin/WordComposer;->commitWord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/LastComposedWord;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    .line 2190
    return-void
.end method

.method private commitCurrentAutoCorrection(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasPendingUpdateSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2057
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestionStrip()V

    .line 2059
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->getAutoCorrectionOrNull()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2060
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    .line 2061
    if-eqz v0, :cond_1

    .line 2063
    :goto_0
    if-eqz v0, :cond_3

    .line 2064
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2065
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "We have an auto-correction but the typed word is empty? Impossible! I must commit suicide."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    .line 2061
    goto :goto_0

    .line 2072
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 2073
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, p1}, Lcom/android/inputmethod/latin/LatinIME;->commitChosenWord(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 2075
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2082
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    new-instance v3, Landroid/view/inputmethod/CorrectionInfo;

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v3, v4, v1, v0}, Landroid/view/inputmethod/CorrectionInfo;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 2087
    :cond_3
    return-void
.end method

.method private commitTyped(Ljava/lang/String;)V
    .locals 2
    .parameter "separatorString"

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, typedWord:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1149
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/LatinIME;->commitChosenWord(Ljava/lang/CharSequence;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static getActionId(Lcom/android/inputmethod/keyboard/Keyboard;)I
    .locals 1
    .parameter "keyboard"

    .prologue
    .line 1285
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeActionId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getActualCapsMode()I
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 1170
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardShiftMode()I

    move-result v1

    .line 1171
    .local v1, keyboardShiftMode:I
    if-eq v1, v2, :cond_0

    .line 1177
    .end local v1           #keyboardShiftMode:I
    :goto_0
    return v1

    .line 1172
    .restart local v1       #keyboardShiftMode:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()I

    move-result v0

    .line 1173
    .local v0, auto:I
    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_1

    .line 1174
    const/4 v1, 0x7

    goto :goto_0

    .line 1176
    :cond_1
    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_0

    .line 1177
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAdjustedBackingViewHeight()I
    .locals 10

    .prologue
    .line 1042
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1043
    .local v0, currentHeight:I
    if-lez v0, :cond_0

    .line 1063
    .end local v0           #currentHeight:I
    :goto_0
    return v0

    .line 1047
    .restart local v0       #currentHeight:I
    :cond_0
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v9}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v3

    .line 1048
    .local v3, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-nez v3, :cond_1

    .line 1049
    const/4 v0, 0x0

    goto :goto_0

    .line 1051
    :cond_1
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getHeight()I

    move-result v2

    .line 1052
    .local v2, keyboardHeight:I
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1053
    .local v8, suggestionsHeight:I
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1054
    .local v1, displayHeight:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1055
    .local v6, rect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1056
    iget v4, v6, Landroid/graphics/Rect;->top:I

    .line 1057
    .local v4, notificationBarHeight:I
    sub-int v9, v1, v4

    sub-int/2addr v9, v8

    sub-int v7, v9, v2

    .line 1060
    .local v7, remainingHeight:I
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1061
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v9, v7}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->setMoreSuggestionsHeight(I)I

    move-result v9

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1062
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private getSuggestedWords(I)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 9
    .parameter "sessionId"

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v6

    .line 1984
    .local v6, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-nez v6, :cond_0

    .line 1985
    sget-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 1998
    :goto_0
    return-object v0

    .line 1987
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v8

    .line 1992
    .local v8, typedWord:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v3, v0, Lcom/android/inputmethod/latin/SettingsValues;->mWordSeparators:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1, v3, v0}, Lcom/android/inputmethod/latin/RichInputConnection;->getNthPreviousWord(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1995
    .local v2, prevWord:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/Keyboard;->getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v4, v4, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWords(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;ZI)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v7

    .line 1998
    .local v7, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-direct {p0, v8, v7}, Lcom/android/inputmethod/latin/LatinIME;->maybeRetrieveOlderSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    goto :goto_0

    .line 1992
    .end local v2           #prevWord:Ljava/lang/CharSequence;
    .end local v7           #suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "text"

    .prologue
    .line 1898
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsAutoCorrectionIndicatorOn:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    :cond_0
    return-object p1
.end method

.method private handleBackspace(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1654
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateShiftState()V

    .line 1656
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1657
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    .line 1658
    if-lez v0, :cond_2

    .line 1660
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1665
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 1666
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 1737
    :cond_0
    :goto_1
    return-void

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    goto :goto_0

    .line 1668
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0, v2, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    goto :goto_1

    .line 1671
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LastComposedWord;->canRevertCommit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1675
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->revertCommit()V

    goto :goto_1

    .line 1678
    :cond_4
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->sameAsTextBeforeCursor(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1682
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1683
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v0, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 1684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1690
    :cond_5
    if-ne v2, p1, :cond_8

    .line 1691
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1692
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/RichInputConnection;->revertDoubleSpace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    :cond_6
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    if-eq v0, v1, :cond_9

    .line 1708
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    sub-int/2addr v0, v1

    .line 1709
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->setSelection(II)V

    .line 1710
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v0, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 1733
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1734
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->restartSuggestionsOnWordBeforeCursorIfAtEndOfWord()V

    goto :goto_1

    .line 1697
    :cond_8
    const/4 v0, 0x2

    if-ne v0, p1, :cond_6

    .line 1698
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/RichInputConnection;->revertSwapPunctuation()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 1713
    :cond_9
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    if-ne v0, v1, :cond_a

    .line 1715
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v1, "Backspace when we don\'t know the selection position"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_a
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_b

    .line 1725
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEventForBackwardCompatibility(I)V

    .line 1729
    :goto_3
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_7

    .line 1730
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0, v2, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    goto :goto_2

    .line 1727
    :cond_b
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0, v2, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    goto :goto_3
.end method

.method private handleCharacter(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1762
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v0

    .line 1764
    const/4 v3, 0x4

    if-ne v3, p4, :cond_1

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1766
    if-eqz v0, :cond_0

    .line 1768
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not be composing here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1770
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->promotePhantomSpace()V

    .line 1776
    :cond_1
    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinIME;->isAlphabet(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->isCursorTouchingWord(Lcom/android/inputmethod/latin/SettingsValues;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1784
    const/16 v0, 0x27

    if-eq v0, p1, :cond_7

    move v0, v1

    .line 1789
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    .line 1791
    :cond_3
    if-eqz v0, :cond_9

    .line 1793
    invoke-static {p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;->isInvalidCoordinate(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;->isInvalidCoordinate(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1803
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/WordComposer;->add(III)V

    .line 1805
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1806
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->getActualCapsMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/WordComposer;->setCapitalizedModeAtStartComposingTime(I)V

    .line 1808
    :cond_5
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 1822
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 1826
    return-void

    :cond_7
    move v0, v2

    .line 1784
    goto :goto_0

    .line 1798
    :cond_8
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;

    move-result-object v0

    .line 1800
    invoke-virtual {v0, p2}, Lcom/android/inputmethod/keyboard/KeyDetector;->getTouchX(I)I

    move-result p2

    .line 1801
    invoke-virtual {v0, p3}, Lcom/android/inputmethod/keyboard/KeyDetector;->getTouchY(I)I

    move-result p3

    goto :goto_1

    .line 1810
    :cond_9
    const/4 v0, -0x2

    if-ne v0, p2, :cond_b

    :goto_3
    invoke-direct {p0, p1, p4, v1}, Lcom/android/inputmethod/latin/LatinIME;->maybeStripSpace(IIZ)Z

    move-result v0

    .line 1813
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyCodePoint(I)V

    .line 1815
    if-eqz v0, :cond_a

    .line 1816
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapSwapperAndSpace()V

    .line 1817
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1820
    :cond_a
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->dismissAddToDictionaryHint()Z

    goto :goto_2

    :cond_b
    move v1, v2

    .line 1810
    goto :goto_3
.end method

.method private handleClose()V
    .locals 2

    .prologue
    .line 1904
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    .line 1905
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->requestHideSelf(I)V

    .line 1906
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 1907
    .local v0, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 1908
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->closing()V

    .line 1910
    :cond_0
    return-void
.end method

.method private handleLanguageSwitchKey()V
    .locals 3

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1295
    .local v0, token:Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v1, v1, Lcom/android/inputmethod/latin/SettingsValues;->mIncludesOtherImesInLanguageSwitchList:Z

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    .line 1300
    :goto_0
    return-void

    .line 1299
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeState:Lcom/android/inputmethod/latin/LatinIME$SubtypeState;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;->switchSubtype(Landroid/os/IBinder;Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private handleSeparator(IIII)Z
    .locals 7
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"
    .parameter "spaceState"

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1831
    const/4 v0, 0x0

    .line 1833
    .local v0, didAutoCorrect:Z
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1834
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v4, v4, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-eqz v4, :cond_5

    .line 1836
    new-instance v4, Ljava/lang/String;

    new-array v5, v3, [I

    aput p1, v5, v2

    invoke-direct {v4, v5, v2, v3}, Ljava/lang/String;-><init>([III)V

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->commitCurrentAutoCorrection(Ljava/lang/String;)V

    .line 1837
    const/4 v0, 0x1

    .line 1843
    :cond_0
    :goto_0
    const/4 v4, -0x2

    if-ne v4, p2, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, p1, p4, v2}, Lcom/android/inputmethod/latin/LatinIME;->maybeStripSpace(IIZ)Z

    move-result v1

    .line 1846
    .local v1, swapWeakSpace:Z
    if-ne v6, p4, :cond_2

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isPhantomSpacePromotingSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1848
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->promotePhantomSpace()V

    .line 1850
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyCodePoint(I)V

    .line 1852
    const/16 v2, 0x20

    if-ne v2, p1, :cond_7

    .line 1853
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v2, v4}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1854
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->maybeDoubleSpace()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1855
    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1861
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startDoubleSpacesTimer()V

    .line 1862
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->isCursorTouchingWord(Lcom/android/inputmethod/latin/SettingsValues;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1863
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 1893
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1894
    return v0

    .line 1839
    .end local v1           #swapWeakSpace:Z
    :cond_5
    new-instance v4, Ljava/lang/String;

    new-array v5, v3, [I

    aput p1, v5, v2

    invoke-direct {v4, v5, v2, v3}, Ljava/lang/String;-><init>([III)V

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    goto :goto_0

    .line 1856
    .restart local v1       #swapWeakSpace:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingPunctuationList()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1857
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    goto :goto_1

    .line 1866
    :cond_7
    if-eqz v1, :cond_9

    .line 1867
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapSwapperAndSpace()V

    .line 1868
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1887
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_2

    .line 1869
    :cond_9
    if-ne v6, p4, :cond_8

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceStripper(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isPhantomSpacePromotingSymbol(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1882
    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    goto :goto_3
.end method

.method private initSuggest()V
    .locals 5

    .prologue
    .line 486
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v2

    .line 487
    .local v2, subtypeLocale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, localeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v3, :cond_2

    .line 491
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Suggest;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    move-result-object v1

    .line 492
    .local v1, oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 496
    :goto_0
    new-instance v3, Lcom/android/inputmethod/latin/Suggest;

    invoke-direct {v3, p0, v2, p0}, Lcom/android/inputmethod/latin/Suggest;-><init>(Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 498
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-eqz v3, :cond_0

    .line 499
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v4, v4, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCorrectionThreshold:F

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/Suggest;->setAutoCorrectionThreshold(F)V

    .line 502
    :cond_0
    invoke-static {p0, v2}, Lcom/android/inputmethod/latin/DictionaryFactory;->isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsMainDictionaryAvailable:Z

    .line 507
    new-instance v3, Lcom/android/inputmethod/latin/UserBinaryDictionary;

    invoke-direct {v3, p0, v0}, Lcom/android/inputmethod/latin/UserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    .line 508
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->isEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsUserDictionaryAvailable:Z

    .line 509
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/Suggest;->setUserDictionary(Lcom/android/inputmethod/latin/UserBinaryDictionary;)V

    .line 511
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)V

    .line 515
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 516
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v0, v3}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->getInstance(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)Lcom/android/inputmethod/latin/UserHistoryDictionary;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    .line 517
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/Suggest;->setUserHistoryDictionary(Lcom/android/inputmethod/latin/UserHistoryDictionary;)V

    .line 518
    return-void

    .line 494
    .end local v1           #oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    goto :goto_0
.end method

.method private static isAlphabet(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1254
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method private isShowingOptionDialog()Z
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuggestionsStripVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1921
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-nez v2, :cond_1

    .line 1929
    :cond_0
    :goto_0
    return v0

    .line 1923
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1924
    goto :goto_0

    .line 1925
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionStripVisibleInOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SettingsValues;->isApplicationSpecifiedCompletionsOn()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1928
    goto :goto_0

    .line 1929
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v0

    goto :goto_0
.end method

.method private launchSettings()V
    .locals 1

    .prologue
    .line 2383
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 2384
    const-class v0, Lcom/android/inputmethod/latin/SettingsActivity;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSubActivity(Ljava/lang/Class;)V

    .line 2385
    return-void
.end method

.method private launchSubActivity(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2401
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2402
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2403
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2404
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->startActivity(Landroid/content/Intent;)V

    .line 2405
    return-void
.end method

.method private maybeDoubleSpace()Z
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1195
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-nez v2, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return v0

    .line 1196
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->isAcceptingDoubleSpaces()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2, v5, v0}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1198
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/inputmethod/latin/LatinIME;->canBeFollowedByPeriod(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1202
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1203
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2, v4, v0}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 1204
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    const-string v2, ". "

    invoke-virtual {v0, v2, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    .line 1205
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    move v0, v1

    .line 1206
    goto :goto_0
.end method

.method private maybeRetrieveOlderSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 8
    .parameter "typedWord"
    .parameter "suggestedWords"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2010
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v0

    if-gt v0, v5, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v5, :cond_0

    iget-boolean v0, p2, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->isShowingAddToDictionaryHint()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p2

    .line 2022
    :goto_0
    return-object v0

    .line 2015
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v7

    .line 2016
    .local v7, previousSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    if-ne v7, v0, :cond_2

    .line 2017
    sget-object v7, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 2019
    :cond_2
    invoke-static {p1, v7}, Lcom/android/inputmethod/latin/SuggestedWords;->getTypedWordAndPreviousSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2022
    .local v1, typedWordAndPreviousSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZ)V

    goto :goto_0
.end method

.method private maybeStripSpace(IIZ)Z
    .locals 3
    .parameter "code"
    .parameter "spaceState"
    .parameter "isFromSuggestionStrip"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 1741
    const/16 v1, 0xa

    if-ne v1, p1, :cond_1

    if-ne v2, p2, :cond_1

    .line 1742
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->removeTrailingSpace()V

    .line 1756
    :cond_0
    :goto_0
    return v0

    .line 1744
    :cond_1
    const/4 v1, 0x3

    if-eq v1, p2, :cond_2

    if-ne v2, p2, :cond_0

    :cond_2
    if-eqz p3, :cond_0

    .line 1747
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceSwapper(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1748
    const/4 v0, 0x1

    goto :goto_0

    .line 1750
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceStripper(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1751
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->removeTrailingSpace()V

    goto :goto_0
.end method

.method private onFinishInputInternal()V
    .locals 2

    .prologue
    .line 821
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 823
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 828
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 829
    .local v0, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->closing()V

    .line 832
    :cond_0
    return-void
.end method

.method private onFinishInputViewInternal(Z)V
    .locals 2
    .parameter "finishingInput"

    .prologue
    .line 835
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 836
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onFinishInputView()V

    .line 837
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 838
    .local v0, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->cancelAllMessages()V

    .line 842
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestionStrip()V

    .line 843
    return-void
.end method

.method private onSettingsKeyPressed()V
    .locals 1

    .prologue
    .line 1258
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    :goto_0
    return-void

    .line 1259
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->showSubtypeSelectorAndSettings()V

    goto :goto_0
.end method

.method private onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 656
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 657
    return-void
.end method

.method private onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 13
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 661
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 662
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 663
    .local v6, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v4

    .line 665
    .local v4, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-nez p1, :cond_0

    .line 666
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v8, "Null EditorInfo in onStartInputView()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v7, :cond_5

    .line 668
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Null EditorInfo in onStartInputView()"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 672
    :cond_0
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 673
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStartInputView: editorInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "inputType=0x%08x imeOptions=0x%08x"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    sget-object v8, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "All caps = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", sentence caps = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", word caps = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_1
    const/4 v7, 0x0

    const-string v8, "nm"

    invoke-static {v7, v8, p1}, Lcom/android/inputmethod/latin/InputAttributes;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 687
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deprecated private IME option specified: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Use "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "noMicrophoneKey"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " instead"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "forceAscii"

    invoke-static {v7, v8, p1}, Lcom/android/inputmethod/latin/InputAttributes;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 692
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deprecated private IME option specified: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    sget-object v7, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v8, "Use EditorInfo.IME_FLAG_FORCE_ASCII flag instead"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_3
    iget-object v7, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/inputmethod/latin/TargetApplicationGetter;->getCachedApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 699
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_4

    .line 700
    new-instance v7, Lcom/android/inputmethod/latin/TargetApplicationGetter;

    invoke-direct {v7, p0, p0}, Lcom/android/inputmethod/latin/TargetApplicationGetter;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/TargetApplicationGetter$OnTargetApplicationKnownListener;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/TargetApplicationGetter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 704
    :cond_4
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinImeLogger;->onStartInputView(Landroid/view/inputmethod/EditorInfo;)V

    .line 706
    if-nez v4, :cond_9

    .line 799
    :cond_5
    :goto_3
    return-void

    .line 676
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 711
    :cond_9
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v0

    .line 712
    .local v0, accessUtils:Lcom/android/inputmethod/accessibility/AccessibilityUtils;
    invoke-virtual {v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 713
    invoke-virtual {v0, v4, p1, p2}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->onStartInputViewInternal(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 716
    :cond_a
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isSameInputType(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v7

    if-nez v7, :cond_10

    const/4 v2, 0x1

    .line 717
    .local v2, inputTypeChanged:Z
    :goto_4
    if-eqz p2, :cond_b

    if-eqz v2, :cond_11

    :cond_b
    const/4 v3, 0x1

    .line 718
    .local v3, isDifferentTextField:Z
    :goto_5
    if-eqz v3, :cond_c

    .line 719
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateParametersOnStartInputViewAndReturnIfCurrentSubtypeEnabled()Z

    move-result v1

    .line 721
    .local v1, currentSubtypeEnabled:Z
    if-nez v1, :cond_c

    .line 723
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getNoLanguageSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/inputmethod/latin/ImfUtils;->getCurrentInputMethodSubtype(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 725
    .local v5, newSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v7, v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 726
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadKeyboard()V

    .line 732
    .end local v1           #currentSubtypeEnabled:Z
    .end local v5           #newSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_c
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateFullscreenMode()V

    .line 733
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 737
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 738
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    .line 739
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 740
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 742
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v7, :cond_d

    .line 745
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    .line 748
    :cond_d
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/RichInputConnection;->resetCachesUponCursorMove(I)V

    .line 750
    if-eqz v3, :cond_12

    .line 751
    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->closing()V

    .line 752
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 754
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v7, v7, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    if-eqz v7, :cond_e

    .line 755
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v8, v8, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCorrectionThreshold:F

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/Suggest;->setAutoCorrectionThreshold(F)V

    .line 758
    :cond_e
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v6, p1, v7}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/SettingsValues;)V

    .line 769
    :cond_f
    :goto_6
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShownInternal(ZZ)V

    .line 772
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 773
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 775
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestionStrip()V

    .line 776
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 778
    iget-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsMainDictionaryAvailable:Z

    invoke-virtual {v4, v7}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setMainDictionaryAvailability(Z)V

    .line 779
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v7, v7, Lcom/android/inputmethod/latin/SettingsValues;->mKeyPreviewPopupOn:Z

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v8, v8, Lcom/android/inputmethod/latin/SettingsValues;->mKeyPreviewPopupDismissDelay:I

    invoke-virtual {v4, v7, v8}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 781
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v7, v7, Lcom/android/inputmethod/latin/SettingsValues;->mGestureInputEnabled:Z

    invoke-virtual {v4, v7}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setGestureHandlingEnabledByUser(Z)V

    .line 782
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v7, v7, Lcom/android/inputmethod/latin/SettingsValues;->mGesturePreviewTrailEnabled:Z

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v8, v8, Lcom/android/inputmethod/latin/SettingsValues;->mGestureFloatingPreviewTextEnabled:Z

    invoke-virtual {v4, v7, v8}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setGesturePreviewMode(ZZ)V

    .line 788
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v7, v8, p1, v9}, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->tryReplaceWithActualWord(Lcom/android/inputmethod/latin/RichInputConnection;Landroid/view/inputmethod/EditorInfo;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 791
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    goto/16 :goto_3

    .line 716
    .end local v2           #inputTypeChanged:Z
    .end local v3           #isDifferentTextField:Z
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 717
    .restart local v2       #inputTypeChanged:Z
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 759
    .restart local v3       #isDifferentTextField:Z
    :cond_12
    if-eqz p2, :cond_f

    .line 762
    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->resetKeyboardStateToAlphabet()V

    .line 767
    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_6
.end method

.method private performEditorAction(I)V
    .locals 1
    .parameter "actionId"

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/RichInputConnection;->performEditorAction(I)V

    .line 1290
    return-void
.end method

.method private resetComposingState(Z)V
    .locals 1
    .parameter "alsoResetLastComposedWord"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1141
    if-eqz p1, :cond_0

    .line 1142
    sget-object v0, Lcom/android/inputmethod/latin/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/android/inputmethod/latin/LastComposedWord;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    .line 1143
    :cond_0
    return-void
.end method

.method private resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)V
    .locals 4
    .parameter "oldContactsDictionary"

    .prologue
    .line 529
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/SettingsValues;->mUseContactsDict:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 532
    .local v2, shouldSetDictionary:Z
    :goto_0
    if-nez v2, :cond_3

    .line 535
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->close()V

    .line 536
    :cond_0
    const/4 v0, 0x0

    .line 556
    .local v0, dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v3, :cond_1

    .line 557
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/Suggest;->setContactsDictionary(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)V

    .line 559
    :cond_1
    return-void

    .line 529
    .end local v0           #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    .end local v2           #shouldSetDictionary:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 538
    .restart local v2       #shouldSetDictionary:Z
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v1

    .line 539
    .local v1, locale:Ljava/util/Locale;
    if-eqz p1, :cond_5

    .line 540
    iget-object v3, p1, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 543
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->close()V

    .line 544
    new-instance v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .restart local v0       #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    goto :goto_1

    .line 548
    .end local v0           #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;->reopen(Landroid/content/Context;)V

    .line 549
    move-object v0, p1

    .restart local v0       #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    goto :goto_1

    .line 552
    .end local v0           #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    :cond_5
    new-instance v0, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/latin/ContactsBinaryDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .restart local v0       #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsBinaryDictionary;
    goto :goto_1
.end method

.method private resetEntireInputState(I)V
    .locals 2
    .parameter "newCursorPosition"

    .prologue
    .line 1130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    .line 1131
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mBigramPredictionEnabled:Z

    if-eqz v0, :cond_0

    .line 1132
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestionStrip()V

    .line 1136
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/RichInputConnection;->resetCachesUponCursorMove(I)V

    .line 1137
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    goto :goto_0
.end method

.method private restartSuggestionsOnWordBeforeCursor(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 2246
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/inputmethod/latin/WordComposer;->setComposingWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 2247
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2248
    .local v0, length:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 2249
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 2250
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 2251
    return-void
.end method

.method private restartSuggestionsOnWordBeforeCursorIfAtEndOfWord()V
    .locals 3

    .prologue
    .line 2239
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getWordBeforeCursorIfAtEndOfWord(Lcom/android/inputmethod/latin/SettingsValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2240
    .local v0, word:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 2241
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->restartSuggestionsOnWordBeforeCursor(Ljava/lang/CharSequence;)V

    .line 2243
    :cond_0
    return-void
.end method

.method private revertCommit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2254
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LastComposedWord;->mPrevWord:Ljava/lang/CharSequence;

    .line 2255
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LastComposedWord;->mTypedWord:Ljava/lang/String;

    .line 2256
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v2, v2, Lcom/android/inputmethod/latin/LastComposedWord;->mCommittedWord:Ljava/lang/String;

    .line 2257
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2258
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v4, v4, Lcom/android/inputmethod/latin/LastComposedWord;->mSeparatorString:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/inputmethod/latin/LastComposedWord;->getSeparatorLength(Ljava/lang/String;)I

    move-result v4

    .line 2261
    add-int/2addr v4, v3

    .line 2262
    sget-boolean v5, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 2263
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2264
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "revertCommit, but we are composing a word"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2266
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v5, v4, v6}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2269
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2270
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "revertCommit check failed: we thought we were reverting \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", but before the cursor we found \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2275
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3, v4, v6}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 2276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2277
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserHistoryDictionary:Lcom/android/inputmethod/latin/UserHistoryDictionary;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/android/inputmethod/latin/UserHistoryDictionary;->cancelAddingUserHistory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2280
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    iget-object v2, v2, Lcom/android/inputmethod/latin/LastComposedWord;->mSeparatorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    .line 2290
    sget-object v0, Lcom/android/inputmethod/latin/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/android/inputmethod/latin/LastComposedWord;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    .line 2292
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 2293
    return-void
.end method

.method private sendDownUpKeyEventForBackwardCompatibility(I)V
    .locals 15
    .parameter "code"

    .prologue
    .line 1303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1304
    .local v1, eventTime:J
    iget-object v12, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Lcom/android/inputmethod/latin/RichInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 1307
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 1310
    return-void
.end method

.method private sendKeyCodePoint(I)V
    .locals 5
    .parameter "code"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1315
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 1316
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEventForBackwardCompatibility(I)V

    .line 1336
    :goto_0
    return-void

    .line 1325
    :cond_0
    const/16 v1, 0xa

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 1331
    const/16 v1, 0x42

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEventForBackwardCompatibility(I)V

    goto :goto_0

    .line 1333
    :cond_1
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [I

    aput p1, v1, v3

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([III)V

    .line 1334
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private setAutoCorrectionIndicator(Z)V
    .locals 3
    .parameter "newAutoCorrectionIndicator"

    .prologue
    .line 1946
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsAutoCorrectionIndicatorOn:Z

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1948
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsAutoCorrectionIndicatorOn:Z

    .line 1949
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1955
    .local v0, textWithUnderline:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 1957
    .end local v0           #textWithUnderline:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private setPunctuationSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2193
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mBigramPredictionEnabled:Z

    if-eqz v0, :cond_0

    .line 2194
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestionStrip()V

    .line 2198
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setAutoCorrectionIndicator(Z)V

    .line 2199
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    .line 2200
    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    goto :goto_0
.end method

.method private setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    .locals 1
    .parameter "words"
    .parameter "isAutoCorrection"

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1940
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onAutoCorrectionStateChanged(Z)V

    .line 1942
    :cond_0
    return-void
.end method

.method private setSuggestionStripShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 1038
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShownInternal(ZZ)V

    .line 1039
    return-void
.end method

.method private setSuggestionStripShownInternal(ZZ)V
    .locals 5
    .parameter "shown"
    .parameter "needsInputViewShown"

    .prologue
    const/4 v3, 0x0

    .line 1021
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->onEvaluateInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1022
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v1

    .line 1023
    .local v1, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->isShown()Z

    move-result v0

    .line 1025
    .local v0, inputViewShown:Z
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 1027
    .local v2, shouldShowSuggestions:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1028
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    .end local v0           #inputViewShown:Z
    .end local v1           #mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    .end local v2           #shouldShowSuggestions:Z
    :cond_1
    :goto_3
    return-void

    .restart local v1       #mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    :cond_2
    move v0, v3

    .line 1023
    goto :goto_0

    .restart local v0       #inputViewShown:Z
    :cond_3
    move v2, v3

    .line 1025
    goto :goto_1

    .line 1028
    .restart local v2       #shouldShowSuggestions:Z
    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    .line 1031
    :cond_5
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    goto :goto_4
.end method

.method private showGesturePreviewAndSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    .locals 4
    .parameter "suggestedWords"
    .parameter "dismissGestureFloatingPreviewText"

    .prologue
    const/4 v2, 0x0

    .line 1587
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 1589
    .local v0, batchInputText:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v1

    .line 1590
    .local v1, mainKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->showGestureFloatingPreviewText(Ljava/lang/String;)V

    .line 1591
    invoke-direct {p0, p1, v2}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    .line 1592
    if-eqz p2, :cond_0

    .line 1593
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->dismissGestureFloatingPreviewText()V

    .line 1595
    :cond_0
    return-void

    .end local v0           #batchInputText:Ljava/lang/String;
    .end local v1           #mainKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    :cond_1
    move-object v0, v2

    .line 1587
    goto :goto_0
.end method

.method private showSubtypeSelectorAndSettings()V
    .locals 4

    .prologue
    .line 2408
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2409
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0a008d

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0a002d

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2415
    new-instance v2, Lcom/android/inputmethod/latin/LatinIME$3;

    invoke-direct {v2, p0, p0}, Lcom/android/inputmethod/latin/LatinIME$3;-><init>(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/Context;)V

    .line 2434
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->showOptionDialog(Landroid/app/AlertDialog;)V

    .line 2438
    return-void
.end method

.method private showSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "suggestedWords"
    .parameter "typedWord"

    .prologue
    .line 2033
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2034
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestionStrip()V

    .line 2052
    :goto_0
    return-void

    .line 2038
    :cond_1
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2039
    iget-boolean v2, p1, Lcom/android/inputmethod/latin/SuggestedWords;->mWillAutoCorrect:Z

    if-eqz v2, :cond_2

    .line 2040
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 2047
    .local v0, autoCorrection:Ljava/lang/CharSequence;
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCorrection(Ljava/lang/CharSequence;)V

    .line 2048
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->willAutoCorrect()Z

    move-result v1

    .line 2049
    .local v1, isAutoCorrection:Z
    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    .line 2050
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setAutoCorrectionIndicator(Z)V

    .line 2051
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    goto :goto_0

    .line 2042
    .end local v0           #autoCorrection:Ljava/lang/CharSequence;
    .end local v1           #isAutoCorrection:Z
    :cond_2
    move-object v0, p2

    .restart local v0       #autoCorrection:Ljava/lang/CharSequence;
    goto :goto_1

    .line 2045
    .end local v0           #autoCorrection:Ljava/lang/CharSequence;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #autoCorrection:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private specificTldProcessingOnTextInput(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1625
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1639
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1632
    .restart local p1
    :cond_1
    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1634
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1635
    .local v0, lastOne:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1637
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method private swapSwapperAndSpace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1181
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0, v4, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v4, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 1186
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    .line 1190
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1192
    :cond_0
    return-void
.end method

.method private updateSuggestionStrip()V
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestionStrip()V

    .line 1963
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1965
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v1, "Called updateSuggestionsOrPredictions but suggestions were not requested!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCorrection(Ljava/lang/CharSequence;)V

    .line 1980
    :cond_1
    :goto_0
    return-void

    .line 1972
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SettingsValues;->mBigramPredictionEnabled:Z

    if-nez v0, :cond_3

    .line 1973
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_0

    .line 1977
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSuggestedWords(I)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    .line 1978
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    .line 1979
    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addWordToUserDictionary(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 1227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    .line 1236
    :goto_0
    return-void

    .line 1232
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;-><init>(Ljava/lang/String;ILandroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    .line 1235
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserBinaryDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/UserBinaryDictionary;->addWordToUserDictionary(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2473
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2475
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2476
    const-string v0, "LatinIME state :"

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2477
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 2478
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    .line 2479
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Keyboard mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsSuggestionsSuggestionsRequested = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCorrectionEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/SettingsValues;->mCorrectionEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isComposingWord="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSoundOn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/SettingsValues;->mSoundOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibrateOn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/SettingsValues;->mVibrateOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mKeyPreviewPopupOn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/SettingsValues;->mKeyPreviewPopupOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  inputAttributes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SettingsValues;->getInputAttributesDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2488
    return-void

    .line 2478
    :cond_0
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public getCurrentAutoCapsState()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1157
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/SettingsValues;->mAutoCap:Z

    if-nez v3, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return v2

    .line 1159
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1160
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    .line 1161
    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1164
    .local v1, inputType:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    if-ne v5, v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3, v1, v4, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getCursorCapsMode(ILjava/util/Locale;Z)I

    move-result v2

    goto :goto_0
.end method

.method public hapticAndAudioFeedback(I)V
    .locals 2
    .parameter "primaryCode"

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mFeedbackManager:Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;->hapticAndAudioFeedback(ILandroid/view/View;)V

    .line 2330
    return-void
.end method

.method public hideWindow()V
    .locals 1

    .prologue
    .line 964
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 965
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onHideWindow()V

    .line 968
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 970
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 972
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 973
    return-void
.end method

.method isShowingPunctuationList()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1916
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-nez v1, :cond_1

    .line 1917
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v1, v1, Lcom/android/inputmethod/latin/SettingsValues;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method loadKeyboard()V
    .locals 3

    .prologue
    .line 2313
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V

    .line 2314
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 2315
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/SettingsValues;)V

    .line 2322
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 2323
    return-void
.end method

.method loadSettings()V
    .locals 4

    .prologue
    .line 461
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 462
    :cond_0
    new-instance v0, Lcom/android/inputmethod/latin/InputAttributes;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/inputmethod/latin/InputAttributes;-><init>(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 464
    .local v0, inputAttributes:Lcom/android/inputmethod/latin/InputAttributes;
    new-instance v1, Lcom/android/inputmethod/latin/LatinIME$1;

    invoke-direct {v1, p0, v0}, Lcom/android/inputmethod/latin/LatinIME$1;-><init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/InputAttributes;)V

    .line 470
    .local v1, job:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<Lcom/android/inputmethod/latin/SettingsValues;>;"
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;->runInLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/SettingsValues;

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    .line 471
    new-instance v2, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-direct {v2, p0, v3}, Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;-><init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/SettingsValues;)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mFeedbackManager:Lcom/android/inputmethod/latin/AudioAndHapticFeedbackManager;

    .line 472
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsBinaryDictionary;)V

    .line 473
    return-void

    .line 472
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Suggest;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsBinaryDictionary;

    move-result-object v2

    goto :goto_0
.end method

.method public onCancelInput()V
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCancelInput()V

    .line 1648
    return-void
.end method

.method public onCodeInput(III)V
    .locals 12
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1342
    .local v6, when:J
    const/4 v8, -0x4

    if-ne p1, v8, :cond_0

    iget-wide v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    const-wide/16 v10, 0xc8

    add-long/2addr v8, v10

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 1343
    :cond_0
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1345
    :cond_1
    iput-wide v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    .line 1346
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 1347
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1353
    .local v5, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1354
    .local v4, spaceState:I
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsAutoCorrectionIndicatorOn:Z

    .line 1357
    :cond_2
    const/16 v8, 0x20

    if-eq p1, v8, :cond_3

    .line 1358
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1361
    :cond_3
    const/4 v0, 0x0

    .line 1362
    .local v0, didAutoCorrect:Z
    packed-switch p1, :pswitch_data_0

    .line 1398
    :pswitch_0
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1399
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v8, p1}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1400
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/inputmethod/latin/LatinIME;->handleSeparator(IIII)Z

    move-result v0

    .line 1422
    :goto_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1425
    :goto_1
    :pswitch_1
    invoke-virtual {v5, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCodeInput(I)V

    .line 1427
    if-nez v0, :cond_4

    const/4 v8, -0x1

    if-eq p1, v8, :cond_4

    const/4 v8, -0x2

    if-eq p1, v8, :cond_4

    .line 1429
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LastComposedWord;->deactivate()V

    .line 1430
    :cond_4
    const/4 v8, -0x4

    if-eq v8, p1, :cond_5

    .line 1431
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1433
    :cond_5
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 1437
    return-void

    .line 1364
    :pswitch_2
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1365
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->handleBackspace(I)V

    .line 1366
    iget v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1367
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1368
    invoke-static {p2, p3}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnDelete(II)V

    goto :goto_1

    .line 1375
    :pswitch_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onSettingsKeyPressed()V

    goto :goto_1

    .line 1378
    :pswitch_4
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v8, p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->switchToShortcutIME(Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_1

    .line 1381
    :pswitch_5
    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v8

    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinIME;->getActionId(Lcom/android/inputmethod/keyboard/Keyboard;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->performEditorAction(I)V

    goto :goto_1

    .line 1384
    :pswitch_6
    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->performEditorAction(I)V

    goto :goto_1

    .line 1387
    :pswitch_7
    const/4 v8, 0x7

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->performEditorAction(I)V

    goto :goto_1

    .line 1390
    :pswitch_8
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleLanguageSwitchKey()V

    goto :goto_1

    .line 1402
    :cond_6
    const/4 v8, 0x4

    if-ne v8, v4, :cond_7

    .line 1409
    const-string v8, ""

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    .line 1412
    :cond_7
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v3

    .line 1413
    .local v3, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v3, :cond_8

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/keyboard/Keyboard;->hasProximityCharsCorrection(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1414
    move v1, p2

    .line 1415
    .local v1, keyX:I
    move v2, p3

    .line 1420
    .local v2, keyY:I
    :goto_2
    invoke-direct {p0, p1, v1, v2, v4}, Lcom/android/inputmethod/latin/LatinIME;->handleCharacter(IIII)V

    goto :goto_0

    .line 1417
    .end local v1           #keyX:I
    .end local v2           #keyY:I
    :cond_8
    const/4 v1, -0x1

    .line 1418
    .restart local v1       #keyX:I
    const/4 v2, -0x1

    .restart local v2       #keyY:I
    goto :goto_2

    .line 1362
    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 13
    .parameter "outInsets"

    .prologue
    const/16 v12, 0x8

    const/4 v10, 0x0

    .line 1068
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1069
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v11}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v5

    .line 1070
    .local v5, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v5, :cond_0

    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-nez v11, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->getAdjustedBackingViewHeight()I

    move-result v0

    .line 1074
    .local v0, adjustedBackingHeight:I
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v12, :cond_4

    const/4 v1, 0x1

    .line 1075
    .local v1, backingGone:Z
    :goto_1
    if-eqz v1, :cond_5

    move v2, v10

    .line 1079
    .local v2, backingHeight:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mExtractArea:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1080
    .local v4, extractHeight:I
    :goto_3
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v12, :cond_7

    move v6, v10

    .line 1082
    .local v6, suggestionsHeight:I
    :goto_4
    add-int v11, v4, v2

    add-int v3, v11, v6

    .line 1083
    .local v3, extraHeight:I
    move v9, v3

    .line 1085
    .local v9, touchY:I
    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->isShown()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1086
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    .line 1087
    sub-int/2addr v9, v6

    .line 1089
    :cond_2
    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getWidth()I

    move-result v8

    .line 1090
    .local v8, touchWidth:I
    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getHeight()I

    move-result v11

    add-int/2addr v11, v3

    add-int/lit8 v7, v11, 0x64

    .line 1093
    .local v7, touchHeight:I
    const/4 v11, 0x3

    iput v11, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 1094
    iget-object v11, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v11, v10, v9, v8, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 1096
    .end local v7           #touchHeight:I
    .end local v8           #touchWidth:I
    :cond_3
    iput v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1097
    iput v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    goto :goto_0

    .end local v1           #backingGone:Z
    .end local v2           #backingHeight:I
    .end local v3           #extraHeight:I
    .end local v4           #extractHeight:I
    .end local v6           #suggestionsHeight:I
    .end local v9           #touchY:I
    :cond_4
    move v1, v10

    .line 1074
    goto :goto_1

    .restart local v1       #backingGone:Z
    :cond_5
    move v2, v0

    .line 1075
    goto :goto_2

    .restart local v2       #backingHeight:I
    :cond_6
    move v4, v10

    .line 1079
    goto :goto_3

    .line 1080
    .restart local v4       #extractHeight:I
    :cond_7
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v6

    goto :goto_4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "conf"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0, p1, p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadKeyboard()V

    .line 587
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 588
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    .line 589
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startOrientationChanging()V

    .line 590
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 591
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/RichInputConnection;->finishComposingText()V

    .line 593
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 594
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 598
    :cond_1
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 599
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 409
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 410
    .local v3, prefs:Landroid/content/SharedPreferences;
    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 411
    invoke-static {p0, v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 415
    invoke-static {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->init(Landroid/content/Context;)V

    .line 416
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->init(Landroid/content/Context;)V

    .line 417
    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 418
    invoke-static {p0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->init(Landroid/inputmethodservice/InputMethodService;)V

    .line 420
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 422
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 423
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onCreate()V

    .line 424
    sget-boolean v5, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v5, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    .line 426
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 427
    .local v4, res:Landroid/content/res/Resources;
    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 429
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 431
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SettingsValues;->getAdditionalSubtypes()[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/inputmethod/latin/ImfUtils;->setAdditionalInputMethodSubtypes(Landroid/content/Context;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 433
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V

    .line 435
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    .line 439
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 440
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 444
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v2, packageFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 448
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 450
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 451
    .local v1, newDictFilter:Landroid/content/IntentFilter;
    const-string v5, "com.android.inputmethod.latin.dictionarypack.newdict"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    return-void
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsHardwareAcceleratedDrawingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCreateInputView(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .parameter "subtype"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadKeyboard()V

    .line 653
    return-void
.end method

.method public onCustomRequest(I)Z
    .locals 3
    .parameter "requestCode"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1267
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return v0

    .line 1268
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1270
    :pswitch_0
    invoke-static {p0, v1}, Lcom/android/inputmethod/latin/ImfUtils;->hasMultipleEnabledIMEsOrSubtypes(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V

    move v0, v1

    .line 1273
    goto :goto_0

    .line 1268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 574
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 575
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 576
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->onDestroy()V

    .line 577
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 578
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 977
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 978
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v1, "Received completions:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    if-eqz p1, :cond_0

    move v0, v2

    .line 980
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 981
    sget-object v1, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SettingsValues;->isApplicationSpecifiedCompletionsOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1016
    :goto_1
    return-void

    .line 986
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 987
    if-nez p1, :cond_2

    .line 988
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestionStrip()V

    goto :goto_1

    .line 995
    :cond_2
    invoke-static {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->getFromApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Ljava/util/ArrayList;

    move-result-object v1

    .line 998
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZ)V

    .line 1007
    invoke-direct {p0, v0, v2}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    .line 1008
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->setAutoCorrectionIndicator(Z)V

    .line 1011
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCorrection(Ljava/lang/CharSequence;)V

    .line 1012
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    goto :goto_1
.end method

.method public onEndBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 5
    .parameter "batchPointers"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 1604
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->getInstance()Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->onEndBatchInput(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v1

    .line 1606
    .local v1, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 1608
    .local v0, batchInputText:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1622
    :goto_1
    return-void

    .line 1606
    .end local v0           #batchInputText:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1611
    .restart local v0       #batchInputText:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/WordComposer;->setBatchInputWord(Ljava/lang/CharSequence;)V

    .line 1612
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 1613
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    if-ne v4, v2, :cond_2

    .line 1614
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->promotePhantomSpace()V

    .line 1616
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2, v0, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 1617
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1618
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 1620
    iput v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1621
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_1
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1103
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/inputmethod/latin/SettingsValues;->isFullscreenModeAllowed(Landroid/content/res/Resources;)Z

    move-result v1

    .line 1105
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1110
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 1111
    if-eqz v1, :cond_0

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1113
    :cond_1
    return v0
.end method

.method public onExtractedCursorMovement(II)V
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isSuggestionsRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    :goto_0
    return-void

    .line 943
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    goto :goto_0
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onFinishInput()V

    .line 645
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .parameter "finishingInput"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onFinishInputView(Z)V

    .line 640
    return-void
.end method

.method public onPressKey(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onPressKey(I)V

    .line 2337
    return-void
.end method

.method public onReleaseKey(IZ)V
    .locals 4
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2343
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onReleaseKey(IZ)V

    .line 2346
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2347
    packed-switch p1, :pswitch_data_0

    .line 2357
    :cond_0
    :goto_0
    const/4 v1, -0x4

    if-ne v1, p1, :cond_1

    .line 2362
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v3, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2363
    .local v0, lastChar:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2364
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v3, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 2367
    .end local v0           #lastChar:Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 2349
    :pswitch_0
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->notifyShiftState()V

    goto :goto_0

    .line 2352
    :pswitch_1
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->notifySymbolsState()V

    goto :goto_0

    .line 2347
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartBatchInput()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 1464
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->getInstance()Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->onStartBatchInput()V

    .line 1465
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 1466
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1472
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-gt v1, v2, :cond_1

    .line 1480
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitCurrentAutoCorrection(Ljava/lang/String;)V

    .line 1484
    :goto_0
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1487
    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1499
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 1500
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->getActualCapsMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/WordComposer;->setCapitalizedModeAtStartComposingTime(I)V

    .line 1501
    return-void

    .line 1482
    :cond_1
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Ljava/lang/String;)V

    goto :goto_0

    .line 1489
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->getCodePointBeforeCursor()I

    move-result v0

    .line 1492
    .local v0, codePointBeforeCursor:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/SettingsValues;->isPhantomSpacePromotingSymbol(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceStripper(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1496
    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    goto :goto_1
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 630
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 635
    return-void
.end method

.method public onTargetApplicationKnown(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 805
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "rawText"

    .prologue
    const/4 v3, 0x1

    .line 1442
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 1443
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1444
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitCurrentAutoCorrection(Ljava/lang/String;)V

    .line 1448
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    .line 1449
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->specificTldProcessingOnTextInput(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1450
    .local v0, text:Ljava/lang/CharSequence;
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    if-ne v1, v2, :cond_0

    .line 1451
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->promotePhantomSpace()V

    .line 1453
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1, v0, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    .line 1454
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 1456
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 1457
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1458
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCodeInput(I)V

    .line 1459
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1460
    return-void

    .line 1446
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    goto :goto_0
.end method

.method public onUpdateBatchInput(Lcom/android/inputmethod/latin/InputPointers;)V
    .locals 1
    .parameter "batchPointers"

    .prologue
    .line 1599
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->getInstance()Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->onUpdateBatchInput(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)V

    .line 1600
    return-void
.end method

.method public onUpdateMainDictionaryAvailability(Z)V
    .locals 2
    .parameter "isMainDictionaryAvailable"

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsMainDictionaryAvailable:Z

    .line 479
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 480
    .local v0, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->setMainDictionaryAvailability(Z)V

    .line 483
    :cond_0
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 7
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "composingSpanStart"
    .parameter "composingSpanEnd"

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 849
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 851
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 852
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateSelection: oss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ose="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ce="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    if-ne p3, p6, :cond_1

    if-eq p4, p6, :cond_5

    :cond_1
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    if-eq v3, p3, :cond_5

    move v1, v0

    .line 887
    .local v1, selectionChanged:Z
    :goto_0
    if-ne p5, v6, :cond_6

    if-ne p6, v6, :cond_6

    .line 888
    .local v0, noComposingSpan:Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v3, p1, p3}, Lcom/android/inputmethod/latin/RichInputConnection;->isBelatedExpectedUpdate(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 902
    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 904
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 914
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/inputmethod/latin/LatinIME;->resetEntireInputState(I)V

    .line 917
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 919
    :cond_4
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 926
    iput p3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 927
    iput p4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 928
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeState:Lcom/android/inputmethod/latin/LatinIME$SubtypeState;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$SubtypeState;->currentSubtypeUsed()V

    .line 929
    return-void

    .end local v0           #noComposingSpan:Z
    .end local v1           #selectionChanged:Z
    :cond_5
    move v1, v2

    .line 880
    goto :goto_0

    .restart local v1       #selectionChanged:Z
    :cond_6
    move v0, v2

    .line 887
    goto :goto_1
.end method

.method public onWindowHidden()V
    .locals 2

    .prologue
    .line 813
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 814
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    .line 815
    .local v0, mainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;
    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->closing()V

    .line 818
    :cond_0
    return-void
.end method

.method public onWordAddedToUserDictionary(Ljava/lang/String;)V
    .locals 5
    .parameter "newSpelling"

    .prologue
    const/4 v4, 0x0

    .line 1240
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    if-nez v0, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isComposingWord()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1243
    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    goto :goto_0

    .line 1246
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->setActualWordBeingAdded(Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->tryReplaceWithActualWord(Lcom/android/inputmethod/latin/RichInputConnection;Landroid/view/inputmethod/EditorInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPositionalInfoForUserDictPendingAddition:Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 10
    .parameter "index"
    .parameter "suggestion"

    .prologue
    const/4 v8, 0x4

    const/4 v9, -0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2093
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v5

    .line 2095
    .local v5, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v7, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingPunctuationList()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2098
    const-string v7, ""

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILcom/android/inputmethod/latin/SuggestedWords;)V

    .line 2100
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 2101
    .local v2, primaryCode:I
    invoke-virtual {p0, v2, v9, v9}, Lcom/android/inputmethod/latin/LatinIME;->onCodeInput(III)V

    .line 2172
    .end local v2           #primaryCode:I
    :goto_0
    return-void

    .line 2109
    :cond_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/RichInputConnection;->beginBatchEdit()V

    .line 2110
    iget v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    if-ne v8, v7, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->isBatchMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2114
    invoke-static {p2, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2115
    .local v1, firstChar:I
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceStripper(I)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isWeakSpaceSwapper(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2117
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->promotePhantomSpace()V

    .line 2121
    .end local v1           #firstChar:I
    :cond_1
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/SettingsValues;->isApplicationSpecifiedCompletionsOn()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v7, :cond_3

    if-ltz p1, :cond_3

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v7, v7

    if-ge p1, v7, :cond_3

    .line 2124
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v6, :cond_2

    .line 2125
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->clear()V

    .line 2127
    :cond_2
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 2128
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->resetComposingState(Z)V

    .line 2129
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v6, p1

    .line 2130
    .local v0, completionInfo:Landroid/view/inputmethod/CompletionInfo;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v6, v0}, Lcom/android/inputmethod/latin/RichInputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 2131
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    goto :goto_0

    .line 2137
    .end local v0           #completionInfo:Landroid/view/inputmethod/CompletionInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2138
    .local v3, replacedWord:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, p1, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILcom/android/inputmethod/latin/SuggestedWords;)V

    .line 2140
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 2141
    const-string v7, ""

    invoke-direct {p0, p2, v4, v7}, Lcom/android/inputmethod/latin/LatinIME;->commitChosenWord(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 2146
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mConnection:Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/RichInputConnection;->endBatchEdit()V

    .line 2148
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastComposedWord:Lcom/android/inputmethod/latin/LastComposedWord;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LastComposedWord;->deactivate()V

    .line 2150
    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSpaceState:I

    .line 2151
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 2157
    if-nez p1, :cond_4

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v7, p2, v4}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2165
    .local v4, showingAddToDictionaryHint:Z
    :goto_1
    if-eqz v4, :cond_5

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsUserDictionaryAvailable:Z

    if-eqz v6, :cond_5

    .line 2166
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v7, v7, Lcom/android/inputmethod/latin/SettingsValues;->mHintToSaveText:Ljava/lang/CharSequence;

    invoke-virtual {v6, p2, v7}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->showAddToDictionaryHint(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v4           #showingAddToDictionaryHint:Z
    :cond_4
    move v4, v6

    .line 2157
    goto :goto_1

    .line 2170
    .restart local v4       #showingAddToDictionaryHint:Z
    :cond_5
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestionStrip()V

    goto/16 :goto_0
.end method

.method public promotePhantomSpace()V
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCurrentSettings:Lcom/android/inputmethod/latin/SettingsValues;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SettingsValues;->shouldInsertSpacesAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2298
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyCodePoint(I)V

    .line 2300
    :cond_0
    return-void
.end method

.method resetSuggestMainDict()V
    .locals 2

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeLocale()Ljava/util/Locale;

    move-result-object v0

    .line 563
    .local v0, subtypeLocale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v1, p0, v0, p0}, Lcom/android/inputmethod/latin/Suggest;->resetMainDict(Landroid/content/Context;Ljava/util/Locale;Lcom/android/inputmethod/latin/Suggest$SuggestInitializationListener;)V

    .line 564
    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/DictionaryFactory;->isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsMainDictionaryAvailable:Z

    .line 565
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 624
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 608
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 609
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mExtractArea:Landroid/view/View;

    .line 611
    const v0, 0x7f08003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    .line 612
    const v0, 0x7f08003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    .line 613
    const v0, 0x7f080040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    .line 614
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionStripView:Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;

    invoke-virtual {v0, p0, p1}, Lcom/android/inputmethod/latin/suggestions/SuggestionStripView;->setListener(Lcom/android/inputmethod/latin/suggestions/SuggestionStripView$Listener;Landroid/view/View;)V

    .line 616
    :cond_0
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    const/high16 v1, 0x10ff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 619
    :cond_1
    return-void
.end method

.method public showOptionDialog(Landroid/app/AlertDialog;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2441
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2442
    if-nez v0, :cond_0

    .line 2458
    :goto_0
    return-void

    .line 2446
    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2447
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2449
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2450
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2451
    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2452
    const/16 v0, 0x3eb

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2453
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2454
    const/high16 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 2456
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 2457
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public updateFullscreenMode()V
    .locals 2

    .prologue
    .line 1119
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 1121
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1124
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
