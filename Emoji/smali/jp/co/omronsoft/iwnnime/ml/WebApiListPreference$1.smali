.class Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference$1;
.super Ljava/lang/Object;
.source "WebApiListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->onDialogClosed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;

.field final synthetic val$selectedValue:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;

    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference$1;->val$selectedValue:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 115
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference$1;->val$selectedValue:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/WebApiListPreference;->setValues(Ljava/util/Set;)V

    .line 116
    return-void
.end method
