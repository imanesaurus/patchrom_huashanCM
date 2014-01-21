.class public Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.super Ljava/lang/Object;
.source "KeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KP:",
        "Lcom/android/inputmethod/keyboard/internal/KeyboardParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardRow;

.field private mCurrentY:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mLeftEdge:Z

.field protected final mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKP;"
        }
    .end annotation
.end field

.field protected final mResources:Landroid/content/res/Resources;

.field private mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

.field private mTopEdge:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TKP;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;,"TKP;"
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 142
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardRow;

    .line 145
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 148
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    .local v0, res:Landroid/content/res/Resources;
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    .line 151
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 153
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    .line 155
    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_WIDTH:I

    .line 156
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_HEIGHT:I

    .line 157
    return-void
.end method

.method private addEdgeSpace(FLcom/android/inputmethod/keyboard/internal/KeyboardRow;)V
    .locals 1
    .parameter "width"
    .parameter "row"

    .prologue
    .line 800
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->advanceXPos(F)V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 803
    return-void
.end method

.method private endKey(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 784
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 785
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/Key;->markAsLeftEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 789
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 792
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 793
    return-void
.end method

.method private endKeyboard()V
    .locals 0

    .prologue
    .line 797
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    return-void
.end method

.method private endRow(Lcom/android/inputmethod/keyboard/internal/KeyboardRow;)V
    .locals 3
    .parameter "row"

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v2, 0x0

    .line 770
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardRow;

    if-nez v0, :cond_0

    .line 771
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "orphan end row tag"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->markAsRightEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 775
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->addEdgeSpace(FLcom/android/inputmethod/keyboard/internal/KeyboardRow;)V

    .line 778
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mRowHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 779
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardRow;

    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    .line 781
    return-void
.end method

.method private static matchBoolean(Landroid/content/res/TypedArray;IZ)Z
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-ne v1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static matchInteger(Landroid/content/res/TypedArray;II)Z
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 688
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/inputmethod/latin/StringUtils;->containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchTypedValue(Landroid/content/res/TypedArray;IILjava/lang/String;)Z
    .locals 4
    .parameter "a"
    .parameter "index"
    .parameter "intValue"
    .parameter "strValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 708
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 709
    .local v0, v:Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 717
    :cond_0
    :goto_0
    return v1

    .line 712
    :cond_1
    invoke-static {v0}, Lcom/android/inputmethod/latin/ResourceUtils;->isIntegerValue(Landroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 713
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eq p2, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 714
    :cond_2
    invoke-static {v0}, Lcom/android/inputmethod/latin/ResourceUtils;->isStringValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 715
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/android/inputmethod/latin/StringUtils;->containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 717
    goto :goto_0
.end method

.method private parseCase(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)Z
    .locals 2
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v1, 0x1

    .line 590
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseCaseCondition(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    .line 591
    .local v0, selected:Z
    if-nez p2, :cond_1

    .line 593
    if-eqz v0, :cond_0

    .end local p3
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 598
    :goto_1
    return v0

    .restart local p3
    :cond_0
    move p3, v1

    .line 593
    goto :goto_0

    .line 596
    :cond_1
    if-eqz v0, :cond_2

    .end local p3
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    goto :goto_1

    .restart local p3
    :cond_2
    move p3, v1

    goto :goto_2
.end method

.method private parseCaseCondition(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 23
    .parameter "parser"

    .prologue
    .line 602
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 603
    .local v7, id:Lcom/android/inputmethod/keyboard/KeyboardId;
    if-nez v7, :cond_0

    .line 604
    const/16 v18, 0x1

    .line 681
    :goto_0
    return v18

    .line 606
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v21

    sget-object v22, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Case:[I

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 609
    .local v3, a:Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    :try_start_0
    iget v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    move/from16 v21, v0

    iget v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/inputmethod/keyboard/KeyboardId;->elementIdToName(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchTypedValue(Landroid/content/res/TypedArray;IILjava/lang/String;)Z

    move-result v10

    .line 612
    .local v10, keyboardLayoutSetElementMatched:Z
    const/16 v20, 0x1

    iget v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    move/from16 v21, v0

    iget v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/inputmethod/keyboard/KeyboardId;->modeName(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchTypedValue(Landroid/content/res/TypedArray;IILjava/lang/String;)Z

    move-result v14

    .line 614
    .local v14, modeMatched:Z
    const/16 v20, 0x2

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigateNext()Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v15

    .line 616
    .local v15, navigateNextMatched:Z
    const/16 v20, 0x3

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardId;->navigatePrevious()Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v16

    .line 618
    .local v16, navigatePreviousMatched:Z
    const/16 v20, 0x4

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardId;->passwordInput()Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v17

    .line 620
    .local v17, passwordInputMatched:Z
    const/16 v20, 0x5

    iget-boolean v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    .line 622
    .local v4, clobberSettingsKeyMatched:Z
    const/16 v20, 0x6

    iget-boolean v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v19

    .line 624
    .local v19, shortcutKeyEnabledMatched:Z
    const/16 v20, 0x7

    iget-boolean v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v6

    .line 626
    .local v6, hasShortcutKeyMatched:Z
    const/16 v20, 0x8

    iget-boolean v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mLanguageSwitchKeyEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v12

    .line 629
    .local v12, languageSwitchKeyEnabledMatched:Z
    const/16 v20, 0x9

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardId;->isMultiLine()Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v9

    .line 631
    .local v9, isMultiLineMatched:Z
    const/16 v20, 0xa

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeAction()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v8

    .line 633
    .local v8, imeActionMatched:Z
    const/16 v20, 0xb

    iget-object v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z

    move-result v13

    .line 635
    .local v13, localeCodeMatched:Z
    const/16 v20, 0xc

    iget-object v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z

    move-result v11

    .line 637
    .local v11, languageCodeMatched:Z
    const/16 v20, 0xd

    iget-object v0, v7, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 639
    .local v5, countryCodeMatched:Z
    if-eqz v10, :cond_1

    if-eqz v14, :cond_1

    if-eqz v15, :cond_1

    if-eqz v16, :cond_1

    if-eqz v17, :cond_1

    if-eqz v4, :cond_1

    if-eqz v19, :cond_1

    if-eqz v6, :cond_1

    if-eqz v12, :cond_1

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    if-eqz v13, :cond_1

    if-eqz v11, :cond_1

    if-eqz v5, :cond_1

    const/16 v18, 0x1

    .line 681
    .local v18, selected:Z
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 639
    .end local v18           #selected:Z
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 681
    .end local v4           #clobberSettingsKeyMatched:Z
    .end local v5           #countryCodeMatched:Z
    .end local v6           #hasShortcutKeyMatched:Z
    .end local v8           #imeActionMatched:Z
    .end local v9           #isMultiLineMatched:Z
    .end local v10           #keyboardLayoutSetElementMatched:Z
    .end local v11           #languageCodeMatched:Z
    .end local v12           #languageSwitchKeyEnabledMatched:Z
    .end local v13           #localeCodeMatched:Z
    .end local v14           #modeMatched:Z
    .end local v15           #navigateNextMatched:Z
    .end local v16           #navigatePreviousMatched:Z
    .end local v17           #passwordInputMatched:Z
    .end local v19           #shortcutKeyEnabledMatched:Z
    :catchall_0
    move-exception v20

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v20
.end method

.method private parseDefault(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)Z
    .locals 1
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    if-nez p2, :cond_0

    .line 724
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 728
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 726
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    goto :goto_0
.end method

.method private parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V
    .locals 11
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    if-eqz p3, :cond_0

    .line 464
    const-string v8, "include"

    invoke-static {v8, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 527
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 468
    .local v0, attr:Landroid/util/AttributeSet;
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    sget-object v9, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Include:[I

    invoke-virtual {v8, v0, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 470
    .local v2, keyboardAttr:Landroid/content/res/TypedArray;
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    sget-object v9, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual {v8, v0, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 472
    .local v1, keyAttr:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 473
    .local v3, keyboardLayout:I
    const/4 v7, 0x0

    .line 474
    .local v7, savedDefaultKeyWidth:F
    const/4 v6, 0x0

    .line 475
    .local v6, savedDefaultKeyLabelFlags:I
    const/4 v5, 0x0

    .line 477
    .local v5, savedDefaultBackgroundType:I
    const/4 v8, 0x0

    :try_start_0
    const-string v9, "keyboardLayout"

    const-string v10, "include"

    invoke-static {v2, v8, v9, v10, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkAttributeExists(Landroid/content/res/TypedArray;ILjava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 480
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 482
    if-eqz p2, :cond_3

    .line 483
    const/16 v8, 0x12

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 485
    invoke-virtual {p2, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getKeyX(Landroid/content/res/TypedArray;)F

    move-result v8

    invoke-virtual {p2, v8}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setXPos(F)V

    .line 488
    :cond_1
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getDefaultKeyWidth()F

    move-result v7

    .line 489
    const/16 v8, 0x11

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 491
    invoke-virtual {p2, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getKeyWidth(Landroid/content/res/TypedArray;)F

    move-result v8

    invoke-virtual {p2, v8}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setDefaultKeyWidth(F)V

    .line 493
    :cond_2
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getDefaultKeyLabelFlags()I

    move-result v6

    .line 495
    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    or-int/2addr v8, v6

    invoke-virtual {p2, v8}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setDefaultKeyLabelFlags(I)V

    .line 498
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getDefaultBackgroundType()I

    move-result v5

    .line 500
    const/4 v8, 0x5

    invoke-virtual {v1, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {p2, v8}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setDefaultBackgroundType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 506
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 509
    const-string v8, "include"

    invoke-static {v8, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 514
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 516
    .local v4, parserForInclude:Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-direct {p0, v4, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseMerge(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 518
    if-eqz p2, :cond_4

    .line 520
    invoke-virtual {p2, v7}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setDefaultKeyWidth(F)V

    .line 521
    invoke-virtual {p2, v6}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setDefaultKeyLabelFlags(I)V

    .line 522
    invoke-virtual {p2, v5}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setDefaultBackgroundType(I)V

    .line 524
    :cond_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 505
    .end local v4           #parserForInclude:Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 506
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v8

    .line 518
    .restart local v4       #parserForInclude:Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v8

    if-eqz p2, :cond_5

    .line 520
    invoke-virtual {p2, v7}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setDefaultKeyWidth(F)V

    .line 521
    invoke-virtual {p2, v6}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setDefaultKeyLabelFlags(I)V

    .line 522
    invoke-virtual {p2, v5}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setDefaultBackgroundType(I)V

    .line 524
    :cond_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v8
.end method

.method private parseIncludeKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 1
    .parameter "parser"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    .line 454
    return-void
.end method

.method private parseIncludeRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V
    .locals 0
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    .line 459
    return-void
.end method

.method private parseKey(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V
    .locals 3
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    if-eqz p3, :cond_0

    .line 422
    const-string v1, "Key"

    invoke-static {v1, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 436
    :goto_0
    return-void

    .line 427
    :cond_0
    new-instance v0, Lcom/android/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/android/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 433
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    const-string v1, "Key"

    invoke-static {v1, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 434
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0
.end method

.method private parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 5
    .parameter "parser"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_KeyStyle:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 735
    .local v1, keyStyleAttr:Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 738
    .local v0, keyAttrs:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 739
    new-instance v2, Lcom/android/inputmethod/latin/XmlParseUtils$ParseException;

    const-string v3, "<key-style/> needs styleName attribute"

    invoke-direct {v2, v3, p1}, Lcom/android/inputmethod/latin/XmlParseUtils$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 752
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 747
    :cond_0
    if-nez p2, :cond_1

    .line 748
    :try_start_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget-object v2, v2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->parseKeyStyleAttributes(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 752
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 754
    const-string v2, "key-style"

    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 755
    return-void
.end method

.method private parseKeyboard(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 218
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, tag:Ljava/lang/String;
    const-string v2, "Keyboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardAttributes(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 222
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->startKeyboard()V

    .line 223
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 230
    .end local v1           #tag:Ljava/lang/String;
    :cond_1
    return-void

    .line 226
    .restart local v1       #tag:Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;

    const-string v3, "Keyboard"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2
.end method

.method private parseKeyboardAttributes(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 22
    .parameter "parser"

    .prologue
    .line 233
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 234
    .local v5, displayWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v18

    sget-object v19, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    const/high16 v20, 0x7f01

    const v21, 0x7f0f0003

    invoke-virtual/range {v17 .. v21}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 237
    .local v8, keyboardAttr:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v18

    sget-object v19, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 240
    .local v7, keyAttr:Landroid/content/res/TypedArray;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 241
    .local v4, displayHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0e000f

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/inputmethod/latin/ResourceUtils;->getDeviceOverrideValue(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, keyboardHeightString:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 245
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    mul-float v9, v17, v18

    .line 251
    .local v9, keyboardHeight:F
    :goto_0
    const/16 v17, 0x3

    div-int/lit8 v18, v4, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v4, v1}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v13

    .line 253
    .local v13, maxKeyboardHeight:F
    const/16 v17, 0x4

    div-int/lit8 v18, v4, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v4, v1}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v14

    .line 255
    .local v14, minKeyboardHeight:F
    const/16 v17, 0x0

    cmpg-float v17, v14, v17

    if-gez v17, :cond_0

    .line 258
    const/16 v17, 0x4

    div-int/lit8 v18, v5, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v5, v1}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v17

    move/from16 v0, v17

    neg-float v14, v0

    .line 261
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    .line 264
    .local v15, params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v14}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    .line 266
    iget-object v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    .line 267
    const/16 v17, 0x5

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    .line 269
    const/16 v17, 0x6

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBottomPadding:I

    .line 271
    const/16 v17, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    .line 276
    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    move/from16 v17, v0

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalCenterPadding:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    .line 278
    const/16 v17, 0x11

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    move/from16 v18, v0

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0xa

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v7, v0, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultKeyWidth:I

    .line 281
    const/16 v17, 0x9

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalGap:I

    .line 283
    const/16 v17, 0xa

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    .line 285
    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    move/from16 v17, v0

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBottomPadding:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    .line 287
    const/16 v17, 0x8

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    move/from16 v18, v0

    iget v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseHeight:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultRowHeight:I

    .line 291
    invoke-static {v7}, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->newInstance(Landroid/content/res/TypedArray;)Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    .line 293
    const/16 v17, 0xb

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMoreKeysTemplate:I

    .line 295
    const/16 v17, 0x4

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxMoreKeysKeyboardColumn:I

    .line 298
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mThemeId:I

    .line 299
    iget-object v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->loadIcons(Landroid/content/res/TypedArray;)V

    .line 300
    iget-object v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 301
    .local v11, language:Ljava/lang/String;
    iget-object v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mCodesSet:Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;->setLanguage(Ljava/lang/String;)V

    .line 302
    iget-object v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTextsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->setLanguage(Ljava/lang/String;)V

    .line 303
    new-instance v6, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v15}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$1;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 311
    .local v6, job:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<Ljava/lang/Void;>;"
    iget-object v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/inputmethod/latin/SubtypeLocale;->isNoLanguage(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v12, 0x0

    .line 313
    .local v12, locale:Ljava/util/Locale;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v12}, Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;->runInLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/lang/Object;

    .line 315
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 317
    .local v16, resourceId:I
    if-eqz v16, :cond_1

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, data:[Ljava/lang/String;
    iget-object v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->load([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    .end local v3           #data:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    return-void

    .line 248
    .end local v6           #job:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<Ljava/lang/Void;>;"
    .end local v9           #keyboardHeight:F
    .end local v11           #language:Ljava/lang/String;
    .end local v12           #locale:Ljava/util/Locale;
    .end local v13           #maxKeyboardHeight:F
    .end local v14           #minKeyboardHeight:F
    .end local v15           #params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    .end local v16           #resourceId:I
    :cond_2
    const/16 v17, 0x2

    :try_start_1
    div-int/lit8 v18, v4, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .restart local v9       #keyboardHeight:F
    goto/16 :goto_0

    .line 311
    .restart local v6       #job:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<Ljava/lang/Void;>;"
    .restart local v11       #language:Ljava/lang/String;
    .restart local v13       #maxKeyboardHeight:F
    .restart local v14       #minKeyboardHeight:F
    .restart local v15       #params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    :cond_3
    iget-object v0, v15, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 322
    .end local v4           #displayHeight:I
    .end local v6           #job:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<Ljava/lang/Void;>;"
    .end local v9           #keyboardHeight:F
    .end local v10           #keyboardHeightString:Ljava/lang/String;
    .end local v11           #language:Ljava/lang/String;
    .end local v13           #maxKeyboardHeight:F
    .end local v14           #minKeyboardHeight:F
    .end local v15           #params:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
    :catchall_0
    move-exception v17

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v17
.end method

.method private parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 5
    .parameter "parser"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    .line 331
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 332
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, tag:Ljava/lang/String;
    const-string v3, "Row"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/inputmethod/keyboard/internal/KeyboardRow;

    move-result-object v1

    .line 336
    .local v1, row:Lcom/android/inputmethod/keyboard/internal/KeyboardRow;
    if-nez p2, :cond_1

    .line 337
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->startRow(Lcom/android/inputmethod/keyboard/internal/KeyboardRow;)V

    .line 339
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    goto :goto_0

    .line 340
    .end local v1           #row:Lcom/android/inputmethod/keyboard/internal/KeyboardRow;
    :cond_2
    const-string v3, "include"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 342
    :cond_3
    const-string v3, "switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 344
    :cond_4
    const-string v3, "key-style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 347
    :cond_5
    new-instance v3, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;

    const-string v4, "Row"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3

    .line 349
    .end local v2           #tag:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 350
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 352
    .restart local v2       #tag:Ljava/lang/String;
    const-string v3, "Keyboard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 353
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endKeyboard()V

    .line 363
    .end local v2           #tag:Ljava/lang/String;
    :cond_7
    return-void

    .line 355
    .restart local v2       #tag:Ljava/lang/String;
    :cond_8
    const-string v3, "case"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "merge"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 359
    new-instance v3, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalEndTag;

    const-string v4, "Row"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
.end method

.method private parseMerge(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V
    .locals 4
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 534
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 535
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, tag:Ljava/lang/String;
    const-string v2, "merge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 537
    if-nez p2, :cond_2

    .line 538
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 549
    .end local v1           #tag:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 540
    .restart local v1       #tag:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    goto :goto_0

    .line 544
    :cond_3
    new-instance v2, Lcom/android/inputmethod/latin/XmlParseUtils$ParseException;

    const-string v3, "Included keyboard layout must have <merge> root element"

    invoke-direct {v2, v3, p1}, Lcom/android/inputmethod/latin/XmlParseUtils$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v2
.end method

.method private parseRowAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/inputmethod/keyboard/internal/KeyboardRow;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 367
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 370
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x9

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    new-instance v1, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalAttribute;

    const-string v2, "horizontalGap"

    invoke-direct {v1, p1, v2}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalAttribute;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 373
    :cond_0
    const/16 v1, 0xa

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    new-instance v1, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalAttribute;

    const-string v2, "verticalGap"

    invoke-direct {v1, p1, v2}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalAttribute;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_1
    new-instance v1, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v4, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V
    .locals 4
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 386
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 387
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, tag:Ljava/lang/String;
    const-string v2, "Key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKey(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    goto :goto_0

    .line 390
    :cond_1
    const-string v2, "Spacer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSpacer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    goto :goto_0

    .line 392
    :cond_2
    const-string v2, "include"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    goto :goto_0

    .line 394
    :cond_3
    const-string v2, "switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    goto :goto_0

    .line 396
    :cond_4
    const-string v2, "key-style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 397
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 399
    :cond_5
    new-instance v2, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;

    const-string v3, "Key"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2

    .line 401
    .end local v1           #tag:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 402
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 404
    .restart local v1       #tag:Ljava/lang/String;
    const-string v2, "Row"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 405
    if-nez p3, :cond_7

    .line 406
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endRow(Lcom/android/inputmethod/keyboard/internal/KeyboardRow;)V

    .line 417
    .end local v1           #tag:Ljava/lang/String;
    :cond_7
    return-void

    .line 409
    .restart local v1       #tag:Ljava/lang/String;
    :cond_8
    const-string v2, "case"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "merge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 413
    new-instance v2, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalEndTag;

    const-string v3, "Key"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2
.end method

.method private parseSpacer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V
    .locals 3
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    if-eqz p3, :cond_0

    .line 441
    const-string v1, "Spacer"

    invoke-static {v1, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Lcom/android/inputmethod/keyboard/Key$Spacer;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/android/inputmethod/keyboard/Key$Spacer;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 446
    .local v0, spacer:Lcom/android/inputmethod/keyboard/Key$Spacer;
    const-string v1, "Spacer"

    invoke-static {v1, p1}, Lcom/android/inputmethod/latin/XmlParseUtils;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 447
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->endKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0
.end method

.method private parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V
    .locals 5
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v4, 0x1

    .line 564
    const/4 v1, 0x0

    .line 566
    .local v1, selected:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    if-eq v0, v4, :cond_6

    .line 567
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 568
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, tag:Ljava/lang/String;
    const-string v3, "case"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    if-eqz v1, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseCase(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_1
    move v3, p3

    goto :goto_1

    .line 571
    :cond_2
    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 572
    if-eqz v1, :cond_3

    move v3, v4

    :goto_2
    invoke-direct {p0, p1, p2, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseDefault(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_3
    move v3, p3

    goto :goto_2

    .line 574
    :cond_4
    new-instance v3, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;

    const-string v4, "Key"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3

    .line 576
    .end local v2           #tag:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 577
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 578
    .restart local v2       #tag:Ljava/lang/String;
    const-string v3, "switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 586
    .end local v2           #tag:Ljava/lang/String;
    :cond_6
    return-void

    .line 582
    .restart local v2       #tag:Ljava/lang/String;
    :cond_7
    new-instance v3, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalEndTag;

    const-string v4, "Key"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/latin/XmlParseUtils$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
.end method

.method private parseSwitchKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 1
    .parameter "parser"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    .line 554
    return-void
.end method

.method private parseSwitchRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V
    .locals 0
    .parameter "parser"
    .parameter "row"
    .parameter "skip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Z)V

    .line 559
    return-void
.end method

.method private startKeyboard()V
    .locals 2

    .prologue
    .line 758
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    .line 760
    return-void
.end method

.method private startRow(Lcom/android/inputmethod/keyboard/internal/KeyboardRow;)V
    .locals 1
    .parameter "row"

    .prologue
    .line 763
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->addEdgeSpace(FLcom/android/inputmethod/keyboard/internal/KeyboardRow;)V

    .line 764
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/android/inputmethod/keyboard/internal/KeyboardRow;

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/android/inputmethod/keyboard/Key;

    .line 767
    return-void
.end method


# virtual methods
.method public build()Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 2

    .prologue
    .line 190
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    new-instance v0, Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    return-object v0
.end method

.method public disableTouchPositionCorrectionDataForTest()V
    .locals 2

    .prologue
    .line 182
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/TouchPositionCorrection;->setEnabled(Z)V

    .line 183
    return-void
.end method

.method public load(ILcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
    .locals 5
    .parameter "xmlId"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/inputmethod/keyboard/KeyboardId;",
            ")",
            "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder",
            "<TKP;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iput-object p2, v2, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 165
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 167
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboard(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 177
    return-object p0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v2, "Keyboard.Builder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyboard XML parse error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2

    .line 171
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v2, "Keyboard.Builder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyboard XML parse error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setAutoGenerate(Lcom/android/inputmethod/keyboard/internal/KeysCache;)V
    .locals 1
    .parameter "keysCache"

    .prologue
    .line 160
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iput-object p1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeysCache:Lcom/android/inputmethod/keyboard/internal/KeysCache;

    .line 161
    return-void
.end method

.method public setProximityCharsCorrectionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 186
    .local p0, this:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    iput-boolean p1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mProximityCharsCorrectionEnabled:Z

    .line 187
    return-void
.end method
