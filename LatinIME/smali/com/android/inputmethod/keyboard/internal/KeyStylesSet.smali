.class public final Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;
.super Ljava/lang/Object;
.source "KeyStylesSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;,
        Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$EmptyKeyStyle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEmptyKeyStyle:Lcom/android/inputmethod/keyboard/internal/KeyStyle;

.field private final mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/keyboard/internal/KeyStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)V
    .locals 3
    .parameter "textsSet"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mStyles:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

    .line 44
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$EmptyKeyStyle;

    invoke-direct {v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$EmptyKeyStyle;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mEmptyKeyStyle:Lcom/android/inputmethod/keyboard/internal/KeyStyle;

    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mStyles:Ljava/util/HashMap;

    const-string v1, "<empty>"

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mEmptyKeyStyle:Lcom/android/inputmethod/keyboard/internal/KeyStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public getKeyStyle(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/inputmethod/keyboard/internal/KeyStyle;
    .locals 4
    .parameter "keyAttr"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/inputmethod/latin/XmlParseUtils$ParseException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xe

    .line 207
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mEmptyKeyStyle:Lcom/android/inputmethod/keyboard/internal/KeyStyle;

    .line 214
    :goto_0
    return-object v1

    .line 210
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, styleName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    new-instance v1, Lcom/android/inputmethod/latin/XmlParseUtils$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown key style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/inputmethod/latin/XmlParseUtils$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v1

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/internal/KeyStyle;

    goto :goto_0
.end method

.method public parseKeyStyleAttributes(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "keyStyleAttr"
    .parameter "keyAttrs"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 182
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, styleName:Ljava/lang/String;
    const-string v0, "<empty>"

    .line 193
    .local v0, parentStyleName:Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    new-instance v3, Lcom/android/inputmethod/latin/XmlParseUtils$ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parentStyle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Lcom/android/inputmethod/latin/XmlParseUtils$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v3

    .line 200
    :cond_0
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mStyles:Ljava/util/HashMap;

    invoke-direct {v1, v0, v3, v4}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;-><init>(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;Ljava/util/HashMap;)V

    .line 201
    .local v1, style:Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;
    invoke-virtual {v1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet$DeclaredKeyStyle;->readKeyAttributes(Landroid/content/res/TypedArray;)V

    .line 202
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method
