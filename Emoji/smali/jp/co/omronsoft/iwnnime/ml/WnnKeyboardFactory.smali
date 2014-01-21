.class public Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;
.super Ljava/lang/Object;
.source "WnnKeyboardFactory.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

.field private mParent:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

.field private mResourceId:I


# direct methods
.method public constructor <init>(Ljp/co/omronsoft/iwnnime/ml/OpenWnn;I)V
    .locals 1
    .parameter "parent"
    .parameter "resourceId"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->mParent:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    .line 30
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 39
    iput p2, p0, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->mResourceId:I

    .line 40
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->mParent:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    .line 41
    return-void
.end method


# virtual methods
.method public getKeyboard()Ljp/co/omronsoft/iwnnime/ml/Keyboard;
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->mParent:Ljp/co/omronsoft/iwnnime/ml/OpenWnn;

    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->mResourceId:I

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    .line 56
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WnnKeyboardFactory;->mKeyboard:Ljp/co/omronsoft/iwnnime/ml/Keyboard;

    return-object v0
.end method
