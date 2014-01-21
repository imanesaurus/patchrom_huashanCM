.class Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$OnDemandInitializationHolder;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnDemandInitializationHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;-><init>(Lcom/android/inputmethod/latin/Utils$1;)V

    sput-object v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$OnDemandInitializationHolder;->sInstance:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
