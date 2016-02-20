.class public Lcom/baidu/location/b$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b$d;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/baidu/location/b$d;->a:Ljava/lang/String;

    return-void

    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v2, "&nr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/baidu/location/b;->b()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/baidu/location/b;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-static {}, Lcom/baidu/location/b;->b()Ljava/io/File;

    move-result-object v2

    const-string v3, "rw"

    invoke-direct {v4, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/baidu/location/b;->a(III)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/b;->f()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    sget-boolean v2, Lcom/baidu/location/j;->G:Z

    if-eqz v2, :cond_6

    sget v2, Lcom/baidu/location/j;->l:I

    if-eq v3, v2, :cond_4

    if-le v6, v1, :cond_6

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {p0, v2}, Lcom/baidu/location/b$d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_4
    if-ne v6, v1, :cond_5

    sget v2, Lcom/baidu/location/j;->l:I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/baidu/location/b$d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v6, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v6, -0x1

    mul-int/lit16 v2, v2, 0x400

    add-int/lit8 v2, v2, 0xc

    int-to-long v7, v2

    add-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x2ee

    if-gt v2, v7, :cond_0

    invoke-static {p1}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x3fc

    if-gt v7, v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    if-nez v3, :cond_7

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :goto_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    sget v2, Lcom/baidu/location/j;->l:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_8

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v5, 0x8

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_2

    :cond_8
    sget v2, Lcom/baidu/location/j;->l:I

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_b

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    sget v2, Lcom/baidu/location/j;->l:I

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    if-eqz v5, :cond_9

    if-ne v5, v1, :cond_a

    :cond_9
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_a
    const-wide/16 v2, 0x8

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_2

    :cond_b
    if-ne v6, v5, :cond_e

    sget v2, Lcom/baidu/location/j;->l:I

    if-ne v6, v2, :cond_c

    move v3, v1

    :goto_3
    sget v2, Lcom/baidu/location/j;->l:I

    if-ne v3, v2, :cond_d

    move v2, v1

    :goto_4
    const-wide/16 v5, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_2

    :cond_c
    add-int/lit8 v2, v6, 0x1

    move v3, v2

    goto :goto_3

    :cond_d
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    :cond_e
    sget v2, Lcom/baidu/location/j;->l:I

    if-ne v6, v2, :cond_10

    move v3, v1

    :goto_5
    if-ne v3, v5, :cond_f

    sget v2, Lcom/baidu/location/j;->l:I

    if-ne v3, v2, :cond_11

    move v2, v1

    :goto_6
    const-wide/16 v5, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_f
    const-wide/16 v5, 0x8

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_10
    add-int/lit8 v2, v6, 0x1

    move v3, v2

    goto :goto_5

    :cond_11
    add-int/lit8 v2, v3, 0x1

    goto :goto_6
.end method


# virtual methods
.method public a()I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/location/b;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-static {}, Lcom/baidu/location/b;->b()Ljava/io/File;

    move-result-object v1

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-static {v4, v3, v4}, Lcom/baidu/location/b;->a(III)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 9

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/location/b;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-static {}, Lcom/baidu/location/b;->b()Ljava/io/File;

    move-result-object v1

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/baidu/location/b;->a(III)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/b;->f()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-eq p1, v1, :cond_0

    const-wide/16 v3, 0xc

    add-long/2addr v3, v5

    add-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0x400

    int-to-long v5, v1

    add-long/2addr v3, v5

    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    new-array v6, v5, [B

    const-wide/16 v7, 0x4

    add-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    aput-byte v3, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/baidu/location/j;->m:Z

    return-void
.end method

.method public a(Landroid/location/Location;)Z
    .locals 2

    sget v0, Lcom/baidu/location/j;->i:I

    sget v1, Lcom/baidu/location/j;->g:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/location/b$d;->a(Landroid/location/Location;II)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/location/Location;II)Z
    .locals 13

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/baidu/location/j;->m:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/baidu/location/j;->i:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    const/4 v0, 0x5

    sput v0, Lcom/baidu/location/j;->i:I

    :cond_2
    :goto_1
    sget v0, Lcom/baidu/location/j;->g:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_5

    const/4 v0, 0x5

    sput v0, Lcom/baidu/location/j;->g:I

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v9, v4, v6

    invoke-static {}, Lcom/baidu/location/b;->l()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/baidu/location/b;->if(I)I

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/baidu/location/b;->a(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "&nr=%s&traj=%d,%.5f,%.5f|"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/baidu/location/b$d;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-static {v4}, Lcom/baidu/location/b;->do(I)I

    invoke-static {v9, v10}, Lcom/baidu/location/b;->if(J)J

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Lcom/baidu/location/b;->a(J)J

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lcom/baidu/location/b;->do(J)J

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/location/b;->if(Z)Z

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/baidu/location/j;->i:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/location/j;->i:I

    goto/16 :goto_1

    :cond_5
    sget v0, Lcom/baidu/location/j;->g:I

    const/16 v1, 0xe10

    if-le v0, v1, :cond_3

    const/16 v0, 0xe10

    sput v0, Lcom/baidu/location/j;->g:I

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x1

    new-array v8, v4, [F

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    invoke-static {}, Lcom/baidu/location/b;->a()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    invoke-static {}, Lcom/baidu/location/b;->else()J

    move-result-wide v11

    long-to-double v11, v11

    mul-double/2addr v6, v11

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    invoke-static {}, Lcom/baidu/location/b;->m()J

    move-result-wide v4

    sub-long v4, v9, v4

    const/4 v6, 0x0

    aget v6, v8, v6

    sget v7, Lcom/baidu/location/j;->i:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_7

    sget v6, Lcom/baidu/location/j;->g:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_b

    :cond_7
    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/baidu/location/b;->byte()I

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/baidu/location/b;->do(I)I

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/baidu/location/b;->a(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "&nr=%s&traj=%d,%.5f,%.5f|"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/baidu/location/b$d;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-static {v4}, Lcom/baidu/location/b;->do(I)I

    invoke-static {v9, v10}, Lcom/baidu/location/b;->if(J)J

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Lcom/baidu/location/b;->a(J)J

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lcom/baidu/location/b;->do(J)J

    :goto_3
    invoke-static {}, Lcom/baidu/location/b;->char()I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    const/16 v1, 0x2ee

    if-le v0, v1, :cond_8

    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/b$d;->a(Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/location/b;->a(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-static {}, Lcom/baidu/location/b;->c()I

    move-result v0

    sget v1, Lcom/baidu/location/j;->l:I

    if-lt v0, v1, :cond_9

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/j;->m:Z

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {}, Lcom/baidu/location/b;->m()J

    move-result-wide v4

    sub-long v4, v9, v4

    long-to-int v4, v4

    invoke-static {v4}, Lcom/baidu/location/b;->int(I)I

    invoke-static {}, Lcom/baidu/location/b;->else()J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-int v4, v4

    invoke-static {v4}, Lcom/baidu/location/b;->for(I)I

    invoke-static {}, Lcom/baidu/location/b;->a()J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-int v4, v4

    invoke-static {v4}, Lcom/baidu/location/b;->new(I)I

    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "%d,%d,%d|"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/baidu/location/b;->goto()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Lcom/baidu/location/b;->if()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {}, Lcom/baidu/location/b;->long()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-static {v4}, Lcom/baidu/location/b;->do(I)I

    invoke-static {v9, v10}, Lcom/baidu/location/b;->if(J)J

    invoke-static {v2, v3}, Lcom/baidu/location/b;->a(J)J

    invoke-static {v0, v1}, Lcom/baidu/location/b;->do(J)J

    goto/16 :goto_3

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public do()V
    .locals 2

    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/location/b;->g()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/b$d;->a(Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/baidu/location/b;->case()V

    return-void
.end method

.method public for()Z
    .locals 1

    invoke-static {}, Lcom/baidu/location/b;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/b;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {}, Lcom/baidu/location/b;->case()V

    invoke-static {}, Lcom/baidu/location/b;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public if()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/location/j;->m:Z

    return v0
.end method
