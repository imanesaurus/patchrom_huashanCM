.class public Lcom/android/inputmethod/research/ResearchLogger;
.super Ljava/lang/Object;
.source "ResearchLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DIGIT_REPLACEMENT_CODEPOINT:I

.field private static final EVENTKEYS_FEEDBACK:[Ljava/lang/String;

.field private static final EVENTKEYS_LATINIME_ONCODEINPUT:[Ljava/lang/String;

.field private static final EVENTKEYS_LATINIME_ONDISPLAYCOMPLETIONS:[Ljava/lang/String;

.field private static final EVENTKEYS_LATINIME_ONSTARTINPUTVIEWINTERNAL:[Ljava/lang/String;

.field private static final EVENTKEYS_LATINIME_ONUPDATESELECTION:[Ljava/lang/String;

.field private static final EVENTKEYS_LATINIME_ONWINDOWHIDDEN:[Ljava/lang/String;

.field private static final EVENTKEYS_LATINIME_PICKSUGGESTIONMANUALLY:[Ljava/lang/String;

.field private static final EVENTKEYS_LATINIME_PUNCTUATIONSUGGESTION:[Ljava/lang/String;

.field private static final EVENTKEYS_LATINIME_REVERTCOMMIT:[Ljava/lang/String;

.field private static final EVENTKEYS_LATINIME_SENDKEYCODEPOINT:[Ljava/lang/String;

.field private static final EVENTKEYS_LATINIME_SWAPSWAPPERANDSPACE:[Ljava/lang/String;

.field private static final EVENTKEYS_MAINKEYBOARDVIEW_ONLONGPRESS:[Ljava/lang/String;

.field private static final EVENTKEYS_MAINKEYBOARDVIEW_PROCESSMOTIONEVENT:[Ljava/lang/String;

.field private static final EVENTKEYS_MAINKEYBOARDVIEW_SETKEYBOARD:[Ljava/lang/String;

.field private static final EVENTKEYS_NULLVALUES:[Ljava/lang/Object;

.field private static final EVENTKEYS_POINTERTRACKER_CALLLISTENERONCANCELINPUT:[Ljava/lang/String;

.field private static final EVENTKEYS_POINTERTRACKER_CALLLISTENERONCODEINPUT:[Ljava/lang/String;

.field private static final EVENTKEYS_POINTERTRACKER_CALLLISTENERONRELEASE:[Ljava/lang/String;

.field private static final EVENTKEYS_POINTERTRACKER_ONDOWNEVENT:[Ljava/lang/String;

.field private static final EVENTKEYS_POINTERTRACKER_ONMOVEEVENT:[Ljava/lang/String;

.field private static final EVENTKEYS_PREFS_CHANGED:[Ljava/lang/String;

.field private static final EVENTKEYS_RICHINPUTCONNECTION_COMMITCOMPLETION:[Ljava/lang/String;

.field private static final EVENTKEYS_RICHINPUTCONNECTION_COMMITTEXT:[Ljava/lang/String;

.field private static final EVENTKEYS_RICHINPUTCONNECTION_DELETESURROUNDINGTEXT:[Ljava/lang/String;

.field private static final EVENTKEYS_RICHINPUTCONNECTION_FINISHCOMPOSINGTEXT:[Ljava/lang/String;

.field private static final EVENTKEYS_RICHINPUTCONNECTION_PERFORMEDITORACTION:[Ljava/lang/String;

.field private static final EVENTKEYS_RICHINPUTCONNECTION_SENDKEYEVENT:[Ljava/lang/String;

.field private static final EVENTKEYS_RICHINPUTCONNECTION_SETCOMPOSINGTEXT:[Ljava/lang/String;

.field private static final EVENTKEYS_RICHINPUTCONNECTION_SETSELECTION:[Ljava/lang/String;

.field private static final EVENTKEYS_STATISTICS:[Ljava/lang/String;

.field private static final EVENTKEYS_SUDDENJUMPINGTOUCHEVENTHANDLER_ONTOUCHEVENT:[Ljava/lang/String;

.field private static final EVENTKEYS_SUGGESTIONSTRIPVIEW_SETSUGGESTIONS:[Ljava/lang/String;

.field private static final EVENTKEYS_USER_FEEDBACK:[Ljava/lang/String;

.field private static final EVENTKEYS_USER_TIMESTAMP:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TIMESTAMP_DATEFORMAT:Ljava/text/SimpleDateFormat;

.field private static final sInstance:Lcom/android/inputmethod/research/ResearchLogger;

.field static sIsLogging:Z

.field private static sLatinIMEExpectingUpdateSelection:Z


# instance fields
.field private mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

.field mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

.field mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

.field mFilesDir:Ljava/io/File;

.field private mInFeedbackDialog:Z

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIsLoggingSuspended:Z

.field private mIsPasswordView:Z

.field private mMainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

.field mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

.field mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResumeTime:J

.field private mSplashDialog:Landroid/app/Dialog;

.field private final mStatistics:Lcom/android/inputmethod/research/Statistics;

.field mUUIDString:Ljava/lang/String;

.field private mUploadIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    const-class v0, Lcom/android/inputmethod/research/ResearchLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->$assertionsDisabled:Z

    .line 86
    const-class v0, Lcom/android/inputmethod/research/ResearchLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->TAG:Ljava/lang/String;

    .line 90
    sput-boolean v2, Lcom/android/inputmethod/research/ResearchLogger;->sIsLogging:Z

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmssS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->TIMESTAMP_DATEFORMAT:Ljava/text/SimpleDateFormat;

    .line 107
    new-instance v0, Lcom/android/inputmethod/research/ResearchLogger;

    invoke-direct {v0}, Lcom/android/inputmethod/research/ResearchLogger;-><init>()V

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->sInstance:Lcom/android/inputmethod/research/ResearchLogger;

    .line 126
    const-string v0, "\ue000"

    invoke-static {v0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    sput v0, Lcom/android/inputmethod/research/ResearchLogger;->DIGIT_REPLACEMENT_CODEPOINT:I

    .line 136
    sput-boolean v2, Lcom/android/inputmethod/research/ResearchLogger;->sLatinIMEExpectingUpdateSelection:Z

    .line 542
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "UserTimestamp"

    aput-object v3, v0, v2

    const-string v3, "contents"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_FEEDBACK:[Ljava/lang/String;

    .line 644
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_NULLVALUES:[Ljava/lang/Object;

    .line 787
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "LatinIMEOnStartInputViewInternal"

    aput-object v3, v0, v2

    const-string v3, "uuid"

    aput-object v3, v0, v1

    const-string v3, "packageName"

    aput-object v3, v0, v5

    const-string v3, "inputType"

    aput-object v3, v0, v6

    const-string v3, "imeOptions"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "fieldId"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "display"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "model"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "prefs"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "versionCode"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "versionName"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "outputFormatVersion"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONSTARTINPUTVIEWINTERNAL:[Ljava/lang/String;

    .line 821
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "UserFeedback"

    aput-object v3, v0, v2

    const-string v3, "FeedbackContents"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_USER_FEEDBACK:[Ljava/lang/String;

    .line 825
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "PrefsChanged"

    aput-object v3, v0, v2

    const-string v3, "prefs"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_PREFS_CHANGED:[Ljava/lang/String;

    .line 838
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "MainKeyboardViewProcessMotionEvent"

    aput-object v3, v0, v2

    const-string v3, "action"

    aput-object v3, v0, v1

    const-string v3, "eventTime"

    aput-object v3, v0, v5

    const-string v3, "id"

    aput-object v3, v0, v6

    const-string v3, "x"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "y"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "size"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "pressure"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_MAINKEYBOARDVIEW_PROCESSMOTIONEVENT:[Ljava/lang/String;

    .line 866
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "LatinIMEOnCodeInput"

    aput-object v3, v0, v2

    const-string v3, "code"

    aput-object v3, v0, v1

    const-string v3, "x"

    aput-object v3, v0, v5

    const-string v3, "y"

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONCODEINPUT:[Ljava/lang/String;

    .line 882
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "LatinIMEOnDisplayCompletions"

    aput-object v3, v0, v2

    const-string v3, "applicationSpecifiedCompletions"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONDISPLAYCOMPLETIONS:[Ljava/lang/String;

    .line 900
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "LatinIMEOnWindowHidden"

    aput-object v3, v0, v2

    const-string v3, "isTextTruncated"

    aput-object v3, v0, v1

    const-string v3, "text"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONWINDOWHIDDEN:[Ljava/lang/String;

    .line 949
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "LatinIMEOnUpdateSelection"

    aput-object v3, v0, v2

    const-string v3, "lastSelectionStart"

    aput-object v3, v0, v1

    const-string v3, "lastSelectionEnd"

    aput-object v3, v0, v5

    const-string v3, "oldSelStart"

    aput-object v3, v0, v6

    const-string v3, "oldSelEnd"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "newSelStart"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "newSelEnd"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "composingSpanStart"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "composingSpanEnd"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "expectingUpdateSelection"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "expectingUpdateSelectionFromLogger"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "context"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_ONUPDATESELECTION:[Ljava/lang/String;

    .line 977
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "LatinIMEPickSuggestionManually"

    aput-object v3, v0, v2

    const-string v3, "replacedWord"

    aput-object v3, v0, v1

    const-string v3, "index"

    aput-object v3, v0, v5

    const-string v3, "suggestion"

    aput-object v3, v0, v6

    const-string v3, "x"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "y"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_PICKSUGGESTIONMANUALLY:[Ljava/lang/String;

    .line 992
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "LatinIMEPunctuationSuggestion"

    aput-object v3, v0, v2

    const-string v3, "index"

    aput-object v3, v0, v1

    const-string v3, "suggestion"

    aput-object v3, v0, v5

    const-string v3, "x"

    aput-object v3, v0, v6

    const-string v3, "y"

    aput-object v3, v0, v7

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_PUNCTUATIONSUGGESTION:[Ljava/lang/String;

    .line 1004
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "LatinIMESendKeyCodePoint"

    aput-object v3, v0, v2

    const-string v3, "code"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_SENDKEYCODEPOINT:[Ljava/lang/String;

    .line 1018
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "LatinIMESwapSwapperAndSpace"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_SWAPSWAPPERANDSPACE:[Ljava/lang/String;

    .line 1025
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "MainKeyboardViewOnLongPress"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_MAINKEYBOARDVIEW_ONLONGPRESS:[Ljava/lang/String;

    .line 1032
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "MainKeyboardViewSetKeyboard"

    aput-object v3, v0, v2

    const-string v3, "elementId"

    aput-object v3, v0, v1

    const-string v3, "locale"

    aput-object v3, v0, v5

    const-string v3, "orientation"

    aput-object v3, v0, v6

    const-string v3, "width"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "modeName"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "action"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "navigateNext"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "navigatePrevious"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "clobberSettingsKey"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "passwordInput"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "shortcutKeyEnabled"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "hasShortcutKey"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "languageSwitchKeyEnabled"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "isMultiLine"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "tw"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "th"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "keys"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_MAINKEYBOARDVIEW_SETKEYBOARD:[Ljava/lang/String;

    .line 1067
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "LatinIMERevertCommit"

    aput-object v3, v0, v2

    const-string v3, "originallyTypedWord"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_LATINIME_REVERTCOMMIT:[Ljava/lang/String;

    .line 1077
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "PointerTrackerCallListenerOnCancelInput"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_CALLLISTENERONCANCELINPUT:[Ljava/lang/String;

    .line 1085
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "PointerTrackerCallListenerOnCodeInput"

    aput-object v3, v0, v2

    const-string v3, "code"

    aput-object v3, v0, v1

    const-string v3, "outputText"

    aput-object v3, v0, v5

    const-string v3, "x"

    aput-object v3, v0, v6

    const-string v3, "y"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "ignoreModifierKey"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "altersCode"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "isEnabled"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_CALLLISTENERONCODEINPUT:[Ljava/lang/String;

    .line 1104
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "PointerTrackerCallListenerOnRelease"

    aput-object v3, v0, v2

    const-string v3, "code"

    aput-object v3, v0, v1

    const-string v3, "withSliding"

    aput-object v3, v0, v5

    const-string v3, "ignoreModifierKey"

    aput-object v3, v0, v6

    const-string v3, "isEnabled"

    aput-object v3, v0, v7

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_CALLLISTENERONRELEASE:[Ljava/lang/String;

    .line 1120
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "PointerTrackerOnDownEvent"

    aput-object v3, v0, v2

    const-string v3, "deltaT"

    aput-object v3, v0, v1

    const-string v3, "distanceSquared"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_ONDOWNEVENT:[Ljava/lang/String;

    .line 1130
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "PointerTrackerOnMoveEvent"

    aput-object v3, v0, v2

    const-string v3, "x"

    aput-object v3, v0, v1

    const-string v3, "y"

    aput-object v3, v0, v5

    const-string v3, "lastX"

    aput-object v3, v0, v6

    const-string v3, "lastY"

    aput-object v3, v0, v7

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_POINTERTRACKER_ONMOVEEVENT:[Ljava/lang/String;

    .line 1141
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "RichInputConnectionCommitCompletion"

    aput-object v3, v0, v2

    const-string v3, "completionInfo"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_COMMITCOMPLETION:[Ljava/lang/String;

    .line 1179
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "RichInputConnectionCommitText"

    aput-object v3, v0, v2

    const-string v3, "typedWord"

    aput-object v3, v0, v1

    const-string v3, "newCursorPosition"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_COMMITTEXT:[Ljava/lang/String;

    .line 1194
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "RichInputConnectionDeleteSurroundingText"

    aput-object v3, v0, v2

    const-string v3, "beforeLength"

    aput-object v3, v0, v1

    const-string v3, "afterLength"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_DELETESURROUNDINGTEXT:[Ljava/lang/String;

    .line 1206
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "RichInputConnectionFinishComposingText"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_FINISHCOMPOSINGTEXT:[Ljava/lang/String;

    .line 1214
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "RichInputConnectionPerformEditorAction"

    aput-object v3, v0, v2

    const-string v3, "imeActionNext"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_PERFORMEDITORACTION:[Ljava/lang/String;

    .line 1224
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "RichInputConnectionSendKeyEvent"

    aput-object v3, v0, v2

    const-string v3, "eventTime"

    aput-object v3, v0, v1

    const-string v3, "action"

    aput-object v3, v0, v5

    const-string v3, "code"

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_SENDKEYEVENT:[Ljava/lang/String;

    .line 1237
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "RichInputConnectionSetComposingText"

    aput-object v3, v0, v2

    const-string v3, "text"

    aput-object v3, v0, v1

    const-string v3, "newCursorPosition"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_SETCOMPOSINGTEXT:[Ljava/lang/String;

    .line 1252
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "RichInputConnectionSetSelection"

    aput-object v3, v0, v2

    const-string v3, "from"

    aput-object v3, v0, v1

    const-string v3, "to"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_RICHINPUTCONNECTION_SETSELECTION:[Ljava/lang/String;

    .line 1263
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "SuddenJumpingTouchEventHandlerOnTouchEvent"

    aput-object v3, v0, v2

    const-string v3, "motionEvent"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_SUDDENJUMPINGTOUCHEVENTHANDLER_ONTOUCHEVENT:[Ljava/lang/String;

    .line 1276
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "SuggestionStripViewSetSuggestions"

    aput-object v3, v0, v2

    const-string v3, "suggestedWords"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_SUGGESTIONSTRIPVIEW_SETSUGGESTIONS:[Ljava/lang/String;

    .line 1289
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "UserTimestamp"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_USER_TIMESTAMP:[Ljava/lang/String;

    .line 1296
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Statistics"

    aput-object v3, v0, v2

    const-string v2, "charCount"

    aput-object v2, v0, v1

    const-string v1, "letterCount"

    aput-object v1, v0, v5

    const-string v1, "numberCount"

    aput-object v1, v0, v6

    const-string v1, "spaceCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "deleteOpsCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wordCount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "isEmptyUponStarting"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "isEmptinessStateKnown"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "averageTimeBetweenKeys"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "averageTimeBeforeDelete"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "averageTimeDuringRepeatedDelete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "averageTimeAfterDelete"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_STATISTICS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 85
    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsPasswordView:Z

    .line 122
    iput-boolean v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsLoggingSuspended:Z

    .line 148
    new-instance v0, Lcom/android/inputmethod/research/LogUnit;

    invoke-direct {v0}, Lcom/android/inputmethod/research/LogUnit;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mSplashDialog:Landroid/app/Dialog;

    .line 429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mResumeTime:J

    .line 507
    iput-boolean v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInFeedbackDialog:Z

    .line 151
    invoke-static {}, Lcom/android/inputmethod/research/Statistics;->getInstance()Lcom/android/inputmethod/research/Statistics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mStatistics:Lcom/android/inputmethod/research/Statistics;

    .line 152
    return-void
.end method

.method private createLogFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .parameter "filesDir"

    .prologue
    const/16 v2, 0x2d

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "researchLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mUUIDString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    sget-object v1, Lcom/android/inputmethod/research/ResearchLogger;->TIMESTAMP_DATEFORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private declared-synchronized enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 683
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/inputmethod/research/ResearchLogger;->isAllowedToLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/research/LogUnit;->addLogStatement([Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/research/ResearchLogger;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/inputmethod/research/ResearchLogger;->sInstance:Lcom/android/inputmethod/research/ResearchLogger;

    return-object v0
.end method

.method private isAllowedToLog()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsPasswordView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mIsLoggingSuspended:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->sIsLogging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInFeedbackDialog:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static prefsChanged(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "prefs"

    .prologue
    .line 829
    invoke-static {}, Lcom/android/inputmethod/research/ResearchLogger;->getInstance()Lcom/android/inputmethod/research/ResearchLogger;

    move-result-object v0

    .line 830
    .local v0, researchLogger:Lcom/android/inputmethod/research/ResearchLogger;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 833
    .local v1, values:[Ljava/lang/Object;
    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_PREFS_CHANGED:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/research/ResearchLogger;->enqueueEvent([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, didAbortMainLog:Z
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    invoke-virtual {v2}, Lcom/android/inputmethod/research/MainLogBuffer;->clear()V

    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    invoke-virtual {v2}, Lcom/android/inputmethod/research/ResearchLog;->blockingAbort()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 408
    :goto_0
    iput-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    .line 410
    :cond_0
    const/4 v0, 0x0

    .line 411
    .local v0, didAbortFeedbackLog:Z
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    invoke-virtual {v2}, Lcom/android/inputmethod/research/LogBuffer;->clear()V

    .line 414
    :try_start_1
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

    invoke-virtual {v2}, Lcom/android/inputmethod/research/ResearchLog;->blockingAbort()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 419
    :goto_1
    iput-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    .line 421
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 415
    :catch_0
    move-exception v2

    goto :goto_1

    .line 404
    .end local v0           #didAbortFeedbackLog:Z
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method commitCurrentLogUnit()V
    .locals 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/LogUnit;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/research/MainLogBuffer;->shiftIn(Lcom/android/inputmethod/research/LogUnit;)V

    .line 695
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/MainLogBuffer;->isSafeToLog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainResearchLog:Lcom/android/inputmethod/research/ResearchLog;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/research/ResearchLogger;->publishLogBuffer(Lcom/android/inputmethod/research/LogBuffer;Lcom/android/inputmethod/research/ResearchLog;Z)V

    .line 698
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainLogBuffer:Lcom/android/inputmethod/research/MainLogBuffer;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/MainLogBuffer;->resetWordCounter()V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/research/LogBuffer;->shiftIn(Lcom/android/inputmethod/research/LogUnit;)V

    .line 704
    :cond_1
    new-instance v0, Lcom/android/inputmethod/research/LogUnit;

    invoke-direct {v0}, Lcom/android/inputmethod/research/LogUnit;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mCurrentLogUnit:Lcom/android/inputmethod/research/LogUnit;

    .line 705
    sget-object v0, Lcom/android/inputmethod/research/ResearchLogger;->TAG:Ljava/lang/String;

    const-string v1, "commitCurrentLogUnit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_2
    return-void
.end method

.method public onLeavingSendFeedbackDialog()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInFeedbackDialog:Z

    .line 580
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 454
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const-string v0, "usability_study_mode"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->sIsLogging:Z

    .line 458
    sget-boolean v0, Lcom/android/inputmethod/research/ResearchLogger;->sIsLogging:Z

    if-nez v0, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->abort()Z

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->requestIndicatorRedraw()V

    .line 462
    iput-object p1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mPrefs:Landroid/content/SharedPreferences;

    .line 463
    invoke-static {p1}, Lcom/android/inputmethod/research/ResearchLogger;->prefsChanged(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method publishLogBuffer(Lcom/android/inputmethod/research/LogBuffer;Lcom/android/inputmethod/research/ResearchLog;Z)V
    .locals 1
    .parameter "logBuffer"
    .parameter "researchLog"
    .parameter "isIncludingPrivateData"

    .prologue
    .line 712
    :goto_0
    invoke-virtual {p1}, Lcom/android/inputmethod/research/LogBuffer;->shiftOut()Lcom/android/inputmethod/research/LogUnit;

    move-result-object v0

    .local v0, logUnit:Lcom/android/inputmethod/research/LogUnit;
    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p2, v0, p3}, Lcom/android/inputmethod/research/ResearchLog;->publish(Lcom/android/inputmethod/research/LogUnit;Z)V

    goto :goto_0

    .line 715
    :cond_0
    return-void
.end method

.method public requestIndicatorRedraw()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mMainKeyboardView:Lcom/android/inputmethod/keyboard/MainKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MainKeyboardView;->invalidateAllKeys()V

    goto :goto_0
.end method

.method public sendFeedback(Ljava/lang/String;Z)V
    .locals 5
    .parameter "feedbackContents"
    .parameter "includeHistory"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 546
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    if-nez v2, :cond_0

    .line 569
    :goto_0
    return-void

    .line 549
    :cond_0
    if-eqz p2, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/android/inputmethod/research/ResearchLogger;->commitCurrentLogUnit()V

    .line 554
    :goto_1
    new-instance v0, Lcom/android/inputmethod/research/LogUnit;

    invoke-direct {v0}, Lcom/android/inputmethod/research/LogUnit;-><init>()V

    .line 555
    .local v0, feedbackLogUnit:Lcom/android/inputmethod/research/LogUnit;
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 558
    .local v1, values:[Ljava/lang/Object;
    sget-object v2, Lcom/android/inputmethod/research/ResearchLogger;->EVENTKEYS_FEEDBACK:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/inputmethod/research/LogUnit;->addLogStatement([Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 560
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/research/LogBuffer;->shiftIn(Lcom/android/inputmethod/research/LogUnit;)V

    .line 561
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/inputmethod/research/ResearchLogger;->publishLogBuffer(Lcom/android/inputmethod/research/LogBuffer;Lcom/android/inputmethod/research/ResearchLog;Z)V

    .line 562
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

    new-instance v3, Lcom/android/inputmethod/research/ResearchLogger$4;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/research/ResearchLogger$4;-><init>(Lcom/android/inputmethod/research/ResearchLogger;)V

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/research/ResearchLog;->close(Ljava/lang/Runnable;)V

    .line 568
    new-instance v2, Lcom/android/inputmethod/research/ResearchLog;

    iget-object v3, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFilesDir:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/inputmethod/research/ResearchLogger;->createLogFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/research/ResearchLog;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLog:Lcom/android/inputmethod/research/ResearchLog;

    goto :goto_0

    .line 552
    .end local v0           #feedbackLogUnit:Lcom/android/inputmethod/research/LogUnit;
    .end local v1           #values:[Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/research/ResearchLogger;->mFeedbackLogBuffer:Lcom/android/inputmethod/research/LogBuffer;

    invoke-virtual {v2}, Lcom/android/inputmethod/research/LogBuffer;->clear()V

    goto :goto_1
.end method

.method public uploadNow()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/inputmethod/research/ResearchLogger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, p0, Lcom/android/inputmethod/research/ResearchLogger;->mUploadIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 576
    return-void
.end method
