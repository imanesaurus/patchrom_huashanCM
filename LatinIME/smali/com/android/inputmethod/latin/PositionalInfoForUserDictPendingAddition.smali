.class public Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;
.super Ljava/lang/Object;
.source "PositionalInfoForUserDictPendingAddition.java"


# instance fields
.field private mActualWordBeingAdded:Ljava/lang/String;

.field private final mCursorPos:I

.field private final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private final mOriginalWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .parameter "word"
    .parameter "cursorPos"
    .parameter "editorInfo"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mOriginalWord:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mCursorPos:I

    .line 42
    iput-object p3, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 43
    return-void
.end method


# virtual methods
.method public setActualWordBeingAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "actualWordBeingAdded"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mActualWordBeingAdded:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public tryReplaceWithActualWord(Lcom/android/inputmethod/latin/RichInputConnection;Landroid/view/inputmethod/EditorInfo;I)Z
    .locals 4
    .parameter "connection"
    .parameter "editorInfo"
    .parameter "currentCursorPosition"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 76
    iget-object v2, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mActualWordBeingAdded:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mActualWordBeingAdded:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mOriginalWord:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 85
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iget v3, p2, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    if-ne v2, v3, :cond_0

    .line 91
    iget v0, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mCursorPos:I

    if-eq p3, v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mOriginalWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p1, v0, p3}, Lcom/android/inputmethod/latin/RichInputConnection;->setComposingRegion(II)V

    .line 95
    iget-object v0, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mActualWordBeingAdded:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/inputmethod/latin/PositionalInfoForUserDictPendingAddition;->mActualWordBeingAdded:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    move v0, v1

    .line 96
    goto :goto_0
.end method
