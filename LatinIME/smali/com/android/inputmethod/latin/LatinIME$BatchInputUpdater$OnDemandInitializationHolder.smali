.class final Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater$OnDemandInitializationHolder;
.super Ljava/lang/Object;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnDemandInitializationHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1517
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;-><init>(Lcom/android/inputmethod/latin/LatinIME$1;)V

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater$OnDemandInitializationHolder;->sInstance:Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
