.class public Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;
.super Ljava/lang/Object;
.source "IWnnSituationManager.java"


# static fields
.field private static final CALENDAR_FIELD_NOTUSE:I = 0x0

.field private static final SITUATION_MORNING_END_HOUR:I = 0xa

.field private static final SITUATION_MORNING_END_MINUTE:I = 0x1e

.field private static final SITUATION_MORNING_START_HOUR:I = 0x5

.field private static final SITUATION_MORNING_START_MINUTE:I = 0x0

.field private static final SITUATION_NIGHT_END_HOUR:I = 0x11

.field private static final SITUATION_NIGHT_END_MINUTE:I = 0x0

.field private static final SITUATION_NIGHT_START_HOUR:I = 0x5

.field private static final SITUATION_NIGHT_START_MINUTE:I = 0x1e

.field private static final SITUATION_NOON_END_HOUR:I = 0x11

.field private static final SITUATION_NOON_END_MINUTE:I = 0x1e

.field private static final SITUATION_NOON_START_HOUR:I = 0xa

.field private static final SITUATION_NOON_START_MINUTE:I = 0x0

.field private static final STATE_MONTH_APRIL:I = 0xf

.field private static final STATE_MONTH_AUGUST:I = 0x13

.field private static final STATE_MONTH_DECEMBER:I = 0x17

.field private static final STATE_MONTH_FEBRUARY:I = 0xd

.field private static final STATE_MONTH_JANUARY:I = 0xc

.field private static final STATE_MONTH_JULY:I = 0x12

.field private static final STATE_MONTH_JUNE:I = 0x11

.field private static final STATE_MONTH_MARCH:I = 0xe

.field private static final STATE_MONTH_MAY:I = 0x10

.field private static final STATE_MONTH_NOVEMBER:I = 0x16

.field private static final STATE_MONTH_OCTOBER:I = 0x15

.field private static final STATE_MONTH_SEPTEMBER:I = 0x14

.field private static final STATE_SITUATION_DISABLE:I = 0x0

.field private static final STATE_SITUATION_ENABLE:I = 0xc8

.field private static final STATE_TIME_MORNING:I = 0x5

.field private static final STATE_TIME_NIGHT:I = 0x7

.field private static final STATE_TIME_NOON:I = 0x6


# instance fields
.field private mCompareCalendar:Ljava/util/Calendar;

.field private mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

.field private mCurrentCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;)V
    .locals 3
    .parameter "core"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    .line 90
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    .line 92
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    .line 100
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    .line 102
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 103
    return-void
.end method

.method private isMorning()Z
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 158
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 160
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 165
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    const/16 v2, 0x1e

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 167
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNight()Z
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 204
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    const/16 v3, 0x1e

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 206
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    const/16 v3, 0x11

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 211
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 213
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 214
    goto :goto_0
.end method

.method private isNoon()Z
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 181
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 183
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    const/16 v2, 0x11

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 188
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    const/16 v2, 0x1e

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 190
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetCalendar(Ljava/util/Calendar;)V
    .locals 4
    .parameter "calendar"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 226
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 227
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 228
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 229
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 230
    return-void
.end method

.method private updateSituation()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, v5, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 125
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, v6, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 126
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, v7, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 127
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 128
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 129
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 130
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 131
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 132
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 133
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 134
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 135
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 136
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 137
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 138
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 140
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->isMorning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, v5, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 145
    :cond_1
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->isNoon()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, v6, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 146
    :cond_2
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->isNight()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, v7, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    .line 147
    :cond_3
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0xc

    .line 148
    .local v0, month:I
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1, v0, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->setSituationBiasValue(II)V

    goto :goto_0
.end method


# virtual methods
.method public updateState()Z
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCurrentCalendar:Ljava/util/Calendar;

    .line 112
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCompareCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->resetCalendar(Ljava/util/Calendar;)V

    .line 114
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->pullSituationState()Z

    move-result v0

    .line 115
    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->updateSituation()V

    .line 116
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnSituationManager;->mCore:Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;

    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/IWnnCore;->pushSituationState()Z

    move-result v0

    .line 117
    :cond_1
    return v0
.end method
