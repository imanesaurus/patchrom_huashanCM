.class public final Lcom/android/inputmethod/latin/LatinImeLogger;
.super Ljava/lang/Object;
.source "LatinImeLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static sDBG:Z

.field public static sUsabilityStudy:Z

.field public static sVISUALDEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    .line 27
    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    .line 28
    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commit()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 35
    return-void
.end method

.method public static logOnDelete(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 59
    return-void
.end method

.method public static logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "metaData"
    .parameter "e"

    .prologue
    .line 68
    return-void
.end method

.method public static logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILcom/android/inputmethod/latin/SuggestedWords;)V
    .locals 0
    .parameter "before"
    .parameter "after"
    .parameter "position"
    .parameter "suggestedWords"

    .prologue
    .line 45
    return-void
.end method

.method public static onAddSuggestedWord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "word"
    .parameter "sourceDictionaryId"

    .prologue
    .line 80
    return-void
.end method

.method public static onDestroy()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public static onSetKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 0
    .parameter "kb"

    .prologue
    .line 83
    return-void
.end method

.method public static onStartInputView(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .parameter "editorInfo"

    .prologue
    .line 74
    return-void
.end method

.method public static onStartSuggestion(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "previousWords"

    .prologue
    .line 77
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 32
    return-void
.end method
