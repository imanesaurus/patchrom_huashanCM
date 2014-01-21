.class public Lcom/android/inputmethod/keyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mAltCodeKeysWhileTyping:[Lcom/android/inputmethod/keyboard/Key;

.field public final mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

.field public final mId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private final mKeyCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

.field public final mKeys:[Lcom/android/inputmethod/keyboard/Key;

.field public final mMaxMoreKeysKeyboardColumn:I

.field public final mMoreKeysTemplate:I

.field public final mMostCommonKeyHeight:I

.field public final mMostCommonKeyWidth:I

.field public final mOccupiedHeight:I

.field public final mOccupiedWidth:I

.field private final mProximityCharsCorrectionEnabled:Z

.field private final mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

.field public final mShiftKeys:[Lcom/android/inputmethod/keyboard/Key;

.field public final mThemeId:I

.field public final mTopPadding:I

.field public final mVerticalGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/Keyboard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 10
    .parameter "params"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    .line 126
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 127
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mThemeId:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mThemeId:I

    .line 128
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    .line 129
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    .line 130
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyHeight:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    .line 131
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyWidth:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    .line 132
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMoreKeysTemplate:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMoreKeysTemplate:I

    .line 133
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxMoreKeysKeyboardColumn:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMaxMoreKeysKeyboardColumn:I

    .line 134
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    .line 135
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mTopPadding:I

    .line 136
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    .line 138
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/inputmethod/keyboard/Key;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 139
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/inputmethod/keyboard/Key;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 140
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mAltCodeKeysWhileTyping:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mAltCodeKeysWhileTyping:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/inputmethod/keyboard/Key;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mAltCodeKeysWhileTyping:[Lcom/android/inputmethod/keyboard/Key;

    .line 142
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    .line 144
    new-instance v0, Lcom/android/inputmethod/keyboard/ProximityInfo;

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_WIDTH:I

    iget v3, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_HEIGHT:I

    iget v4, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    iget v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    iget v6, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    iget v7, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget-object v8, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    iget-object v9, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;

    invoke-direct/range {v0 .. v9}, Lcom/android/inputmethod/keyboard/ProximityInfo;-><init>(Ljava/lang/String;IIIIII[Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    .line 147
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mProximityCharsCorrectionEnabled:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityCharsCorrectionEnabled:Z

    .line 148
    return-void
.end method

.method public static isLetterCode(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 202
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static printableCode(I)Ljava/lang/String;
    .locals 5
    .parameter "code"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    packed-switch p0, :pswitch_data_0

    .line 240
    :pswitch_0
    if-gtz p0, :cond_0

    sget-object v0, Lcom/android/inputmethod/keyboard/Keyboard;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown non-positive key code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    const/16 v0, 0x20

    if-ge p0, v0, :cond_1

    const-string v0, "\'\\u%02x\'"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 226
    :pswitch_1
    const-string v0, "shift"

    goto :goto_0

    .line 227
    :pswitch_2
    const-string v0, "symbol"

    goto :goto_0

    .line 228
    :pswitch_3
    const-string v0, "text"

    goto :goto_0

    .line 229
    :pswitch_4
    const-string v0, "delete"

    goto :goto_0

    .line 230
    :pswitch_5
    const-string v0, "settings"

    goto :goto_0

    .line 231
    :pswitch_6
    const-string v0, "shortcut"

    goto :goto_0

    .line 232
    :pswitch_7
    const-string v0, "actionEnter"

    goto :goto_0

    .line 233
    :pswitch_8
    const-string v0, "actionNext"

    goto :goto_0

    .line 234
    :pswitch_9
    const-string v0, "actionPrevious"

    goto :goto_0

    .line 235
    :pswitch_a
    const-string v0, "languageSwitch"

    goto :goto_0

    .line 236
    :pswitch_b
    const-string v0, "unspec"

    goto :goto_0

    .line 237
    :pswitch_c
    const-string v0, "tab"

    goto :goto_0

    .line 238
    :pswitch_d
    const-string v0, "enter"

    goto :goto_0

    .line 242
    :cond_1
    const/16 v0, 0x100

    if-ge p0, v0, :cond_2

    const-string v0, "\'%c\'"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_2
    const-string v0, "\'\\u%04x\'"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public getKey(I)Lcom/android/inputmethod/keyboard/Key;
    .locals 9
    .parameter "code"

    .prologue
    const/4 v5, 0x0

    .line 167
    const/16 v6, -0xc

    if-ne p1, v6, :cond_0

    .line 183
    :goto_0
    return-object v5

    .line 170
    :cond_0
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    monitor-enter v6

    .line 171
    :try_start_0
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 172
    .local v2, index:I
    if-ltz v2, :cond_1

    .line 173
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/keyboard/Key;

    monitor-exit v6

    goto :goto_0

    .line 184
    .end local v2           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 176
    .restart local v2       #index:I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .local v0, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v3, v0, v1

    .line 177
    .local v3, key:Lcom/android/inputmethod/keyboard/Key;
    iget v7, v3, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    if-ne v7, p1, :cond_2

    .line 178
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    monitor-exit v6

    move-object v5, v3

    goto :goto_0

    .line 176
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    .end local v3           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_3
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getNearestKeys(II)[Lcom/android/inputmethod/keyboard/Key;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 219
    iget v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 220
    .local v0, adjustedX:I
    iget v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 221
    .local v1, adjustedY:I
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/keyboard/ProximityInfo;->getNearestKeys(II)[Lcom/android/inputmethod/keyboard/Key;

    move-result-object v2

    return-object v2
.end method

.method public getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    return-object v0
.end method

.method public hasKey(Lcom/android/inputmethod/keyboard/Key;)Z
    .locals 7
    .parameter "aKey"

    .prologue
    const/4 v4, 0x1

    .line 188
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 198
    :goto_0
    return v4

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .local v0, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 193
    .local v2, key:Lcom/android/inputmethod/keyboard/Key;
    if-ne v2, p1, :cond_1

    .line 194
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyCache:Landroid/util/SparseArray;

    iget v6, v2, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    .end local v2           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hasProximityCharsCorrection(I)Z
    .locals 5
    .parameter "code"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityCharsCorrectionEnabled:Z

    if-nez v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v3, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v3, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :cond_2
    move v0, v2

    .line 159
    .local v0, canAssumeNativeHasProximityCharsInfoOfAllKeys:Z
    :goto_1
    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0           #canAssumeNativeHasProximityCharsInfoOfAllKeys:Z
    :cond_4
    move v0, v1

    .line 156
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
