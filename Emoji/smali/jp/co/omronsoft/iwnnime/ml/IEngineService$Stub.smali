.class public abstract Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;
.super Landroid/os/Binder;
.source "IEngineService.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/IEngineService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/IEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "jp.co.omronsoft.iwnnime.ml.IEngineService"

.field static final TRANSACTION_addWord:I = 0x7

.field static final TRANSACTION_convert:I = 0x6

.field static final TRANSACTION_deleteWord:I = 0x9

.field static final TRANSACTION_getDictionaryType:I = 0x17

.field static final TRANSACTION_getErrorCode:I = 0x18

.field static final TRANSACTION_getNextCandidate:I = 0x3

.field static final TRANSACTION_getNextCandidateWithAnnotation:I = 0x4

.field static final TRANSACTION_getStatus:I = 0x16

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_initializeDictionary:I = 0xb

.field static final TRANSACTION_learnCandidate:I = 0x5

.field static final TRANSACTION_learnCandidateNoStore:I = 0xf

.field static final TRANSACTION_learnWord:I = 0x10

.field static final TRANSACTION_learnWordNoStore:I = 0x11

.field static final TRANSACTION_predict:I = 0x2

.field static final TRANSACTION_searchWords:I = 0x8

.field static final TRANSACTION_setDictionary:I = 0x12

.field static final TRANSACTION_setDictionaryDecoratedPict:I = 0x13

.field static final TRANSACTION_setLearnDictionary:I = 0xd

.field static final TRANSACTION_setNormalDictionary:I = 0xe

.field static final TRANSACTION_setUserDictionary:I = 0xc

.field static final TRANSACTION_startInput:I = 0x15

.field static final TRANSACTION_undo:I = 0x14

