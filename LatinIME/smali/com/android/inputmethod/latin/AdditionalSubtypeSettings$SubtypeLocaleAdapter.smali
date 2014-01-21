.class final Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AdditionalSubtypeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubtypeLocaleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 92
    const v5, 0x1090008

    invoke-direct {p0, p1, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 93
    const v5, 0x1090009

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;->setDropDownViewResource(I)V

    .line 95
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v3

    .line 96
    .local v3, items:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;>;"
    invoke-static {p1}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodInfoOfThisIme(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 97
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 98
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 99
    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 105
    .local v4, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    const-string v5, "AsciiCapable"

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;->createItem(Landroid/content/Context;Ljava/lang/String;)Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v4           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleAdapter;->addAll(Ljava/util/Collection;)V

    .line 111
    return-void
.end method

.method public static createItem(Landroid/content/Context;Ljava/lang/String;)Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;
    .locals 2
    .parameter "context"
    .parameter "localeString"

    .prologue
    .line 115
    const-string v1, "zz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const v1, 0x7f0a00a8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, displayName:Ljava/lang/String;
    new-instance v1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;

    invoke-direct {v1, p1, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v0           #displayName:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;

    invoke-direct {v1, p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
