.class public final Lcom/android/inputmethod/latin/ImfUtils;
.super Ljava/lang/Object;
.source "ImfUtils.java"


# static fields
.field private static sInputMethodInfoOfThisIme:Landroid/view/inputmethod/InputMethodInfo;

.field private static sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static checkIfSubtypeBelongsToThisImeAndEnabled(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 7
    .parameter "context"
    .parameter "ims"

    .prologue
    const/4 v5, 0x1

    .line 68
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodInfoOfThisIme(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 69
    .local v2, myImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 71
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 72
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 73
    .local v3, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, p1}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    .end local v3           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static findSubtypeByLocaleAndKeyboardLayoutSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 6
    .parameter "context"
    .parameter "localeString"
    .parameter "keyboardLayoutSetName"

    .prologue
    .line 167
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodInfoOfThisIme(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 168
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 169
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 170
    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 171
    .local v4, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {v4}, Lcom/android/inputmethod/latin/SubtypeLocale;->getKeyboardLayoutSetName(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, layoutName:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    .end local v3           #layoutName:Ljava/lang/String;
    .end local v4           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    return-object v4

    .line 169
    .restart local v3       #layoutName:Ljava/lang/String;
    .restart local v4       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v3           #layoutName:Ljava/lang/String;
    .end local v4           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getCurrentInputMethodSubtype(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2
    .parameter "context"
    .parameter "defaultSubtype"

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 96
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 97
    .local v0, currentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v0, :cond_0

    .end local v0           #currentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    return-object v0

    .restart local v0       #currentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static getInputMethodIdOfThisIme(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodInfoOfThisIme(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInputMethodInfoOfThisIme(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 7
    .parameter "context"

    .prologue
    .line 50
    sget-object v4, Lcom/android/inputmethod/latin/ImfUtils;->sInputMethodInfoOfThisIme:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v4, :cond_2

    .line 51
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 52
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 54
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #packageName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 57
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find input method id for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/android/inputmethod/latin/ImfUtils;->sInputMethodInfoOfThisIme:Landroid/view/inputmethod/InputMethodInfo;

    goto :goto_0
.end method

.method public static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    sget-object v0, Lcom/android/inputmethod/latin/ImfUtils;->sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/android/inputmethod/latin/ImfUtils;->sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/ImfUtils;->sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static hasMultipleEnabledIMEsOrSubtypes(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 103
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/android/inputmethod/latin/ImfUtils;->hasMultipleEnabledSubtypes(Landroid/content/Context;ZLjava/util/List;)Z

    move-result v2

    return v2
.end method

.method private static hasMultipleEnabledSubtypes(Landroid/content/Context;ZLjava/util/List;)Z
    .locals 13
    .parameter "context"
    .parameter "shouldIncludeAuxiliarySubtypes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, imiList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v10, 0x1

    .line 116
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 119
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    .line 121
    .local v1, filteredImisCount:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 123
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v1, v10, :cond_2

    .line 162
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    :goto_1
    return v10

    .line 124
    .restart local v4       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    invoke-virtual {v5, v4, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v9

    .line 127
    .local v9, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 129
    goto :goto_0

    .line 132
    :cond_3
    const/4 v0, 0x0

    .line 133
    .local v0, auxCount:I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 134
    .local v8, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 138
    .end local v8           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    sub-int v7, v11, v0

    .line 143
    .local v7, nonAuxCount:I
    if-gtz v7, :cond_6

    if-eqz p1, :cond_0

    if-le v0, v10, :cond_0

    .line 144
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 145
    goto :goto_0

    .line 149
    .end local v0           #auxCount:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v7           #nonAuxCount:I
    .end local v9           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_7
    if-gt v1, v10, :cond_1

    .line 152
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v9

    .line 153
    .restart local v9       #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v6, 0x0

    .line 157
    .local v6, keyboardCount:I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 158
    .restart local v8       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    const-string v11, "keyboard"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 162
    .end local v8           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_9
    if-gt v6, v10, :cond_1

    const/4 v10, 0x0

    goto :goto_1
.end method

.method public static hasMultipleEnabledSubtypesInThisIme(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    .line 109
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodInfoOfThisIme(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 110
    .local v1, myImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, imiList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/android/inputmethod/latin/ImfUtils;->hasMultipleEnabledSubtypes(Landroid/content/Context;ZLjava/util/List;)Z

    move-result v2

    return v2
.end method

.method public static setAdditionalInputMethodSubtypes(Landroid/content/Context;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .parameter "context"
    .parameter "subtypes"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 183
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {p0}, Lcom/android/inputmethod/latin/ImfUtils;->getInputMethodIdOfThisIme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, imiId:Ljava/lang/String;
    invoke-virtual {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 185
    return-void
.end method
