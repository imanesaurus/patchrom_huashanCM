.class Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1$1;
.super Ljava/lang/Object;
.source "KeyboardTypeListPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1$1;->this$1:Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;

    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 92
    return-void
.end method
