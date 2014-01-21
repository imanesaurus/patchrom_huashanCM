.class final Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "AdditionalSubtypeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mKeyboardLayoutSetSelectedPos:I

.field mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field mSubtypeLocaleSelectedPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mSubtypeLocaleSelectedPos:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mKeyboardLayoutSetSelectedPos:I

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 360
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 344
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 345
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 349
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 350
    iget v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mSubtypeLocaleSelectedPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mKeyboardLayoutSetSelectedPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypePreference$SavedState;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 353
    return-void
.end method
