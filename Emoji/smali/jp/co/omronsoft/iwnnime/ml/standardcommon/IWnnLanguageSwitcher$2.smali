.class Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;
.super Landroid/os/AsyncTask;
.source "IWnnLanguageSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->switchToLastInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

.field final synthetic val$manager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;->this$0:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 889
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 892
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;->val$token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    .line 893
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 889
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 905
    return-void
.end method
