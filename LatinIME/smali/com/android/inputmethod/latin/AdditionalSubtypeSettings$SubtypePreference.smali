.class final Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
.super Landroid/preference/DialogPreference;
.source "AdditionalSubtypeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubtypePreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;
    }
.end annotation


# instance fields
.field private mKeyboardLayoutSetSpinner:Landroid/widget/Spinner;

.field private mPreviousSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private final mProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

.field private mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mSubtypeLocaleSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;)V
    .locals 1
    .parameter "context"
    .parameter "subtype"
    .parameter "proxy"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setDialogLayoutResource(I)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setPersistent(Z)V

    .line 181
    iput-object p3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 183
    return-void
.end method

.method private static getSpinnerPosition(Landroid/widget/Spinner;)I
    .locals 1
    .parameter "spinner"

    .prologue
    .line 300
    if-nez p0, :cond_0

    const/4 v0, -0x1

    .line 301
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public static newIncompleteSubtypePreference(Landroid/content/Context;Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;)Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
    .locals 2
    .parameter "context"
    .parameter "proxy"

    .prologue
    .line 173
    new-instance v0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;)V

    return-object v0
.end method

.method private static setSpinnerPosition(Landroid/widget/Spinner;I)V
    .locals 0
    .parameter "spinner"
    .parameter "position"

    .prologue
    .line 305
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private static setSpinnerPosition(Landroid/widget/Spinner;Ljava/lang/Object;)V
    .locals 5
    .parameter "spinner"
    .parameter "itemToSelect"

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 253
    .local v0, adapter:Landroid/widget/SpinnerAdapter;
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    .line 254
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 255
    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 256
    .local v3, item:Ljava/lang/Object;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 261
    .end local v3           #item:Ljava/lang/Object;
    :cond_0
    return-void

    .line 254
    .restart local v3       #item:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0
.end method

.method public hasBeenModified()Z
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mPreviousSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isIncomplete()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->isIncomplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    invoke-interface {v0, p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;->onRemovePressed(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)V

    .line 268
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 272
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 273
    packed-switch p2, :pswitch_data_0

    .line 297
    :goto_0
    :pswitch_0
    return-void

    .line 275
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->isIncomplete()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 276
    .local v0, isEditing:Z
    :goto_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtypeLocaleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;

    .line 278
    .local v2, locale:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;
    iget-object v4, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mKeyboardLayoutSetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;

    .line 280
    .local v1, layout:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;
    iget-object v4, v2, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "AsciiCapable"

    invoke-static {v4, v5, v6}, Lcom/android/inputmethod/latin/AdditionalSubtype;->createAdditionalSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 282
    .local v3, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->notifyChanged()V

    .line 284
    if-eqz v0, :cond_1

    .line 285
    iget-object v4, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    invoke-interface {v4, p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;->onSavePressed(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)V

    goto :goto_0

    .line 275
    .end local v0           #isEditing:Z
    .end local v1           #layout:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;
    .end local v2           #locale:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;
    .end local v3           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 287
    .restart local v0       #isEditing:Z
    .restart local v1       #layout:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;
    .restart local v2       #locale:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;
    .restart local v3       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    invoke-interface {v4, p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;->onAddPressed(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)V

    goto :goto_0

    .line 294
    .end local v0           #isEditing:Z
    .end local v1           #layout:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;
    .end local v2           #locale:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;
    .end local v3           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_2
    iget-object v4, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    invoke-interface {v4, p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;->onRemovePressed(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, v:Landroid/view/View;
    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtypeLocaleSpinner:Landroid/widget/Spinner;

    .line 226
    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtypeLocaleSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    invoke-interface {v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;->getSubtypeLocaleAdapter()Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 227
    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mKeyboardLayoutSetSpinner:Landroid/widget/Spinner;

    .line 228
    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mKeyboardLayoutSetSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mProxy:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;

    invoke-interface {v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeDialogProxy;->getKeyboardLayoutSetAdapter()Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 229
    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    const/high16 v4, 0x104

    .line 234
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->isIncomplete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const v3, 0x7f0a00b1

    invoke-virtual {p1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    :goto_0
    return-void

    .line 240
    :cond_0
    const v3, 0x7f0a00b3

    invoke-virtual {p1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00b2

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;->createItem(Landroid/content/Context;Ljava/lang/String;)Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;

    move-result-object v2

    .line 245
    .local v2, localeItem:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;
    new-instance v1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;

    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {v1, v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;-><init>(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 246
    .local v1, layoutItem:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;
    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtypeLocaleSpinner:Landroid/widget/Spinner;

    invoke-static {v3, v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setSpinnerPosition(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 247
    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mKeyboardLayoutSetSpinner:Landroid/widget/Spinner;

    invoke-static {v3, v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setSpinnerPosition(Landroid/widget/Spinner;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 326
    instance-of v1, p1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;

    if-nez v1, :cond_0

    .line 327
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 336
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 331
    check-cast v0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;

    .line 332
    .local v0, myState:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 333
    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtypeLocaleSpinner:Landroid/widget/Spinner;

    iget v2, v0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mSubtypeLocaleSelectedPos:I

    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setSpinnerPosition(Landroid/widget/Spinner;I)V

    .line 334
    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mKeyboardLayoutSetSpinner:Landroid/widget/Spinner;

    iget v2, v0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mKeyboardLayoutSetSelectedPos:I

    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setSpinnerPosition(Landroid/widget/Spinner;I)V

    .line 335
    iget-object v1, v0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 311
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 312
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 313
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 321
    :goto_0
    return-object v1

    .line 317
    :cond_1
    new-instance v1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 318
    .local v1, myState:Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;
    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v3, v1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 319
    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtypeLocaleSpinner:Landroid/widget/Spinner;

    invoke-static {v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->getSpinnerPosition(Landroid/widget/Spinner;)I

    move-result v3

    iput v3, v1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mSubtypeLocaleSelectedPos:I

    .line 320
    iget-object v3, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mKeyboardLayoutSetSpinner:Landroid/widget/Spinner;

    invoke-static {v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->getSpinnerPosition(Landroid/widget/Spinner;)I

    move-result v3

    iput v3, v1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mKeyboardLayoutSetSelectedPos:I

    goto :goto_0
.end method

.method public revert()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mPreviousSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 216
    return-void
.end method

.method public setSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .parameter "subtype"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mPreviousSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 199
    iput-object p1, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 200
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->isIncomplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    const v1, 0x7f0a00b0

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setDialogTitle(I)V

    .line 203
    const-string v1, "subtype_pref_new"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setKey(Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeDisplayName(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, displayName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subtype_pref_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->setKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;->showDialog(Landroid/os/Bundle;)V

    .line 187
    return-void
.end method
