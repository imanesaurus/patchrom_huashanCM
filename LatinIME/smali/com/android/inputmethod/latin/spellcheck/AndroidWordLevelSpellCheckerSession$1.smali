.class Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$1;
.super Landroid/database/ContentObserver;
.source "AndroidWordLevelSpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;-><init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$1;->this$0:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "self"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$1;->this$0:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;

    iget-object v0, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsCache;->clearCache()V

    .line 104
    return-void
.end method
