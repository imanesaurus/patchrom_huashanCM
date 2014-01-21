.class public Lcom/android/inputmethod/keyboard/Key$Spacer;
.super Lcom/android/inputmethod/keyboard/Key;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spacer"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter "res"
    .parameter "params"
    .parameter "row"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 808
    return-void
.end method

.method protected constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;IIII)V
    .locals 12
    .parameter "params"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 815
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, -0xc

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/android/inputmethod/keyboard/Key;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIII)V

    .line 817
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 804
    check-cast p1, Lcom/android/inputmethod/keyboard/Key;

    .end local p1
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/Key;->compareTo(Lcom/android/inputmethod/keyboard/Key;)I

    move-result v0

    return v0
.end method
