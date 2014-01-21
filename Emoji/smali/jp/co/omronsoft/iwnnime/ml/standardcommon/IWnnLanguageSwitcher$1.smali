.class Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;
.super Landroid/os/AsyncTask;
.source "IWnnLanguageSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;->switchToTargetIME(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
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

.field final synthetic val$imiId:Ljava/lang/String;

.field final synthetic val$manager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher;

    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->val$token:Landroid/os/IBinder;

    iput-object p4, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->val$imiId:Ljava/lang/String;

    iput-object p5, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 863
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 866
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->val$token:Landroid/os/IBinder;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->val$imiId:Ljava/lang/String;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 867
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 863
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/standardcommon/IWnnLanguageSwitcher$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 879
    return-void
.end method
