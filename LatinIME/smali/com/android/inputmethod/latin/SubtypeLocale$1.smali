.class final Lcom/android/inputmethod/latin/SubtypeLocale$1;
.super Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;
.source "SubtypeLocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeDisplayName(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/res/Resources;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$nameResId:I

.field final synthetic val$replacementString:Ljava/lang/String;

.field final synthetic val$subtype:Landroid/view/inputmethod/InputMethodSubtype;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iput p1, p0, Lcom/android/inputmethod/latin/SubtypeLocale$1;->val$nameResId:I

    iput-object p2, p0, Lcom/android/inputmethod/latin/SubtypeLocale$1;->val$replacementString:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/inputmethod/latin/SubtypeLocale$1;->val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SubtypeLocale$1;->job(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected job(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .parameter "res"

    .prologue
    .line 177
    :try_start_0
    iget v1, p0, Lcom/android/inputmethod/latin/SubtypeLocale$1;->val$nameResId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeLocale$1;->val$replacementString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/inputmethod/latin/SubtypeLocale;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown subtype: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeLocale$1;->val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeLocale$1;->val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeLocale$1;->val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/inputmethod/latin/Utils;->getStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v1, ""

    goto :goto_0
.end method
