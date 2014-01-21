.class Lcom/android/inputmethod/latin/Settings$6;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Settings;->showKeypressSoundVolumeSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Settings;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/inputmethod/latin/Settings$6;->this$0:Lcom/android/inputmethod/latin/Settings;

    iput-object p2, p0, Lcom/android/inputmethod/latin/Settings$6;->val$sp:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/inputmethod/latin/Settings$6;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$6;->this$0:Lcom/android/inputmethod/latin/Settings;

    #getter for: Lcom/android/inputmethod/latin/Settings;->mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/inputmethod/latin/Settings;->access$400(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float v0, v1, v2

    .line 434
    .local v0, volume:F
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$6;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_keypress_sound_volume"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 435
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$6;->this$0:Lcom/android/inputmethod/latin/Settings;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings$6;->val$sp:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings$6;->val$res:Landroid/content/res/Resources;

    #calls: Lcom/android/inputmethod/latin/Settings;->updateKeypressSoundVolumeSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    invoke-static {v1, v2, v3}, Lcom/android/inputmethod/latin/Settings;->access$500(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 436
    return-void
.end method
