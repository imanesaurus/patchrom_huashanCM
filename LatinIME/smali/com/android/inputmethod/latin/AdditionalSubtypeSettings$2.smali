.class Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$2;
.super Ljava/lang/Object;
.source "AdditionalSubtypeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->createDialog(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$2;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$2;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodIdOfThisIme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x1420

    invoke-static {v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getInputLanguageSelectionIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 525
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$2;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->startActivity(Landroid/content/Intent;)V

    .line 526
    return-void
.end method
