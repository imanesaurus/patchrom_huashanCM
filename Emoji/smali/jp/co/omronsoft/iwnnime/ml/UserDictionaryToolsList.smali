.class public abstract Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;
.super Landroid/app/Activity;
.source "UserDictionaryToolsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final DIALOG_CONTROL_DELETE_CONFIRM:I = 0x0

.field private static final DIALOG_CONTROL_INIT_CONFIRM:I = 0x1

.field private static final DOUBLE_TAP_TIME:I = 0x12c

.field private static final FOCUS_BACKGROUND_COLOR:I = -0x55cc4a1b

.field private static final MAX_LIST_WORD_COUNT:I = 0x32

.field public static final MAX_WORD_COUNT:I = 0x1f4

.field private static final MENU_ITEM_ADD:I = 0x0

.field private static final MENU_ITEM_DELETE:I = 0x2

.field private static final MENU_ITEM_EDIT:I = 0x1

.field private static final MENU_ITEM_INIT:I = 0x3

.field private static final MIN_WORD_COUNT:I = 0x0

.field private static final UNFOCUS_BACKGROUND_COLOR:I = -0xdbdbdc

.field private static final WORD_TEXT_SIZE:I = 0x10

.field private static sBeforeSelectedViewID:I

.field private static sJustBeforeActionTime:J

.field private static started:Z


# instance fields
.field private mAddMenuEnabled:Z

.field private mDeleteMenuEnabled:Z

.field private mDialogDeleteWords:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogInitWords:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogShow:I

.field private mEditMenuEnabled:Z

.field protected mEditViewName:Ljava/lang/String;

.field protected mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

.field private mFocusingPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

.field private mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

.field private mInit:Z

.field private mInitMenuEnabled:Z

.field private mInitializedMenu:Z

.field protected mIsNoStroke:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mMenu:Landroid/view/Menu;

.field protected mPackageName:Ljava/lang/String;

.field private mRightButton:Landroid/widget/Button;

.field private mSelectedWords:Z

