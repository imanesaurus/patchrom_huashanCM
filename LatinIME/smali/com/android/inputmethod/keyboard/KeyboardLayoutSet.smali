.class public final Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;
.super Ljava/lang/Object;
.source "KeyboardLayoutSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;,
        Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;,
        Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;,
        Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException;
    }
.end annotation


# static fields
.field private static final DEBUG_CACHE:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sKeyboardCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/KeyboardId;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/inputmethod/keyboard/Keyboard;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sKeysCache:Lcom/android/inputmethod/keyboard/internal/KeysCache;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->TAG:Ljava/lang/String;

    .line 66
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->DEBUG_CACHE:Z

    .line 76
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->sKeyboardCache:Ljava/util/HashMap;

    .line 78
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeysCache;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/KeysCache;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->sKeysCache:Lcom/android/inputmethod/keyboard/internal/KeysCache;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;)V
    .locals 0
    .parameter "context"
    .parameter "params"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    .line 122
    return-void
.end method

.method public static clearKeyboardCache()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->sKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 116
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->sKeysCache:Lcom/android/inputmethod/keyboard/internal/KeysCache;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeysCache;->clear()V

    .line 117
    return-void
.end method

.method private getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 7
    .parameter "elementParams"
    .parameter "id"

    .prologue
    .line 160
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->sKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 161
    .local v3, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/inputmethod/keyboard/Keyboard;>;"
    if-nez v3, :cond_3

    const/4 v1, 0x0

    .line 162
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    :goto_0
    if-nez v1, :cond_5

    .line 163
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-direct {v5}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;-><init>()V

    invoke-direct {v0, v4, v5}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 165
    .local v0, builder:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<Lcom/android/inputmethod/keyboard/internal/KeyboardParams;>;"
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->sKeysCache:Lcom/android/inputmethod/keyboard/internal/KeysCache;

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->setAutoGenerate(Lcom/android/inputmethod/keyboard/internal/KeysCache;)V

    .line 168
    :cond_0
    iget v2, p1, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;->mKeyboardXmlId:I

    .line 169
    .local v2, keyboardXmlId:I
    invoke-virtual {v0, v2, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->load(ILcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    .line 170
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iget-boolean v4, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mDisableTouchPositionCorrectionDataForTest:Z

    if-eqz v4, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->disableTouchPositionCorrectionDataForTest()V

    .line 173
    :cond_1
    iget-boolean v4, p1, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;->mProximityCharsCorrectionEnabled:Z

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->setProximityCharsCorrectionEnabled(Z)V

    .line 175
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->build()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 176
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->sKeyboardCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->DEBUG_CACHE:Z

    if-eqz v4, :cond_2

    .line 179
    sget-object v5, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyboard cache size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->sKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_4

    const-string v4, "LOAD"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v0           #builder:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<Lcom/android/inputmethod/keyboard/internal/KeyboardParams;>;"
    .end local v2           #keyboardXmlId:I
    :cond_2
    :goto_2
    return-object v1

    .line 161
    .end local v1           #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/keyboard/Keyboard;

    move-object v1, v4

    goto :goto_0

    .line 179
    .restart local v0       #builder:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<Lcom/android/inputmethod/keyboard/internal/KeyboardParams;>;"
    .restart local v1       #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    .restart local v2       #keyboardXmlId:I
    :cond_4
    const-string v4, "GCed"

    goto :goto_1

    .line 182
    .end local v0           #builder:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<Lcom/android/inputmethod/keyboard/internal/KeyboardParams;>;"
    .end local v2           #keyboardXmlId:I
    :cond_5
    sget-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->DEBUG_CACHE:Z

    if-eqz v4, :cond_2

    .line 183
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyboard cache size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->sKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": HIT  id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getKeyboardId(I)Lcom/android/inputmethod/keyboard/KeyboardId;
    .locals 16
    .parameter "keyboardLayoutSetElementId"

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    .line 195
    .local v15, params:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;
    const/4 v1, 0x5

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v13, 0x1

    .line 197
    .local v13, isSymbols:Z
    :goto_0
    iget-object v1, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v1}, Lcom/android/inputmethod/latin/SubtypeLocale;->isNoLanguage(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v14

    .line 198
    .local v14, noLanguage:Z
    iget-boolean v1, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mVoiceKeyEnabled:Z

    if-eqz v1, :cond_2

    if-nez v14, :cond_2

    const/4 v10, 0x1

    .line 199
    .local v10, voiceKeyEnabled:Z
    :goto_1
    if-eqz v10, :cond_3

    iget-boolean v1, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mVoiceKeyOnMain:Z

    if-eq v13, v1, :cond_3

    const/4 v11, 0x1

    .line 200
    .local v11, hasShortcutKey:Z
    :goto_2
    new-instance v1, Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v3, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget v4, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mDeviceFormFactor:I

    iget v5, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mOrientation:I

    iget v6, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mWidth:I

    iget v7, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mMode:I

    iget-object v8, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-boolean v9, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mNoSettingsKey:Z

    iget-boolean v12, v15, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mLanguageSwitchKeyEnabled:Z

    move/from16 v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/android/inputmethod/keyboard/KeyboardId;-><init>(ILandroid/view/inputmethod/InputMethodSubtype;IIIILandroid/view/inputmethod/EditorInfo;ZZZZ)V

    return-object v1

    .line 195
    .end local v10           #voiceKeyEnabled:Z
    .end local v11           #hasShortcutKey:Z
    .end local v13           #isSymbols:Z
    .end local v14           #noLanguage:Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 198
    .restart local v13       #isSymbols:Z
    .restart local v14       #noLanguage:Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 199
    .restart local v10       #voiceKeyEnabled:Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getKeyboard(I)Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 6
    .parameter "baseKeyboardLayoutSetElementId"

    .prologue
    .line 126
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iget v4, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 141
    move v3, p1

    .line 145
    .local v3, keyboardLayoutSetElementId:I
    :goto_0
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iget-object v4, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mKeyboardLayoutSetElementIdToParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;

    .line 147
    .local v1, elementParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;
    if-nez v1, :cond_0

    .line 148
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iget-object v4, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mKeyboardLayoutSetElementIdToParamsMap:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #elementParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;
    check-cast v1, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;

    .line 151
    .restart local v1       #elementParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->getKeyboardId(I)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    .line 153
    .local v2, id:Lcom/android/inputmethod/keyboard/KeyboardId;
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/Keyboard;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 128
    .end local v1           #elementParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;
    .end local v2           #id:Lcom/android/inputmethod/keyboard/KeyboardId;
    .end local v3           #keyboardLayoutSetElementId:I
    :pswitch_0
    const/4 v4, 0x5

    if-ne p1, v4, :cond_1

    .line 129
    const/16 v3, 0x8

    .restart local v3       #keyboardLayoutSetElementId:I
    goto :goto_0

    .line 131
    .end local v3           #keyboardLayoutSetElementId:I
    :cond_1
    const/4 v3, 0x7

    .line 133
    .restart local v3       #keyboardLayoutSetElementId:I
    goto :goto_0

    .line 138
    .end local v3           #keyboardLayoutSetElementId:I
    :pswitch_1
    const/16 v3, 0x9

    .line 139
    .restart local v3       #keyboardLayoutSetElementId:I
    goto :goto_0

    .line 154
    .restart local v1       #elementParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;
    .restart local v2       #id:Lcom/android/inputmethod/keyboard/KeyboardId;
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException;

    invoke-direct {v4, v0, v2}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$KeyboardLayoutSetException;-><init>(Ljava/lang/Throwable;Lcom/android/inputmethod/keyboard/KeyboardId;)V

    throw v4

    .line 126
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
