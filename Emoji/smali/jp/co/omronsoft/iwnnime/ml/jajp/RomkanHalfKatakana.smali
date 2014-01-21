.class public Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana;
.super Ljava/lang/Object;
.source "RomkanHalfKatakana.java"

# interfaces
.implements Ljp/co/omronsoft/iwnnime/ml/LetterConverter;


# static fields
.field private static final mRomkanTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana$1;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana$1;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana;->mRomkanTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method


# virtual methods
.method public convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 140
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanHalfKatakana;->mRomkanTable:Ljava/util/HashMap;

    invoke-static {p1, v0}, Ljp/co/omronsoft/iwnnime/ml/jajp/RomkanFullKatakana;->convert(Ljp/co/omronsoft/iwnnime/ml/ComposingText;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 144
    return-void
.end method
