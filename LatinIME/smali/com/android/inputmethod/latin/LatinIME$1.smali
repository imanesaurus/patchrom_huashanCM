.class Lcom/android/inputmethod/latin/LatinIME$1;
.super Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale",
        "<",
        "Lcom/android/inputmethod/latin/SettingsValues;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;

.field final synthetic val$inputAttributes:Lcom/android/inputmethod/latin/InputAttributes;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/InputAttributes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinIME$1;->val$inputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;-><init>()V

    return-void
.end method


# virtual methods
.method protected job(Landroid/content/res/Resources;)Lcom/android/inputmethod/latin/SettingsValues;
    .locals 4
    .parameter "res"

    .prologue
    .line 467
    new-instance v0, Lcom/android/inputmethod/latin/SettingsValues;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$600(Lcom/android/inputmethod/latin/LatinIME;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$1;->val$inputAttributes:Lcom/android/inputmethod/latin/InputAttributes;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/SettingsValues;-><init>(Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/InputAttributes;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic job(Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME$1;->job(Landroid/content/res/Resources;)Lcom/android/inputmethod/latin/SettingsValues;

    move-result-object v0

    return-object v0
.end method
