.class Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;
.super Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;
.source "KeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardAttributes(Lorg/xmlpull/v1/XmlPullParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

.field final synthetic val$params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder.1;"
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;->this$0:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    iput-object p2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;->val$params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder.1;"
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;->job(Landroid/content/res/Resources;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected job(Landroid/content/res/Resources;)Ljava/lang/Void;
    .locals 2
    .parameter "res"

    .prologue
    .line 306
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder.1;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;->val$params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;->this$0:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    iget-object v1, v1, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->loadStringResources(Landroid/content/Context;)V

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method
