.class public Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;
.super Landroid/app/Activity;
.source "PhraseEdit.java"


# instance fields
.field private mButtonAdd:Landroid/widget/Button;

.field private mButtonCancel:Landroid/widget/Button;

.field private mFieldPhrase:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mFieldPhrase:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->savePhrase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mButtonAdd:Landroid/widget/Button;

    return-object v0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mButtonAdd:Landroid/widget/Button;

    .line 72
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mButtonCancel:Landroid/widget/Button;

    .line 73
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mFieldPhrase:Landroid/widget/EditText;

    .line 74
    return-void
.end method

.method private savePhrase(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, phraseResult:Landroid/content/Intent;
    const-string v1, "PHRASE_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->setResult(ILandroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->finish()V

    .line 86
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "edit_phrase"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, categoryIndex:Ljava/lang/String;
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->findViews()V

    .line 41
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mFieldPhrase:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mButtonAdd:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 48
    :goto_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mButtonAdd:Landroid/widget/Button;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$1;

    invoke-direct {v3, p0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mButtonCancel:Landroid/widget/Button;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$2;

    invoke-direct {v3, p0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->setAddButtonControl()V

    .line 64
    return-void

    .line 45
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mButtonAdd:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setAddButtonControl()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;->mFieldPhrase:Landroid/widget/EditText;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$3;

    invoke-direct {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/PhraseEdit$3;-><init>(Ljp/co/omronsoft/iwnnime/ml/PhraseEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    return-void
.end method
