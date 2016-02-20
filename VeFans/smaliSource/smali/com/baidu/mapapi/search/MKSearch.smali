.class public Lcom/baidu/mapapi/search/MKSearch;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/MKSearch$1;,
        Lcom/baidu/mapapi/search/MKSearch$a;
    }
.end annotation


# static fields
.field public static final EBUS_NO_SUBWAY:I = 0x6

.field public static final EBUS_TIME_FIRST:I = 0x3

.field public static final EBUS_TRANSFER_FIRST:I = 0x4

.field public static final EBUS_WALK_FIRST:I = 0x5

.field public static final ECAR_DIS_FIRST:I = 0x1

.field public static final ECAR_FEE_FIRST:I = 0x2

.field public static final ECAR_TIME_FIRST:I = 0x0

.field public static final POI_DETAIL_SEARCH:I = 0x34

.field public static final TYPE_AREA_MULTI_POI_LIST:I = 0x2d

.field public static final TYPE_AREA_POI_LIST:I = 0x15

.field public static final TYPE_CITY_LIST:I = 0x7

.field public static final TYPE_POI_LIST:I = 0xb


# instance fields
.field a:Lcom/baidu/mapapi/search/MKSearchListener;

.field private b:Lcom/baidu/platform/comapi/basestruct/b;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/baidu/mapapi/search/MKSearch$a;

.field private l:Lcom/baidu/mapapi/BMapManager;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/platform/comapi/basestruct/b;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/basestruct/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->g:I

    iput v2, p0, Lcom/baidu/mapapi/search/MKSearch;->h:I

    iput v2, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    iput v2, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    new-instance v0, Lcom/baidu/mapapi/search/MKSearch$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapapi/search/MKSearch$a;-><init>(Lcom/baidu/mapapi/search/MKSearch;Lcom/baidu/mapapi/search/MKSearch$1;)V

    iput-object v0, p0, Lcom/baidu/mapapi/search/MKSearch;->k:Lcom/baidu/mapapi/search/MKSearch$a;

    iput v2, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/MKSearch;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/MKSearch;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    return p1
.end method