.field private mSortData:[Ljp/co/omronsoft/iwnnime/ml/WnnWord;

.field private mTableLayout:Landroid/widget/TableLayout;

.field private mWordCount:I

.field private mWordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->started:Z

    .line 121
    const/4 v0, -0x1

    sput v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->sBeforeSelectedViewID:I

    .line 123
    const-wide/16 v0, -0x1

    sput-wide v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->sJustBeforeActionTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    .line 102
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    .line 105
    iput v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I

    .line 117
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInitializedMenu:Z

    .line 126
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;

    .line 132
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInit:Z

    .line 135
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mLeftButton:Landroid/widget/Button;

    .line 138
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mRightButton:Landroid/widget/Button;

    .line 144
    iput-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mIsNoStroke:Z

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I

    .line 450
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$3;-><init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogDeleteWords:Landroid/content/DialogInterface$OnClickListener;

    .line 502
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;

    invoke-direct {v0, p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$4;-><init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)V

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogInitWords:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    return-void
.end method

.method static synthetic access$000(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I

    return v0
.end method

.method static synthetic access$002(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I

    return p1
.end method

.method static synthetic access$100(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->updateWordList(Z)V

    return-void
.end method

.method static synthetic access$200(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$302(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I

    return p1
.end method

.method static synthetic access$400(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    return-object v0
.end method

.method static synthetic access$500(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    return-object v0
.end method

.method static synthetic access$600(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInitializedMenu:Z

    return v0
.end method

.method static synthetic access$700(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method private getInitViewId()I
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mIsNoStroke:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1f5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasStarted()Z
    .locals 1

    .prologue
    .line 805
    sget-boolean v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->started:Z

    return v0
.end method

.method private openEditScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "action"
    .parameter "stroke"
    .parameter "candidate"

    .prologue
    .line 645
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "openEditScreen() : start."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mEditViewName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    const-string v1, "stroke"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const-string v1, "candidate"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->startActivity(Landroid/content/Intent;)V

    .line 652
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OpenWnn"

    const-string v2, "openEditScreen() : end."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_1
    return-void
.end method

.method private setOptionsMenuEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 322
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "setOptionsMenuEnabled() : start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_2

    .line 327
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mAddMenuEnabled:Z

    .line 333
    :goto_0
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 335
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mEditMenuEnabled:Z

    .line 336
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDeleteMenuEnabled:Z

    .line 337
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInitMenuEnabled:Z

    .line 349
    :goto_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "setOptionsMenuEnabled() : end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_1
    return-void

    .line 329
    :cond_2
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mAddMenuEnabled:Z

    goto :goto_0

    .line 339
    :cond_3
    iget-boolean v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mSelectedWords:Z

    if-eqz v0, :cond_4

    .line 340
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mEditMenuEnabled:Z

    .line 341
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDeleteMenuEnabled:Z

    .line 346
    :goto_2
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInitMenuEnabled:Z

    goto :goto_1

    .line 343
    :cond_4
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mEditMenuEnabled:Z

    .line 344
    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDeleteMenuEnabled:Z

    goto :goto_2
.end method

.method private tableCreateParam(II)Landroid/widget/TableLayout$LayoutParams;
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 276
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private updateWordList(Z)V
    .locals 33
    .parameter "keepFocus"

    .prologue
    .line 673
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->getInitViewId()I

    move-result v6

    .line 674
    .local v6, currentSelectId:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInit:Z

    move/from16 v29, v0

    if-nez v29, :cond_2

    .line 675
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInit:Z

    .line 677
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->getWindow()Landroid/view/Window;

    move-result-object v26

    .line 678
    .local v26, window:Landroid/view/Window;
    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v27

    .line 679
    .local v27, windowManager:Landroid/view/WindowManager;
    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 680
    .local v7, display:Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v23

    .line 682
    .local v23, system_width:I
    new-instance v8, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;-><init>(Landroid/content/Context;)V

    .line 683
    .local v8, dummy:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    const/high16 v29, 0x4180

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setTextSize(F)V

    .line 684
    invoke-virtual {v8}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    .line 685
    .local v15, paint:Landroid/text/TextPaint;
    invoke-virtual {v15}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    .line 686
    .local v9, fontMetrics:Landroid/graphics/Paint$FontMetricsInt;
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v29

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v30, v0

    add-int v29, v29, v30

    mul-int/lit8 v18, v29, 0x2

    .line 688
    .local v18, row_hight:I
    invoke-virtual/range {p0 .. p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 689
    .local v16, res:Landroid/content/res/Resources;
    const/4 v10, 0x1

    .local v10, i:I
    :goto_0
    const/16 v29, 0x32

    move/from16 v0, v29

    if-gt v10, v0, :cond_3

    .line 690
    new-instance v17, Landroid/widget/TableRow;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 691
    .local v17, row:Landroid/widget/TableRow;
    new-instance v22, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;-><init>(Landroid/content/Context;)V

    .line 692
    .local v22, stroke:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setId(I)V

    .line 693
    div-int/lit8 v29, v23, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setWidth(I)V

    .line 694
    const/high16 v29, 0x4180

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setTextSize(F)V

    .line 695
    const v29, -0x333334

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setTextColor(I)V

    .line 696
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 697
    invoke-virtual/range {v22 .. v22}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setSingleLine()V

    .line 698
    const v29, 0x7f0b0030

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    const v30, 0x7f0b0031

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    const v31, 0x7f0b0032

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    const v32, 0x7f0b0033

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setPadding(IIII)V

    .line 702
    sget-object v29, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 703
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setClickable(Z)V

    .line 704
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setFocusable(Z)V

    .line 705
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setFocusableInTouchMode(Z)V

    .line 706
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 707
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 708
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setHeight(I)V

    .line 709
    const/16 v29, 0x10

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setGravity(I)V

    .line 710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mIsNoStroke:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 711
    const/16 v29, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setVisibility(I)V

    .line 713
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 715
    new-instance v5, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;-><init>(Landroid/content/Context;)V

    .line 716
    .local v5, candidate:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    add-int/lit16 v0, v10, 0x1f4

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setId(I)V

    .line 717
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mIsNoStroke:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    const/16 v29, 0x1

    :goto_1
    div-int v29, v23, v29

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setWidth(I)V

    .line 718
    const/high16 v29, 0x4180

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setTextSize(F)V

    .line 719
    const v29, -0x333334

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setTextColor(I)V

    .line 720
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 721
    invoke-virtual {v5}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setSingleLine()V

    .line 722
    const v29, 0x7f0b0034

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    const v30, 0x7f0b0035

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    const v31, 0x7f0b0036

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    const v32, 0x7f0b0037

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v5, v0, v1, v2, v3}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setPadding(IIII)V

    .line 726
    sget-object v29, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 727
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setClickable(Z)V

    .line 728
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setFocusable(Z)V

    .line 729
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setFocusableInTouchMode(Z)V

    .line 730
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 731
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 732
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setHeight(I)V

    .line 733
    const/16 v29, 0x10

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setGravity(I)V

    .line 734
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setPairView(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;)V

    .line 735
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setPairView(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;)V

    .line 736
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mTableLayout:Landroid/widget/TableLayout;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    const/16 v31, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->tableCreateParam(II)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 717
    :cond_1
    const/16 v29, 0x2

    goto/16 :goto_1

    .line 741
    .end local v5           #candidate:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    .end local v7           #display:Landroid/view/Display;
    .end local v8           #dummy:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    .end local v9           #fontMetrics:Landroid/graphics/Paint$FontMetricsInt;
    .end local v10           #i:I
    .end local v15           #paint:Landroid/text/TextPaint;
    .end local v16           #res:Landroid/content/res/Resources;
    .end local v17           #row:Landroid/widget/TableRow;
    .end local v18           #row_hight:I
    .end local v22           #stroke:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    .end local v23           #system_width:I
    .end local v26           #window:Landroid/view/Window;
    .end local v27           #windowManager:Landroid/view/WindowManager;
    :cond_2
    if-eqz p1, :cond_3

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getId()I

    move-result v6

    .line 746
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 747
    .local v20, size:I
    move-object/from16 v0, p0

    iget v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I

    move/from16 v21, v0

    .line 749
    .local v21, start:I
    const v29, 0x7f080046

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 750
    .local v24, t:Landroid/widget/TextView;
    const/16 v29, 0x32

    move/from16 v0, v20

    move/from16 v1, v29

    if-gt v0, v1, :cond_5

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mLeftButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Landroid/view/View;

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 761
    :goto_2
    const/16 v29, 0x1f4

    move/from16 v0, v29

    if-ge v0, v6, :cond_8

    const/16 v29, 0x1f4

    :goto_3
    sub-int v19, v6, v29

    .line 763
    .local v19, selectedId:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    const/16 v29, 0x32

    move/from16 v0, v29

    if-ge v10, v0, :cond_b

    .line 764
    add-int/lit8 v29, v20, -0x1

    add-int v30, v21, v10

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 765
    if-lez v10, :cond_4

    add-int/lit8 v29, v10, 0x1

    move/from16 v0, v19

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 766
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mIsNoStroke:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    const/16 v29, 0x1f4

    :goto_5
    add-int v11, v10, v29

    .line 767
    .local v11, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mTableLayout:Landroid/widget/TableLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->requestFocus()Z

    .line 770
    .end local v11           #id:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mTableLayout:Landroid/widget/TableLayout;

    move-object/from16 v29, v0

    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Landroid/view/View;

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 763
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 753
    .end local v10           #i:I
    .end local v19           #selectedId:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mLeftButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Landroid/view/View;

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 754
    add-int/lit8 v12, v21, 0x32

    .line 755
    .local v12, last:I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v30, v21, 0x1

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " - "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move/from16 v0, v20

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mLeftButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    if-eqz v21, :cond_6

    const/16 v29, 0x1

    :goto_7
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mRightButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_7

    const/16 v29, 0x1

    :goto_8
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 757
    :cond_6
    const/16 v29, 0x0

    goto :goto_7

    .line 758
    :cond_7
    const/16 v29, 0x0

    goto :goto_8

    .line 761
    .end local v12           #last:I
    :cond_8
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 766
    .restart local v10       #i:I
    .restart local v19       #selectedId:I
    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_5

    .line 775
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mSortData:[Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    move-object/from16 v29, v0

    add-int v30, v21, v10

    aget-object v28, v29, v30

    .line 776
    .local v28, wnnWordGet:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    move-object/from16 v0, v28

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v14

    .line 777
    .local v14, len_stroke:I
    move-object/from16 v0, v28

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v13

    .line 778
    .local v13, len_candidate:I
    if-eqz v14, :cond_b

    if-nez v13, :cond_c

    .line 796
    .end local v13           #len_candidate:I
    .end local v14           #len_stroke:I
    .end local v28           #wnnWordGet:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mTableLayout:Landroid/widget/TableLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TableLayout;->requestLayout()V

    .line 797
    return-void

    .line 782
    .restart local v13       #len_candidate:I
    .restart local v14       #len_stroke:I
    .restart local v28       #wnnWordGet:Ljp/co/omronsoft/iwnnime/ml/WnnWord;
    :cond_c
    add-int/lit8 v29, v10, 0x1

    move/from16 v0, v19

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 783
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mIsNoStroke:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    const/16 v29, 0x1f4

    :goto_9
    add-int v11, v19, v29

    .line 784
    .restart local v11       #id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mTableLayout:Landroid/widget/TableLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->requestFocus()Z

    .line 787
    .end local v11           #id:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mTableLayout:Landroid/widget/TableLayout;

    move-object/from16 v29, v0

    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 788
    .local v25, text:Landroid/widget/TextView;
    move-object/from16 v0, v28

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->stroke:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mTableLayout:Landroid/widget/TableLayout;

    move-object/from16 v29, v0

    add-int/lit8 v30, v10, 0x1

    move/from16 v0, v30

    add-int/lit16 v0, v0, 0x1f4

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25           #text:Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 791
    .restart local v25       #text:Landroid/widget/TextView;
    move-object/from16 v0, v28

    iget-object v0, v0, Ljp/co/omronsoft/iwnnime/ml/WnnWord;->candidate:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Landroid/view/View;

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 783
    .end local v25           #text:Landroid/widget/TextView;
    :cond_e
    const/16 v29, 0x0

    goto :goto_9
.end method


# virtual methods
.method public addWord()V
    .locals 3

    .prologue
    .line 613
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "addWord() : start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    const-string v0, "android.intent.action.INSERT"

    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->openEditScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "addWord() : end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_1
    return-void
.end method

.method public editWord()V
    .locals 4

    .prologue
    .line 623
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OpenWnn"

    const-string v3, "editWord() : start."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getId()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_2

    .line 627
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, candidate:Ljava/lang/String;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, stroke:Ljava/lang/String;
    :goto_0
    const-string v2, "android.intent.action.EDIT"

    invoke-direct {p0, v2, v1, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->openEditScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OpenWnn"

    const-string v3, "editWord() : end."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1
    return-void

    .line 630
    .end local v0           #candidate:Ljava/lang/String;
    .end local v1           #stroke:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    .restart local v1       #stroke:Ljava/lang/String;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    invoke-virtual {v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #candidate:Ljava/lang/String;
    goto :goto_0
.end method

.method protected abstract getComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;"
        }
    .end annotation
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 534
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 163
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "onCreate() : start."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const/4 v1, 0x1

    sput-boolean v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->started:Z

    .line 170
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->setContentView(I)V

    .line 171
    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mTableLayout:Landroid/widget/TableLayout;

    .line 173
    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 174
    .local v0, b:Landroid/widget/Button;
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$1;

    invoke-direct {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$1;-><init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mLeftButton:Landroid/widget/Button;

    .line 185
    const v1, 0x7f080047

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 186
    .restart local v0       #b:Landroid/widget/Button;
    new-instance v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$2;

    invoke-direct {v1, p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList$2;-><init>(Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mRightButton:Landroid/widget/Button;

    .line 197
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mIsNoStroke:Z

    if-eqz v1, :cond_1

    .line 198
    const v1, 0x7f080048

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_1
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OpenWnn"

    const-string v2, "onCreate() : end."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f06009b

    const v3, 0x7f06009a

    const/4 v2, 0x1

    .line 416
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onCreateDialog() : start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 435
    const-string v0, "OpenWnn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog : Invaled Get DialogID. ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "onCreateDialog() : end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 419
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0600bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogDeleteWords:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 427
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0600aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogInitWords:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x108003c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onCreateOptionsMenu() : start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 291
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->setOptionsMenuEnabled()V

    .line 293
    const v0, 0x7f0600b7

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mAddMenuEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 297
    const v0, 0x7f0600b8

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mEditMenuEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 301
    const/4 v0, 0x2

    const v1, 0x7f0600ba

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDeleteMenuEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 305
    const/4 v0, 0x3

    const v1, 0x7f0600c1

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInitMenuEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 309
    iput-object p1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mMenu:Landroid/view/Menu;

    .line 310
    iput-boolean v3, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInitializedMenu:Z

    .line 312
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpenWnn"

    const-string v1, "onCreateOptionsMenu() : end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 263
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 265
    const/4 v0, 0x0

    sput-boolean v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->started:Z

    .line 266
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const v5, -0x333334

    const v4, -0x55cc4a1b

    .line 578
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OpenWnn"

    const-string v3, "onFocusChange() : start."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, p1

    .line 580
    check-cast v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    .line 581
    .local v1, view:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    invoke-virtual {v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getPairView()Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    move-result-object v0

    .line 583
    .local v0, pairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    .line 584
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    .line 585
    if-eqz p2, :cond_6

    .line 586
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OpenWnn"

    const-string v3, "Focused view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1
    invoke-virtual {v1, v6}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setTextColor(I)V

    .line 588
    invoke-virtual {v1, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setBackgroundColor(I)V

    .line 589
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mIsNoStroke:Z

    if-nez v2, :cond_2

    .line 590
    invoke-virtual {v0, v6}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setTextColor(I)V

    .line 591
    invoke-virtual {v0, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setBackgroundColor(I)V

    .line 593
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mSelectedWords:Z

    .line 603
    :cond_3
    :goto_0
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInitializedMenu:Z

    if-eqz v2, :cond_4

    .line 604
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 606
    :cond_4
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "OpenWnn"

    const-string v3, "onFocusChange() : end."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_5
    return-void

    .line 595
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mSelectedWords:Z

    .line 596
    invoke-virtual {v1, v5}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setTextColor(I)V

    .line 597
    invoke-virtual {v1, v7}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    iget-boolean v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mIsNoStroke:Z

    if-nez v2, :cond_3

    .line 599
    invoke-virtual {v0, v5}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setTextColor(I)V

    .line 600
    invoke-virtual {v0, v7}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 403
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 404
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->openOptionsMenu()V

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 360
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "onOptionsItemSelected() : start."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 389
    const/4 v0, 0x0

    .line 391
    .local v0, ret:Z
    :goto_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OpenWnn"

    const-string v2, "onOptionsItemSelected() : end."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    return v0

    .line 364
    .end local v0           #ret:Z
    :pswitch_0
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->addWord()V

    .line 365
    const/4 v0, 0x1

    .line 366
    .restart local v0       #ret:Z
    goto :goto_0

    .line 370
    .end local v0           #ret:Z
    :pswitch_1
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->editWord()V

    .line 371
    const/4 v0, 0x1

    .line 372
    .restart local v0       #ret:Z
    goto :goto_0

    .line 376
    .end local v0           #ret:Z
    :pswitch_2
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->showDialog(I)V

    .line 377
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I

    .line 378
    const/4 v0, 0x1

    .line 379
    .restart local v0       #ret:Z
    goto :goto_0

    .line 383
    .end local v0           #ret:Z
    :pswitch_3
    invoke-virtual {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->showDialog(I)V

    .line 384
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I

    .line 385
    const/4 v0, 0x1

    .line 386
    .restart local v0       #ret:Z
    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 234
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I

    if-nez v0, :cond_2

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->dismissDialog(I)V

    .line 238
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I

    .line 244
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 245
    return-void

    .line 239
    :cond_2
    iget v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I

    if-ne v0, v3, :cond_1

    .line 240
    invoke-virtual {p0, v3}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->dismissDialog(I)V

    .line 241
    iput v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 211
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 213
    iput v3, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mDialogShow:I

    .line 214
    sput v3, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->sBeforeSelectedViewID:I

    .line 215
    const-wide/16 v1, -0x1

    sput-wide v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->sJustBeforeActionTime:J

    .line 216
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mEngineInterface:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;

    invoke-interface {v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsEngineInterface;->getWords()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;

    .line 217
    iput v4, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordCount:I

    .line 218
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->sortList(Ljava/util/ArrayList;)V

    .line 220
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 221
    .local v0, leftText:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-direct {p0, v4}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->updateWordList(Z)V

    .line 224
    iget-boolean v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mInitializedMenu:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ltz v1, :cond_1

    .line 225
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v1}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 227
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpenWnn"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 255
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "e"

    .prologue
    .line 542
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OpenWnn"

    const-string v2, "onTouch() : start."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p1

    .line 544
    check-cast v0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    .line 546
    .local v0, view:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 567
    :goto_0
    invoke-static {}, Ljp/co/omronsoft/iwnnime/ml/OpenWnn;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OpenWnn"

    const-string v2, "onTouch() : end."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 549
    :pswitch_0
    sget v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->sBeforeSelectedViewID:I

    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getId()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 551
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getId()I

    move-result v1

    sput v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->sBeforeSelectedViewID:I

    .line 561
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    sput-wide v1, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->sJustBeforeActionTime:J

    goto :goto_0

    .line 553
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    sget-wide v3, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->sJustBeforeActionTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 555
    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    .line 556
    invoke-virtual {v0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;->getPairView()Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mFocusingPairView:Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsListFocus;

    .line 557
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->editWord()V

    goto :goto_1

    .line 546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected sortList(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/iwnnime/ml/WnnWord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljp/co/omronsoft/iwnnime/ml/WnnWord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mSortData:[Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    .line 662
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mSortData:[Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 663
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->mSortData:[Ljp/co/omronsoft/iwnnime/ml/WnnWord;

    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/UserDictionaryToolsList;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 664
    return-void
.end method
