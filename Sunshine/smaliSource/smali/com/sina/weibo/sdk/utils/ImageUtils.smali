.class public Lcom/sina/weibo/sdk/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delete(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 271
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " doesn\'t be deleted!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    return-void
.end method

.method private static deleteDependon(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    const/4 v1, 0x0

    .line 295
    :cond_0
    return v1

    .line 285
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "file":Ljava/io/File;
    const/4 v3, 0x1

    .local v3, "retryCount":I
    const/4 v2, 0x0

    .line 287
    .local v2, "maxRetryCount":I
    const/4 v4, 0x1

    if-ge v2, v4, :cond_2

    const/4 v2, 0x5

    .line 288
    :cond_2
    const/4 v1, 0x0

    .line 289
    .local v1, "isDeleted":Z
    if-eqz v0, :cond_0

    .line 290
    :cond_3
    :goto_0
    if-nez v1, :cond_0

    if-gt v3, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 292
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static isFileExisted(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v1

    .line 306
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isParentExist(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 319
    if-nez p0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v1

    .line 322
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 323
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 361
    .line 362
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 361
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 363
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 364
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 367
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static makesureFileExist(Ljava/lang/String;)V
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 339
    if-nez p0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/ImageUtils;->isParentExist(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/ImageUtils;->delete(Ljava/io/File;)V

    .line 347
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static revitionImageSize(Ljava/lang/String;II)V
    .locals 11
    .param p0, "picfile"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    if-gtz p1, :cond_0

    .line 142
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "size must be greater than 0!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    :cond_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->isFileExisted(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 146
    new-instance v7, Ljava/io/FileNotFoundException;

    if-nez p0, :cond_1

    const-string p0, "null"

    .end local p0    # "picfile":Ljava/lang/String;
    :cond_1
    invoke-direct {v7, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 149
    .restart local p0    # "picfile":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/BitmapHelper;->verifyBitmap(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 150
    new-instance v7, Ljava/io/IOException;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 153
    :cond_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "input":Ljava/io/FileInputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 155
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 156
    const/4 v7, 0x0

    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 158
    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    const/4 v5, 0x0

    .line 164
    .local v5, "rate":I
    const/4 v1, 0x0

    .line 165
    .local v1, "i":I
    :goto_1
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v7, v1

    if-gt v7, p1, :cond_4

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v7, v1

    if-gt v7, p1, :cond_4

    .line 166
    move v5, v1

    .line 171
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    int-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 172
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 174
    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ImageUtils;->safeDecodeBimtapFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 176
    .local v6, "temp":Landroid/graphics/Bitmap;
    if-nez v6, :cond_5

    .line 177
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Bitmap decode error!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 159
    .end local v1    # "i":I
    .end local v5    # "rate":I
    .end local v6    # "temp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v5    # "rate":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .restart local v6    # "temp":Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->deleteDependon(Ljava/lang/String;)Z

    .line 181
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->makesureFileExist(Ljava/lang/String;)V

    .line 182
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 183
    .local v4, "output":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_6

    iget-object v7, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v8, "png"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 184
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v7, p2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 189
    :goto_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    return-void

    .line 186
    :cond_6
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v7, p2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_2

    .line 190
    :catch_1
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static revitionImageSizeHD(Ljava/lang/String;II)V
    .locals 20
    .param p0, "picfile"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    if-gtz p1, :cond_0

    .line 52
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "size must be greater than 0!"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 54
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->isFileExisted(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 55
    new-instance v16, Ljava/io/FileNotFoundException;

    if-nez p0, :cond_1

    const-string p0, "null"

    .end local p0    # "picfile":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 58
    .restart local p0    # "picfile":Ljava/lang/String;
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/BitmapHelper;->verifyBitmap(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 59
    new-instance v16, Ljava/io/IOException;

    const-string v17, ""

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 62
    :cond_3
    mul-int/lit8 v12, p1, 0x2

    .line 63
    .local v12, "photoSizesOrg":I
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 64
    .local v6, "input":Ljava/io/FileInputStream;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 65
    .local v8, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 66
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v6, v0, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 68
    :try_start_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    const/4 v13, 0x0

    .line 74
    .local v13, "rate":I
    const/4 v5, 0x0

    .line 75
    .local v5, "i":I
    :goto_1
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    shr-int v16, v16, v5

    move/from16 v0, v16

    if-gt v0, v12, :cond_4

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    shr-int v16, v16, v5

    move/from16 v0, v16

    if-gt v0, v12, :cond_4

    .line 76
    move v13, v5

    .line 81
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    int-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 82
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/sina/weibo/sdk/utils/ImageUtils;->safeDecodeBimtapFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 86
    .local v15, "temp":Landroid/graphics/Bitmap;
    if-nez v15, :cond_5

    .line 87
    new-instance v16, Ljava/io/IOException;

    const-string v17, "Bitmap decode error!"

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 69
    .end local v5    # "i":I
    .end local v13    # "rate":I
    .end local v15    # "temp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 70
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v4    # "e1":Ljava/lang/Exception;
    .restart local v5    # "i":I
    .restart local v13    # "rate":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 90
    .restart local v15    # "temp":Landroid/graphics/Bitmap;
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->deleteDependon(Ljava/lang/String;)Z

    .line 91
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/ImageUtils;->makesureFileExist(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 94
    .local v9, "org":I
    :goto_2
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v9

    move/from16 v17, v0

    div-float v14, v16, v17

    .line 96
    .local v14, "rateOutPut":F
    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v16, v14, v16

    if-gez v16, :cond_7

    .line 100
    :goto_3
    :try_start_1
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v14

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    .line 101
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 100
    invoke-static/range {v16 .. v18}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 108
    .local v11, "outputBitmap":Landroid/graphics/Bitmap;
    if-nez v11, :cond_6

    .line 109
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    :cond_6
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v14, v14}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 114
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 115
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    move-object v15, v11

    .line 118
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "outputBitmap":Landroid/graphics/Bitmap;
    :cond_7
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 119
    .local v10, "output":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_9

    iget-object v0, v8, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    iget-object v0, v8, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 120
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 125
    :goto_4
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 130
    :goto_5
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    return-void

    .line 93
    .end local v9    # "org":I
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .end local v14    # "rateOutPut":F
    :cond_8
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    goto/16 :goto_2

    .line 103
    .restart local v9    # "org":I
    .restart local v14    # "rateOutPut":F
    :catch_1
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 105
    float-to-double v0, v14

    move-wide/from16 v16, v0

    const-wide v18, 0x3fe999999999999aL    # 0.8

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v14, v0

    .line 98
    goto/16 :goto_3

    .line 122
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    :cond_9
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_4

    .line 126
    :catch_2
    move-exception v3

    .line 127
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public static revitionPostImageSize(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "picfile"    # Ljava/lang/String;

    .prologue
    .line 207
    :try_start_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->isWifiValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/16 v1, 0x640

    const/16 v2, 0x4b

    invoke-static {p1, v1, v2}, Lcom/sina/weibo/sdk/utils/ImageUtils;->revitionImageSizeHD(Ljava/lang/String;II)V

    .line 213
    :goto_0
    const/4 v1, 0x1

    .line 217
    :goto_1
    return v1

    .line 210
    :cond_0
    const/16 v1, 0x400

    const/16 v2, 0x4b

    invoke-static {p1, v1, v2}, Lcom/sina/weibo/sdk/utils/ImageUtils;->revitionImageSize(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 217
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static safeDecodeBimtapFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bmpFile"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 229
    move-object v7, p1

    .line 230
    .local v7, "optsTmp":Landroid/graphics/BitmapFactory$Options;
    if-nez v7, :cond_0

    .line 231
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    .end local v7    # "optsTmp":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 232
    .restart local v7    # "optsTmp":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 235
    :cond_0
    const/4 v1, 0x0

    .line 236
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 238
    .local v5, "input":Ljava/io/FileInputStream;
    const/4 v0, 0x5

    .line 239
    .local v0, "MAX_TRIAL":I
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v6, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .local v6, "input":Ljava/io/FileInputStream;
    :goto_0
    const/4 v8, 0x5

    if-lt v4, v8, :cond_1

    move-object v5, v6

    .line 262
    .end local v6    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :goto_1
    return-object v1

    .line 241
    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 242
    .end local v6    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v5, v8, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 244
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 249
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 250
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 251
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 253
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 239
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_0

    .line 254
    .end local v6    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .line 255
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 257
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    move-object v5, v6

    .line 258
    .end local v6    # "input":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :goto_4
    goto :goto_1

    .line 257
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    goto :goto_4

    .line 249
    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    goto :goto_2
.end method
