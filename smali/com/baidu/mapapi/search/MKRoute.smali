.class public Lcom/baidu/mapapi/search/MKRoute;
.super Ljava/lang/Object;


# static fields
.field public static final ROUTE_TYPE_BUS_LINE:I = 0x3

.field public static final ROUTE_TYPE_DRIVING:I = 0x1

.field public static final ROUTE_TYPE_UNKNOW:I = 0x0

.field public static final ROUTE_TYPE_WALKING:I = 0x2


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/platform/comapi/basestruct/GeoPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field private f:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/platform/comapi/basestruct/GeoPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/search/MKStep;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/MKRoute;->c:I

    return-void
.end method

.method a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/MKRoute;->e:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-char v5, v4, v0

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-char v5, v4, v0

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_0

    aget-char v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/MKRoute;->i:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/search/MKStep;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    return-void
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/MKRoute;->b:I

    return-void
.end method

.method b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/MKRoute;->f:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    return-void
.end method

.method b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/platform/comapi/basestruct/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/search/MKRoute;->g:Ljava/util/ArrayList;

    return-void
.end method

.method c(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/MKRoute;->d:I

    return-void
.end method

.method public customizeRoute(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;[Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    check-cast v0, [[Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v0, 0x1

    new-array v0, v0, [[Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/mapapi/search/MKRoute;->customizeRoute(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;[[Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    goto :goto_0
.end method

.method public customizeRoute(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;[[Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 15

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/baidu/mapapi/search/MKRoute;->e:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/baidu/mapapi/search/MKRoute;->f:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    :cond_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/baidu/mapapi/search/MKRoute;->d:I

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v1, v2, :cond_7

    aget-object v6, p3, v1

    if-nez v6, :cond_4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_3
    array-length v8, v6

    if-ge v2, v8, :cond_6

    aget-object v8, v6, v2

    if-nez v8, :cond_5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/baidu/mapapi/search/MKRoute;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->a:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v7, v1

    :goto_5
    iget-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_b

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/baidu/mapapi/search/MKStep;

    invoke-direct {v9}, Lcom/baidu/mapapi/search/MKStep;-><init>()V

    const/4 v1, 0x0

    move-object v12, v3

    move v3, v1

    move-wide v13, v4

    move-wide v5, v13

    move-object v4, v12

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    if-nez v7, :cond_8

    if-nez v3, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v9, v1}, Lcom/baidu/mapapi/search/MKStep;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/baidu/mapapi/search/MKStep;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1, v4}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;)D

    move-result-wide v10

    add-double v4, v5, v10

    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v9, v1}, Lcom/baidu/mapapi/search/MKStep;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/baidu/mapapi/search/MKStep;->a(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    add-int/lit8 v3, v3, 0x1

    move-wide v12, v4

    move-wide v5, v12

    move-object v4, v1

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v3, v4

    move-wide v12, v5

    move-wide v4, v12

    goto/16 :goto_5

    :cond_b
    double-to-int v1, v4

    iput v1, p0, Lcom/baidu/mapapi/search/MKRoute;->c:I

    goto/16 :goto_0

    :cond_c
    move-wide v4, v5

    goto :goto_7
.end method

.method public getArrayPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/platform/comapi/basestruct/GeoPoint;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKRoute;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/MKRoute;->c:I

    return v0
.end method

.method public getEnd()Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKRoute;->f:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/MKRoute;->b:I

    return v0
.end method

.method public getNumSteps()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRouteType()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/MKRoute;->d:I

    return v0
.end method

.method public getStart()Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKRoute;->e:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    return-object v0
.end method

.method public getStep(I)Lcom/baidu/mapapi/search/MKStep;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/search/MKRoute;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/MKStep;

    goto :goto_0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKRoute;->i:Ljava/lang/String;

    return-object v0
.end method
