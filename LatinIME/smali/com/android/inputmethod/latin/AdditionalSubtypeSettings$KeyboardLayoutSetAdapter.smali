.class final Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AdditionalSubtypeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyboardLayoutSetAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 138
    const v5, 0x1090008

    invoke-direct {p0, p1, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 139
    const v5, 0x1090009

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;->setDropDownViewResource(I)V

    .line 142
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeLocale;->getPredefinedKeyboardLayoutSet()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 144
    .local v2, layout:Ljava/lang/String;
    const-string v5, "zz"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Lcom/android/inputmethod/latin/AdditionalSubtype;->createAdditionalSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 146
    .local v4, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v5, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;

    invoke-direct {v5, v4}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetItem;-><init>(Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$KeyboardLayoutSetAdapter;->add(Ljava/lang/Object;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v2           #layout:Ljava/lang/String;
    .end local v4           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    return-void
.end method
