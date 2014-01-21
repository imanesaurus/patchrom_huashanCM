.class public final Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UsabilityStudyLogUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$OnDemandInitializationHolder;
    }
.end annotation


# static fields
.field private static final USABILITY_TAG:Ljava/lang/String;


# instance fields
.field private final mDate:Ljava/util/Date;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDirectory:Ljava/io/File;

.field private mFile:Ljava/io/File;

.field private final mLoggingHandler:Landroid/os/Handler;

.field private mWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const-class v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->USABILITY_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDate:Ljava/util/Date;

    .line 196
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-HHmmss.SSSZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 198
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsabilityStudyLogUtils logging task"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 200
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 201
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mLoggingHandler:Landroid/os/Handler;

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/Utils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->createLogFileIfNotExist()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->USABILITY_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method private createLogFileIfNotExist()V
    .locals 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDirectory:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDirectory:Ljava/io/File;

    const-string v2, "log.txt"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getPrintWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->USABILITY_TAG:Ljava/lang/String;

    const-string v2, "Can\'t create log file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$OnDemandInitializationHolder;->sInstance:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    return-object v0
.end method

.method private getPrintWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/PrintWriter;
    .locals 3
    .parameter "dir"
    .parameter "filename"
    .parameter "renew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    .line 382
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    if-eqz p3, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 387
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 2
    .parameter "log"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mLoggingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;-><init>(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method
