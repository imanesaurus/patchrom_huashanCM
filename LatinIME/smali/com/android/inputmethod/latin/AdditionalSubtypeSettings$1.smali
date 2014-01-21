.class Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;
.super Ljava/lang/Object;
.source "AdditionalSubtypeSettings.java"

# interfaces
.implements Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;
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
    .line 436
    iput-object p1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyboardLayoutSetAdapter()Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #getter for: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mKeyboardLayoutSetAdapter:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;
    invoke-static {v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$800(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSubtypeLocaleAdapter()Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #getter for: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeLocaleAdapter:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;
    invoke-static {v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$700(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onAddPressed(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)V
    .locals 4
    .parameter "subtypePref"

    .prologue
    .line 466
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mIsAddingNewSubtype:Z
    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$002(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Z)Z

    .line 467
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->getSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 468
    .local v1, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #calls: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->findDuplicatedSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$200(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    if-nez v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #calls: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getSubtypes()[Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$100(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/ImfUtils;->setAdditionalInputMethodSubtypes(Landroid/content/Context;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 470
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->getKey()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypePreferenceKeyForSubtypeEnabler:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$402(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #calls: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->createDialog(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)Landroid/app/AlertDialog;
    invoke-static {v3, p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$600(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)Landroid/app/AlertDialog;

    move-result-object v3

    #setter for: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeEnablerNotificationDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$502(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 472
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #getter for: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeEnablerNotificationDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$500(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 480
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 478
    .local v0, group:Landroid/preference/PreferenceGroup;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 479
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #calls: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->showSubtypeAlreadyExistsToast(Landroid/view/inputmethod/InputMethodSubtype;)V
    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$300(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_0
.end method

.method public onRemovePressed(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)V
    .locals 3
    .parameter "subtypePref"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mIsAddingNewSubtype:Z
    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$002(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Z)Z

    .line 440
    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 441
    .local v0, group:Landroid/preference/PreferenceGroup;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #calls: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getSubtypes()[Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$100(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/ImfUtils;->setAdditionalInputMethodSubtypes(Landroid/content/Context;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 443
    return-void
.end method

.method public onSavePressed(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)V
    .locals 4
    .parameter "subtypePref"

    .prologue
    .line 447
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->getSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 448
    .local v1, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->hasBeenModified()Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #calls: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->findDuplicatedSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$200(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    if-nez v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #calls: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getSubtypes()[Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$100(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/ImfUtils;->setAdditionalInputMethodSubtypes(Landroid/content/Context;[Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_0

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 458
    .local v0, group:Landroid/preference/PreferenceGroup;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->revert()V

    .line 460
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 461
    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;->this$0:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;

    #calls: Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->showSubtypeAlreadyExistsToast(Landroid/view/inputmethod/InputMethodSubtype;)V
    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->access$300(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_0
.end method
