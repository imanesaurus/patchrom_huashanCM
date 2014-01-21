.class public final Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;
.super Ljava/lang/Object;
.source "BinaryDictionaryFileDumper.java"


# static fields
.field private static final DICTIONARY_PROJECTION:[Ljava/lang/String;

.field private static final MAGIC_NUMBER_VERSION_1:[B

.field private static final MAGIC_NUMBER_VERSION_2:[B

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 43
    const-class v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    .line 51
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER_VERSION_1:[B

    .line 53
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER_VERSION_2:[B

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->DICTIONARY_PROJECTION:[Ljava/lang/String;

    return-void

    .line 51
    :array_0
    .array-data 0x1
        0x78t
        0xb1t
        0x0t
        0x0t
    .end array-data

    .line 53
    :array_1
    .array-data 0x1
        0x9bt
        0xc1t
        0x3at
        0xfet
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static cacheWordList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/android/inputmethod/latin/AssetFileAddress;
    .locals 34
    .parameter "id"
    .parameter "locale"
    .parameter "resolver"
    .parameter "context"

    .prologue
    .line 141
    const/4 v5, 0x0

    .line 142
    .local v5, COMPRESSED_CRYPTED_COMPRESSED:I
    const/4 v7, 0x1

    .line 143
    .local v7, CRYPTED_COMPRESSED:I
    const/4 v4, 0x2

    .line 144
    .local v4, COMPRESSED_CRYPTED:I
    const/4 v6, 0x3

    .line 145
    .local v6, COMPRESSED_ONLY:I
    const/4 v8, 0x4

    .line 146
    .local v8, CRYPTED_ONLY:I
    const/4 v11, 0x5

    .line 147
    .local v11, NONE:I
    const/4 v10, 0x0

    .line 148
    .local v10, MODE_MIN:I
    const/4 v9, 0x5

    .line 150
    .local v9, MODE_MAX:I
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->getProviderUriBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v29

    .line 151
    .local v29, wordListUriBuilder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 152
    .local v18, finalFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getTempFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .line 154
    .local v26, tempFileName:Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, mode:I
    :goto_0
    const/16 v30, 0x5

    move/from16 v0, v20

    move/from16 v1, v30

    if-gt v0, v1, :cond_17

    .line 155
    const/16 v21, 0x0

    .line 156
    .local v21, originalSourceStream:Ljava/io/InputStream;
    const/16 v19, 0x0

    .line 157
    .local v19, inputStream:Ljava/io/InputStream;
    const/16 v27, 0x0

    .line 158
    .local v27, uncompressedStream:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 159
    .local v15, decryptedStream:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 160
    .local v13, bufferedStream:Ljava/io/BufferedInputStream;
    const/16 v22, 0x0

    .line 161
    .local v22, outputFile:Ljava/io/File;
    const/16 v24, 0x0

    .line 162
    .local v24, outputStream:Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 163
    .local v12, afd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v28

    .line 166
    .local v28, wordListUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->openAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v12

    .line 168
    if-nez v12, :cond_5

    const/16 v30, 0x0

    .line 235
    if-eqz v19, :cond_0

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 236
    :cond_0
    if-eqz v27, :cond_1

    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 237
    :cond_1
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 238
    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 243
    :cond_3
    :goto_1
    if-eqz v24, :cond_4

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 260
    .end local v12           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v13           #bufferedStream:Ljava/io/BufferedInputStream;
    .end local v15           #decryptedStream:Ljava/io/InputStream;
    .end local v19           #inputStream:Ljava/io/InputStream;
    .end local v21           #originalSourceStream:Ljava/io/InputStream;
    .end local v22           #outputFile:Ljava/io/File;
    .end local v24           #outputStream:Ljava/io/FileOutputStream;
    .end local v27           #uncompressedStream:Ljava/io/InputStream;
    .end local v28           #wordListUri:Landroid/net/Uri;
    :cond_4
    :goto_2
    return-object v30

    .line 169
    .restart local v12       #afd:Landroid/content/res/AssetFileDescriptor;
    .restart local v13       #bufferedStream:Ljava/io/BufferedInputStream;
    .restart local v15       #decryptedStream:Ljava/io/InputStream;
    .restart local v19       #inputStream:Ljava/io/InputStream;
    .restart local v21       #originalSourceStream:Ljava/io/InputStream;
    .restart local v22       #outputFile:Ljava/io/File;
    .restart local v24       #outputStream:Ljava/io/FileOutputStream;
    .restart local v27       #uncompressedStream:Ljava/io/InputStream;
    .restart local v28       #wordListUri:Landroid/net/Uri;
    :cond_5
    :try_start_3
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v21

    .line 171
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 174
    .end local v22           #outputFile:Ljava/io/File;
    .local v23, outputFile:Ljava/io/File;
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 175
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 177
    .end local v24           #outputStream:Ljava/io/FileOutputStream;
    .local v25, outputStream:Ljava/io/FileOutputStream;
    packed-switch v20, :pswitch_data_0

    .line 203
    :goto_3
    :try_start_5
    new-instance v14, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 204
    .end local v13           #bufferedStream:Ljava/io/BufferedInputStream;
    .local v14, bufferedStream:Ljava/io/BufferedInputStream;
    :try_start_6
    move-object/from16 v0, v25

    invoke-static {v14, v0}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->checkMagicAndCopyFileTo(Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;)V

    .line 205
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->flush()V

    .line 206
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 207
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v17, finalFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 209
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v30

    if-nez v30, :cond_c

    .line 210
    new-instance v30, Ljava/io/IOException;

    const-string v31, "Can\'t move the file to its final name"

    invoke-direct/range {v30 .. v31}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 220
    .end local v17           #finalFile:Ljava/io/File;
    :catch_0
    move-exception v16

    move-object/from16 v24, v25

    .end local v25           #outputStream:Ljava/io/FileOutputStream;
    .restart local v24       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #outputFile:Ljava/io/File;
    .restart local v22       #outputFile:Ljava/io/File;
    move-object v13, v14

    .line 224
    .end local v14           #bufferedStream:Ljava/io/BufferedInputStream;
    .restart local v13       #bufferedStream:Ljava/io/BufferedInputStream;
    .local v16, e:Ljava/lang/Exception;
    :goto_4
    if-eqz v22, :cond_6

    .line 228
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 235
    :cond_6
    if-eqz v19, :cond_7

    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 236
    :cond_7
    if-eqz v27, :cond_8

    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 237
    :cond_8
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 238
    :cond_9
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 243
    :cond_a
    :goto_5
    if-eqz v24, :cond_b

    :try_start_9
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 154
    :cond_b
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 179
    .end local v16           #e:Ljava/lang/Exception;
    .end local v22           #outputFile:Ljava/io/File;
    .end local v24           #outputStream:Ljava/io/FileOutputStream;
    .restart local v23       #outputFile:Ljava/io/File;
    .restart local v25       #outputStream:Ljava/io/FileOutputStream;
    :pswitch_0
    :try_start_a
    invoke-static/range {v21 .. v21}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v27

    .line 181
    invoke-static/range {v27 .. v27}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v15

    .line 182
    invoke-static {v15}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v19

    .line 183
    goto :goto_3

    .line 185
    :pswitch_1
    invoke-static/range {v21 .. v21}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v15

    .line 186
    invoke-static {v15}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v19

    .line 187
    goto :goto_3

    .line 189
    :pswitch_2
    invoke-static/range {v21 .. v21}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v27

    .line 191
    invoke-static/range {v27 .. v27}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v19

    .line 192
    goto :goto_3

    .line 194
    :pswitch_3
    invoke-static/range {v21 .. v21}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v19

    .line 195
    goto :goto_3

    .line 197
    :pswitch_4
    invoke-static/range {v21 .. v21}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    move-result-object v19

    .line 198
    goto :goto_3

    .line 200
    :pswitch_5
    move-object/from16 v19, v21

    goto :goto_3

    .line 212
    .end local v13           #bufferedStream:Ljava/io/BufferedInputStream;
    .restart local v14       #bufferedStream:Ljava/io/BufferedInputStream;
    .restart local v17       #finalFile:Ljava/io/File;
    :cond_c
    :try_start_b
    const-string v30, "result"

    const-string v31, "success"

    invoke-virtual/range {v29 .. v31}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 214
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    if-gtz v30, :cond_d

    .line 215
    sget-object v30, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v31, "Could not have the dictionary pack delete a word list"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_d
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->removeFilesWithIdExcept(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 219
    invoke-static/range {v18 .. v18}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileName(Ljava/lang/String;)Lcom/android/inputmethod/latin/AssetFileAddress;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-result-object v30

    .line 235
    if-eqz v19, :cond_e

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 236
    :cond_e
    if-eqz v27, :cond_f

    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 237
    :cond_f
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 238
    :cond_10
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 243
    :cond_11
    :goto_7
    if-eqz v25, :cond_4

    :try_start_d
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_2

    .line 244
    :catch_1
    move-exception v16

    .line 245
    .restart local v16       #e:Ljava/lang/Exception;
    sget-object v31, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Exception while closing a file : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .end local v14           #bufferedStream:Ljava/io/BufferedInputStream;
    .end local v17           #finalFile:Ljava/io/File;
    .end local v23           #outputFile:Ljava/io/File;
    .end local v25           #outputStream:Ljava/io/FileOutputStream;
    :goto_8
    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 233
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v13       #bufferedStream:Ljava/io/BufferedInputStream;
    .restart local v22       #outputFile:Ljava/io/File;
    .restart local v24       #outputStream:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v30

    .line 235
    :goto_9
    if-eqz v19, :cond_12

    :try_start_e
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 236
    :cond_12
    if-eqz v27, :cond_13

    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 237
    :cond_13
    if-eqz v15, :cond_14

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 238
    :cond_14
    if-eqz v13, :cond_15

    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 243
    :cond_15
    :goto_a
    if-eqz v24, :cond_16

    :try_start_f
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 233
    :cond_16
    :goto_b
    throw v30

    .line 252
    .end local v12           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v13           #bufferedStream:Ljava/io/BufferedInputStream;
    .end local v15           #decryptedStream:Ljava/io/InputStream;
    .end local v19           #inputStream:Ljava/io/InputStream;
    .end local v21           #originalSourceStream:Ljava/io/InputStream;
    .end local v22           #outputFile:Ljava/io/File;
    .end local v24           #outputStream:Ljava/io/FileOutputStream;
    .end local v27           #uncompressedStream:Ljava/io/InputStream;
    .end local v28           #wordListUri:Landroid/net/Uri;
    :cond_17
    sget-object v30, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v31, "Could not copy a word list. Will not be able to use it."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v30, "result"

    const-string v31, "failure"

    invoke-virtual/range {v29 .. v31}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 257
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    if-gtz v30, :cond_18

    .line 258
    sget-object v30, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v31, "In addition, we were unable to delete it."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_18
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 244
    .restart local v12       #afd:Landroid/content/res/AssetFileDescriptor;
    .restart local v13       #bufferedStream:Ljava/io/BufferedInputStream;
    .restart local v15       #decryptedStream:Ljava/io/InputStream;
    .restart local v19       #inputStream:Ljava/io/InputStream;
    .restart local v21       #originalSourceStream:Ljava/io/InputStream;
    .restart local v22       #outputFile:Ljava/io/File;
    .restart local v24       #outputStream:Ljava/io/FileOutputStream;
    .restart local v27       #uncompressedStream:Ljava/io/InputStream;
    .restart local v28       #wordListUri:Landroid/net/Uri;
    :catch_2
    move-exception v16

    .line 245
    .restart local v16       #e:Ljava/lang/Exception;
    sget-object v31, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Exception while closing a file : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 239
    .end local v16           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v16

    .line 240
    .restart local v16       #e:Ljava/lang/Exception;
    sget-object v31, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Exception while closing a file descriptor : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 244
    :catch_4
    move-exception v16

    .line 245
    sget-object v30, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception while closing a file : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 239
    :catch_5
    move-exception v16

    .line 240
    sget-object v30, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception while closing a file descriptor : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 244
    .end local v16           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v16

    .line 245
    .restart local v16       #e:Ljava/lang/Exception;
    sget-object v31, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Exception while closing a file : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_8

    .line 239
    .end local v16           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v16

    .line 240
    .restart local v16       #e:Ljava/lang/Exception;
    sget-object v31, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Exception while closing a file descriptor : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 239
    .end local v13           #bufferedStream:Ljava/io/BufferedInputStream;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v22           #outputFile:Ljava/io/File;
    .end local v24           #outputStream:Ljava/io/FileOutputStream;
    .restart local v14       #bufferedStream:Ljava/io/BufferedInputStream;
    .restart local v17       #finalFile:Ljava/io/File;
    .restart local v23       #outputFile:Ljava/io/File;
    .restart local v25       #outputStream:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v16

    .line 240
    .restart local v16       #e:Ljava/lang/Exception;
    sget-object v31, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Exception while closing a file descriptor : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 233
    .end local v14           #bufferedStream:Ljava/io/BufferedInputStream;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v17           #finalFile:Ljava/io/File;
    .end local v25           #outputStream:Ljava/io/FileOutputStream;
    .restart local v13       #bufferedStream:Ljava/io/BufferedInputStream;
    .restart local v24       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v30

    move-object/from16 v22, v23

    .end local v23           #outputFile:Ljava/io/File;
    .restart local v22       #outputFile:Ljava/io/File;
    goto/16 :goto_9

    .end local v22           #outputFile:Ljava/io/File;
    .end local v24           #outputStream:Ljava/io/FileOutputStream;
    .restart local v23       #outputFile:Ljava/io/File;
    .restart local v25       #outputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v30

    move-object/from16 v24, v25

    .end local v25           #outputStream:Ljava/io/FileOutputStream;
    .restart local v24       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #outputFile:Ljava/io/File;
    .restart local v22       #outputFile:Ljava/io/File;
    goto/16 :goto_9

    .end local v13           #bufferedStream:Ljava/io/BufferedInputStream;
    .end local v22           #outputFile:Ljava/io/File;
    .end local v24           #outputStream:Ljava/io/FileOutputStream;
    .restart local v14       #bufferedStream:Ljava/io/BufferedInputStream;
    .restart local v23       #outputFile:Ljava/io/File;
    .restart local v25       #outputStream:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v30

    move-object/from16 v24, v25

    .end local v25           #outputStream:Ljava/io/FileOutputStream;
    .restart local v24       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #outputFile:Ljava/io/File;
    .restart local v22       #outputFile:Ljava/io/File;
    move-object v13, v14

    .end local v14           #bufferedStream:Ljava/io/BufferedInputStream;
    .restart local v13       #bufferedStream:Ljava/io/BufferedInputStream;
    goto/16 :goto_9

    .line 220
    :catch_9
    move-exception v16

    goto/16 :goto_4

    .end local v22           #outputFile:Ljava/io/File;
    .restart local v23       #outputFile:Ljava/io/File;
    :catch_a
    move-exception v16

    move-object/from16 v22, v23

    .end local v23           #outputFile:Ljava/io/File;
    .restart local v22       #outputFile:Ljava/io/File;
    goto/16 :goto_4

    .end local v22           #outputFile:Ljava/io/File;
    .end local v24           #outputStream:Ljava/io/FileOutputStream;
    .restart local v23       #outputFile:Ljava/io/File;
    .restart local v25       #outputStream:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v16

    move-object/from16 v24, v25

    .end local v25           #outputStream:Ljava/io/FileOutputStream;
    .restart local v24       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #outputFile:Ljava/io/File;
    .restart local v22       #outputFile:Ljava/io/File;
    goto/16 :goto_4

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static cacheWordListsFromContentProvider(Ljava/util/Locale;Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
    .parameter "locale"
    .parameter "context"
    .parameter "hasDefaultWordList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/AssetFileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 276
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->getWordListWordListInfos(Ljava/util/Locale;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    .line 278
    .local v4, idList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 279
    .local v1, fileAddressList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/WordListInfo;

    .line 280
    .local v3, id:Lcom/android/inputmethod/latin/WordListInfo;
    iget-object v6, v3, Lcom/android/inputmethod/latin/WordListInfo;->mId:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/inputmethod/latin/WordListInfo;->mLocale:Ljava/lang/String;

    invoke-static {v6, v7, v5, p1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->cacheWordList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v0

    .line 281
    .local v0, afd:Lcom/android/inputmethod/latin/AssetFileAddress;
    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v0           #afd:Lcom/android/inputmethod/latin/AssetFileAddress;
    .end local v3           #id:Lcom/android/inputmethod/latin/WordListInfo;
    :cond_1
    return-object v1
.end method

.method private static checkMagicAndCopyFileTo(Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;)V
    .locals 7
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 302
    sget-object v5, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER_VERSION_2:[B

    array-length v1, v5

    .line 303
    .local v1, length:I
    new-array v2, v1, [B

    .line 304
    .local v2, magicNumberBuffer:[B
    invoke-virtual {p0, v2, v6, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .line 305
    .local v4, readMagicNumberSize:I
    if-ge v4, v1, :cond_0

    .line 306
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Less bytes to read than the magic number length"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 308
    :cond_0
    sget-object v5, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER_VERSION_2:[B

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 309
    sget-object v5, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER_VERSION_1:[B

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 310
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Wrong magic number for downloaded file"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 313
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 316
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 317
    .local v0, buffer:[B
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .local v3, readBytes:I
    :goto_0
    if-ltz v3, :cond_2

    .line 318
    invoke-virtual {p1, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 317
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 320
    return-void
.end method

.method private static getProviderUriBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2
    .parameter "path"

    .prologue
    .line 75
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.inputmethod.latin.dictionarypack"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListWordListInfos(Ljava/util/Locale;Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
    .parameter "locale"
    .parameter "context"
    .parameter "hasDefaultWordList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/WordListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->getProviderUriBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 88
    .local v6, builder:Landroid/net/Uri$Builder;
    if-nez p2, :cond_0

    .line 89
    const-string v2, "mayPrompt"

    const-string v4, "true"

    invoke-virtual {v6, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    :cond_0
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, dictionaryPackUri:Landroid/net/Uri;
    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->DICTIONARY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 94
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 114
    :goto_0
    return-object v9

    .line 95
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 96
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_0

    .line 101
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 103
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, wordListId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, wordListLocale:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 107
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 108
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    .end local v10           #wordListId:Ljava/lang/String;
    .end local v11           #wordListLocale:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 113
    .local v8, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception communicating with the dictionary pack : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_0

    .line 106
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    .restart local v10       #wordListId:Ljava/lang/String;
    .restart local v11       #wordListLocale:Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v2, Lcom/android/inputmethod/latin/WordListInfo;

    invoke-direct {v2, v10, v11}, Lcom/android/inputmethod/latin/WordListInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static openAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 125
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v2, "Could not find a word list from the dictionary provider."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method
