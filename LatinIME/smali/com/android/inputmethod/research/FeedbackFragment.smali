.class public Lcom/android/inputmethod/research/FeedbackFragment;
.super Landroid/app/Fragment;
.source "FeedbackFragment.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/research/FeedbackFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/inputmethod/research/FeedbackFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/research/FeedbackFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/inputmethod/research/FeedbackFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 40
    const v3, 0x7f040008

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, view:Landroid/view/View;
    const v3, 0x7f080046

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/inputmethod/research/FeedbackFragment;->mEditText:Landroid/widget/EditText;

    .line 43
    const v3, 0x7f080047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/inputmethod/research/FeedbackFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 45
    const v3, 0x7f080049

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 47
    .local v1, sendButton:Landroid/widget/Button;
    new-instance v3, Lcom/android/inputmethod/research/FeedbackFragment$1;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/research/FeedbackFragment$1;-><init>(Lcom/android/inputmethod/research/FeedbackFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v3, 0x7f080048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v3, Lcom/android/inputmethod/research/FeedbackFragment$2;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/research/FeedbackFragment$2;-><init>(Lcom/android/inputmethod/research/FeedbackFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-object v2
.end method