.method private static a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/c;
    .locals 6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-static {}, Lcom/baidu/platform/comapi/a/a;->a()Lcom/baidu/platform/comapi/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v4

    double-to-float v1, v1

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    double-to-float v2, v2

    const-string v3, "bd09ll"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/a/a;->a(FFLjava/lang/String;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mapapi/search/MKSearch;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    return v0
.end method

.method static synthetic c(Lcom/baidu/mapapi/search/MKSearch;)Lcom/baidu/mapapi/BMapManager;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKSearch;->l:Lcom/baidu/mapapi/BMapManager;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mapapi/search/MKSearch;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    return v0
.end method

.method public static getPoiPageCapacity()I
    .locals 1

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/b/e;->c()I

    move-result v0

    return v0
.end method

.method public static setPoiPageCapacity(I)V
    .locals 1

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/b/e;->a(I)V

    return-void
.end method


# virtual methods
.method public busLineSearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v1, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    const/16 v1, 0xd

    iput v1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/baidu/platform/comapi/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drivingSearch(Ljava/lang/String;Lcom/baidu/mapapi/search/MKPlanNode;Ljava/lang/String;Lcom/baidu/mapapi/search/MKPlanNode;)I
    .locals 13

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    new-instance v2, Lcom/baidu/platform/comapi/b/b;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/b/b;-><init>()V

    iget-object v1, p2, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    iput-object v1, v2, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    :cond_2
    iget-object v1, p2, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/search/MKSearch;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    const/4 v1, 0x1

    iput v1, v2, Lcom/baidu/platform/comapi/b/b;->a:I

    move-object v5, p1

    :goto_1
    new-instance v3, Lcom/baidu/platform/comapi/b/b;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/b/b;-><init>()V

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    iput-object v1, v3, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    :cond_3
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz v1, :cond_6

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/search/MKSearch;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    const/4 v1, 0x1

    iput v1, v3, Lcom/baidu/platform/comapi/b/b;->a:I

    move-object/from16 v6, p3

    :goto_2
    iget v1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v1, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    iget v9, p0, Lcom/baidu/mapapi/search/MKSearch;->h:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/baidu/platform/comapi/b/e;->a(Lcom/baidu/platform/comapi/b/b;Lcom/baidu/platform/comapi/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/platform/comapi/basestruct/b;IIILjava/util/ArrayList;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_5
    const-string p1, "1"

    move-object v5, p1

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    const-string v1, ""

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    const-string p3, "1"

    move-object/from16 v6, p3

    goto :goto_2

    :cond_8
    const/4 v1, -0x1

    goto :goto_0

    :cond_9
    move-object/from16 v6, p3

    goto :goto_2

    :cond_a
    move-object v5, p1

    goto :goto_1
.end method

.method public geocode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x63

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v1, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/baidu/platform/comapi/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goToPoiPage(I)I
    .locals 9

    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->c:Ljava/lang/String;

    const/4 v2, 0x1

    iput p1, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    iget-object v4, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/platform/comapi/b/e;->a(Ljava/lang/String;IILcom/baidu/platform/comapi/basestruct/b;ILcom/baidu/platform/comapi/basestruct/c;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mapapi/search/MKSearch;->e:Ljava/lang/String;

    iput p1, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comapi/b/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/baidu/platform/comapi/basestruct/b;ILjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "distance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mapapi/search/MKSearch;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->c:Ljava/lang/String;

    const/4 v2, 0x1

    iput p1, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    iget-object v6, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    move v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/platform/comapi/b/e;->a(Ljava/lang/String;IIILcom/baidu/platform/comapi/basestruct/b;Lcom/baidu/platform/comapi/basestruct/b;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->d:[Ljava/lang/String;

    const/4 v2, 0x1

    iput p1, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    iget-object v7, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    const/4 v8, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/platform/comapi/b/e;->a([Ljava/lang/String;IIIILcom/baidu/platform/comapi/basestruct/b;Lcom/baidu/platform/comapi/basestruct/b;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v0, -0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public init(Lcom/baidu/mapapi/BMapManager;Lcom/baidu/mapapi/search/MKSearchListener;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/search/MKSearch;->l:Lcom/baidu/mapapi/BMapManager;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/baidu/mapapi/search/MKSearch;->a:Lcom/baidu/mapapi/search/MKSearchListener;

    :cond_1
    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->k:Lcom/baidu/mapapi/search/MKSearch$a;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->a(Lcom/baidu/platform/comapi/b/c;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public poiDetailSearch(Ljava/lang/String;)I
    .locals 3

    const/16 v2, 0xc

    const/4 v0, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v1, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    iput v2, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/platform/comapi/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poiMultiSearchInbounds([Ljava/lang/String;Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;)I
    .locals 10

    const/16 v8, 0xa

    const/4 v3, 0x0

    const/4 v9, -0x1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v3, v9

    :cond_1
    :goto_0
    return v3

    :cond_2
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    array-length v0, p1

    if-le v0, v8, :cond_4

    :cond_3
    move v3, v9

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/baidu/platform/comapi/a/a;->a()Lcom/baidu/platform/comapi/a/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v6

    double-to-float v1, v1

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v4, v2

    div-double/2addr v4, v6

    double-to-float v2, v4

    const-string v4, "bd09ll"

    invoke-virtual {v0, v1, v2, v4}, Lcom/baidu/platform/comapi/a/a;->a(FFLjava/lang/String;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v0

    invoke-static {}, Lcom/baidu/platform/comapi/a/a;->a()Lcom/baidu/platform/comapi/a/a;

    move-result-object v1

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v4, v2

    div-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    double-to-float v4, v4

    const-string v5, "bd09ll"

    invoke-virtual {v1, v2, v4, v5}, Lcom/baidu/platform/comapi/a/a;->a(FFLjava/lang/String;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/basestruct/b;->a(Lcom/baidu/platform/comapi/basestruct/c;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/basestruct/b;->b(Lcom/baidu/platform/comapi/basestruct/c;)V

    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    iput v8, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput-object p1, p0, Lcom/baidu/mapapi/search/MKSearch;->d:[Ljava/lang/String;

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->d:[Ljava/lang/String;

    const/4 v2, 0x1

    iput v3, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    const/16 v4, 0xc

    iget-object v6, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    iget-object v7, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    const/4 v8, 0x0

    move v5, v3

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/platform/comapi/b/e;->a([Ljava/lang/String;IIIILcom/baidu/platform/comapi/basestruct/b;Lcom/baidu/platform/comapi/basestruct/b;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    move v3, v9

    goto :goto_0
.end method

.method public poiMultiSearchNearBy([Ljava/lang/String;Lcom/baidu/platform/comapi/basestruct/GeoPoint;I)I
    .locals 10

    const-wide v6, 0x412e848000000000L    # 1000000.0

    const/4 v3, 0x0

    const/4 v9, -0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v3, v9

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-gtz p3, :cond_3

    move v3, v9

    goto :goto_0

    :cond_3
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    array-length v0, p1

    const/16 v1, 0xa

    if-le v0, v1, :cond_5

    :cond_4
    move v3, v9

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/baidu/platform/comapi/a/a;->a()Lcom/baidu/platform/comapi/a/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v6

    double-to-float v1, v1

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v4, v2

    div-double/2addr v4, v6

    double-to-float v2, v4

    const-string v4, "bd09ll"

    invoke-virtual {v0, v1, v2, v4}, Lcom/baidu/platform/comapi/a/a;->a(FFLjava/lang/String;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v0

    new-instance v1, Lcom/baidu/platform/comapi/basestruct/c;

    iget v2, v0, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    sub-int/2addr v2, p3

    iget v4, v0, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    sub-int/2addr v4, p3

    invoke-direct {v1, v2, v4}, Lcom/baidu/platform/comapi/basestruct/c;-><init>(II)V

    new-instance v2, Lcom/baidu/platform/comapi/basestruct/c;

    iget v4, v0, Lcom/baidu/platform/comapi/basestruct/c;->a:I

    add-int/2addr v4, p3

    iget v0, v0, Lcom/baidu/platform/comapi/basestruct/c;->b:I

    add-int/2addr v0, p3

    invoke-direct {v2, v4, v0}, Lcom/baidu/platform/comapi/basestruct/c;-><init>(II)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/basestruct/b;->a(Lcom/baidu/platform/comapi/basestruct/c;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/basestruct/b;->b(Lcom/baidu/platform/comapi/basestruct/c;)V

    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput-object p1, p0, Lcom/baidu/mapapi/search/MKSearch;->d:[Ljava/lang/String;

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->d:[Ljava/lang/String;

    const/4 v2, 0x1

    iput v3, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    const/16 v4, 0xc

    iget-object v6, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    iget-object v7, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    const/4 v8, 0x0

    move v5, v3

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/platform/comapi/b/e;->a([Ljava/lang/String;IIIILcom/baidu/platform/comapi/basestruct/b;Lcom/baidu/platform/comapi/basestruct/b;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    move v3, v9

    goto :goto_0
.end method

.method public poiSearchInCity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, -0x1

    if-nez p2, :cond_1

    move v3, v7

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x10

    if-le v2, v5, :cond_3

    move v3, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x63

    if-le v2, v5, :cond_5

    :cond_4
    move v3, v7

    goto :goto_0

    :cond_5
    iput-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mapapi/search/MKSearch;->e:Ljava/lang/String;

    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mapapi/search/MKSearch;->e:Ljava/lang/String;

    iput v3, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    const/16 v5, 0xc

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comapi/b/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/baidu/platform/comapi/basestruct/b;ILjava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v7

    goto :goto_0
.end method

.method public poiSearchInbounds(Ljava/lang/String;Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;)I
    .locals 8

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x63

    if-le v1, v2, :cond_3

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/platform/comapi/a/a;->a()Lcom/baidu/platform/comapi/a/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    double-to-float v3, v3

    const-string v4, "bd09ll"

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/platform/comapi/a/a;->a(FFLjava/lang/String;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v1

    invoke-static {}, Lcom/baidu/platform/comapi/a/a;->a()Lcom/baidu/platform/comapi/a/a;

    move-result-object v2

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    double-to-float v4, v4

    const-string v5, "bd09ll"

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/platform/comapi/a/a;->a(FFLjava/lang/String;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    invoke-virtual {v3, v1}, Lcom/baidu/platform/comapi/basestruct/b;->a(Lcom/baidu/platform/comapi/basestruct/c;)V

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/basestruct/b;->b(Lcom/baidu/platform/comapi/basestruct/c;)V

    iget v1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v1, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput-object v0, p0, Lcom/baidu/mapapi/search/MKSearch;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->c:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    iget-object v4, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/platform/comapi/b/e;->a(Ljava/lang/String;IILcom/baidu/platform/comapi/basestruct/b;ILcom/baidu/platform/comapi/basestruct/c;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public poiSearchNearBy(Ljava/lang/String;Lcom/baidu/platform/comapi/basestruct/GeoPoint;I)I
    .locals 9

    const/4 v3, 0x0

    const/4 v8, -0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v3, v8

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-gtz p3, :cond_3

    move v3, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x63

    if-le v1, v2, :cond_5

    :cond_4
    move v3, v8

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    new-instance v2, Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v4

    sub-int/2addr v4, p3

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v5

    sub-int/2addr v5, p3

    invoke-direct {v2, v4, v5}, Lcom/baidu/platform/comapi/basestruct/c;-><init>(II)V

    new-instance v4, Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    add-int/2addr v1, p3

    invoke-direct {v4, v5, v1}, Lcom/baidu/platform/comapi/basestruct/c;-><init>(II)V

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/basestruct/b;->a(Lcom/baidu/platform/comapi/basestruct/c;)V

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    invoke-virtual {v1, v4}, Lcom/baidu/platform/comapi/basestruct/b;->b(Lcom/baidu/platform/comapi/basestruct/c;)V

    iput-object v0, p0, Lcom/baidu/mapapi/search/MKSearch;->c:Ljava/lang/String;

    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput p3, p0, Lcom/baidu/mapapi/search/MKSearch;->f:I

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "distance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mapapi/search/MKSearch;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/MKSearch;->c:Ljava/lang/String;

    const/4 v2, 0x1

    iput v3, p0, Lcom/baidu/mapapi/search/MKSearch;->m:I

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    iget-object v6, p0, Lcom/baidu/mapapi/search/MKSearch;->b:Lcom/baidu/platform/comapi/basestruct/b;

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/platform/comapi/b/e;->a(Ljava/lang/String;IIILcom/baidu/platform/comapi/basestruct/b;Lcom/baidu/platform/comapi/basestruct/b;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    move v3, v8

    goto/16 :goto_0
.end method

.method public reverseGeocode(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/baidu/mapapi/search/MKSearch;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v2, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/b/e;->a(Lcom/baidu/platform/comapi/basestruct/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrivingPolicy(I)I
    .locals 1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/search/MKSearch;->h:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTransitPolicy(I)I
    .locals 1

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/search/MKSearch;->g:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public suggestionSearch(Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v7, -0x1

    if-nez p1, :cond_1

    move v2, v7

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x63

    if-le v0, v3, :cond_3

    :cond_2
    move v2, v7

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    const/4 v3, 0x1

    const/16 v5, 0xc

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comapi/b/e;->a(Ljava/lang/String;IILcom/baidu/platform/comapi/basestruct/b;ILcom/baidu/platform/comapi/basestruct/c;)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v7

    goto :goto_0
.end method

.method public transitSearch(Ljava/lang/String;Lcom/baidu/mapapi/search/MKPlanNode;Lcom/baidu/mapapi/search/MKPlanNode;)I
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v8, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v0, v8

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/baidu/platform/comapi/b/b;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/b/b;-><init>()V

    iget-object v0, p2, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    :cond_3
    iget-object v0, p2, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v0}, Lcom/baidu/mapapi/search/MKSearch;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    iput v3, v1, Lcom/baidu/platform/comapi/b/b;->a:I

    :cond_4
    new-instance v2, Lcom/baidu/platform/comapi/b/b;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/b/b;-><init>()V

    iget-object v0, p3, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p3, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    :cond_5
    iget-object v0, p3, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz v0, :cond_6

    iget-object v0, p3, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v0}, Lcom/baidu/mapapi/search/MKSearch;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    iput v3, v2, Lcom/baidu/platform/comapi/b/b;->a:I

    :cond_6
    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    const/16 v5, 0xc

    iget v6, p0, Lcom/baidu/mapapi/search/MKSearch;->g:I

    move-object v3, p1

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/platform/comapi/b/e;->a(Lcom/baidu/platform/comapi/b/b;Lcom/baidu/platform/comapi/b/b;Ljava/lang/String;Lcom/baidu/platform/comapi/basestruct/b;IILjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move v0, v8

    goto :goto_0
.end method

.method public walkingSearch(Ljava/lang/String;Lcom/baidu/mapapi/search/MKPlanNode;Ljava/lang/String;Lcom/baidu/mapapi/search/MKPlanNode;)I
    .locals 10

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move v0, v9

    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/baidu/platform/comapi/b/b;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/b/b;-><init>()V

    iget-object v0, p2, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    :cond_2
    iget-object v0, p2, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v0}, Lcom/baidu/mapapi/search/MKSearch;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    iput v6, v1, Lcom/baidu/platform/comapi/b/b;->a:I

    move-object v4, p1

    :goto_1
    new-instance v2, Lcom/baidu/platform/comapi/b/b;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/b/b;-><init>()V

    iget-object v0, p4, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p4, Lcom/baidu/mapapi/search/MKPlanNode;->name:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/platform/comapi/b/b;->c:Ljava/lang/String;

    :cond_3
    iget-object v0, p4, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz v0, :cond_6

    iget-object v0, p4, Lcom/baidu/mapapi/search/MKPlanNode;->pt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v0}, Lcom/baidu/mapapi/search/MKSearch;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/c;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/b/b;->b:Lcom/baidu/platform/comapi/basestruct/c;

    iput v6, v2, Lcom/baidu/platform/comapi/b/b;->a:I

    move-object v5, p3

    :goto_2
    iget v0, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    iput v0, p0, Lcom/baidu/mapapi/search/MKSearch;->i:I

    iput v6, p0, Lcom/baidu/mapapi/search/MKSearch;->j:I

    invoke-static {}, Lcom/baidu/platform/comapi/b/e;->a()Lcom/baidu/platform/comapi/b/e;

    move-result-object v0

    const/16 v7, 0xc

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/platform/comapi/b/e;->a(Lcom/baidu/platform/comapi/b/b;Lcom/baidu/platform/comapi/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/platform/comapi/basestruct/b;ILjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    const-string p1, "1"

    move-object v4, p1

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    const-string p3, "1"

    move-object v5, p3

    goto :goto_2

    :cond_8
    move v0, v9

    goto :goto_0

    :cond_9
    move-object v5, p3

    goto :goto_2

    :cond_a
    move-object v4, p1

    goto :goto_1
.end method
