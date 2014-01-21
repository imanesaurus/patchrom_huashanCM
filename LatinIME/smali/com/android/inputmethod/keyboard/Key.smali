.class public Lcom/android/inputmethod/keyboard/Key;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/Key$Spacer;,
        Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/inputmethod/keyboard/Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_STATE_ACTIVE_NORMAL:[I

.field private static final KEY_STATE_ACTIVE_PRESSED:[I

.field private static final KEY_STATE_FUNCTIONAL_NORMAL:[I

.field private static final KEY_STATE_FUNCTIONAL_PRESSED:[I

.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

.field private static final KEY_STATE_NORMAL_HIGHLIGHT_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

.field private static final KEY_STATE_PRESSED_HIGHLIGHT_ON:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionFlags:I

.field public final mBackgroundType:I

.field public final mCode:I

.field private mEnabled:Z

.field private final mHashCode:I

.field public final mHeight:I

.field public final mHintLabel:Ljava/lang/String;

.field public final mHitBox:Landroid/graphics/Rect;

.field private final mIconId:I

.field public final mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

.field public final mLabel:Ljava/lang/String;

.field private final mLabelFlags:I

.field public final mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

.field private final mMoreKeysColumnAndFlags:I

.field private final mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

.field private mPressed:Z

.field public final mWidth:I

.field public final mX:I

.field public final mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    const-class v0, Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->TAG:Ljava/lang/String;

    .line 735
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_HIGHLIGHT_ON:[I

    .line 740
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_HIGHLIGHT_ON:[I

    .line 746
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

    .line 750
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

    .line 755
    new-array v0, v2, [I

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL:[I

    .line 758
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED:[I

    .line 763
    new-array v0, v3, [I

    const v1, 0x10100a3

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    .line 768
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 774
    new-array v0, v3, [I

    const v1, 0x10100a2

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_NORMAL:[I

    .line 779
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_PRESSED:[I

    return-void

    .line 735
    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 740
    :array_1
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 750
    :array_2
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
    .end array-data

    .line 768
    :array_3
    .array-data 0x4
        0xa3t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 779
    :array_4
    .array-data 0x4
        0xa2t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardRow;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 31
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
    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    .line 170
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v15, 0x0

    .line 227
    .local v15, horizontalGap:F
    :goto_0
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->mRowHeight:I

    move/from16 v18, v0

    .line 228
    .local v18, keyHeight:I
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    sub-int v5, v18, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    .line 230
    invoke-static/range {p4 .. p4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    sget-object v28, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 233
    .local v17, keyAttr:Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeyStyles:Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyStylesSet;->getKeyStyle(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/inputmethod/keyboard/internal/KeyStyle;

    move-result-object v26

    .line 234
    .local v26, style:Lcom/android/inputmethod/keyboard/internal/KeyStyle;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getKeyX(Landroid/content/res/TypedArray;)F

    move-result v20

    .line 235
    .local v20, keyXPos:F
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getKeyWidth(Landroid/content/res/TypedArray;F)F

    move-result v19

    .line 236
    .local v19, keyWidth:F
    invoke-virtual/range {p3 .. p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getKeyY()I

    move-result v21

    .line 239
    .local v21, keyYPos:I
    const/high16 v5, 0x4000

    div-float v5, v15, v5

    add-float v5, v5, v20

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    .line 240
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    .line 241
    sub-float v5, v19, v15

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    add-float v29, v20, v19

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    add-int v30, v21, v18

    move/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 245
    add-float v5, v20, v19

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->setXPos(F)V

    .line 247
    const/4 v5, 0x5

    invoke-virtual/range {p3 .. p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getDefaultBackgroundType()I

    move-result v28

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v28

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    .line 250
    const/16 v5, 0xf

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v5, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 252
    .local v10, visualInsetsLeft:I
    const/16 v5, 0x10

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v5, v1, v2}, Lcom/android/inputmethod/latin/ResourceUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 254
    .local v11, visualInsetsRight:I
    const/16 v5, 0xb

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getIconId(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mIconId:I

    .line 256
    const/16 v5, 0xc

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getIconId(Ljava/lang/String;)I

    move-result v8

    .line 258
    .local v8, disabledIconId:I
    const/16 v5, 0xd

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getIconId(Ljava/lang/String;)I

    move-result v9

    .line 261
    .local v9, previewIconId:I
    const/16 v5, 0xa

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getFlag(Landroid/content/res/TypedArray;I)I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardRow;->getDefaultKeyLabelFlags()I

    move-result v28

    or-int v5, v5, v28

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    .line 263
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mElementId:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v5, v0}, Lcom/android/inputmethod/keyboard/Key;->needsToUpperCase(II)Z

    move-result v25

    .line 264
    .local v25, needsToUpperCase:Z
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v0, v5, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v22, v0

    .line 265
    .local v22, locale:Ljava/util/Locale;
    const/4 v5, 0x6

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getFlag(Landroid/content/res/TypedArray;I)I

    move-result v12

    .line 266
    .local v12, actionFlags:I
    const/4 v5, 0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getStringArray(Landroid/content/res/TypedArray;I)[Ljava/lang/String;

    move-result-object v23

    .line 268
    .local v23, moreKeys:[Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxMoreKeysKeyboardColumn:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v28

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v24

    .line 271
    .local v24, moreKeysColumn:I
    const-string v5, "!autoColumnOrder!"

    const/16 v28, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v0, v5, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getIntValue([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v27

    .local v27, value:I
    if-lez v27, :cond_0

    .line 272
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 274
    :cond_0
    const-string v5, "!fixedColumnOrder!"

    const/16 v28, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v0, v5, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getIntValue([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v27

    if-lez v27, :cond_1

    .line 275
    const/high16 v5, -0x8000

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    or-int v24, v5, v28

    .line 277
    :cond_1
    const-string v5, "!hasLabels!"

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getBooleanValue([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    const/high16 v5, 0x4000

    or-int v24, v24, v5

    .line 280
    :cond_2
    const-string v5, "!needsDividers!"

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getBooleanValue([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    const/high16 v5, 0x2000

    or-int v24, v24, v5

    .line 283
    :cond_3
    const-string v5, "!embeddedMoreKey!"

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->getBooleanValue([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 284
    const/high16 v5, 0x1000

    or-int v24, v24, v5

    .line 286
    :cond_4
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mMoreKeysColumnAndFlags:I

    .line 289
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    const/high16 v28, -0x8000

    and-int v5, v5, v28

    if-eqz v5, :cond_6

    .line 290
    const/4 v13, 0x0

    .line 295
    .local v13, additionalMoreKeys:[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->insertAdditionalMoreKeys([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 296
    if-eqz v23, :cond_7

    .line 297
    or-int/lit8 v12, v12, 0x8

    .line 298
    move-object/from16 v0, v23

    array-length v5, v0

    new-array v5, v5, [Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    .line 299
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v23

    array-length v5, v0

    move/from16 v0, v16

    if-ge v0, v5, :cond_8

    .line 300
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    new-instance v28, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    aget-object v29, v23, v16

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mCodesSet:Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v25

    move-object/from16 v3, v22

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;-><init>(Ljava/lang/String;ZLjava/util/Locale;Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;)V

    aput-object v28, v5, v16

    .line 299
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 226
    .end local v8           #disabledIconId:I
    .end local v9           #previewIconId:I
    .end local v10           #visualInsetsLeft:I
    .end local v11           #visualInsetsRight:I
    .end local v12           #actionFlags:I
    .end local v13           #additionalMoreKeys:[Ljava/lang/String;
    .end local v15           #horizontalGap:F
    .end local v16           #i:I
    .end local v17           #keyAttr:Landroid/content/res/TypedArray;
    .end local v18           #keyHeight:I
    .end local v19           #keyWidth:F
    .end local v20           #keyXPos:F
    .end local v21           #keyYPos:I
    .end local v22           #locale:Ljava/util/Locale;
    .end local v23           #moreKeys:[Ljava/lang/String;
    .end local v24           #moreKeysColumn:I
    .end local v25           #needsToUpperCase:Z
    .end local v26           #style:Lcom/android/inputmethod/keyboard/internal/KeyStyle;
    .end local v27           #value:I
    :cond_5
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalGap:I

    int-to-float v15, v5

    goto/16 :goto_0

    .line 292
    .restart local v8       #disabledIconId:I
    .restart local v9       #previewIconId:I
    .restart local v10       #visualInsetsLeft:I
    .restart local v11       #visualInsetsRight:I
    .restart local v12       #actionFlags:I
    .restart local v15       #horizontalGap:F
    .restart local v17       #keyAttr:Landroid/content/res/TypedArray;
    .restart local v18       #keyHeight:I
    .restart local v19       #keyWidth:F
    .restart local v20       #keyXPos:F
    .restart local v21       #keyYPos:I
    .restart local v22       #locale:Ljava/util/Locale;
    .restart local v23       #moreKeys:[Ljava/lang/String;
    .restart local v24       #moreKeysColumn:I
    .restart local v25       #needsToUpperCase:Z
    .restart local v26       #style:Lcom/android/inputmethod/keyboard/internal/KeyStyle;
    .restart local v27       #value:I
    :cond_6
    const/4 v5, 0x3

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getStringArray(Landroid/content/res/TypedArray;I)[Ljava/lang/String;

    move-result-object v13

    .restart local v13       #additionalMoreKeys:[Ljava/lang/String;
    goto :goto_1

    .line 304
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    .line 306
    :cond_8
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/inputmethod/keyboard/Key;->mActionFlags:I

    .line 308
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    const/high16 v28, 0x2

    and-int v5, v5, v28

    if-eqz v5, :cond_a

    .line 309
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v5, v5, Lcom/android/inputmethod/keyboard/KeyboardId;->mCustomActionLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    .line 314
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    const/high16 v28, 0x4000

    and-int v5, v5, v28

    if-eqz v5, :cond_b

    .line 315
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    .line 320
    :goto_4
    const/4 v5, 0x7

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->toUpperCaseOfStringForLocale(Ljava/lang/String;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, outputText:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mCodesSet:Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;

    move-object/from16 v28, v0

    const/16 v29, -0xc

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v5, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->parseCode(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;I)I

    move-result v14

    .line 325
    .local v14, code:I
    const/16 v5, -0xc

    if-ne v14, v5, :cond_e

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 327
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v5

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v5, v0, :cond_d

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasShiftedLetterHint()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isShiftedLetterActivated()Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 352
    :goto_5
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mCodesSet:Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;

    move-object/from16 v28, v0

    const/16 v29, -0xc

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v5, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->parseCode(Ljava/lang/String;Lcom/android/inputmethod/keyboard/internal/KeyboardCodesSet;I)I

    move-result v5

    move/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->toUpperCaseOfCodeForLocale(IZLjava/util/Locale;)I

    move-result v7

    .line 356
    .local v7, altCode:I
    if-nez v6, :cond_11

    const/16 v5, -0xc

    if-ne v7, v5, :cond_11

    if-nez v8, :cond_11

    if-nez v9, :cond_11

    if-nez v10, :cond_11

    if-nez v11, :cond_11

    .line 359
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    .line 365
    :goto_6
    invoke-static/range {v17 .. v17}, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->newInstance(Landroid/content/res/TypedArray;)Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    .line 366
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->computeHashCode(Lcom/android/inputmethod/keyboard/Key;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mHashCode:I

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasShiftedLetterHint()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 369
    sget-object v5, Lcom/android/inputmethod/keyboard/Key;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "hasShiftedLetterHint specified without keyHintLabel: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_9
    return-void

    .line 311
    .end local v6           #outputText:Ljava/lang/String;
    .end local v7           #altCode:I
    .end local v14           #code:I
    :cond_a
    const/16 v5, 0x8

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->toUpperCaseOfStringForLocale(Ljava/lang/String;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    goto/16 :goto_3

    .line 317
    :cond_b
    const/16 v5, 0x9

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/inputmethod/keyboard/internal/KeyStyle;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->toUpperCaseOfStringForLocale(Ljava/lang/String;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    goto/16 :goto_4

    .line 334
    .restart local v6       #outputText:Ljava/lang/String;
    .restart local v14       #code:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    goto/16 :goto_5

    .line 339
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    .line 340
    const/4 v5, -0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    goto/16 :goto_5

    .line 342
    :cond_e
    const/16 v5, -0xc

    if-ne v14, v5, :cond_10

    if-eqz v6, :cond_10

    .line 343
    invoke-static {v6}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v5

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v5, v0, :cond_f

    .line 344
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 345
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 347
    :cond_f
    const/4 v5, -0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    goto/16 :goto_5

    .line 350
    :cond_10
    move/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v14, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeySpecParser;->toUpperCaseOfCodeForLocale(IZLjava/util/Locale;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    goto/16 :goto_5

    .line 361
    .restart local v7       #altCode:I
    :cond_11
    new-instance v5, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    invoke-direct/range {v5 .. v11}, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;-><init>(Ljava/lang/String;IIIII)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/inputmethod/keyboard/Key;->mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    goto/16 :goto_6
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;IIIII)V
    .locals 12
    .parameter "params"
    .parameter "moreKeySpec"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "labelFlags"

    .prologue
    .line 177
    iget-object v2, p2, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mLabel:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p2, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mIconId:I

    iget v5, p2, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mCode:I

    iget-object v6, p2, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mOutputText:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/inputmethod/keyboard/Key;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIII)V

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIII)V
    .locals 8
    .parameter "params"
    .parameter "label"
    .parameter "hintLabel"
    .parameter "iconId"
    .parameter "code"
    .parameter "outputText"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "labelFlags"

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 187
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    sub-int v1, p10, v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    .line 188
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalGap:I

    sub-int v1, p9, v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    .line 189
    iput-object p3, p0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    .line 190
    move/from16 v0, p11

    iput v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    .line 191
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    .line 192
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mActionFlags:I

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeysColumnAndFlags:I

    .line 195
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    .line 196
    if-nez p6, :cond_0

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    .line 202
    :goto_0
    iput p5, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 203
    const/16 v1, -0xc

    if-eq p5, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 204
    iput p4, p0, Lcom/android/inputmethod/keyboard/Key;->mIconId:I

    .line 206
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalGap:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p7

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    .line 207
    move/from16 v0, p8

    iput v0, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    .line 208
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    add-int v2, p7, p9

    add-int/lit8 v2, v2, 0x1

    add-int v3, p8, p10

    move/from16 v0, p8

    invoke-virtual {v1, p7, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    .line 211
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/Key;->computeHashCode(Lcom/android/inputmethod/keyboard/Key;)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mHashCode:I

    .line 212
    return-void

    .line 199
    :cond_0
    new-instance v1, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    const/16 v3, -0xc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;-><init>(Ljava/lang/String;IIIII)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    goto :goto_0

    .line 203
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static backgroundName(I)Ljava/lang/String;
    .locals 1
    .parameter "backgroundType"

    .prologue
    .line 461
    packed-switch p0, :pswitch_data_0

    .line 467
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 462
    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    .line 463
    :pswitch_1
    const-string v0, "functional"

    goto :goto_0

    .line 464
    :pswitch_2
    const-string v0, "action"

    goto :goto_0

    .line 465
    :pswitch_3
    const-string v0, "stickyOff"

    goto :goto_0

    .line 466
    :pswitch_4
    const-string v0, "stickyOn"

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static computeHashCode(Lcom/android/inputmethod/keyboard/Key;)I
    .locals 3
    .parameter "key"

    .prologue
    .line 387
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->getOutputText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mActionFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private equalsInternal(Lcom/android/inputmethod/keyboard/Key;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    .line 414
    if-ne p0, p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mIconId:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mIconId:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->getOutputText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->getOutputText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mActionFlags:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mActionFlags:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needsToUpperCase(II)Z
    .locals 2
    .parameter "labelFlags"
    .parameter "keyboardElementId"

    .prologue
    const/4 v0, 0x0

    .line 374
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 382
    :goto_0
    return v0

    .line 375
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 380
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final altCodeWhileTyping()Z
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mActionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Lcom/android/inputmethod/keyboard/Key;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/Key;->equalsInternal(Lcom/android/inputmethod/keyboard/Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 434
    :goto_0
    return v0

    .line 433
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHashCode:I

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mHashCode:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 434
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, Lcom/android/inputmethod/keyboard/Key;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/Key;->compareTo(Lcom/android/inputmethod/keyboard/Key;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 444
    instance-of v0, p1, Lcom/android/inputmethod/keyboard/Key;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/inputmethod/keyboard/Key;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/Key;->equalsInternal(Lcom/android/inputmethod/keyboard/Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAltCode()I
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    .line 647
    .local v0, attrs:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mAltCode:I

    :goto_0
    return v1

    :cond_0
    const/16 v1, -0xc

    goto :goto_0
.end method

.method public final getCurrentDrawableState()[I
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    packed-switch v0, :pswitch_data_0

    .line 800
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED:[I

    :goto_0
    return-object v0

    .line 792
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    goto :goto_0

    .line 794
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_PRESSED:[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_NORMAL:[I

    goto :goto_0

    .line 796
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

    goto :goto_0

    .line 798
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_HIGHLIGHT_ON:[I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_HIGHLIGHT_ON:[I

    goto :goto_0

    .line 800
    :cond_4
    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL:[I

    goto :goto_0

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getDrawWidth()I
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    .line 675
    .local v0, attrs:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mVisualInsetsLeft:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mVisualInsetsRight:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getDrawX()I
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    .line 670
    .local v0, attrs:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mVisualInsetsLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getIcon(Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "iconSet"
    .parameter "alpha"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    .line 652
    .local v0, attrs:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mDisabledIconId:I

    .line 653
    .local v1, disabledIconId:I
    :goto_0
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    if-eqz v4, :cond_2

    iget v3, p0, Lcom/android/inputmethod/keyboard/Key;->mIconId:I

    .line 654
    .local v3, iconId:I
    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 655
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 656
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 658
    :cond_0
    return-object v2

    .line 652
    .end local v1           #disabledIconId:I
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #iconId:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #disabledIconId:I
    :cond_2
    move v3, v1

    .line 653
    goto :goto_1
.end method

.method public final getMoreKeyLabelFlags()I
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->hasLabelsInMoreKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public final getMoreKeysColumn()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeysColumnAndFlags:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getOutputText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    .line 642
    .local v0, attrs:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mOutputText:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreviewIcon(Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "iconSet"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mOptionalAttributes:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;

    .line 663
    .local v0, attrs:Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/inputmethod/keyboard/Key$OptionalAttributes;->mPreviewIconId:I

    .line 664
    .local v1, previewIconId:I
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    return-object v2

    .line 663
    .end local v1           #previewIconId:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 664
    .restart local v1       #previewIconId:I
    :cond_1
    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mIconId:I

    invoke-virtual {p1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public final hasEmbeddedMoreKey()Z
    .locals 2

    .prologue
    .line 637
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeysColumnAndFlags:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasHintLabel()Z
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLabelWithIconLeft()Z
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLabelWithIconRight()Z
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLabelsInMoreKeys()Z
    .locals 2

    .prologue
    .line 623
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeysColumnAndFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPopupHint()Z
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasShiftedLetterHint()Z
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHashCode:I

    return v0
.end method

.method public final isAlignLeft()Z
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAlignLeftOfCenter()Z
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAlignRight()Z
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    return v0
.end method

.method public final isFixedColumnOrderMoreKeys()Z
    .locals 2

    .prologue
    .line 619
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeysColumnAndFlags:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLongPressEnabled()Z
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mActionFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isModifier()Z
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnKey(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mActionFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isShift()Z
    .locals 2

    .prologue
    .line 492
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isShiftedLetterActivated()Z
    .locals 2

    .prologue
    .line 611
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSpacer()Z
    .locals 1

    .prologue
    .line 488
    instance-of v0, p0, Lcom/android/inputmethod/keyboard/Key$Spacer;

    return v0
.end method

.method public markAsBottomEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 485
    return-void
.end method

.method public markAsLeftEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 473
    return-void
.end method

.method public markAsRightEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 477
    return-void
.end method

.method public markAsTopEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 481
    return-void
.end method

.method public final needsDividersInMoreKeys()Z
    .locals 2

    .prologue
    .line 633
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeysColumnAndFlags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final needsXScale()Z
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final noKeyPreview()Z
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mActionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPressed()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    .line 686
    return-void
.end method

.method public onReleased()V
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    .line 695
    return-void
.end method

.method public final selectHintTextColor(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->hasHintLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelColor:I

    .line 566
    :goto_0
    return v0

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->hasShiftedLetterHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->isShiftedLetterActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintActivatedColor:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintInactivatedColor:I

    goto :goto_0

    .line 566
    :cond_2
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterColor:I

    goto :goto_0
.end method

.method public final selectHintTextSize(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->hasHintLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelSize:I

    .line 555
    :goto_0
    return v0

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->hasShiftedLetterHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mShiftedLetterHintSize:I

    goto :goto_0

    .line 555
    :cond_1
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterSize:I

    goto :goto_0
.end method

.method public final selectMoreKeyTextSize(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->hasLabelsInMoreKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLabelSize:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLetterSize:I

    goto :goto_0
.end method

.method public final selectTextColor(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Key;->isShiftedLetterActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextInactivatedColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextColor:I

    goto :goto_0
.end method

.method public final selectTextSize(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I
    .locals 2
    .parameter "params"

    .prologue
    .line 529
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit16 v0, v0, 0x1c0

    sparse-switch v0, :sswitch_data_0

    .line 541
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLetterSize:I

    :goto_0
    return v0

    .line 531
    :sswitch_0
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLetterSize:I

    goto :goto_0

    .line 533
    :sswitch_1
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLargeLetterSize:I

    goto :goto_0

    .line 535
    :sswitch_2
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLabelSize:I

    goto :goto_0

    .line 537
    :sswitch_3
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLargeLabelSize:I

    goto :goto_0

    .line 539
    :sswitch_4
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelSize:I

    goto :goto_0

    .line 541
    :cond_0
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLabelSize:I

    goto :goto_0

    .line 529
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
        0xc0 -> :sswitch_2
        0x100 -> :sswitch_3
        0x140 -> :sswitch_4
    .end sparse-switch
.end method

.method public final selectTypeface(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)Landroid/graphics/Typeface;
    .locals 1
    .parameter "params"

    .prologue
    .line 519
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 524
    :goto_0
    return-object v0

    .line 521
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 522
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 703
    return-void
.end method

.method public squaredDistanceToEdge(II)I
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 724
    iget v5, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    .line 725
    .local v5, left:I
    iget v8, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    add-int v6, v5, v8

    .line 726
    .local v6, right:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    .line 727
    .local v7, top:I
    iget v8, p0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    add-int v0, v7, v8

    .line 728
    .local v0, bottom:I
    if-ge p1, v5, :cond_0

    move v3, v5

    .line 729
    .local v3, edgeX:I
    :goto_0
    if-ge p2, v7, :cond_2

    move v4, v7

    .line 730
    .local v4, edgeY:I
    :goto_1
    sub-int v1, p1, v3

    .line 731
    .local v1, dx:I
    sub-int v2, p2, v4

    .line 732
    .local v2, dy:I
    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    .line 728
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #edgeX:I
    .end local v4           #edgeY:I
    :cond_0
    if-le p1, v6, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, p1

    goto :goto_0

    .line 729
    .restart local v3       #edgeX:I
    :cond_2
    if-le p2, v0, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, p2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 450
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    if-ne v1, v2, :cond_0

    .line 451
    const-string v0, ""

    .line 455
    .local v0, label:Ljava/lang/String;
    :goto_0
    const-string v1, "%s%s %d,%d %dx%d %s/%s/%s"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/android/inputmethod/keyboard/Key;->mIconId:I

    invoke-static {v4}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIconName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget v4, p0, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    invoke-static {v4}, Lcom/android/inputmethod/keyboard/Key;->backgroundName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 453
    .end local v0           #label:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #label:Ljava/lang/String;
    goto :goto_0
.end method
