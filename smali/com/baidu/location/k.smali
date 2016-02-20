.class Lcom/baidu/location/k;
.super Ljava/lang/Object;


# static fields
.field private static a:D

.field private static b:I

.field private static byte:Landroid/location/Location;

.field private static c:Ljava/io/File;

.field private static case:I

.field private static char:I

.field private static d:D

.field private static do:Landroid/location/Location;

.field private static e:D

.field private static else:Ljava/lang/String;

.field private static f:Ljava/util/ArrayList;

.field private static for:Lcom/baidu/location/e$c;

.field private static g:I

.field private static goto:Landroid/location/Location;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static if:I

.field private static int:I

.field private static j:I

.field private static long:D

.field private static new:I

.field private static try:Ljava/util/ArrayList;

.field private static void:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x400

    const/4 v2, 0x0

    const-string v0, "baidu_location_service"

    sput-object v0, Lcom/baidu/location/k;->else:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/k;->h:Ljava/lang/String;

    sput-object v2, Lcom/baidu/location/k;->c:Ljava/io/File;

    sput v3, Lcom/baidu/location/k;->char:I

    const/16 v0, 0x200

    sput v0, Lcom/baidu/location/k;->if:I

    const/16 v0, 0x20

    sput v0, Lcom/baidu/location/k;->i:I

    const/4 v0, 0x5

    sput v0, Lcom/baidu/location/k;->case:I

    sput v3, Lcom/baidu/location/k;->j:I

    const/16 v0, 0x100

    sput v0, Lcom/baidu/location/k;->g:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/k;->e:D

    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/baidu/location/k;->a:D

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    sput-wide v0, Lcom/baidu/location/k;->long:D

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    sput-wide v0, Lcom/baidu/location/k;->d:D

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/k;->new:I

    const/16 v0, 0x40

    sput v0, Lcom/baidu/location/k;->b:I

    const/16 v0, 0x80

    sput v0, Lcom/baidu/location/k;->int:I

    sput-object v2, Lcom/baidu/location/k;->goto:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/k;->byte:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/k;->do:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/k;->for:Lcom/baidu/location/e$c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIIJ)I
    .locals 4

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/16 v1, 0x100

    if-gt p0, v1, :cond_0

    const/16 v1, 0x800

    if-gt p1, v1, :cond_0

    const/16 v1, 0x400

    if-gt p2, v1, :cond_0

    const-wide/32 v1, 0x500000

    cmp-long v1, p3, v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v2, "upload manager start to init cache ..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/baidu/location/k;->c:Ljava/io/File;

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/k;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/baidu/location/k;->c:Ljava/io/File;

    sget-object v1, Lcom/baidu/location/k;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/f;->aa:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    sget-object v1, Lcom/baidu/location/k;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v2, "upload manager create file success"

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/baidu/location/k;->c:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, p3, p4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    sget-object v1, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v2, "cache inited ..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x3

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v1, "upload manager create file error..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x2

    goto :goto_0
.end method

