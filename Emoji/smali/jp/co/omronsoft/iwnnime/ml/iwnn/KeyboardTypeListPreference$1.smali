.class Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;
.super Ljava/lang/Object;
.source "KeyboardTypeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$entryValues:[Ljava/lang/CharSequence;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;[Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;

    iput-object p2, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->val$entryValues:[Ljava/lang/CharSequence;

    iput-object p3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->val$entryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;

    invoke-virtual {v3, v2}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->val$key:Ljava/lang/String;

    const-string v4, "input_mode_type_"

    const-string v5, "last_keyboard_type_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, lastKeyboardTypeKey:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    :cond_0
    :goto_0
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->this$0:Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 89
    .local v0, handler:Landroid/os/Handler;
    new-instance v3, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1$1;

    invoke-direct {v3, p0, p1}, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;Landroid/content/DialogInterface;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    return-void

    .line 75
    .end local v0           #handler:Landroid/os/Handler;
    :cond_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/iwnn/KeyboardTypeListPreference$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
