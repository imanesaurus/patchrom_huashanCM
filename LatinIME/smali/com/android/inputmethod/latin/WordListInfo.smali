.class public final Lcom/android/inputmethod/latin/WordListInfo;
.super Ljava/lang/Object;
.source "WordListInfo.java"


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "locale"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/inputmethod/latin/WordListInfo;->mId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/inputmethod/latin/WordListInfo;->mLocale:Ljava/lang/String;

    .line 28
    return-void
.end method
