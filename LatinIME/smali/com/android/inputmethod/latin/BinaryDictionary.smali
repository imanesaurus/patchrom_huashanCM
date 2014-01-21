.class public final Lcom/android/inputmethod/latin/BinaryDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "BinaryDictionary.java"


# static fields
.field private static final MAX_RESULTS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDicTraverseSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/inputmethod/latin/DicTraverseSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputCodePoints:[I

.field private final mLocale:Ljava/util/Locale;

.field private mNativeDict:J

.field private final mOutputChars:[C

.field private final mOutputScores:[I

.field private final mOutputTypes:[I

.field private final mSpaceIndices:[I

.field private final mUseFullEditDistance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->TAG:Ljava/lang/String;

    .line 50
    const/16 v0, 0x3c

    const/16 v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/inputmethod/latin/BinaryDictionary;->MAX_RESULTS:I

    .line 105
    invoke-static {}, Lcom/android/inputmethod/latin/JniUtils;->loadNativeLibrary()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJZLjava/util/Locale;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "filename"
    .parameter "offset"
    .parameter "length"
    .parameter "useFullEditDistance"
    .parameter "locale"
    .parameter "dictType"

    .prologue
    .line 98
    invoke-direct {p0, p9}, Lcom/android/inputmethod/latin/Dictionary;-><init>(Ljava/lang/String;)V

    .line 56
    const/16 v0, 0x30

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodePoints:[I

    .line 58
    sget v0, Lcom/android/inputmethod/latin/BinaryDictionary;->MAX_RESULTS:I

    mul-int/lit8 v0, v0, 0x30

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mSpaceIndices:[I

    .line 60
    sget v0, Lcom/android/inputmethod/latin/BinaryDictionary;->MAX_RESULTS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputScores:[I

    .line 61
    sget v0, Lcom/android/inputmethod/latin/BinaryDictionary;->MAX_RESULTS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputTypes:[I

    .line 65
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTraverseSessions:Landroid/util/SparseArray;

    .line 99
    iput-object p8, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mLocale:Ljava/util/Locale;

    .line 100
    iput-boolean p7, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mUseFullEditDistance:Z

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/BinaryDictionary;->loadDictionary(Ljava/lang/String;JJ)V

    .line 102
    return-void
.end method

.method public static calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F
    .locals 2
    .parameter "before"
    .parameter "after"
    .parameter "score"

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/inputmethod/latin/BinaryDictionary;->calcNormalizedScoreNative([C[CI)F

    move-result v0

    return v0
.end method

.method private static native calcNormalizedScoreNative([C[CI)F
.end method

.method private declared-synchronized closeInternal()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 232
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 233
    iget-wide v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:J

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeNative(J)V

    .line 234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native closeNative(J)V
.end method

.method public static editDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "before"
    .parameter "after"

    .prologue
    .line 190
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 193
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->editDistanceNative([C[C)I

    move-result v0

    return v0
.end method

.method private static native editDistanceNative([C[C)I
.end method

.method private native getFrequencyNative(J[I)I
.end method

.method private native getSuggestionsNative(JJJ[I[I[I[I[IIIZ[IZ[C[I[I[I)I
.end method

.method private getTraverseSession(I)Lcom/android/inputmethod/latin/DicTraverseSession;
    .locals 5
    .parameter "traverseSessionId"

    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTraverseSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTraverseSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/DicTraverseSession;

    .line 73
    .local v0, traverseSession:Lcom/android/inputmethod/latin/DicTraverseSession;
    if-nez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTraverseSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #traverseSession:Lcom/android/inputmethod/latin/DicTraverseSession;
    check-cast v0, Lcom/android/inputmethod/latin/DicTraverseSession;

    .line 75
    .restart local v0       #traverseSession:Lcom/android/inputmethod/latin/DicTraverseSession;
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/inputmethod/latin/DicTraverseSession;

    .end local v0           #traverseSession:Lcom/android/inputmethod/latin/DicTraverseSession;
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mLocale:Ljava/util/Locale;

    iget-wide v3, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:J

    invoke-direct {v0, v1, v3, v4}, Lcom/android/inputmethod/latin/DicTraverseSession;-><init>(Ljava/util/Locale;J)V

    .line 77
    .restart local v0       #traverseSession:Lcom/android/inputmethod/latin/DicTraverseSession;
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTraverseSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    :cond_0
    monitor-exit v2

    return-object v0

    .line 81
    .end local v0           #traverseSession:Lcom/android/inputmethod/latin/DicTraverseSession;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native isValidBigramNative(J[I[I)Z
.end method

.method private final loadDictionary(Ljava/lang/String;JJ)V
    .locals 11
    .parameter "path"
    .parameter "startOffset"
    .parameter "length"

    .prologue
    .line 124
    const/4 v6, 0x2

    const/4 v7, 0x2

    const/16 v8, 0x30

    const/16 v9, 0x12

    const/16 v10, 0x3c

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/inputmethod/latin/BinaryDictionary;->openNative(Ljava/lang/String;JJIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:J

    .line 126
    return-void
.end method

.method private native openNative(Ljava/lang/String;JJIIIII)J
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 219
    iget-object v4, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTraverseSessions:Landroid/util/SparseArray;

    monitor-enter v4

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTraverseSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 221
    .local v1, sessionsSize:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 222
    iget-object v3, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTraverseSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/DicTraverseSession;

    .line 223
    .local v2, traverseSession:Lcom/android/inputmethod/latin/DicTraverseSession;
    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DicTraverseSession;->close()V

    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v2           #traverseSession:Lcom/android/inputmethod/latin/DicTraverseSession;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-direct {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeInternal()V

    .line 229
    return-void

    .line 227
    .end local v0           #index:I
    .end local v1           #sessionsSize:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFrequency(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "word"

    .prologue
    .line 203
    if-nez p1, :cond_0

    const/4 v1, -0x1

    .line 205
    :goto_0
    return v1

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/inputmethod/latin/StringUtils;->toCodePointArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 205
    .local v0, codePoints:[I
    iget-wide v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:J

    invoke-direct {p0, v1, v2, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->getFrequencyNative(J[I)I

    move-result v1

    goto :goto_0
.end method

.method public getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "composer"
    .parameter "prevWord"
    .parameter "proximityInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/keyboard/ProximityInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsWithSessionId(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionsWithSessionId(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;I)Ljava/util/ArrayList;
    .locals 33
    .parameter "composer"
    .parameter "prevWord"
    .parameter "proximityInfo"
    .parameter "sessionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/inputmethod/keyboard/ProximityInfo;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidDictionary()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v31, 0x0

    .line 178
    :cond_0
    :goto_0
    return-object v31

    .line 139
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodePoints:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 141
    if-nez p2, :cond_3

    const/16 v17, 0x0

    .line 143
    .local v17, prevWordCodePointArray:[I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v23

    .line 145
    .local v23, composerSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isBatchMode()Z

    move-result v16

    .line 146
    .local v16, isGesture:Z
    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_2

    if-nez v16, :cond_5

    .line 147
    :cond_2
    const/16 v2, 0x2f

    move/from16 v0, v23

    if-le v0, v2, :cond_4

    const/16 v31, 0x0

    goto :goto_0

    .line 141
    .end local v16           #isGesture:Z
    .end local v17           #prevWordCodePointArray:[I
    .end local v23           #composerSize:I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/StringUtils;->toCodePointArray(Ljava/lang/String;)[I

    move-result-object v17

    goto :goto_1

    .line 148
    .restart local v16       #isGesture:Z
    .restart local v17       #prevWordCodePointArray:[I
    .restart local v23       #composerSize:I
    :cond_4
    const/16 v25, 0x0

    .local v25, i:I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodePoints:[I

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;->getCodeAt(I)I

    move-result v3

    aput v3, v2, v25

    .line 148
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 153
    .end local v25           #i:I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->getInputPointers()Lcom/android/inputmethod/latin/InputPointers;

    move-result-object v26

    .line 154
    .local v26, ips:Lcom/android/inputmethod/latin/InputPointers;
    if-eqz v16, :cond_7

    invoke-virtual/range {v26 .. v26}, Lcom/android/inputmethod/latin/InputPointers;->getPointerSize()I

    move-result v14

    .line 156
    .local v14, codesSize:I
    :goto_3
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:J

    invoke-virtual/range {p3 .. p3}, Lcom/android/inputmethod/keyboard/ProximityInfo;->getNativeProximityInfo()J

    move-result-wide v5

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->getTraverseSession(I)Lcom/android/inputmethod/latin/DicTraverseSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/DicTraverseSession;->getSession()J

    move-result-wide v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/inputmethod/latin/InputPointers;->getXCoordinates()[I

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Lcom/android/inputmethod/latin/InputPointers;->getYCoordinates()[I

    move-result-object v10

    invoke-virtual/range {v26 .. v26}, Lcom/android/inputmethod/latin/InputPointers;->getTimes()[I

    move-result-object v11

    invoke-virtual/range {v26 .. v26}, Lcom/android/inputmethod/latin/InputPointers;->getPointerIds()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodePoints:[I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mUseFullEditDistance:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputScores:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mSpaceIndices:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputTypes:[I

    move-object/from16 v22, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v22}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsNative(JJJ[I[I[I[I[IIIZ[IZ[C[I[I[I)I

    move-result v32

    .line 161
    .local v32, tmpCount:I
    const/16 v2, 0x3c

    move/from16 v0, v32

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 163
    .local v24, count:I
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v31

    .line 164
    .local v31, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    const/16 v27, 0x0

    .local v27, j:I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 165
    if-lez v23, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputScores:[I

    aget v2, v2, v27

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 166
    :cond_6
    mul-int/lit8 v30, v27, 0x30

    .line 167
    .local v30, start:I
    const/16 v28, 0x0

    .line 168
    .local v28, len:I
    :goto_5
    const/16 v2, 0x30

    move/from16 v0, v28

    if-ge v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    add-int v3, v30, v28

    aget-char v2, v2, v3

    if-eqz v2, :cond_8

    .line 169
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .end local v14           #codesSize:I
    .end local v24           #count:I
    .end local v27           #j:I
    .end local v28           #len:I
    .end local v30           #start:I
    .end local v31           #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .end local v32           #tmpCount:I
    :cond_7
    move/from16 v14, v23

    .line 154
    goto/16 :goto_3

    .line 171
    .restart local v14       #codesSize:I
    .restart local v24       #count:I
    .restart local v27       #j:I
    .restart local v28       #len:I
    .restart local v30       #start:I
    .restart local v31       #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .restart local v32       #tmpCount:I
    :cond_8
    if-lez v28, :cond_9

    .line 172
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputTypes:[I

    aget v3, v3, v27

    if-ne v2, v3, :cond_a

    const v29, 0x7fffffff

    .line 174
    .local v29, score:I
    :goto_6
    new-instance v2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move/from16 v0, v30

    move/from16 v1, v28

    invoke-direct {v3, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputTypes:[I

    aget v4, v4, v27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDictType:Ljava/lang/String;

    move/from16 v0, v29

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v29           #score:I
    :cond_9
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 172
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputScores:[I

    aget v29, v2, v27

    goto :goto_6
.end method

.method public isValidBigram(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "word1"
    .parameter "word2"

    .prologue
    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 214
    :goto_0
    return v2

    .line 212
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/StringUtils;->toCodePointArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 213
    .local v0, chars1:[I
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/StringUtils;->toCodePointArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 214
    .local v1, chars2:[I
    iget-wide v2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidBigramNative(J[I[I)Z

    move-result v2

    goto :goto_0
.end method

.method isValidDictionary()Z
    .locals 4

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/BinaryDictionary;->getFrequency(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
