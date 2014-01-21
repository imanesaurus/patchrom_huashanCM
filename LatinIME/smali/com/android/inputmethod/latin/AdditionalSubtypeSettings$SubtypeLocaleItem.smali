.class final Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;
.super Landroid/util/Pair;
.source "AdditionalSubtypeSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/AdditionalSubtypeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubtypeLocaleItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "localeString"

    .prologue
    .line 73
    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeLocaleDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "localeString"
    .parameter "displayName"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;->compareTo(Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/inputmethod/latin/AdditionalSubtypeSettings$SubtypeLocaleItem;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
