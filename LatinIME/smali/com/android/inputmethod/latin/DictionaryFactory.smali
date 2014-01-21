.class public final Lcom/android/inputmethod/latin/DictionaryFactory;
.super Ljava/lang/Object;
.source "DictionaryFactory.java"


# static fields
.field private static final RESOURCE_PACKAGE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/inputmethod/latin/DictionaryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    .line 35
    const-class v0, Lcom/android/inputmethod/latin/DictionaryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createBinaryDictionary(Landroid/content/Context;Ljava/util/Locale;)Lcom/android/inputmethod/latin/BinaryDictionary;
    .locals 14
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 98
    const/4 v10, 0x0

    .line 100
    .local v10, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/DictionaryFactory;->getMainDictionaryResourceIdIfAvailableForLocale(Landroid/content/res/Resources;Ljava/util/Locale;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    .line 102
    .local v13, resId:I
    if-nez v13, :cond_1

    const/4 v0, 0x0

    .line 121
    if-eqz v10, :cond_0

    .line 123
    :try_start_1
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    .end local v13           #resId:I
    :cond_0
    :goto_0
    return-object v0

    .line 103
    .restart local v13       #resId:I
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10

    .line 104
    if-nez v10, :cond_2

    .line 105
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found the resource but it is compressed. resId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    const/4 v0, 0x0

    .line 121
    if-eqz v10, :cond_0

    .line 123
    :try_start_3
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 124
    .end local v13           #resId:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 108
    .restart local v13       #resId:I
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 109
    .local v2, sourceDir:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v12, packagePath:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceDir is not a file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 113
    const/4 v0, 0x0

    .line 121
    if-eqz v10, :cond_0

    .line 123
    :try_start_5
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 115
    :cond_3
    :try_start_6
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v9, "main"

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJZLjava/util/Locale;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .line 121
    if-eqz v10, :cond_0

    .line 123
    :try_start_7
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 117
    .end local v2           #sourceDir:Ljava/lang/String;
    .end local v12           #packagePath:Ljava/io/File;
    .end local v13           #resId:I
    :catch_1
    move-exception v11

    .line 118
    .local v11, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_8
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    const-string v1, "Could not find the resource"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 119
    const/4 v0, 0x0

    .line 121
    if-eqz v10, :cond_0

    .line 123
    :try_start_9
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 121
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_4

    .line 123
    :try_start_a
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 121
    :cond_4
    :goto_1
    throw v0

    .line 124
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static createDictionaryForTest(Landroid/content/Context;Ljava/io/File;JJZLjava/util/Locale;)Lcom/android/inputmethod/latin/Dictionary;
    .locals 10
    .parameter "context"
    .parameter "dictionary"
    .parameter "startOffset"
    .parameter "length"
    .parameter "useFullEditDistance"
    .parameter "locale"

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v9, "main"

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJZLjava/util/Locale;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-object v0

    .line 146
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the file. path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createMainDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;)Lcom/android/inputmethod/latin/DictionaryCollection;
    .locals 1
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/inputmethod/latin/DictionaryFactory;->createMainDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;Z)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v0

    return-object v0
.end method

.method public static createMainDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;Z)Lcom/android/inputmethod/latin/DictionaryCollection;
    .locals 14
    .parameter "context"
    .parameter "locale"
    .parameter "useFullEditDistance"

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    sget-object v1, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    const-string v2, "No locale defined for dictionary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Lcom/android/inputmethod/latin/DictionaryCollection;

    const-string v2, "main"

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/inputmethod/latin/Dictionary;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/DictionaryFactory;->createBinaryDictionary(Landroid/content/Context;Ljava/util/Locale;)Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/inputmethod/latin/DictionaryCollection;-><init>(Ljava/lang/String;[Lcom/android/inputmethod/latin/Dictionary;)V

    .line 73
    :goto_0
    return-object v1

    .line 56
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v11

    .line 57
    .local v11, dictList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/Dictionary;>;"
    invoke-static {p1, p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getDictionaryFiles(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    .line 59
    .local v10, assetFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    if-eqz v10, :cond_2

    .line 60
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/inputmethod/latin/AssetFileAddress;

    .line 61
    .local v12, f:Lcom/android/inputmethod/latin/AssetFileAddress;
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    iget-object v2, v12, Lcom/android/inputmethod/latin/AssetFileAddress;->mFilename:Ljava/lang/String;

    iget-wide v3, v12, Lcom/android/inputmethod/latin/AssetFileAddress;->mOffset:J

    iget-wide v5, v12, Lcom/android/inputmethod/latin/AssetFileAddress;->mLength:J

    const-string v9, "main"

    move-object v1, p0

    move/from16 v7, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJZLjava/util/Locale;Ljava/lang/String;)V

    .line 64
    .local v0, binaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidDictionary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    .end local v0           #binaryDictionary:Lcom/android/inputmethod/latin/BinaryDictionary;
    .end local v12           #f:Lcom/android/inputmethod/latin/AssetFileAddress;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v1, Lcom/android/inputmethod/latin/DictionaryCollection;

    const-string v2, "main"

    invoke-direct {v1, v2, v11}, Lcom/android/inputmethod/latin/DictionaryCollection;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static getMainDictionaryResourceId(Landroid/content/res/Resources;Ljava/util/Locale;)I
    .locals 4
    .parameter "res"
    .parameter "locale"

    .prologue
    .line 198
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/DictionaryFactory;->getMainDictionaryResourceIdIfAvailableForLocale(Landroid/content/res/Resources;Ljava/util/Locale;)I

    move-result v0

    .line 199
    .local v0, resourceId:I
    if-eqz v0, :cond_0

    .line 200
    .end local v0           #resourceId:I
    :goto_0
    return v0

    .restart local v0       #resourceId:I
    :cond_0
    const-string v1, "main"

    const-string v2, "raw"

    sget-object v3, Lcom/android/inputmethod/latin/DictionaryFactory;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getMainDictionaryResourceIdIfAvailableForLocale(Landroid/content/res/Resources;Ljava/util/Locale;)I
    .locals 5
    .parameter "res"
    .parameter "locale"

    .prologue
    .line 174
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, dictLanguageCountry:Ljava/lang/String;
    const-string v3, "raw"

    sget-object v4, Lcom/android/inputmethod/latin/DictionaryFactory;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, resId:I
    if-eqz v2, :cond_0

    move v3, v2

    .line 189
    .end local v1           #dictLanguageCountry:Ljava/lang/String;
    :goto_0
    return v3

    .line 183
    .end local v2           #resId:I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, dictLanguage:Ljava/lang/String;
    const-string v3, "raw"

    sget-object v4, Lcom/android/inputmethod/latin/DictionaryFactory;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .restart local v2       #resId:I
    if-eqz v2, :cond_1

    move v3, v2

    .line 185
    goto :goto_0

    .line 189
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z
    .locals 2
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/DictionaryFactory;->getMainDictionaryResourceIdIfAvailableForLocale(Landroid/content/res/Resources;Ljava/util/Locale;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
