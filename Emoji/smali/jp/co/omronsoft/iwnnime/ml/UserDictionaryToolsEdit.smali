.class public abstract Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;
.super Landroid/app/Activity;
.source "UserDictionaryToolsEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_CONTROL_OVER_MAX_TEXT_SIZE:I = 0x1

.field private static final DIALOG_CONTROL_WORDS_DUPLICATE:I = 0x0

.field private static final MAX_TEXT_SIZE:I = 0x32

.field private static final RETURN_SAME_WORD:I = -0xb

.field private static final RETURN_USER_DICTIONARY_FULL:I = -0xc

.field private static final STATE_EDIT:I = 0x2

.field private static final STATE_INSERT:I = 0x1

.field private static final STATE_UNKNOWN:I

.field private static editing:Z


# instance fields
.field private mBeforeEditWnnWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

.field private mCancelButton:Landroid/widget/Button;

.field private mCandidateEditText:Landroid/widget/EditText;

.field protected mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

.field private mEntryButton:Landroid/widget/Button;

.field protected mIsNoStroke:Z

.field protected mListViewName:Ljava/lang/String;

.field protected mPackageName:Ljava/lang/String;

.field private mReadEditText:Landroid/widget/EditText;

.field private mRequestState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->editing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mIsNoStroke:Z

    .line 86
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCandidateEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEntryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addToDictionary(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "stroke"
    .parameter "candidate"

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OpenWnn"

    const-string v3, "addToDictionary() : start."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-direct {v3, p2, p1}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;->addWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)I

    move-result v0

    .line 369
    .local v0, ret:I
    if-gez v0, :cond_1

    .line 371
    const/16 v2, -0xb

    if-ne v0, v2, :cond_1

    .line 372
    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->showDialog(I)V

    .line 375
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OpenWnn"

    const-string v3, "addToDictionary() : end."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    if-ltz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private deleteDictionary(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V
    .locals 4
    .parameter "word"

    .prologue
    .line 385
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "deleteDictionary() : start."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    invoke-interface {v1, p1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;->deleteWord(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)Z

    move-result v0

    .line 388
    .local v0, deleted:Z
    if-nez v0, :cond_1

    .line 389
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600be

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 393
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OpenWnn"

    const-string v2, "deleteDictionary() : end."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_2
    return-void
.end method

.method private doRevertAction()V
    .locals 2

    .prologue
    .line 304
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "doRevertAction() : start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->screenTransition()V

    .line 307
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "doRevertAction() : end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    return-void
.end method

.method private doSaveAction()V
    .locals 5

    .prologue
    .line 265
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OpenWnn"

    const-string v3, "doSaveAction() : start."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mRequestState:I

    packed-switch v2, :pswitch_data_0

    .line 294
    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSaveAction: Invalid Add Status. Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mRequestState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    :goto_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OpenWnn"

    const-string v3, "doSaveAction() : end."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2
    return-void

    .line 270
    :pswitch_0
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mIsNoStroke:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->inputDataCheck(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCandidateEditText:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->inputDataCheck(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCandidateEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, candidate:Ljava/lang/String;
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mIsNoStroke:Z

    if-eqz v2, :cond_4

    move-object v1, v0

    .line 273
    .local v1, stroke:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->addToDictionary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->screenTransition()V

    goto :goto_0

    .line 272
    .end local v1           #stroke:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 281
    .end local v0           #candidate:Ljava/lang/String;
    :pswitch_1
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mIsNoStroke:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->inputDataCheck(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCandidateEditText:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->inputDataCheck(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mBeforeEditWnnWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-direct {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->deleteDictionary(Ljp/co/omronsoft/iwnnime/ml/WnnWord;)V

    .line 283
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCandidateEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .restart local v0       #candidate:Ljava/lang/String;
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mIsNoStroke:Z

    if-eqz v2, :cond_6

    move-object v1, v0

    .line 285
    .restart local v1       #stroke:Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v1, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->addToDictionary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 286
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->screenTransition()V

    goto :goto_0

    .line 284
    .end local v1           #stroke:Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 288
    .restart local v1       #stroke:Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mBeforeEditWnnWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iget-object v2, v2, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mBeforeEditWnnWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iget-object v3, v3, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->addToDictionary(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private inputDataCheck(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 403
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "inputDataCheck() : start."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    .line 407
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->showDialog(I)V

    .line 408
    const-string v0, "OpenWnn"

    const-string v1, "inputDataCheck() : over max string length."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    .line 413
    :cond_1
    :goto_0
    return v0

    .line 412
    :cond_2
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OpenWnn"

    const-string v2, "inputDataCheck() : end."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEditing()Z
    .locals 1

    .prologue
    .line 431
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->editing:Z

    return v0
.end method

.method private screenTransition()V
    .locals 2

    .prologue
    .line 420
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "screenTransition() : start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->finish()V

    .line 422
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "screenTransition() : end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onBackPressed() : start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->screenTransition()V

    .line 166
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "onBackPressed() : end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onClick() : start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEntryButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 254
    const-string v0, "OpenWnn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: Get Invalid ButtonID. ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->finish()V

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 245
    :pswitch_0
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->doSaveAction()V

    .line 258
    :goto_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "onClick() : end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :pswitch_1
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->doRevertAction()V

    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x7f080038
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OpenWnn"

    const-string v5, "onCreate() : start."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;->setDirPath(Ljava/lang/String;)V

    .line 100
    const v4, 0x7f030010

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->setContentView(I)V

    .line 103
    const v4, 0x7f080039

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEntryButton:Landroid/widget/Button;

    .line 104
    const v4, 0x7f080038

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCancelButton:Landroid/widget/Button;

    .line 105
    const v4, 0x7f080040

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;

    .line 106
    const v4, 0x7f080042

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCandidateEditText:Landroid/widget/EditText;

    .line 108
    iget-boolean v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mIsNoStroke:Z

    if-eqz v4, :cond_1

    .line 109
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 110
    const v4, 0x7f08003f

    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_1
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEntryButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iput v6, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mRequestState:I

    .line 119
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    .line 120
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCandidateEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    .line 123
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 124
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 127
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEntryButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    iput v7, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mRequestState:I

    .line 149
    :goto_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x7

    const v6, 0x7f030011

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 153
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->setAddButtonControl()V

    .line 155
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OpenWnn"

    const-string v5, "onCreate() : end."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    :goto_1
    return-void

    .line 129
    :cond_3
    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    const-string v4, "stroke"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, stroke:Ljava/lang/String;
    const-string v4, "candidate"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, candidate:Ljava/lang/String;
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mEntryButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCandidateEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/4 v4, 0x2

    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mRequestState:I

    .line 139
    new-instance v4, Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-direct {v4}, Ljp/co/omronsoft/iwnnime/ml/WnnWord;-><init>()V

    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mBeforeEditWnnWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 140
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mBeforeEditWnnWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iput-object v3, v4, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    .line 141
    iget-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mBeforeEditWnnWord:Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iput-object v1, v4, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    goto :goto_0

    .line 144
    .end local v1           #candidate:Ljava/lang/String;
    .end local v3           #stroke:Ljava/lang/String;
    :cond_4
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() : Invaled Get Intent. ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->finish()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f06009a

    const v3, 0x1080027

    const/4 v2, 0x1

    .line 318
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onCreateDialog() : start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 354
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "onCreateDialog() : end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 322
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$4;

    invoke-direct {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$4;-><init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$3;

    invoke-direct {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$3;-><init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 342
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$5;

    invoke-direct {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$5;-><init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->editing:Z

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 177
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->editing:Z

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 187
    return-void
.end method

.method public setAddButtonControl()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "setAddButtonControl() : start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mReadEditText:Landroid/widget/EditText;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$1;

    invoke-direct {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 212
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;->mCandidateEditText:Landroid/widget/EditText;

    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$2;

    invoke-direct {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "setAddButtonControl() : end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    return-void
.end method
