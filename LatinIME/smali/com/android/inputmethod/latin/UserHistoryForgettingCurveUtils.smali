.class public final Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;
.super Ljava/lang/Object;
.source "UserHistoryForgettingCurveUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$MathUtils;,
        Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static calcFc(III)B
    .locals 7
    .parameter "elapsedTime"
    .parameter "count"
    .parameter "level"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 137
    const/16 v3, 0x7f

    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 138
    .local v1, et:I
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    .local v0, c:I
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 140
    .local v2, l:I
    shl-int/lit8 v3, v0, 0x4

    or-int/2addr v3, v1

    shl-int/lit8 v4, v2, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    return v3
.end method

.method private static calcFreq(III)I
    .locals 6
    .parameter "elapsedTime"
    .parameter "count"
    .parameter "level"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 123
    if-gtz p2, :cond_0

    .line 125
    const/4 v2, -0x1

    .line 133
    :goto_0
    return v2

    .line 127
    :cond_0
    if-ne p1, v5, :cond_1

    .line 129
    add-int/lit8 p2, p2, 0x1

    .line 131
    :cond_1
    const/16 v2, 0x7f

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    .local v0, et:I
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 133
    .local v1, l:I
    sget-object v2, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$MathUtils;->SCORE_TABLE:[[I

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget v2, v2, v0

    goto :goto_0
.end method

.method static fcToCount(B)I
    .locals 1
    .parameter "fc"

    .prologue
    .line 115
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method static fcToElapsedTime(B)I
    .locals 1
    .parameter "fc"

    .prologue
    .line 111
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static fcToFreq(B)I
    .locals 4
    .parameter "fc"

    .prologue
    .line 144
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToElapsedTime(B)I

    move-result v1

    .line 145
    .local v1, elapsedTime:I
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToCount(B)I

    move-result v0

    .line 146
    .local v0, count:I
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToLevel(B)I

    move-result v2

    .line 147
    .local v2, level:I
    invoke-static {v1, v0, v2}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->calcFreq(III)I

    move-result v3

    return v3
.end method

.method static fcToLevel(B)I
    .locals 1
    .parameter "fc"

    .prologue
    .line 119
    shr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static needsToSave(BZZ)Z
    .locals 4
    .parameter "fc"
    .parameter "isValid"
    .parameter "addLevel0Bigram"

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToLevel(B)I

    move-result v1

    .line 189
    .local v1, level:I
    if-nez v1, :cond_1

    .line 190
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v2

    .line 194
    :cond_1
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToElapsedTime(B)I

    move-result v0

    .line 195
    .local v0, elapsedTime:I
    const/16 v3, 0xe

    if-lt v0, v3, :cond_2

    if-lez v1, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static pushCount(BZ)B
    .locals 4
    .parameter "fc"
    .parameter "isValid"

    .prologue
    .line 166
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToElapsedTime(B)I

    move-result v1

    .line 167
    .local v1, elapsedTime:I
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToCount(B)I

    move-result v0

    .line 168
    .local v0, count:I
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToLevel(B)I

    move-result v2

    .line 169
    .local v2, level:I
    if-nez v1, :cond_0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 171
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 172
    const/4 v0, 0x0

    .line 179
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->calcFc(III)B

    move-result v3

    return v3

    .line 177
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static pushElapsedTime(B)B
    .locals 4
    .parameter "fc"

    .prologue
    .line 151
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToElapsedTime(B)I

    move-result v1

    .line 152
    .local v1, elapsedTime:I
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToCount(B)I

    move-result v0

    .line 153
    .local v0, count:I
    invoke-static {p0}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->fcToLevel(B)I

    move-result v2

    .line 154
    .local v2, level:I
    const/16 v3, 0xf

    if-lt v1, v3, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 157
    const/4 v0, 0x3

    .line 158
    add-int/lit8 v2, v2, -0x1

    .line 162
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;->calcFc(III)B

    move-result v3

    return v3

    .line 160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
