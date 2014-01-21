.class Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;
.super Ljava/lang/Object;
.source "IWnnImeJaJp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineState"
.end annotation


# static fields
.field public static final CONVERT_TYPE_EISU_KANA:I = 0x2

.field public static final CONVERT_TYPE_NONE:I = 0x0

.field public static final CONVERT_TYPE_RENBUN:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final KEYBOARD_12KEY:I = 0x2

.field public static final KEYBOARD_QWERTY:I = 0x1

.field public static final KEYBOARD_UNDEF:I = 0x0

.field public static final LANGUAGE_EN:I = 0x1

.field public static final LANGUAGE_JP:I = 0x0

.field public static final PREFERENCE_DICTIONARY_EMAIL_ADDRESS_URI:I = 0x3

.field public static final PREFERENCE_DICTIONARY_NONE:I = 0x0

.field public static final PREFERENCE_DICTIONARY_PERSON_NAME:I = 0x1

.field public static final PREFERENCE_DICTIONARY_POSTAL_ADDRESS:I = 0x2

.field public static final TEMPORARY_DICTIONARY_MODE_NONE:I = 0x0

.field public static final TEMPORARY_DICTIONARY_MODE_SYMBOL:I = 0x1

.field public static final TEMPORARY_DICTIONARY_MODE_USER:I = 0x2


# instance fields
.field public convertType:I

.field public keyboard:I

.field public language:I

.field public preferenceDictionary:I

.field public temporaryMode:I

.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;


# direct methods
.method private constructor <init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 378
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->this$0:Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    .line 431
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    .line 434
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    .line 437
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->preferenceDictionary:I

    .line 440
    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->keyboard:I

    return-void
.end method

.method synthetic constructor <init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;-><init>(Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp;)V

    return-void
.end method


# virtual methods
.method public isConvertState()Z
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEisuKana()Z
    .locals 2

    .prologue
    .line 457
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnglish()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 484
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->language:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRenbun()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 448
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->convertType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolList()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 475
    iget v1, p0, Ljp/co/omronsoft/iwnnime/ml/jajp/IWnnImeJaJp$EngineState;->temporaryMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