.method private static a(Ljava/util/List;I)I
    .locals 13

    if-eqz p0, :cond_0

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/k;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;

    sget-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v1, "upload man readfile does not exist..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/io/RandomAccessFile;

    sget-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;

    const-string v1, "rw"

    invoke-direct {v7, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, -0x3

    goto :goto_0

    :cond_3
    int-to-long v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/baidu/location/k;->a(IIIIJ)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    if-ge v1, v6, :cond_5

    :cond_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, -0x4

    goto :goto_0

    :cond_5
    sget v6, Lcom/baidu/location/k;->j:I

    new-array v8, v6, [B

    sget v6, Lcom/baidu/location/k;->i:I

    move v12, v6

    move v6, v1

    move v1, v12

    :goto_1
    if-lez v1, :cond_7

    if-lez v6, :cond_7

    add-int v9, v0, v6

    add-int/lit8 v9, v9, -0x1

    rem-int/2addr v9, v2

    mul-int/2addr v9, v3

    int-to-long v9, v9

    add-long/2addr v9, v4

    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    if-lez v9, :cond_6

    if-ge v9, v3, :cond_6

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v10, v9, -0x1

    aget-byte v10, v8, v10

    if-nez v10, :cond_6

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v10, v8, v11, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {p0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_7
    int-to-long v8, p1

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    sget v0, Lcom/baidu/location/k;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x5

    goto/16 :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v4, :cond_1

    :cond_0
    sget-object v1, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/k;->new:I

    invoke-static {v1, v2}, Lcom/baidu/location/k;->a(Ljava/util/List;I)I

    :cond_1
    sget-object v1, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v4, :cond_2

    sget-object v0, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v2, "upload manager get upload data from q1 ..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_5

    sget-object v1, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v4, :cond_4

    :cond_3
    sget-object v1, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/k;->b:I

    invoke-static {v1, v2}, Lcom/baidu/location/k;->a(Ljava/util/List;I)I

    :cond_4
    sget-object v1, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v4, :cond_5

    sget-object v0, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v2, "upload manager get upload data from q2 ..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v0, :cond_8

    sget-object v1, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v4, :cond_7

    :cond_6
    sget-object v1, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/k;->int:I

    invoke-static {v1, v2}, Lcom/baidu/location/k;->a(Ljava/util/List;I)I

    :cond_7
    sget-object v1, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v4, :cond_8

    sget-object v0, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v2, "upload manager get upload data from q3 ..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object v1, Lcom/baidu/location/k;->else:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload manager get upload data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(DDDD)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    :goto_0
    sput-wide p0, Lcom/baidu/location/k;->e:D

    sput-wide p2, Lcom/baidu/location/k;->a:D

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double v0, p4, v0

    if-lez v0, :cond_1

    :goto_1
    sput-wide p4, Lcom/baidu/location/k;->long:D

    sput-wide p6, Lcom/baidu/location/k;->d:D

    return-void

    :cond_0
    sget-wide p0, Lcom/baidu/location/k;->e:D

    goto :goto_0

    :cond_1
    sget-wide p4, Lcom/baidu/location/k;->long:D

    goto :goto_1
.end method

.method public static a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v2, "upload manager insert2UploadQueue..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/baidu/location/j;->long:I

    if-ne v1, v3, :cond_1

    invoke-static {p2, p1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Lcom/baidu/location/e$c;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/baidu/location/c$a;->do()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, p1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Lcom/baidu/location/e$c;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/baidu/location/j;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/k;->if(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/k;->byte:Landroid/location/Location;

    sput-object p2, Lcom/baidu/location/k;->goto:Landroid/location/Location;

    if-eqz p1, :cond_0

    sput-object p1, Lcom/baidu/location/k;->for:Lcom/baidu/location/e$c;

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/baidu/location/e$c;->if()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2, p1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Lcom/baidu/location/e$c;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2}, Lcom/baidu/location/k;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_1
    const/4 v1, 0x2

    invoke-static {v0, p1, p2, p3, v1}, Lcom/baidu/location/j;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/k;->else:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/location/k;->a(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/k;->do:Landroid/location/Location;

    sput-object p2, Lcom/baidu/location/k;->goto:Landroid/location/Location;

    if-eqz p1, :cond_0

    sput-object p1, Lcom/baidu/location/k;->for:Lcom/baidu/location/e$c;

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lcom/baidu/location/k;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object p0, v0

    :cond_5
    invoke-static {p2, p1}, Lcom/baidu/location/k;->a(Landroid/location/Location;Lcom/baidu/location/e$c;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_2
    if-nez p0, :cond_6

    if-eqz v0, :cond_0

    :cond_6
    invoke-static {p0, v0, p2, p3, v3}, Lcom/baidu/location/j;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/k;->do(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/k;->goto:Landroid/location/Location;

    if-eqz v0, :cond_0

    sput-object v0, Lcom/baidu/location/k;->for:Lcom/baidu/location/e$c;

    goto/16 :goto_0

    :cond_7
    move-object v0, p1

    goto :goto_2

    :cond_8
    move-object v0, p0

    goto :goto_1
.end method

.method public static a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "&manll=%.5f|%.5f&manaddr=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v4}, Lcom/baidu/location/j;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/k;->if(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v1, "insert2WifiQueue..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/baidu/location/k;->i:I

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/baidu/location/k;->i:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->b:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    move-result v0

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/baidu/location/k;->b:I

    sget v1, Lcom/baidu/location/k;->j:I

    sget v2, Lcom/baidu/location/k;->if:I

    sget v3, Lcom/baidu/location/k;->g:I

    sget v4, Lcom/baidu/location/k;->j:I

    sget v5, Lcom/baidu/location/k;->if:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/k;->a(IIIJ)I

    sget-object v0, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->b:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    goto :goto_0
.end method

.method private static a(IIIIJ)Z
    .locals 3

    const/16 v2, 0x400

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    if-lt p0, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    const/16 v1, 0x80

    if-lt p3, v1, :cond_0

    if-gt p3, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/baidu/location/k;->byte:Landroid/location/Location;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/baidu/location/k;->goto:Landroid/location/Location;

    if-nez v2, :cond_3

    :cond_2
    sput-object p0, Lcom/baidu/location/k;->byte:Landroid/location/Location;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/baidu/location/k;->byte:Landroid/location/Location;

    invoke-virtual {p0, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-double v2, v2

    sget v4, Lcom/baidu/location/j;->S:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    sget v6, Lcom/baidu/location/j;->P:F

    float-to-double v6, v6

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    sget v4, Lcom/baidu/location/j;->N:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    sget-object v4, Lcom/baidu/location/k;->goto:Landroid/location/Location;

    invoke-virtual {p0, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v2, v4, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;Lcom/baidu/location/e$c;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/baidu/location/e$c;->do:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/baidu/location/e$c;->do:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/baidu/location/k;->for:Lcom/baidu/location/e$c;

    invoke-virtual {p1, v2}, Lcom/baidu/location/e$c;->do(Lcom/baidu/location/e$c;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/baidu/location/k;->do:Landroid/location/Location;

    if-nez v0, :cond_2

    sput-object p0, Lcom/baidu/location/k;->do:Landroid/location/Location;

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;Z)Z
    .locals 1

    sget-object v0, Lcom/baidu/location/k;->goto:Landroid/location/Location;

    invoke-static {v0, p0, p1}, Lcom/baidu/location/b;->a(Landroid/location/Location;Landroid/location/Location;Z)Z

    move-result v0

    return v0
.end method

.method private static do(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v1, "insert2GpsQueue..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/baidu/location/k;->i:I

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/baidu/location/k;->i:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->int:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    move-result v0

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/baidu/location/k;->int:I

    sget v1, Lcom/baidu/location/k;->j:I

    sget v2, Lcom/baidu/location/k;->char:I

    sget v3, Lcom/baidu/location/k;->g:I

    sget v4, Lcom/baidu/location/k;->j:I

    sget v5, Lcom/baidu/location/k;->if:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/k;->a(IIIJ)I

    sget-object v0, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->int:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    goto :goto_0
.end method

.method private static if(Ljava/util/List;I)I
    .locals 13

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/k;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;

    sget-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v1, "upload man write file does not exist..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/io/RandomAccessFile;

    sget-object v0, Lcom/baidu/location/k;->c:Ljava/io/File;

    const-string v1, "rw"

    invoke-direct {v9, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, -0x3

    goto :goto_0

    :cond_3
    int-to-long v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/baidu/location/k;->a(IIIIJ)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, -0x4

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    move v8, v6

    :goto_1
    sget v6, Lcom/baidu/location/k;->case:I

    if-le v8, v6, :cond_5

    add-int v6, v0, v1

    add-int/2addr v6, v7

    rem-int/2addr v6, v2

    mul-int/2addr v6, v3

    int-to-long v10, v6

    add-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v10, 0x0

    array-length v11, v6

    invoke-virtual {v9, v6, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v8, -0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v6

    goto :goto_1

    :cond_5
    add-int/2addr v1, v7

    if-le v1, v2, :cond_6

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/2addr v0, v2

    move v1, v0

    move v0, v2

    :goto_2
    int-to-long v10, p1

    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v9, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v9, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v9, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x5

    goto/16 :goto_0

    :cond_6
    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_2
.end method

.method public static if()V
    .locals 7

    const/4 v6, -0x1

    sget-object v0, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v1, "upload manager flush..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/k;->case:I

    sget-object v0, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->new:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    move-result v0

    if-ge v0, v6, :cond_0

    sget v0, Lcom/baidu/location/k;->new:I

    sget v1, Lcom/baidu/location/k;->j:I

    sget v2, Lcom/baidu/location/k;->if:I

    sget v3, Lcom/baidu/location/k;->g:I

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/k;->a(IIIJ)I

    sget-object v0, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->new:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    :cond_0
    sget-object v0, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->b:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    move-result v0

    if-ge v0, v6, :cond_1

    sget v0, Lcom/baidu/location/k;->b:I

    sget v1, Lcom/baidu/location/k;->j:I

    sget v2, Lcom/baidu/location/k;->if:I

    sget v3, Lcom/baidu/location/k;->g:I

    sget v4, Lcom/baidu/location/k;->j:I

    sget v5, Lcom/baidu/location/k;->if:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/k;->a(IIIJ)I

    sget-object v0, Lcom/baidu/location/k;->try:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->b:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    :cond_1
    sget-object v0, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->int:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    move-result v0

    if-ge v0, v6, :cond_2

    sget v0, Lcom/baidu/location/k;->int:I

    sget v1, Lcom/baidu/location/k;->j:I

    sget v2, Lcom/baidu/location/k;->char:I

    sget v3, Lcom/baidu/location/k;->g:I

    sget v4, Lcom/baidu/location/k;->j:I

    sget v5, Lcom/baidu/location/k;->if:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/k;->a(IIIJ)I

    sget-object v0, Lcom/baidu/location/k;->f:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->int:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    :cond_2
    const/4 v0, 0x5

    sput v0, Lcom/baidu/location/k;->case:I

    return-void
.end method

.method private static if(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/location/k;->else:Ljava/lang/String;

    const-string v1, "insert2CellQueue..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/baidu/location/k;->i:I

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/baidu/location/k;->i:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->new:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    move-result v0

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/baidu/location/k;->new:I

    sget v1, Lcom/baidu/location/k;->j:I

    sget v2, Lcom/baidu/location/k;->if:I

    sget v3, Lcom/baidu/location/k;->g:I

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/k;->a(IIIJ)I

    sget-object v0, Lcom/baidu/location/k;->void:Ljava/util/ArrayList;

    sget v1, Lcom/baidu/location/k;->new:I

    invoke-static {v0, v1}, Lcom/baidu/location/k;->if(Ljava/util/List;I)I

    goto :goto_0
.end method
