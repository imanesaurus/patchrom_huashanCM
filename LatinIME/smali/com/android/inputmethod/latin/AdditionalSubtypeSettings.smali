.class public final Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;
.super Landroid/preference/PreferenceFragment;
.source "AdditionalSubtypeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;,
        Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;,
        Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;,
        Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;,
        Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;,
        Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;
    }
.end annotation


# instance fields
.field private mIsAddingNewSubtype:Z

.field private mKeyboardLayoutSetAdapter:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSubtypeEnablerNotificationDialog:Landroid/app/AlertDialog;

.field private mSubtypeLocaleAdapter:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;

.field private mSubtypePreferenceKeyForSubtypeEnabler:Ljava/lang/String;

.field private final mSubtypeProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 436
    new-instance v0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$1;-><init>(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    .line 380
    return-void
.end method

.method static synthetic access$002(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mIsAddingNewSubtype:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getSubtypes()[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->findDuplicatedSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->showSubtypeAlreadyExistsToast(Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypePreferenceKeyForSubtypeEnabler:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeEnablerNotificationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeEnablerNotificationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->createDialog(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeLocaleAdapter:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mKeyboardLayoutSetAdapter:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;

    return-object v0
.end method

.method private createDialog(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "subtypePref"

    .prologue
    .line 510
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 511
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00b6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00b7

    new-instance v3, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$2;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$2;-><init>(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 529
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private findDuplicatedSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .parameter "subtype"

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, localeString:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, keyboardLayoutSetName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/inputmethod/latin/ImfUtils;->findSubtypeByLocaleAndKeyboardLayoutSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    return-object v2
.end method

.method private getSubtypes()[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 7

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 546
    .local v1, group:Landroid/preference/PreferenceGroup;
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 547
    .local v5, subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 548
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 549
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 550
    .local v3, pref:Landroid/preference/Preference;
    instance-of v6, v3, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;

    if-eqz v6, :cond_0

    move-object v4, v3

    .line 551
    check-cast v4, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;

    .line 553
    .local v4, subtypePref:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->isIncomplete()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 548
    .end local v4           #subtypePref:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    .restart local v4       #subtypePref:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    :cond_1
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->getSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 557
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v4           #subtypePref:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/inputmethod/InputMethodSubtype;

    return-object v6
.end method

.method private setPrefSubtypes(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "prefSubtypes"
    .parameter "context"

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 534
    .local v1, group:Landroid/preference/PreferenceGroup;
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 535
    invoke-static {p1}, Lcom/android/inputmethod/latin/AdditionalSubtype;->createAdditionalSubtypesArray(Ljava/lang/String;)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 537
    .local v6, subtypesArray:[Landroid/view/inputmethod/InputMethodSubtype;
    move-object v0, v6

    .local v0, arr$:[Landroid/view/inputmethod/InputMethodSubtype;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 538
    .local v5, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v4, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;

    iget-object v7, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    invoke-direct {v4, p2, v5, v7}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;)V

    .line 540
    .local v4, pref:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    .end local v4           #pref:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    .end local v5           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    return-void
.end method

.method private showSubtypeAlreadyExistsToast(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 7
    .parameter "subtype"

    .prologue
    const/4 v6, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 495
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 496
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0a00b9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeDisplayName(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, message:Ljava/lang/String;
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 499
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 395
    .local v0, context:Landroid/content/Context;
    new-instance v3, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;

    invoke-direct {v3, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeLocaleAdapter:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;

    .line 396
    new-instance v3, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;

    invoke-direct {v3, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mKeyboardLayoutSetAdapter:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;

    .line 398
    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/SettingsValues;->getPrefAdditionalSubtypes(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, prefSubtypes:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->setPrefSubtypes(Ljava/lang/String;Landroid/content/Context;)V

    .line 402
    if-eqz p1, :cond_2

    const-string v3, "is_adding_new_subtype"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mIsAddingNewSubtype:Z

    .line 404
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mIsAddingNewSubtype:Z

    if-eqz v3, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    invoke-static {v0, v4}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->newIncompleteSubtypePreference(Landroid/content/Context;Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;)Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 409
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 411
    if-eqz p1, :cond_1

    const-string v3, "is_subtype_enabler_notification_dialog_open"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    const-string v3, "subtype_for_subtype_enabler"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypePreferenceKeyForSubtypeEnabler:Ljava/lang/String;

    .line 415
    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypePreferenceKeyForSubtypeEnabler:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;

    .line 417
    .local v2, subtypePref:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->createDialog(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeEnablerNotificationDialog:Landroid/app/AlertDialog;

    .line 418
    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeEnablerNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 420
    .end local v2           #subtypePref:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    :cond_1
    return-void

    .line 402
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 386
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->addPreferencesFromResource(I)V

    .line 387
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->setHasOptionsMenu(Z)V

    .line 389
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 390
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 581
    const v1, 0x7f0a00b0

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 582
    .local v0, addSubtypeMenu:Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 583
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 587
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 588
    .local v0, itemId:I
    if-ne v0, v2, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->newIncompleteSubtypePreference(Landroid/content/Context;Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;)Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;

    move-result-object v1

    .line 591
    .local v1, newSubtype:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 592
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->show()V

    .line 593
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mIsAddingNewSubtype:Z

    .line 596
    .end local v1           #newSubtype:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 562
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 563
    iget-object v4, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/SettingsValues;->getPrefAdditionalSubtypes(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, oldSubtypes:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getSubtypes()[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 565
    .local v3, subtypes:[Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v3}, Lcom/android/inputmethod/latin/AdditionalSubtype;->createPrefSubtypes([Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, prefSubtypes:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 577
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 572
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v4, "custom_input_styles"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 576
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/inputmethod/latin/ImfUtils;->setAdditionalInputMethodSubtypes(Landroid/content/Context;[Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_0

    .line 574
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    throw v4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    const/4 v1, 0x1

    .line 424
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 425
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mIsAddingNewSubtype:Z

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "is_adding_new_subtype"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeEnablerNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypeEnablerNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    const-string v0, "is_subtype_enabler_notification_dialog_open"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 431
    const-string v0, "subtype_for_subtype_enabler"

    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;->mSubtypePreferenceKeyForSubtypeEnabler:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_1
    return-void
.end method
