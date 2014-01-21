.class public Ljp/co/omronsoft/iwnnime/ml/BaseInputView;
.super Landroid/widget/LinearLayout;
.source "BaseInputView.java"


# instance fields
.field public mOptionsDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 26
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 78
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 42
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 45
    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 53
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 59
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 60
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 61
    .local v0, dialogLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 62
    const/16 v2, 0x3eb

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 63
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 67
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/BaseInputView;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 68
    return-void
.end method
