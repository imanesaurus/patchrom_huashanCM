.class final Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;
.super Ljava/lang/Object;
.source "KeyboardLayoutSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Params"
.end annotation


# instance fields
.field mDeviceFormFactor:I

.field mDisableTouchPositionCorrectionDataForTest:Z

.field mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field final mKeyboardLayoutSetElementIdToParamsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;",
            ">;"
        }
    .end annotation
.end field

.field mKeyboardLayoutSetName:Ljava/lang/String;

.field mLanguageSwitchKeyEnabled:Z

.field mMode:I

.field mNoSettingsKey:Z

.field mOrientation:I

.field mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field mVoiceKeyEnabled:Z

.field mVoiceKeyOnMain:Z

.field mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mKeyboardLayoutSetElementIdToParamsMap:Landroid/util/SparseArray;

    .line 111
    return-void
.end method
