.class public abstract Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSessionFactory;
.super Ljava/lang/Object;
.source "AndroidSpellCheckerSessionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)Landroid/service/textservice/SpellCheckerService$Session;
    .locals 1
    .parameter "service"

    .prologue
    .line 23
    new-instance v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSession;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerSession;-><init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)V

    return-object v0
.end method
