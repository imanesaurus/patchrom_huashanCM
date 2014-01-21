.class public final Lcom/android/inputmethod/latin/SubtypeLocale;
.super Ljava/lang/Object;
.source "SubtypeLocale.java"


# static fields
.field private static final RESOURCE_PACKAGE_NAME:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static final sExceptionalDisplayNamesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExceptionalLocaleToWithLayoutNameIdsMap:Ljava/util/HashMap;
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

.field private static sInitialized:Z

.field private static final sKeyboardLayoutToDisplayNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKeyboardLayoutToNameIdsMap:Ljava/util/HashMap;
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

.field private static final sLocaleAndExtraValueToKeyboardLayoutSetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPredefinedKeyboardLayoutSet:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/inputmethod/latin/SubtypeLocale;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeLocale;->TAG:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/android/inputmethod/latin/DictionaryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeLocale;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/latin/SubtypeLocale;->sInitialized:Z

    .line 47
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeLocale;->sKeyboardLayoutToDisplayNameMap:Ljava/util/HashMap;

    .line 50
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeLocale;->sKeyboardLayoutToNameIdsMap:Ljava/util/HashMap;

    .line 53
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionalLocaleToWithLayoutNameIdsMap:Ljava/util/HashMap;

    .line 62
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionalDisplayNamesMap:Ljava/util/HashMap;

    .line 66
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeLocale;->sLocaleAndExtraValueToKeyboardLayoutSetMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static getKeyboardLayoutSetDisplayName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;
    .locals 2
    .parameter "subtype"

    .prologue
    .line 205
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, layoutName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKeyboardLayoutSetDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "layoutName"

    .prologue
    .line 210
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeLocale;->sKeyboardLayoutToDisplayNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getKeyboardLayoutSetName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;
    .locals 5
    .parameter "subtype"

    .prologue
    .line 214
    const-string v2, "KeyboardLayoutSet"

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, keyboardLayoutSet:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, key:Ljava/lang/String;
    sget-object v2, Lcom/android/inputmethod/latin/SubtypeLocale;->sLocaleAndExtraValueToKeyboardLayoutSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #keyboardLayoutSet:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 224
    .end local v0           #key:Ljava/lang/String;
    .restart local v1       #keyboardLayoutSet:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 225
    sget-object v2, Lcom/android/inputmethod/latin/SubtypeLocale;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyboardLayoutSet not found, use QWERTY: locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extraValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v1, "qwerty"

    .line 229
    .end local v1           #keyboardLayoutSet:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static final getNoLanguageLayoutKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "keyboardLayoutName"

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zz_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPredefinedKeyboardLayoutSet()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeLocale;->sPredefinedKeyboardLayoutSet:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSubtypeDisplayName(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .parameter "subtype"
    .parameter "res"

    .prologue
    .line 168
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_0

    const-string v4, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v4}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, replacementString:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v2

    .line 173
    .local v2, nameResId:I
    new-instance v0, Lcom/android/inputmethod/latin/SubtypeLocale$1;

    invoke-direct {v0, v2, v3, p0}, Lcom/android/inputmethod/latin/SubtypeLocale$1;-><init>(ILjava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 189
    .local v0, getSubtypeName:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->isNoLanguage(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 191
    .local v1, locale:Ljava/util/Locale;
    :goto_1
    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;->runInLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    .line 168
    .end local v0           #getSubtypeName:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<Ljava/lang/String;>;"
    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #nameResId:I
    .end local v3           #replacementString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeLocaleDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 189
    .restart local v0       #getSubtypeName:Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale;,"Lcom/android/inputmethod/latin/LocaleUtils$RunInLocale<Ljava/lang/String;>;"
    .restart local v2       #nameResId:I
    .restart local v3       #replacementString:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_1
.end method

.method public static getSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;
    .locals 2
    .parameter "subtype"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, localeString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static getSubtypeLocaleDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "localeString"

    .prologue
    .line 144
    sget-object v2, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionalDisplayNamesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, exceptionalValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 149
    .end local v0           #exceptionalValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 148
    .restart local v0       #exceptionalValue:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 149
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/StringUtils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSubtypeNameId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "localeString"
    .parameter "keyboardLayoutName"

    .prologue
    .line 133
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_0

    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->isExceptionalLocale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    sget-object v2, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionalLocaleToWithLayoutNameIdsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    :goto_0
    return v2

    .line 136
    :cond_0
    const-string v2, "zz"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeLocale;->getNoLanguageLayoutKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, key:Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/android/inputmethod/latin/SubtypeLocale;->sKeyboardLayoutToNameIdsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 140
    .local v1, nameId:Ljava/lang/Integer;
    if-nez v1, :cond_2

    const v2, 0x7f0a001e

    goto :goto_0

    .end local v0           #key:Ljava/lang/String;
    .end local v1           #nameId:Ljava/lang/Integer;
    :cond_1
    move-object v0, p1

    .line 136
    goto :goto_1

    .line 140
    .restart local v0       #key:Ljava/lang/String;
    .restart local v1       #nameId:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 75
    const-class v19, Lcom/android/inputmethod/latin/SubtypeLocale;

    monitor-enter v19

    :try_start_0
    sget-boolean v18, Lcom/android/inputmethod/latin/SubtypeLocale;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v18, :cond_0

    .line 118
    :goto_0
    monitor-exit v19

    return-void

    .line 77
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 79
    .local v15, res:Landroid/content/res/Resources;
    const v18, 0x7f0e000c

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 80
    .local v14, predefinedLayoutSet:[Ljava/lang/String;
    sput-object v14, Lcom/android/inputmethod/latin/SubtypeLocale;->sPredefinedKeyboardLayoutSet:[Ljava/lang/String;

    .line 81
    const v18, 0x7f0e000d

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, layoutDisplayNames:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_1

    .line 84
    aget-object v10, v14, v5

    .line 85
    .local v10, layoutName:Ljava/lang/String;
    sget-object v18, Lcom/android/inputmethod/latin/SubtypeLocale;->sKeyboardLayoutToDisplayNameMap:Ljava/util/HashMap;

    aget-object v20, v9, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "string/subtype_generic_"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 87
    .local v17, resourceName:Ljava/lang/String;
    const/16 v18, 0x0

    sget-object v20, Lcom/android/inputmethod/latin/SubtypeLocale;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 88
    .local v16, resId:I
    sget-object v18, Lcom/android/inputmethod/latin/SubtypeLocale;->sKeyboardLayoutToNameIdsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "string/subtype_no_language_"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, noLanguageResName:Ljava/lang/String;
    const/16 v18, 0x0

    sget-object v20, Lcom/android/inputmethod/latin/SubtypeLocale;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v13, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 93
    .local v12, noLanguageResId:I
    invoke-static {v10}, Lcom/android/inputmethod/latin/SubtypeLocale;->getNoLanguageLayoutKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, key:Ljava/lang/String;
    sget-object v18, Lcom/android/inputmethod/latin/SubtypeLocale;->sKeyboardLayoutToNameIdsMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 97
    .end local v6           #key:Ljava/lang/String;
    .end local v10           #layoutName:Ljava/lang/String;
    .end local v12           #noLanguageResId:I
    .end local v13           #noLanguageResName:Ljava/lang/String;
    .end local v16           #resId:I
    .end local v17           #resourceName:Ljava/lang/String;
    :cond_1
    const v18, 0x7f0e000a

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, exceptionalLocales:[Ljava/lang/String;
    const v18, 0x7f0e000b

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, exceptionalDisplayNames:[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_2
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 102
    aget-object v11, v4, v5

    .line 103
    .local v11, localeString:Ljava/lang/String;
    sget-object v18, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionalDisplayNamesMap:Ljava/util/HashMap;

    aget-object v20, v3, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "string/subtype_with_layout_"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 105
    .restart local v17       #resourceName:Ljava/lang/String;
    const/16 v18, 0x0

    sget-object v20, Lcom/android/inputmethod/latin/SubtypeLocale;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 106
    .restart local v16       #resId:I
    sget-object v18, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionalLocaleToWithLayoutNameIdsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 109
    .end local v11           #localeString:Ljava/lang/String;
    .end local v16           #resId:I
    .end local v17           #resourceName:Ljava/lang/String;
    :cond_2
    const v18, 0x7f0e000e

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, keyboardLayoutSetMap:[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_3

    .line 112
    aget-object v6, v8, v5

    .line 113
    .restart local v6       #key:Ljava/lang/String;
    add-int/lit8 v18, v5, 0x1

    aget-object v7, v8, v18

    .line 114
    .local v7, keyboardLayoutSet:Ljava/lang/String;
    sget-object v18, Lcom/android/inputmethod/latin/SubtypeLocale;->sLocaleAndExtraValueToKeyboardLayoutSetMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 117
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #keyboardLayoutSet:Ljava/lang/String;
    :cond_3
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/inputmethod/latin/SubtypeLocale;->sInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 75
    .end local v3           #exceptionalDisplayNames:[Ljava/lang/String;
    .end local v4           #exceptionalLocales:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v8           #keyboardLayoutSetMap:[Ljava/lang/String;
    .end local v9           #layoutDisplayNames:[Ljava/lang/String;
    .end local v14           #predefinedLayoutSet:[Ljava/lang/String;
    .end local v15           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18
.end method

.method public static isExceptionalLocale(Ljava/lang/String;)Z
    .locals 1
    .parameter "localeString"

    .prologue
    .line 125
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionalLocaleToWithLayoutNameIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNoLanguage(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2
    .parameter "subtype"

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, localeString:Ljava/lang/String;
    const-string v1, "zz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
