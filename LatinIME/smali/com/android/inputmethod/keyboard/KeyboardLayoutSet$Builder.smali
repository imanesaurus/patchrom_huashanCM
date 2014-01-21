.class public final Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;
.super Ljava/lang/Object;
.source "KeyboardLayoutSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final EMPTY_EDITOR_INFO:Landroid/view/inputmethod/EditorInfo;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private final mPackageName:Ljava/lang/String;

.field private final mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->EMPTY_EDITOR_INFO:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .parameter "context"
    .parameter "editorInfo"

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v1, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    invoke-direct {v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    .line 217
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mPackageName:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mResources:Landroid/content/res/Resources;

    .line 220
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 221
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    .line 223
    .local v0, params:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;
    invoke-static {p2}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mMode:I

    .line 224
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    iput-object p2, v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 225
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mPackageName:Ljava/lang/String;

    const-string v2, "noSettingsKey"

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {v1, v2, v3}, Lcom/android/inputmethod/latin/InputAttributes;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mNoSettingsKey:Z

    .line 227
    return-void

    .line 224
    .restart local p2
    :cond_0
    sget-object p2, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->EMPTY_EDITOR_INFO:Landroid/view/inputmethod/EditorInfo;

    goto :goto_0
.end method

.method private static getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I
    .locals 4
    .parameter "editorInfo"

    .prologue
    const/4 v2, 0x0

    .line 361
    if-nez p0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v2

    .line 364
    :cond_1
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 365
    .local v0, inputType:I
    and-int/lit16 v1, v0, 0xff0

    .line 367
    .local v1, variation:I
    and-int/lit8 v3, v0, 0xf

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 382
    :pswitch_0
    invoke-static {v1}, Lcom/android/inputmethod/latin/InputTypeUtils;->isEmailVariation(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    const/4 v2, 0x2

    goto :goto_0

    .line 369
    :pswitch_1
    const/4 v2, 0x5

    goto :goto_0

    .line 371
    :pswitch_2
    sparse-switch v1, :sswitch_data_0

    .line 377
    const/16 v2, 0x8

    goto :goto_0

    .line 373
    :sswitch_0
    const/4 v2, 0x6

    goto :goto_0

    .line 375
    :sswitch_1
    const/4 v2, 0x7

    goto :goto_0

    .line 380
    :pswitch_3
    const/4 v2, 0x4

    goto :goto_0

    .line 384
    :cond_2
    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 385
    const/4 v2, 0x1

    goto :goto_0

    .line 386
    :cond_3
    const/16 v3, 0x40

    if-ne v1, v3, :cond_4

    .line 387
    const/4 v2, 0x3

    goto :goto_0

    .line 388
    :cond_4
    const/16 v3, 0xb0

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 371
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseKeyboardLayoutSet(Landroid/content/res/Resources;I)V
    .locals 5
    .parameter "res"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 296
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 297
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 298
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, tag:Ljava/lang/String;
    const-string v3, "KeyboardLayoutSet"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->parseKeyboardLayoutSetContent(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 307
    .end local v0           #event:I
    .end local v2           #tag:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3

    .line 302
    .restart local v0       #event:I
    .restart local v2       #tag:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;

    const-string v4, "KeyboardLayoutSet"

    invoke-direct {v3, v1, v4}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    .end local v2           #tag:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 309
    return-void
.end method

.method private parseKeyboardLayoutSetContent(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 315
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 316
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, tag:Ljava/lang/String;
    const-string v2, "Element"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->parseKeyboardLayoutSetElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 320
    :cond_1
    new-instance v2, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;

    const-string v3, "KeyboardLayoutSet"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2

    .line 322
    .end local v1           #tag:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 323
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 324
    .restart local v1       #tag:Ljava/lang/String;
    const-string v2, "KeyboardLayoutSet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 331
    .end local v1           #tag:Ljava/lang/String;
    :cond_3
    return-void

    .line 327
    .restart local v1       #tag:Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalEndTag;

    const-string v3, "KeyboardLayoutSet"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2
.end method

.method private parseKeyboardLayoutSetElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    sget-object v5, Lcom/android/inputmethod/latin/R$styleable;->KeyboardLayoutSet_Element:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 338
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "elementName"

    const-string v5, "Element"

    invoke-static {v0, v3, v4, v5, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkAttributeExists(Landroid/content/res/TypedArray;ILjava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 341
    const/4 v3, 0x1

    const-string v4, "elementKeyboard"

    const-string v5, "Element"

    invoke-static {v0, v3, v4, v5, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkAttributeExists(Landroid/content/res/TypedArray;ILjava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 344
    const-string v3, "Element"

    invoke-static {v3, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 346
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;

    invoke-direct {v2}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;-><init>()V

    .line 347
    .local v2, elementParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 349
    .local v1, elementName:I
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;->mKeyboardXmlId:I

    .line 351
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;->mProximityCharsCorrectionEnabled:Z

    .line 354
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iget-object v3, v3, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mKeyboardLayoutSetElementIdToParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    return-void

    .line 356
    .end local v1           #elementName:I
    .end local v2           #elementParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$ElementParams;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method


# virtual methods
.method public build()Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;
    .locals 7

    .prologue
    .line 275
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iget v4, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mOrientation:I

    if-nez v4, :cond_0

    .line 276
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Screen geometry is not specified"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iget-object v4, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v4, :cond_1

    .line 278
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "KeyboardLayoutSet subtype is not specified"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f060043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iget-object v1, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mKeyboardLayoutSetName:Ljava/lang/String;

    .line 282
    .local v1, keyboardLayoutSetName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mResources:Landroid/content/res/Resources;

    const-string v5, "xml"

    invoke-virtual {v4, v1, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 284
    .local v3, xmlId:I
    :try_start_0
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, v4, v3}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->parseKeyboardLayoutSet(Landroid/content/res/Resources;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    new-instance v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    invoke-direct {v4, v5, v6}, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;)V

    return-object v4

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setOptions(ZZZ)Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;
    .locals 7
    .parameter "voiceKeyEnabled"
    .parameter "voiceKeyOnMain"
    .parameter "languageSwitchKeyEnabled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    const/4 v4, 0x0

    const-string v5, "nm"

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {v4, v5, v6}, Lcom/android/inputmethod/latin/InputAttributes;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    .line 260
    .local v0, deprecatedNoMicrophone:Z
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mPackageName:Ljava/lang/String;

    const-string v5, "noMicrophoneKey"

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {v4, v5, v6}, Lcom/android/inputmethod/latin/InputAttributes;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v3

    .line 263
    .local v1, noMicrophone:Z
    :goto_0
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v3, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mVoiceKeyEnabled:Z

    .line 264
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iput-boolean p2, v2, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mVoiceKeyOnMain:Z

    .line 265
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iput-boolean p3, v2, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mLanguageSwitchKeyEnabled:Z

    .line 266
    return-object p0

    .end local v1           #noMicrophone:Z
    :cond_1
    move v1, v2

    .line 260
    goto :goto_0

    .restart local v1       #noMicrophone:Z
    :cond_2
    move v3, v2

    .line 263
    goto :goto_1
.end method

.method public setScreenGeometry(III)Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;
    .locals 1
    .parameter "deviceFormFactor"
    .parameter "orientation"
    .parameter "widthPixels"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    .line 232
    .local v0, params:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;
    iput p1, v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mDeviceFormFactor:I

    .line 233
    iput p2, v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mOrientation:I

    .line 234
    iput p3, v0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mWidth:I

    .line 235
    return-object p0
.end method

.method public setSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;
    .locals 7
    .parameter "subtype"

    .prologue
    .line 239
    const-string v4, "AsciiCapable"

    invoke-virtual {p1, v4}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v0

    .line 241
    .local v0, asciiCapable:Z
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mPackageName:Ljava/lang/String;

    const-string v5, "forceAscii"

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {v4, v5, v6}, Lcom/android/inputmethod/latin/InputAttributes;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    .line 243
    .local v1, deprecatedForceAscii:Z
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iget-object v4, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v4}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->hasFlagForceAscii(I)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 246
    .local v2, forceAscii:Z
    :goto_0
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getNoLanguageSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 249
    .local v3, keyboardSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    iput-object v3, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 250
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Builder;->mParams:Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyboard_layout_set_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/inputmethod/keyboard/KeyboardLayoutSet$Params;->mKeyboardLayoutSetName:Ljava/lang/String;

    .line 252
    return-object p0

    .line 243
    .end local v2           #forceAscii:Z
    .end local v3           #keyboardSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2       #forceAscii:Z
    :cond_2
    move-object v3, p1

    .line 246
    goto :goto_1
.end method
