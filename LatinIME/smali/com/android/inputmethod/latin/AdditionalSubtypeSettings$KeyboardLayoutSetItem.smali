.class final Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;
.super Landroid/util/Pair;
.source "AdditionalSubtypeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyboardLayoutSetItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .parameter "subtype"

    .prologue
    .line 126
    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetDisplayName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
