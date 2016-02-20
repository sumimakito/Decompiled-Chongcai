.class Lcom/sina/weibo/sdk/net/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static final BOUNDARY:Ljava/lang/String;

.field private static final BUFFER_SIZE:I = 0x2000

.field private static final CONNECTION_TIMEOUT:I = 0x61a8

.field private static final END_MP_BOUNDARY:Ljava/lang/String;

.field private static final HTTP_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final HTTP_METHOD_POST:Ljava/lang/String; = "POST"

.field private static final MP_BOUNDARY:Ljava/lang/String;

.field private static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field private static final SOCKET_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "HttpManager"

.field private static sSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "weibosdkcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getBoundry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/net/HttpManager;->BOUNDARY:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sina/weibo/sdk/net/HttpManager;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sina/weibo/sdk/net/HttpManager;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/net/HttpManager;->END_MP_BOUNDARY:Ljava/lang/String;

    .line 639
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildParams(Ljava/io/OutputStream;Lcom/sina/weibo/sdk/net/WeiboParameters;)V
    .locals 12
    .param p0, "baos"    # Ljava/io/OutputStream;
    .param p1, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 518
    :try_start_0
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 521
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 535
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 564
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\r\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/sina/weibo/sdk/net/HttpManager;->END_MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 568
    return-void

    .line 521
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 522
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 523
    .local v8, "value":Ljava/lang/Object;
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 524
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 525
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 526
    sget-object v10, Lcom/sina/weibo/sdk/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v10, "content-disposition: form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"\r\n\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {p1, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 566
    .local v3, "e":Ljava/io/IOException;
    new-instance v9, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v9, v3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 535
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 536
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 537
    .restart local v8    # "value":Ljava/lang/Object;
    instance-of v10, v8, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_4

    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    sget-object v10, Lcom/sina/weibo/sdk/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v10, "content-disposition: form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"; filename=\"file\"\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v10, "Content-Type: application/octet-stream; charset=utf-8\r\n\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 544
    move-object v0, v8

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 545
    .local v1, "bmp":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 546
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 547
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 549
    .local v2, "bytes":[B
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 550
    const-string v10, "\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    .line 551
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "bytes":[B
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    instance-of v10, v8, Ljava/io/ByteArrayOutputStream;

    if-eqz v10, :cond_1

    .line 552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    sget-object v10, Lcom/sina/weibo/sdk/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v10, "content-disposition: form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"; filename=\"file\"\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v10, "Content-Type: application/octet-stream; charset=utf-8\r\n\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 558
    move-object v0, v8

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v7, v0

    .line 559
    .restart local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 560
    const-string v10, "\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 561
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static native calcOauthSignNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 34
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 397
    const-class v29, Lcom/sina/weibo/sdk/net/HttpManager;

    monitor-enter v29

    :try_start_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v19, "savePathDir":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_0

    .line 399
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 401
    :cond_0
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    .local v8, "filePath":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 403
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v28

    .line 481
    :cond_1
    :goto_0
    monitor-exit v29

    return-object v28

    .line 406
    :cond_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_3

    .line 407
    const-string v28, ""

    goto :goto_0

    .line 410
    :cond_3
    invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 412
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    const-wide/16 v24, 0x0

    .line 413
    .local v24, "tempFileLength":J
    new-instance v23, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "_temp"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    .local v23, "tempFile":Ljava/io/File;
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 416
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v24

    .line 420
    :goto_1
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 421
    .local v15, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v28, "RANGE"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "bytes="

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-interface {v4, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 423
    .local v16, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    .line 425
    .local v22, "statusCode":I
    const-wide/16 v26, 0x0

    .line 426
    .local v26, "totalLength":J
    const-wide/16 v20, 0x0

    .line 427
    .local v20, "startPosition":J
    const/16 v28, 0xce

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 428
    move-wide/from16 v20, v24

    .line 429
    const-string v28, "Content-Range"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v13

    .line 430
    .local v13, "rangeHeaders":[Lorg/apache/http/Header;
    if-eqz v13, :cond_4

    array-length v0, v13

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 431
    const/16 v28, 0x0

    aget-object v28, v13, v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 432
    .local v12, "rangValue":Ljava/lang/String;
    const/16 v28, 0x2f

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 445
    .end local v12    # "rangValue":Ljava/lang/String;
    .end local v13    # "rangeHeaders":[Lorg/apache/http/Header;
    :cond_4
    :goto_2
    const/4 v10, 0x0

    .line 446
    .local v10, "inputStream":Ljava/io/InputStream;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 447
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    const-string v28, "Content-Encoding"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 448
    .local v9, "header":Lorg/apache/http/Header;
    if-eqz v9, :cond_b

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    const-string v30, "gzip"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-le v0, v1, :cond_b

    .line 449
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    .end local v10    # "inputStream":Ljava/io/InputStream;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v10, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 453
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    :goto_3
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v28, "rw"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 454
    .local v5, "content":Ljava/io/RandomAccessFile;
    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 456
    const/16 v28, 0x400

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 457
    .local v18, "sBuffer":[B
    const/4 v14, 0x0

    .line 459
    .local v14, "readBytes":I
    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_c

    .line 462
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 463
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 466
    const-wide/16 v30, 0x0

    cmp-long v28, v26, v30

    if-eqz v28, :cond_5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v30

    cmp-long v28, v30, v26

    if-gez v28, :cond_d

    .line 467
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 476
    if-eqz v4, :cond_6

    .line 477
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 478
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x12c

    sget-object v32, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 481
    .end local v5    # "content":Ljava/io/RandomAccessFile;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "header":Lorg/apache/http/Header;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "readBytes":I
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "sBuffer":[B
    .end local v20    # "startPosition":J
    .end local v22    # "statusCode":I
    .end local v26    # "totalLength":J
    :cond_6
    :goto_5
    const-string v28, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 418
    :cond_7
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 472
    :catch_0
    move-exception v6

    .line 473
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 474
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 476
    if-eqz v4, :cond_6

    .line 477
    :try_start_6
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 478
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    const-wide/16 v30, 0x12c

    sget-object v32, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 397
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "filePath":Ljava/io/File;
    .end local v19    # "savePathDir":Ljava/io/File;
    .end local v23    # "tempFile":Ljava/io/File;
    .end local v24    # "tempFileLength":J
    :catchall_0
    move-exception v28

    monitor-exit v29

    throw v28

    .line 434
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v8    # "filePath":Ljava/io/File;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "savePathDir":Ljava/io/File;
    .restart local v20    # "startPosition":J
    .restart local v22    # "statusCode":I
    .restart local v23    # "tempFile":Ljava/io/File;
    .restart local v24    # "tempFileLength":J
    .restart local v26    # "totalLength":J
    :cond_8
    const/16 v28, 0xc8

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 435
    const-wide/16 v20, 0x0

    .line 436
    :try_start_7
    const-string v28, "Content-Length"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    .line 437
    .local v11, "lengthHeader":Lorg/apache/http/Header;
    if-eqz v11, :cond_4

    .line 438
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 440
    goto/16 :goto_2

    .line 441
    .end local v11    # "lengthHeader":Lorg/apache/http/Header;
    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/sina/weibo/sdk/net/HttpManager;->readRsponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v17

    .line 442
    .local v17, "result":Ljava/lang/String;
    new-instance v28, Lcom/sina/weibo/sdk/exception/WeiboHttpException;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboHttpException;-><init>(Ljava/lang/String;I)V

    throw v28
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 475
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "result":Ljava/lang/String;
    .end local v20    # "startPosition":J
    .end local v22    # "statusCode":I
    .end local v26    # "totalLength":J
    :catchall_1
    move-exception v28

    .line 476
    if-eqz v4, :cond_a

    .line 477
    :try_start_8
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 478
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v30

    const-wide/16 v31, 0x12c

    sget-object v33, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v30 .. v33}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 480
    :cond_a
    throw v28
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 451
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "header":Lorg/apache/http/Header;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v20    # "startPosition":J
    .restart local v22    # "statusCode":I
    .restart local v26    # "totalLength":J
    :cond_b
    :try_start_9
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_3

    .line 460
    .restart local v5    # "content":Ljava/io/RandomAccessFile;
    .restart local v14    # "readBytes":I
    .restart local v18    # "sBuffer":[B
    :cond_c
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1, v14}, Ljava/io/RandomAccessFile;->write([BII)V

    goto/16 :goto_4

    .line 469
    :cond_d
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 470
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v28

    .line 476
    if-eqz v4, :cond_1

    .line 477
    :try_start_a
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 478
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v30

    const-wide/16 v31, 0x12c

    sget-object v33, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v30 .. v33}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method private static getBoundry()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x1a

    const-wide/16 v8, 0x3

    .line 625
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, "t":I
    :goto_0
    const/16 v4, 0xc

    if-lt v1, v4, :cond_0

    .line 636
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 627
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 628
    .local v2, "time":J
    rem-long v4, v2, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 629
    long-to-int v4, v2

    int-to-char v4, v4

    rem-int/lit8 v4, v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 626
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    :cond_1
    rem-long v4, v2, v8

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 631
    const-wide/16 v4, 0x41

    rem-long v6, v2, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 633
    :cond_2
    const-wide/16 v4, 0x61

    rem-long v6, v2, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 668
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    const-class v3, Lcom/sina/weibo/sdk/net/HttpManager;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 671
    .local v0, "certInput":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 673
    .local v1, "certificate":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 677
    :cond_0
    return-object v1

    .line 672
    .end local v1    # "certificate":Ljava/security/cert/Certificate;
    :catchall_0
    move-exception v3

    .line 673
    if-eqz v0, :cond_1

    .line 674
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 676
    :cond_1
    throw v3
.end method

.method private static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 9

    .prologue
    .line 489
    :try_start_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 490
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 491
    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 493
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 494
    .local v4, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 495
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getSSLSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    const/16 v8, 0x1bb

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 497
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 498
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    const/16 v5, 0x61a8

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 499
    const/16 v5, 0x4e20

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 501
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v4    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :goto_0
    return-object v1

    .line 503
    :catch_0
    move-exception v2

    .line 504
    .local v2, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private static getOauthSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, "part1":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 696
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 699
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p4}, Lcom/sina/weibo/sdk/net/HttpManager;->calcOauthSignNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSSLSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 7

    .prologue
    .line 641
    sget-object v5, Lcom/sina/weibo/sdk/net/HttpManager;->sSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-nez v5, :cond_0

    .line 644
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, "keyStoreType":Ljava/lang/String;
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 646
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 648
    const-string v5, "cacert_cn.cer"

    invoke-static {v5}, Lcom/sina/weibo/sdk/net/HttpManager;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 649
    .local v0, "cnCertificate":Ljava/security/cert/Certificate;
    const-string v5, "cacert_com.cer"

    invoke-static {v5}, Lcom/sina/weibo/sdk/net/HttpManager;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 650
    .local v1, "comCertificate":Ljava/security/cert/Certificate;
    const-string v5, "cnca"

    invoke-virtual {v3, v5, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 651
    const-string v5, "comca"

    invoke-virtual {v3, v5, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 653
    new-instance v5, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;

    invoke-direct {v5, v3}, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    sput-object v5, Lcom/sina/weibo/sdk/net/HttpManager;->sSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 654
    const-string v5, "HttpManager"

    const-string v6, "getSSLSocketFactory noraml !!!!!"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v0    # "cnCertificate":Ljava/security/cert/Certificate;
    .end local v1    # "comCertificate":Ljava/security/cert/Certificate;
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    :cond_0
    :goto_0
    sget-object v5, Lcom/sina/weibo/sdk/net/HttpManager;->sSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    return-object v5

    .line 655
    :catch_0
    move-exception v2

    .line 656
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    sput-object v5, Lcom/sina/weibo/sdk/net/HttpManager;->sSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 659
    const-string v5, "HttpManager"

    const-string v6, "getSSLSocketFactory error default !!!!!"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getTimestamp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 682
    .local v0, "timestamp":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static openRedirectUrl4LocationUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v5, 0x0

    .line 348
    .local v5, "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    :try_start_0
    new-instance v6, Lcom/sina/weibo/sdk/net/HttpManager$2;

    invoke-direct {v6}, Lcom/sina/weibo/sdk/net/HttpManager$2;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .end local v5    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    .local v6, "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    :try_start_1
    invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v1, v0

    .line 362
    invoke-virtual {v1, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 366
    invoke-static {p0, p3}, Lcom/sina/weibo/sdk/net/HttpManager;->setHttpCommonParam(Landroid/content/Context;Lcom/sina/weibo/sdk/net/WeiboParameters;)V

    .line 368
    const/4 v7, 0x0

    .line 369
    .local v7, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.route.default-proxy"

    invoke-static {}, Lcom/sina/weibo/sdk/net/NetStateManager;->getAPN()Lorg/apache/http/HttpHost;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 370
    const-string v8, "GET"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->encodeUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 372
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 373
    .local v3, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object v7, v3

    .line 378
    .end local v3    # "get":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    const-string v8, "User-Agent"

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->generateUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v1, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 380
    invoke-virtual {v6}, Lcom/sina/weibo/sdk/net/CustomRedirectHandler;->getRedirectUrl()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 384
    invoke-static {v1}, Lcom/sina/weibo/sdk/net/HttpManager;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 380
    return-object v8

    .line 374
    :cond_1
    :try_start_2
    const-string v8, "POST"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 375
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 376
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    move-object v7, v4

    goto :goto_0

    .line 381
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    .end local v7    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v8, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v8, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 384
    :goto_2
    invoke-static {v1}, Lcom/sina/weibo/sdk/net/HttpManager;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 385
    throw v8

    .line 383
    .end local v5    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    .restart local v6    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    .restart local v5    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    goto :goto_2

    .line 381
    .end local v5    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    .restart local v6    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    .restart local v5    # "redirectHandler":Lcom/sina/weibo/sdk/net/CustomRedirectHandler;
    goto :goto_1
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/net/HttpManager;->requestHttpExecute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 113
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v1}, Lcom/sina/weibo/sdk/net/HttpManager;->readRsponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "ans":Ljava/lang/String;
    const-string v2, "HttpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Response : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-object v0
.end method

.method public static openUrl4RdirectURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    const-string v8, ""

    .line 264
    .local v8, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v1, v0

    .line 265
    new-instance v10, Lcom/sina/weibo/sdk/net/HttpManager$1;

    invoke-direct {v10}, Lcom/sina/weibo/sdk/net/HttpManager$1;-><init>()V

    invoke-virtual {v1, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 301
    move-object/from16 v0, p3

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/net/HttpManager;->setHttpCommonParam(Landroid/content/Context;Lcom/sina/weibo/sdk/net/WeiboParameters;)V

    .line 303
    const/4 v6, 0x0

    .line 304
    .local v6, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    const-string v11, "http.route.default-proxy"

    invoke-static {}, Lcom/sina/weibo/sdk/net/NetStateManager;->getAPN()Lorg/apache/http/HttpHost;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 305
    const-string v10, "GET"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 306
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->encodeUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    const-string v10, "HttpManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "openUrl4RdirectURL GET url : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 309
    .local v3, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object v6, v3

    .line 315
    .end local v3    # "get":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    invoke-virtual {v1, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 317
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 318
    .local v9, "statusCode":I
    const/16 v10, 0x12d

    if-eq v9, v10, :cond_1

    .line 319
    const/16 v10, 0x12e

    if-ne v9, v10, :cond_3

    .line 320
    :cond_1
    const-string v10, "Location"

    invoke-interface {v7, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "redirectURL":Ljava/lang/String;
    const-string v10, "HttpManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "RedirectURL = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-static {v1}, Lcom/sina/weibo/sdk/net/HttpManager;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 324
    .end local v5    # "redirectURL":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 310
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "statusCode":I
    :cond_2
    :try_start_1
    const-string v10, "POST"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 311
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 312
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v10, "HttpManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "openUrl4RdirectURL POST url : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object v6, v4

    goto :goto_0

    .line 323
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "statusCode":I
    :cond_3
    const/16 v10, 0xc8

    if-ne v9, v10, :cond_4

    .line 324
    invoke-static {v7}, Lcom/sina/weibo/sdk/net/HttpManager;->readRsponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 332
    invoke-static {v1}, Lcom/sina/weibo/sdk/net/HttpManager;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 326
    :cond_4
    :try_start_2
    invoke-static {v7}, Lcom/sina/weibo/sdk/net/HttpManager;->readRsponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v8

    .line 327
    new-instance v10, Lcom/sina/weibo/sdk/exception/WeiboHttpException;

    invoke-direct {v10, v8, v9}, Lcom/sina/weibo/sdk/exception/WeiboHttpException;-><init>(Ljava/lang/String;I)V

    throw v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "statusCode":I
    :catch_0
    move-exception v2

    .line 330
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v10, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v10, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 332
    invoke-static {v1}, Lcom/sina/weibo/sdk/net/HttpManager;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 333
    throw v10
.end method

.method private static readRsponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 12
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 579
    if-nez p0, :cond_1

    .line 580
    const/4 v8, 0x0

    .line 600
    :cond_0
    :goto_0
    return-object v8

    .line 583
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 584
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    .line 585
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 587
    .local v1, "content":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 588
    const-string v9, "Content-Encoding"

    invoke-interface {p0, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 589
    .local v4, "header":Lorg/apache/http/Header;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-le v9, v11, :cond_2

    .line 590
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v6, "inputStream":Ljava/io/InputStream;
    move-object v5, v6

    .line 593
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_2
    const/4 v7, 0x0

    .line 594
    .local v7, "readBytes":I
    const/16 v9, 0x2000

    new-array v0, v9, [B

    .line 595
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v11, :cond_4

    .line 598
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 599
    .local v8, "result":Ljava/lang/String;
    const-string v9, "HttpManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "readRsponse result : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    if-eqz v5, :cond_3

    .line 606
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 611
    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    .line 613
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v2

    .line 615
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 596
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "result":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v1, v0, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 601
    .end local v0    # "buffer":[B
    .end local v4    # "header":Lorg/apache/http/Header;
    .end local v7    # "readBytes":I
    :catch_1
    move-exception v2

    .line 602
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4
    new-instance v9, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v9, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 603
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 604
    if-eqz v5, :cond_5

    .line 606
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 611
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 613
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 618
    :cond_6
    :goto_4
    throw v9

    .line 607
    .restart local v0    # "buffer":[B
    .restart local v4    # "header":Lorg/apache/http/Header;
    .restart local v7    # "readBytes":I
    .restart local v8    # "result":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 608
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 607
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "header":Lorg/apache/http/Header;
    .end local v7    # "readBytes":I
    .end local v8    # "result":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 608
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 614
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 615
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private static requestHttpExecute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Lorg/apache/http/HttpResponse;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;

    .prologue
    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    const/4 v2, 0x0

    .line 131
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 134
    .local v9, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 135
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.route.default-proxy"

    invoke-static {}, Lcom/sina/weibo/sdk/net/NetStateManager;->getAPN()Lorg/apache/http/HttpHost;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 137
    const/4 v8, 0x0

    .line 142
    .local v8, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/net/HttpManager;->setHttpCommonParam(Landroid/content/Context;Lcom/sina/weibo/sdk/net/WeiboParameters;)V

    .line 145
    const-string v14, "GET"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 146
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->encodeUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    .end local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v14, "HttpManager"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "requestHttpExecute GET Url : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    invoke-interface {v4, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 181
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 182
    .local v11, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 185
    .local v12, "statusCode":I
    const/16 v14, 0xc8

    if-eq v12, v14, :cond_6

    .line 186
    invoke-static {v9}, Lcom/sina/weibo/sdk/net/HttpManager;->readRsponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v10

    .line 187
    .local v10, "result":Ljava/lang/String;
    new-instance v14, Lcom/sina/weibo/sdk/exception/WeiboHttpException;

    invoke-direct {v14, v10, v12}, Lcom/sina/weibo/sdk/exception/WeiboHttpException;-><init>(Ljava/lang/String;I)V

    throw v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "status":Lorg/apache/http/StatusLine;
    .end local v12    # "statusCode":I
    :catch_0
    move-exception v5

    .line 190
    .local v5, "e":Ljava/io/IOException;
    :goto_1
    :try_start_1
    new-instance v14, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v14, v5}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 192
    :goto_2
    if-eqz v2, :cond_1

    .line 194
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    :cond_1
    :goto_3
    invoke-static {v4}, Lcom/sina/weibo/sdk/net/HttpManager;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 199
    throw v14

    .line 150
    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_2
    :try_start_3
    const-string v14, "POST"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 151
    const-string v14, "HttpManager"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "requestHttpExecute POST Url : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 153
    .local v6, "post":Lorg/apache/http/client/methods/HttpPost;
    move-object v8, v6

    .line 155
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->hasBinaryData()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 157
    const-string v14, "Content-Type"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "multipart/form-data; boundary="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/sina/weibo/sdk/net/HttpManager;->BOUNDARY:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/sina/weibo/sdk/net/HttpManager;->buildParams(Ljava/io/OutputStream;Lcom/sina/weibo/sdk/net/WeiboParameters;)V

    .line 173
    :goto_4
    new-instance v14, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v6, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v2, v3

    .line 175
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_0

    .line 160
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    const-string v14, "content-type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 161
    .local v13, "value":Ljava/lang/Object;
    if-eqz v13, :cond_4

    instance-of v14, v13, Ljava/lang/String;

    if-eqz v14, :cond_4

    .line 162
    const-string v14, "content-type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/sina/weibo/sdk/net/WeiboParameters;->remove(Ljava/lang/String;)V

    .line 163
    const-string v14, "Content-Type"

    check-cast v13, Ljava/lang/String;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-virtual {v6, v14, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_5
    invoke-virtual/range {p3 .. p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->encodeUrl()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "postParam":Ljava/lang/String;
    const-string v14, "HttpManager"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "requestHttpExecute POST postParam : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v14, "UTF-8"

    invoke-virtual {v7, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_4

    .line 189
    .end local v7    # "postParam":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1

    .line 165
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_4
    const-string v14, "Content-Type"

    const-string v15, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 191
    .end local v13    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v14

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2

    .line 175
    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_5
    :try_start_5
    const-string v14, "DELETE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 176
    new-instance v8, Lorg/apache/http/client/methods/HttpDelete;

    .end local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 192
    .restart local v11    # "status":Lorg/apache/http/StatusLine;
    .restart local v12    # "statusCode":I
    :cond_6
    if-eqz v2, :cond_7

    .line 194
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 198
    :cond_7
    :goto_6
    invoke-static {v4}, Lcom/sina/weibo/sdk/net/HttpManager;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 201
    return-object v9

    .line 195
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v11    # "status":Lorg/apache/http/StatusLine;
    .end local v12    # "statusCode":I
    :catch_2
    move-exception v15

    goto/16 :goto_3

    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v11    # "status":Lorg/apache/http/StatusLine;
    .restart local v12    # "statusCode":I
    :catch_3
    move-exception v14

    goto :goto_6
.end method

.method private static setHttpCommonParam(Landroid/content/Context;Lcom/sina/weibo/sdk/net/WeiboParameters;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lcom/sina/weibo/sdk/net/WeiboParameters;

    .prologue
    .line 214
    const-string v1, ""

    .line 215
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/sina/weibo/sdk/utils/Utility;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 218
    const-string v7, "aid"

    invoke-virtual {p1, v7, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "timestamp":Ljava/lang/String;
    const-string v7, "oauth_timestamp"

    invoke-virtual {p1, v7, v5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v6, ""

    .line 230
    .local v6, "token":Ljava/lang/String;
    const-string v7, "access_token"

    invoke-virtual {p1, v7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "accessToken":Ljava/lang/Object;
    const-string v7, "refresh_token"

    invoke-virtual {p1, v7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 232
    .local v4, "refreshToken":Ljava/lang/Object;
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 234
    .local v3, "phone":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 235
    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_2

    move-object v6, v0

    .line 236
    check-cast v6, Ljava/lang/String;

    .line 246
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->getAppKey()Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-static {p0, v1, v6, v7, v5}, Lcom/sina/weibo/sdk/net/HttpManager;->getOauthSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "oauthSign":Ljava/lang/String;
    const-string v7, "oauth_sign"

    invoke-virtual {p1, v7, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 238
    .end local v2    # "oauthSign":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 239
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_3

    move-object v6, v4

    .line 240
    check-cast v6, Ljava/lang/String;

    .line 241
    goto :goto_0

    :cond_3
    if-eqz v3, :cond_1

    .line 242
    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v6, v3

    .line 243
    check-cast v6, Ljava/lang/String;

    goto :goto_0
.end method

.method private static shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 252
    if-eqz p0, :cond_0

    .line 254
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method
