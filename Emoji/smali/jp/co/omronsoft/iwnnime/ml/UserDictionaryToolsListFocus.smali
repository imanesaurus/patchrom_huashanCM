.class public Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
.super Landroid/widget/TextView;
.source "UserDictionaryToolsListFocus.java"


# instance fields
.field private mPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->mPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    .line 26
    return-void
.end method


# virtual methods
.method public getPairView()Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->mPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    return-object v0
.end method

.method public setPairView(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;)V
    .locals 0
    .parameter "pairView"

    .prologue
    .line 43
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->mPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    .line 44
    return-void
.end method
