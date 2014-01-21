.class final Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;
.super Ljava/lang/Object;
.source "AndroidWordLevelSpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuggestionsParams"
.end annotation


# instance fields
.field public final mFlags:I

.field public final mSuggestions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;I)V
    .locals 0
    .parameter "suggestions"
    .parameter "flags"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;->mSuggestions:[Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidWordLevelSpellCheckerSession$SuggestionsParams;->mFlags:I

    .line 59
    return-void
.end method