.field static final TRANSACTION_writeoutDictionary:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p0, p0, v0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ljp/co/omronsoft/iwnnime/ml/IEngineService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/IEngineService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 330
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->init(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    .end local v1           #_arg0:I
    :sswitch_2
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->predict(Ljava/lang/String;II)I

    move-result v11

    .line 67
    .local v11, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v11           #_result:I
    :sswitch_3
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->getNextCandidate(I)Landroid/os/Bundle;

    move-result-object v11

    .line 77
    .local v11, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v11, :cond_0

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 89
    .end local v1           #_arg0:I
    .end local v11           #_result:Landroid/os/Bundle;
    :sswitch_4
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->getNextCandidateWithAnnotation(I)Landroid/os/Bundle;

    move-result-object v11

    .line 93
    .restart local v11       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v11, :cond_1

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 105
    .end local v1           #_arg0:I
    .end local v11           #_result:Landroid/os/Bundle;
    :sswitch_5
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->learnCandidate(I)Z

    move-result v11

    .line 109
    .local v11, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v11, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 115
    .end local v1           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_6
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->convert(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v11

    .line 121
    .local v11, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v11, :cond_3

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 127
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 133
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v11           #_result:Landroid/os/Bundle;
    :sswitch_7
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->addWord(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 139
    .local v11, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 145
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v11           #_result:I
    :sswitch_8
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->searchWords(Ljava/lang/String;)I

    move-result v11

    .line 149
    .restart local v11       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 155
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v11           #_result:I
    :sswitch_9
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->deleteWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 161
    .local v11, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v11, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 162
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 167
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v11           #_result:Z
    :sswitch_a
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->writeoutDictionary()Z

    move-result v11

    .line 169
    .restart local v11       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v11, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 170
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 175
    .end local v11           #_result:Z
    :sswitch_b
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->initializeDictionary()Z

    move-result v11

    .line 177
    .restart local v11       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v11, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 178
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 183
    .end local v11           #_result:Z
    :sswitch_c
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->setUserDictionary()V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 190
    :sswitch_d
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->setLearnDictionary()V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 197
    :sswitch_e
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->setNormalDictionary()V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 204
    :sswitch_f
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->learnCandidateNoStore(I)Z

    move-result v11

    .line 208
    .restart local v11       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v11, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 209
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 214
    .end local v1           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_10
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->learnWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 220
    .restart local v11       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v11, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 221
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 226
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v11           #_result:Z
    :sswitch_11
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->learnWordNoStore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 232
    .restart local v11       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v11, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 233
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 238
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v11           #_result:Z
    :sswitch_12
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v4, 0x1

    .line 248
    .local v4, _arg3:Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v5, 0x1

    .line 250
    .local v5, _arg4:Z
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v6, 0x1

    .line 252
    .local v6, _arg5:Z
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v7, 0x1

    .line 254
    .local v7, _arg6:Z
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v8, 0x1

    .line 256
    .local v8, _arg7:Z
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v9, 0x1

    .local v9, _arg8:Z
    :goto_10
    move-object v0, p0

    .line 257
    invoke-virtual/range {v0 .. v9}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->setDictionary(Ljava/lang/String;IIZZZZZZ)Z

    move-result v11

    .line 258
    .restart local v11       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v11, :cond_10

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 246
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Z
    .end local v7           #_arg6:Z
    .end local v8           #_arg7:Z
    .end local v9           #_arg8:Z
    .end local v11           #_result:Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 248
    .restart local v4       #_arg3:Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    .line 250
    .restart local v5       #_arg4:Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_d

    .line 252
    .restart local v6       #_arg5:Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_e

    .line 254
    .restart local v7       #_arg6:Z
    :cond_e
    const/4 v8, 0x0

    goto :goto_f

    .line 256
    .restart local v8       #_arg7:Z
    :cond_f
    const/4 v9, 0x0

    goto :goto_10

    .line 259
    .restart local v9       #_arg8:Z
    .restart local v11       #_result:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 264
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Z
    .end local v7           #_arg6:Z
    .end local v8           #_arg7:Z
    .end local v9           #_arg8:Z
    .end local v11           #_result:Z
    :sswitch_13
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v4, 0x1

    .line 274
    .restart local v4       #_arg3:Z
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v5, 0x1

    .line 276
    .restart local v5       #_arg4:Z
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    .line 278
    .restart local v6       #_arg5:Z
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v7, 0x1

    .line 280
    .restart local v7       #_arg6:Z
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v8, 0x1

    .line 282
    .restart local v8       #_arg7:Z
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v9, 0x1

    .line 284
    .restart local v9       #_arg8:Z
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v10, 0x1

    .local v10, _arg9:Z
    :goto_18
    move-object v0, p0

    .line 285
    invoke-virtual/range {v0 .. v10}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->setDictionaryDecoratedPict(Ljava/lang/String;IIZZZZZZZ)Z

    move-result v11

    .line 286
    .restart local v11       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v11, :cond_18

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 272
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Z
    .end local v7           #_arg6:Z
    .end local v8           #_arg7:Z
    .end local v9           #_arg8:Z
    .end local v10           #_arg9:Z
    .end local v11           #_result:Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    .line 274
    .restart local v4       #_arg3:Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_13

    .line 276
    .restart local v5       #_arg4:Z
    :cond_13
    const/4 v6, 0x0

    goto :goto_14

    .line 278
    .restart local v6       #_arg5:Z
    :cond_14
    const/4 v7, 0x0

    goto :goto_15

    .line 280
    .restart local v7       #_arg6:Z
    :cond_15
    const/4 v8, 0x0

    goto :goto_16

    .line 282
    .restart local v8       #_arg7:Z
    :cond_16
    const/4 v9, 0x0

    goto :goto_17

    .line 284
    .restart local v9       #_arg8:Z
    :cond_17
    const/4 v10, 0x0

    goto :goto_18

    .line 287
    .restart local v10       #_arg9:Z
    .restart local v11       #_result:Z
    :cond_18
    const/4 v0, 0x0

    goto :goto_19

    .line 292
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Z
    .end local v7           #_arg6:Z
    .end local v8           #_arg7:Z
    .end local v9           #_arg8:Z
    .end local v10           #_arg9:Z
    .end local v11           #_result:Z
    :sswitch_14
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->undo()Z

    move-result v11

    .line 294
    .restart local v11       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v11, :cond_19

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 295
    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    .line 300
    .end local v11           #_result:Z
    :sswitch_15
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->startInput()V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 307
    :sswitch_16
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->getStatus()I

    move-result v11

    .line 309
    .local v11, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 315
    .end local v11           #_result:I
    :sswitch_17
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->getDictionaryType()I

    move-result v11

    .line 317
    .restart local v11       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 323
    .end local v11           #_result:I
    :sswitch_18
    const-string v0, "jp.co.omronsoft.iwnnime.ml.IEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/IEngineService$Stub;->getErrorCode()I

    move-result v11

    .line 325
    .restart local v11       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
