.class final Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;
.super Ljava/lang/Object;
.source "SubtypeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SubtypeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NeedsToDisplayLanguage"
.end annotation


# instance fields
.field private mEnabledSubtypeCount:I

.field private mIsSystemLanguageSameAsInputLanguage:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;->mEnabledSubtypeCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;->mIsSystemLanguageSameAsInputLanguage:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateEnabledSubtypeCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;->mEnabledSubtypeCount:I

    .line 73
    return-void
.end method

.method public updateIsSystemLanguageSameAsInputLanguage(Z)V
    .locals 0
    .parameter "isSame"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$NeedsToDisplayLanguage;->mIsSystemLanguageSameAsInputLanguage:Z

    .line 77
    return-void
.end method
