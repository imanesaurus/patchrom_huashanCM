.class public Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
.super Ljava/lang/Object;
.source "KeyboardSkinData.java"


# static fields
.field private static final RESOURCEID_KEYSTRING_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mKeySkin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;


# instance fields
.field protected mPackageName:Ljava/lang/String;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mResourceHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData$1;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData$1;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->RESOURCEID_KEYSTRING_TABLE:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const-string v0, ""

    iput-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPackageName:Ljava/lang/String;

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mResourceId:I

    .line 394
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mResourceHash:Ljava/util/HashMap;

    .line 397
    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPm:Landroid/content/pm/PackageManager;

    .line 403
    sput-object v1, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mKeySkin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    .line 404
    return-void
.end method

.method private getCandidateBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "normal"
    .parameter "press"
    .parameter "focus"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 965
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 967
    .local v1, stateDrawable:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 968
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 969
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 972
    :cond_0
    invoke-virtual {p0, p3}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 973
    if-eqz v0, :cond_1

    .line 974
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 977
    :cond_1
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 978
    if-eqz v0, :cond_2

    .line 979
    new-array v2, v4, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 984
    :goto_0
    if-nez v1, :cond_3

    .line 985
    const/4 v2, 0x0

    .line 987
    :goto_1
    return-object v2

    .line 981
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 987
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public static getInstance()Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mKeySkin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    invoke-direct {v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;-><init>()V

    sput-object v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mKeySkin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    .line 415
    :cond_0
    sget-object v0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mKeySkin:Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 5

    .prologue
    .line 553
    const/4 v1, 0x0

    .line 555
    .local v1, result:Landroid/content/res/Resources;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    .line 557
    :try_start_0
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 562
    :cond_0
    :goto_0
    return-object v1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "OpenWnn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyboardSkinData::getResources "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCandidateBack()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 835
    const-string v0, "CandBack"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 998
    const-string v0, "CandidateBackgroundNormal"

    const-string v1, "CandidateBackgroundPressed"

    const-string v2, "CandidateBackgroundFocused"

    invoke-direct {p0, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateBackgroundOneLine()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1018
    const-string v0, "CandidateBackgroundNormalOneLine"

    const-string v1, "CandidateBackgroundPressedOneLine"

    const-string v2, "CandidateBackgroundFocusedOneLine"

    invoke-direct {p0, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateBackgroundWebApi()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1038
    const-string v0, "CandidateBackgroundNormalWebApi"

    const-string v1, "CandidateBackgroundPressedWebApi"

    const-string v2, "CandidateBackgroundFocusedWebApi"

    invoke-direct {p0, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateDialogBack()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 890
    const-string v0, "CandidateBackgroundNormal"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateFocusBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1008
    const-string v0, "CandidateBackgroundFocused"

    const-string v1, "CandidateBackgroundPressed"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateFocusBackgroundOneLine()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1028
    const-string v0, "CandidateBackgroundFocusedOneLine"

    const-string v1, "CandidateBackgroundPressedOneLine"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateFocusBackgroundWebApi()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1048
    const-string v0, "CandidateBackgroundFocusedWebApi"

    const-string v1, "CandidateBackgroundPressedWebApi"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getCandidateBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 4
    .parameter "resourceid"

    .prologue
    .line 600
    const/4 v1, 0x0

    .line 602
    .local v1, result:I
    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->RESOURCEID_KEYSTRING_TABLE:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 606
    :cond_0
    return v1
.end method

.method public getColor(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 617
    invoke-virtual {p0, p2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(I)I

    move-result v0

    .line 619
    .local v0, result:I
    if-nez v0, :cond_0

    .line 620
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 622
    :cond_0
    return v0
.end method

.method public getColor(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, result:I
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getSettingXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 575
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p0, p1, v1}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getStartTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_0

    .line 578
    invoke-interface {v1, v4, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v0

    .line 579
    .local v0, id:I
    if-nez v0, :cond_1

    .line 580
    invoke-interface {v1, v4, v4}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v3

    .line 590
    .end local v0           #id:I
    :cond_0
    :goto_0
    return v3

    .line 582
    .restart local v0       #id:I
    :cond_1
    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 583
    .local v2, r:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 584
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "resourceid"

    .prologue
    .line 538
    const/4 v1, 0x0

    .line 540
    .local v1, result:Landroid/graphics/drawable/Drawable;
    sget-object v2, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->RESOURCEID_KEYSTRING_TABLE:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 544
    :cond_0
    return-object v1
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "key"

    .prologue
    .line 518
    const/4 v1, 0x0

    .line 520
    .local v1, result:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mResourceHash:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mResourceHash:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 522
    .local v0, resid:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 523
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 528
    .end local v0           #resid:Ljava/lang/Integer;
    :cond_0
    return-object v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 4
    .parameter "key"

    .prologue
    .line 632
    const/high16 v1, -0x4080

    .line 633
    .local v1, result:F
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getSettingXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 635
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p0, p1, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getStartTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_0

    .line 638
    const/4 v2, 0x0

    const/high16 v3, -0x4080

    invoke-interface {v0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeFloatValue(IF)F

    move-result v1

    .line 642
    :cond_0
    return v1
.end method

.method public getKeyBg()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 699
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 701
    .local v1, keybgdrawable:Landroid/graphics/drawable/StateListDrawable;
    const-string v2, "KeybackgroundPressShiftOn"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 702
    .local v0, keybg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 703
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 706
    :cond_0
    const-string v2, "KeybackgroundShiftOn"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_1

    .line 708
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 711
    :cond_1
    const-string v2, "KeybackgroundPressShiftOff"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_2

    .line 713
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 716
    :cond_2
    const-string v2, "KeybackgroundShiftOff"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_3

    .line 718
    new-array v2, v5, [I

    const v3, 0x101009f

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 721
    :cond_3
    const-string v2, "KeybackgroundPress"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_4

    .line 723
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 726
    :cond_4
    const-string v2, "Keybackground"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 727
    if-eqz v0, :cond_5

    .line 728
    new-array v2, v4, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 733
    :goto_0
    return-object v1

    .line 730
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 703
    nop

    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 708
    :array_1
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 713
    :array_2
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public getKeyBg2nd()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 742
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 744
    .local v1, keybgdrawable:Landroid/graphics/drawable/StateListDrawable;
    const-string v2, "Keybackground2ndPressShiftOn"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 745
    .local v0, keybg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 746
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 749
    :cond_0
    const-string v2, "Keybackground2ndShiftOn"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 750
    if-eqz v0, :cond_1

    .line 751
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 754
    :cond_1
    const-string v2, "Keybackground2ndPressShiftOff"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 755
    if-eqz v0, :cond_2

    .line 756
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 759
    :cond_2
    const-string v2, "Keybackground2ndShiftOff"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 760
    if-eqz v0, :cond_3

    .line 761
    new-array v2, v5, [I

    const v3, 0x101009f

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 764
    :cond_3
    const-string v2, "Keybackground2ndPress"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_4

    .line 766
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 769
    :cond_4
    const-string v2, "Keybackground2nd"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_5

    .line 771
    new-array v2, v4, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 776
    :goto_0
    return-object v1

    .line 773
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 746
    nop

    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 751
    :array_1
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 756
    :array_2
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public getKeyBg3rd()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 785
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 787
    .local v1, keybgdrawable:Landroid/graphics/drawable/StateListDrawable;
    const-string v2, "Keybackground3rdPress"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 788
    .local v0, keybg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 789
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 792
    :cond_0
    const-string v2, "Keybackground3rd"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_1

    .line 794
    new-array v2, v4, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 799
    :goto_0
    return-object v1

    .line 796
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyPreview()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 808
    const-string v0, "KeyPreviewBackground"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPreviewColor()I
    .locals 1

    .prologue
    .line 917
    const-string v0, "KeyPreviewColor"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeyPreviewLeft()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 817
    const-string v0, "KeyPreviewBackgroundLeft"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPreviewRight()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 826
    const-string v0, "KeyPreviewBackgroundRight"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getKeyTextColor()I
    .locals 1

    .prologue
    .line 899
    const-string v0, "KeyColor"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeyTextColor2nd()I
    .locals 1

    .prologue
    .line 908
    const-string v0, "KeyColor2nd"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeyboardBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 681
    const-string v0, "Keyboardbackground"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardBg1Line()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 690
    const-string v0, "Keyboardbackground1Line"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSettingXmlParser()Landroid/content/res/XmlResourceParser;
    .locals 5

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPackageName:Ljava/lang/String;

    iget v3, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 478
    :cond_0
    return-object v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 944
    const-string v0, "ShadowColor"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getShadowColor2nd()I
    .locals 1

    .prologue
    .line 953
    const-string v0, "ShadowColor2nd"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    .line 926
    const-string v0, "ShadowRadius"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getShadowRadius2nd()F
    .locals 1

    .prologue
    .line 935
    const-string v0, "ShadowRadius2nd"

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getStartTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Landroid/content/res/XmlResourceParser;
    .locals 6
    .parameter "starttag"
    .parameter "parser"

    .prologue
    const/4 v4, 0x1

    .line 653
    if-eqz p2, :cond_2

    .line 656
    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, event:I
    if-eq v1, v4, :cond_1

    .line 657
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 658
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, tag:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 664
    .end local v2           #tag:Ljava/lang/String;
    :cond_1
    if-ne v1, v4, :cond_2

    .line 665
    const/4 p2, 0x0

    .line 672
    .end local v1           #event:I
    :cond_2
    :goto_0
    return-object p2

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "OpenWnn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyboardSkinData::getStartTag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTab()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 844
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 846
    .local v1, tabdrawable:Landroid/graphics/drawable/StateListDrawable;
    const-string v2, "tab_press"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 847
    .local v0, tab:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 848
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 851
    :cond_0
    const-string v2, "tab_select"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 852
    if-eqz v0, :cond_1

    .line 853
    new-array v2, v4, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 858
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    return-object v2

    .line 855
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTabNoSelect()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 867
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 869
    .local v1, tabdrawable:Landroid/graphics/drawable/StateListDrawable;
    const-string v2, "tab_press"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 870
    .local v0, tab:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 871
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 874
    :cond_0
    const-string v2, "tab_no_select"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 875
    if-eqz v0, :cond_1

    .line 876
    new-array v2, v4, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 881
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    return-object v2

    .line 878
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPm:Landroid/content/pm/PackageManager;

    .line 425
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 426
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->setPreferences(Landroid/content/SharedPreferences;)V

    .line 427
    return-void
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPackageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeResourceHashMap()V
    .locals 8

    .prologue
    .line 485
    const/4 v5, 0x0

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mResourceHash:Ljava/util/HashMap;

    .line 486
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getSettingXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 488
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    if-eqz v2, :cond_1

    .line 489
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mResourceHash:Ljava/util/HashMap;

    .line 490
    const-string v5, "Drawable"

    invoke-virtual {p0, v5, v2}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->getStartTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 493
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, event:I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    .line 494
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 495
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 496
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 497
    .local v3, resid:Ljava/lang/Integer;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mResourceHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    .end local v1           #event:I
    .end local v3           #resid:Ljava/lang/Integer;
    .end local v4           #tag:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "OpenWnn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyboardSkinData::makeResourceHashMap "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 498
    .restart local v1       #event:I
    :cond_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 499
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 500
    .restart local v4       #tag:Ljava/lang/String;
    const-string v5, "Drawable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "pref"

    .prologue
    .line 435
    const-string v5, "keyboard_skin_add"

    const-string v6, ""

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, classname:Ljava/lang/String;
    const-string v5, ""

    iput-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPackageName:Ljava/lang/String;

    .line 437
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 438
    const/4 v5, 0x0

    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, packagename:Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v3, name:Landroid/content/ComponentName;
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_0

    .line 442
    iget-object v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 443
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 444
    iput-object v4, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mPackageName:Ljava/lang/String;

    .line 445
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "settingfile"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->mResourceId:I

    .line 446
    invoke-virtual {p0}, Ljp/co/omronsoft/iwnnime/ml/KeyboardSkinData;->makeResourceHashMap()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #name:Landroid/content/ComponentName;
    .end local v4           #packagename:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 449
    .restart local v4       #packagename:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 450
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "OpenWnn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyboardSkinData::setPreferences "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
