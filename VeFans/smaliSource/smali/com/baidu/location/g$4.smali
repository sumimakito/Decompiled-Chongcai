.class final Lcom/baidu/location/g$4;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0xff

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/baidu/location/j;->do()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/baidu/location/g;->case()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "qt"

    const-string v6, "grid"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "req"

    invoke-static {}, Lcom/baidu/location/g;->do()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.connection.timeout"

    invoke-static {}, Lcom/baidu/location/g;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.socket.timeout"

    invoke-static {}, Lcom/baidu/location/g;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v4

    const-string v5, "req config..."

    invoke-static {v4, v5}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/baidu/location/g;->case()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v3

    const-string v4, "req config response..."

    invoke-static {v3, v4}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/g;->for()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_2
    invoke-static {v11}, Lcom/baidu/location/g;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/location/g;->for(Z)Z

    invoke-static {v1}, Lcom/baidu/location/g;->do(Z)Z

    :goto_3
    return-void

    :cond_2
    :try_start_1
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "qt"

    const-string v6, "conf"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Exception!!!"

    invoke-static {v0, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11}, Lcom/baidu/location/g;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/location/g;->for(Z)Z

    invoke-static {v1}, Lcom/baidu/location/g;->do(Z)Z

    goto :goto_3

    :cond_3
    :try_start_3
    array-length v2, v3

    const/16 v4, 0x280

    if-ge v2, v4, :cond_4

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v2

    const-string v3, "req config response.<640."

    invoke-static {v2, v3}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/location/j;->e:Z

    sget-wide v2, Lcom/baidu/location/j;->c:D

    const-wide v4, 0x3f9999999999999aL    # 0.025

    add-double/2addr v2, v4

    sput-wide v2, Lcom/baidu/location/j;->byte:D

    sget-wide v2, Lcom/baidu/location/j;->O:D

    const-wide v4, 0x3f9999999999999aL    # 0.025

    sub-double/2addr v2, v4

    sput-wide v2, Lcom/baidu/location/j;->s:D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v11}, Lcom/baidu/location/g;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/location/g;->for(Z)Z

    invoke-static {v1}, Lcom/baidu/location/g;->do(Z)Z

    throw v0

    :cond_4
    const/4 v2, 0x1

    :try_start_4
    sput-boolean v2, Lcom/baidu/location/j;->e:Z

    const/4 v2, 0x7

    aget-byte v2, v3, v2

    int-to-long v4, v2

    and-long/2addr v4, v8

    const/16 v2, 0x38

    shl-long/2addr v4, v2

    const/4 v2, 0x6

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    const/16 v2, 0x30

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/4 v2, 0x5

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    const/16 v2, 0x28

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/4 v2, 0x4

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/4 v2, 0x3

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    const/16 v2, 0x18

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/4 v2, 0x2

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    const/16 v2, 0x10

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/4 v2, 0x1

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    shl-long/2addr v6, v10

    or-long/2addr v4, v6

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v4

    const-string v5, "req config 1..."

    invoke-static {v4, v5}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    sput-wide v4, Lcom/baidu/location/j;->s:D

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "req config response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aget-byte v2, v3, v2

    int-to-long v4, v2

    and-long/2addr v4, v8

    const/16 v2, 0x38

    shl-long/2addr v4, v2

    const/16 v2, 0xe

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    const/16 v2, 0x30

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/16 v2, 0xd

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    const/16 v2, 0x28

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/16 v2, 0xc

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/16 v2, 0xb

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    const/16 v2, 0x18

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/16 v2, 0xa

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    const/16 v2, 0x10

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/16 v2, 0x9

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    shl-long/2addr v6, v10

    or-long/2addr v4, v6

    const/16 v2, 0x8

    aget-byte v2, v3, v2

    int-to-long v6, v2

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    sput-wide v4, Lcom/baidu/location/j;->byte:D

    const/16 v4, 0x271

    new-array v4, v4, [B

    sput-object v4, Lcom/baidu/location/j;->o:[B

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "req config response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_4
    const/16 v4, 0x271

    if-ge v2, v4, :cond_0

    sget-object v4, Lcom/baidu/location/j;->o:[B

    add-int/lit8 v5, v2, 0x10

    aget-byte v5, v3, v5

    aput-byte v5, v4, v2

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "req config value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/baidu/location/j;->o:[B

    aget-byte v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "req config value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/location/g;->if(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Save to config"

    invoke-static {v0, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/g;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method
