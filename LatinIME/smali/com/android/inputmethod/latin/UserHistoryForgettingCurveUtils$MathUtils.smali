.class final Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$MathUtils;
.super Ljava/lang/Object;
.source "UserHistoryForgettingCurveUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MathUtils"
.end annotation


# static fields
.field public static final SCORE_TABLE:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 199
    const/16 v6, 0x10

    filled-new-array {v10, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    sput-object v6, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$MathUtils;->SCORE_TABLE:[[I

    .line 201
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v10, :cond_3

    .line 203
    const/4 v6, 0x2

    if-lt v2, v6, :cond_0

    .line 204
    const/high16 v3, 0x42fe

    .line 212
    .local v3, initialFreq:F
    :goto_1
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    const/16 v6, 0xf

    if-ge v5, v6, :cond_2

    .line 213
    mul-int/lit8 v6, v5, 0x6

    int-to-float v0, v6

    .line 214
    .local v0, elapsedHours:F
    float-to-double v6, v3

    const/high16 v8, 0x4240

    div-float v8, v0, v8

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v1, v3, v6

    .line 216
    .local v1, freq:F
    const/16 v6, 0x7f

    const/4 v7, 0x0

    float-to-int v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 217
    .local v4, intFreq:I
    sget-object v6, Lcom/android/inputmethod/latin/UserHistoryForgettingCurveUtils$MathUtils;->SCORE_TABLE:[[I

    aget-object v6, v6, v2

    aput v4, v6, v5

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 205
    .end local v0           #elapsedHours:F
    .end local v1           #freq:F
    .end local v3           #initialFreq:F
    .end local v4           #intFreq:I
    .end local v5           #j:I
    :cond_0
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 206
    const/high16 v3, 0x427c

    .restart local v3       #initialFreq:F
    goto :goto_1

    .line 207
    .end local v3           #initialFreq:F
    :cond_1
    if-nez v2, :cond_2

    .line 208
    const/high16 v3, 0x41f8

    .restart local v3       #initialFreq:F
    goto :goto_1

    .line 201
    .end local v3           #initialFreq:F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
