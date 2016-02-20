.class public Lcom/baidu/location/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b$c$a;
    }
.end annotation


# static fields
.field public static final for:Ljava/lang/String; = "$GPGSA"

.field public static final g:Ljava/lang/String; = "$GPGSV"

.field public static final if:Ljava/lang/String; = "$GPGGA"

.field public static final int:Ljava/lang/String; = "$GPRMC"


# instance fields
.field private a:D

.field private b:D

.field private byte:D

.field private c:C

.field private case:D

.field private char:D

.field private d:Ljava/lang/String;

.field public do:I

.field private e:Ljava/util/List;

.field private else:D

.field private f:Z

.field private goto:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:D

.field private k:Ljava/lang/String;

.field final synthetic l:Lcom/baidu/location/b;

.field private long:Z

.field private m:I

.field private n:I

.field private new:Ljava/util/List;

.field private o:D

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private try:I

.field private void:Z


# direct methods
.method public constructor <init>(Lcom/baidu/location/b;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide v4, 0x407f400000000000L    # 500.0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/location/b$c;->l:Lcom/baidu/location/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Lcom/baidu/location/b$c;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/b$c;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/b$c;->r:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/b$c;->goto:Ljava/lang/String;

    iput-wide v4, p0, Lcom/baidu/location/b$c;->else:D

    iput-wide v4, p0, Lcom/baidu/location/b$c;->byte:D

    iput-wide v2, p0, Lcom/baidu/location/b$c;->o:D

    iput v1, p0, Lcom/baidu/location/b$c;->h:I

    iput v1, p0, Lcom/baidu/location/b$c;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/b$c;->q:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/b$c;->long:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/b$c;->k:Ljava/lang/String;

    const/16 v0, 0x4e

    iput-char v0, p0, Lcom/baidu/location/b$c;->c:C

    iput-wide v2, p0, Lcom/baidu/location/b$c;->j:D

    iput-wide v4, p0, Lcom/baidu/location/b$c;->a:D

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/b$c;->p:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/b$c;->i:Z

    iput v6, p0, Lcom/baidu/location/b$c;->try:I

    iput-wide v2, p0, Lcom/baidu/location/b$c;->b:D

    iput-wide v2, p0, Lcom/baidu/location/b$c;->case:D

    iput-wide v2, p0, Lcom/baidu/location/b$c;->char:D

    iput-object v7, p0, Lcom/baidu/location/b$c;->new:Ljava/util/List;

    iput-boolean v1, p0, Lcom/baidu/location/b$c;->void:Z

    iput-object v7, p0, Lcom/baidu/location/b$c;->e:Ljava/util/List;

    iput v1, p0, Lcom/baidu/location/b$c;->n:I

    iput v1, p0, Lcom/baidu/location/b$c;->do:I

    iput-object p2, p0, Lcom/baidu/location/b$c;->new:Ljava/util/List;

    iput-object p3, p0, Lcom/baidu/location/b$c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/location/b$c;->q:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/location/b$c;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b$c;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/baidu/location/b$c;->void()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    move v0, v1

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-ge v0, v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    :cond_1
    return v3
.end method

.method private a(DD)[D
    .locals 8

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_2

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    const-wide v0, 0x4056800000000000L    # 90.0

    :cond_0
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    mul-double v4, p1, p1

    mul-double v6, p3, p3

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    aput-wide v0, v2, v3

    return-object v2

    :cond_1
    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide v0, 0x4070e00000000000L    # 270.0

    goto :goto_0

    :cond_2
    div-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)[D
    .locals 11

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v2, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b$c$a;

    invoke-virtual {v0}, Lcom/baidu/location/b$c$a;->if()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5a

    int-to-double v3, v0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b$c$a;

    invoke-virtual {v0}, Lcom/baidu/location/b$c$a;->a()I

    move-result v0

    int-to-double v0, v0

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/baidu/location/b$c;->if(DD)[D

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b$c$a;

    invoke-virtual {v0}, Lcom/baidu/location/b$c$a;->if()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5a

    int-to-double v4, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b$c$a;

    invoke-virtual {v0}, Lcom/baidu/location/b$c$a;->a()I

    move-result v0

    int-to-double v6, v0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/baidu/location/b$c;->if(DD)[D

    move-result-object v0

    aget-wide v4, v3, v8

    aget-wide v6, v0, v8

    add-double/2addr v4, v6

    div-double/2addr v4, v9

    aput-wide v4, v3, v8

    aget-wide v4, v3, v2

    aget-wide v6, v0, v2

    add-double/2addr v4, v6

    div-double/2addr v4, v9

    aput-wide v4, v3, v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private if(DD)[D
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/b$c;->case:D

    return-wide v0
.end method

.method public a(ZZZZZ)I
    .locals 12

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x3

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->r:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/b$c;->do:I

    iget v0, p0, Lcom/baidu/location/b$c;->m:I

    sget v1, Lcom/baidu/location/j;->a:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/baidu/location/b$c;->m:I

    sget v1, Lcom/baidu/location/j;->t:I

    if-gt v0, v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->i:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/b$c;->do:I

    iget-wide v0, p0, Lcom/baidu/location/b$c;->case:D

    sget v2, Lcom/baidu/location/j;->case:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/baidu/location/b$c;->case:D

    sget v2, Lcom/baidu/location/j;->A:F

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_6

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->i:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/location/b$c;->do:I

    iget-wide v0, p0, Lcom/baidu/location/b$c;->b:D

    sget v2, Lcom/baidu/location/j;->char:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lcom/baidu/location/b$c;->b:D

    sget v2, Lcom/baidu/location/j;->C:F

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    if-eqz p4, :cond_9

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->void:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/location/b$c;->do:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b$c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b$c$a;

    invoke-virtual {v0}, Lcom/baidu/location/b$c$a;->do()I

    move-result v0

    sget v3, Lcom/baidu/location/j;->int:I

    if-lt v0, v3, :cond_14

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_7
    sget v0, Lcom/baidu/location/j;->if:I

    if-lt v1, v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    sget v0, Lcom/baidu/location/j;->u:I

    if-gt v1, v0, :cond_9

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_9
    if-eqz p5, :cond_12

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->void:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/location/b$c;->do:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0xa

    if-ge v0, v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b$c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v0

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b$c$a;

    const/4 v1, 0x1

    const/16 v8, 0xa

    invoke-virtual {v0}, Lcom/baidu/location/b$c$a;->do()I

    move-result v9

    if-lt v9, v8, :cond_13

    invoke-virtual {v0}, Lcom/baidu/location/b$c$a;->if()I

    move-result v9

    if-lt v9, v1, :cond_13

    invoke-virtual {v0}, Lcom/baidu/location/b$c$a;->do()I

    move-result v1

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_5
    move v2, v0

    goto :goto_4

    :cond_b
    const/4 v0, 0x4

    if-lt v2, v0, :cond_11

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/location/b$c;->a(Ljava/util/List;)[D

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v2, 0x0

    aget-wide v7, v0, v2

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v9, v1

    mul-double/2addr v7, v9

    aput-wide v7, v0, v2

    const/4 v2, 0x1

    aget-wide v7, v0, v2

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v9, v1

    mul-double/2addr v7, v9

    aput-wide v7, v0, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    const/4 v1, 0x1

    move v3, v1

    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_e

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    const/4 v7, 0x0

    aget-wide v8, v1, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v10, v2

    mul-double/2addr v8, v10

    aput-wide v8, v1, v7

    const/4 v7, 0x1

    aget-wide v8, v1, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v10, v2

    mul-double/2addr v8, v10

    aput-wide v8, v1, v7

    const/4 v2, 0x0

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    const/4 v9, 0x0

    aget-wide v9, v1, v9

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    aput-wide v7, v0, v2

    const/4 v2, 0x1

    const/4 v7, 0x1

    aget-wide v7, v0, v7

    const/4 v9, 0x1

    aget-wide v9, v1, v9

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    aput-wide v7, v0, v2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v5, v0, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/baidu/location/b$c;->a(DD)[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    sget v3, Lcom/baidu/location/j;->k:I

    int-to-double v5, v3

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_f

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    sget v2, Lcom/baidu/location/j;->K:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_12

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/b$c;->do:I

    move v0, v4

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto/16 :goto_5

    :cond_14
    move v0, v1

    goto/16 :goto_2
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/b$c;->b:D

    return-wide v0
.end method

.method public byte()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b$c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/b$c;->a(ZZZZZ)I

    move-result v0

    return v0
.end method

.method public case()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/b$c;->j:D

    return-wide v0
.end method

.method public char()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->r:Z

    return v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/b$c;->byte:D

    return-wide v0
.end method

.method public do()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b$c;->e:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b$c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public else()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b$c;->new:Ljava/util/List;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/b$c;->try:I

    return v0
.end method

.method public for()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/b$c;->char:D

    return-wide v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/b$c;->h:I

    return v0
.end method

.method public goto()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/b$c;->m:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->long:Z

    return v0
.end method

.method public if()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->f:Z

    return v0
.end method

.method public int()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b$c;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public j()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/b$c;->a:D

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b$c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/b$c;->else:D

    return-wide v0
.end method

.method public long()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->void:Z

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/b$c;->n:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public new()C
    .locals 1

    iget-char v0, p0, Lcom/baidu/location/b$c;->c:C

    return v0
.end method

.method public try()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/b$c;->o:D

    return-wide v0
.end method

.method public void()V
    .locals 11

    iget-object v0, p0, Lcom/baidu/location/b$c;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/location/b$c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/b$c;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/location/b$c;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ","

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, v2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    aget-object v0, v2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    aget-object v0, v2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    aget-object v0, v2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x7

    aget-object v0, v2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x9

    aget-object v0, v2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x3

    aget-object v3, v2, v3

    const-string v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, -0x1

    :cond_2
    const/4 v3, 0x5

    aget-object v3, v2, v3

    const-string v4, "W"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, -0x1

    :cond_3
    int-to-double v3, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v5, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    const/4 v7, 0x2

    const/4 v8, 0x2

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    iput-wide v3, p0, Lcom/baidu/location/b$c;->else:D

    int-to-double v0, v1

    const/4 v3, 0x4

    aget-object v3, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x4

    aget-object v5, v2, v5

    const/4 v6, 0x3

    const/4 v7, 0x4

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    mul-double/2addr v0, v3

    iput-wide v0, p0, Lcom/baidu/location/b$c;->byte:D

    const/16 v0, 0x9

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b$c;->o:D

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/b$c;->h:I

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/b$c;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b$c;->r:Z

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/b$c;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/location/b$c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/location/b$c;->q:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/location/b$c;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const-string v0, ","

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x9

    aget-object v0, v2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x2

    aget-object v0, v2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x2

    aget-object v0, v2, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    iput-char v0, p0, Lcom/baidu/location/b$c;->c:C

    const/4 v0, 0x7

    aget-object v0, v2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/16 v0, 0x0

    :goto_2
    iput-wide v0, p0, Lcom/baidu/location/b$c;->j:D

    const/16 v0, 0x8

    aget-object v0, v2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    aget-object v0, v2, v0

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    const-wide v0, 0x407f400000000000L    # 500.0

    :goto_3
    iput-wide v0, p0, Lcom/baidu/location/b$c;->a:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b$c;->long:Z

    :cond_8
    iget-object v0, p0, Lcom/baidu/location/b$c;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/location/b$c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/location/b$c;->p:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/location/b$c;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_c

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    const-wide v0, 0x3ffda1cac083126fL    # 1.852

    const/4 v3, 0x7

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v0, v3

    goto :goto_2

    :cond_b
    const/16 v0, 0x8

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_3

    :cond_c
    const-string v0, ","

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    array-length v1, v0

    add-int/lit8 v1, v1, -0x3

    aget-object v1, v0, v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v0, v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/b$c;->try:I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/b$c;->b:D

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/b$c;->case:D

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b$c;->char:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b$c;->i:Z

    :cond_d
    iget-object v0, p0, Lcom/baidu/location/b$c;->new:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/location/b$c;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/baidu/location/b$c;->new:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/location/b$c;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/baidu/location/b$c;->void:Z

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->void:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/location/b$c;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/location/b$c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, ","

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_f

    add-int/lit8 v1, v1, 0x1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    goto :goto_5

    :cond_11
    const-string v0, ","

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    move v6, v0

    :goto_7
    array-length v0, v8

    if-ge v6, v0, :cond_e

    aget-object v0, v8, v6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    add-int/lit8 v0, v6, 0x1

    aget-object v0, v8, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    add-int/lit8 v0, v6, 0x2

    aget-object v0, v8, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/baidu/location/b$c;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/b$c;->n:I

    aget-object v0, v8, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v6, 0x1

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v6, 0x2

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v0, v6, 0x3

    aget-object v0, v8, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v5, 0x0

    :goto_8
    iget-object v9, p0, Lcom/baidu/location/b$c;->e:Ljava/util/List;

    new-instance v0, Lcom/baidu/location/b$c$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/location/b$c$a;-><init>(Lcom/baidu/location/b$c;IIII)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v0, v6, 0x4

    move v6, v0

    goto :goto_7

    :cond_13
    add-int/lit8 v0, v6, 0x3

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b$c;->void:Z

    :cond_15
    :goto_9
    iget-boolean v0, p0, Lcom/baidu/location/b$c;->r:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/baidu/location/b$c;->i:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/baidu/location/b$c;->f:Z

    return-void

    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b$c;->void:Z

    goto :goto_9

    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method
