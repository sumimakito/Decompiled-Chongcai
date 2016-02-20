.class public Lcom/baidu/mapapi/cloud/GeoSearchManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/cloud/GeoSearchManager$a;
    }
.end annotation


# static fields
.field public static final GEO_SEARCH:I = 0x32

.field public static final GEO_SEARCH_DETAILS:I = 0x33

.field static b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

.field static c:Landroid/os/Handler;

.field private static e:Lcom/baidu/mapapi/cloud/GeoSearchManager;


# instance fields
.field a:Lcom/baidu/platform/comjni/map/search/a;

.field private d:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/cloud/a;

    invoke-direct {v0}, Lcom/baidu/mapapi/cloud/a;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    return-void
.end method

.method public static getInstance()Lcom/baidu/mapapi/cloud/GeoSearchManager;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->e:Lcom/baidu/mapapi/cloud/GeoSearchManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;

    invoke-direct {v0}, Lcom/baidu/mapapi/cloud/GeoSearchManager;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->e:Lcom/baidu/mapapi/cloud/GeoSearchManager;

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->e:Lcom/baidu/mapapi/cloud/GeoSearchManager;

    return-object v0
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/search/a;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public destory()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a(Lcom/baidu/mapapi/cloud/GeoSearchManager;)V

    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    iput-object v2, v0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    :cond_0
    sput-object v2, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v0, 0x7d0

    sget-object v1, Lcom/baidu/mapapi/cloud/GeoSearchManager;->c:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/engine/a;->b(ILandroid/os/Handler;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/search/a;->c()I

    iput-object v2, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    :cond_2
    return-void
.end method

.method public init(Lcom/baidu/mapapi/cloud/GeoSearchListener;)Z
    .locals 2

    const/16 v1, 0x7d0

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/platform/comjni/map/search/a;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/search/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/search/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;-><init>(Lcom/baidu/mapapi/cloud/GeoSearchManager;Lcom/baidu/mapapi/cloud/GeoSearchListener;)V

    sput-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    :goto_1
    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a(Lcom/baidu/mapapi/cloud/GeoSearchManager;)V

    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->c:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/a;->a(ILandroid/os/Handler;)V

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    iput-object p1, v0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/search/a;->b()I

    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;-><init>(Lcom/baidu/mapapi/cloud/GeoSearchManager;Lcom/baidu/mapapi/cloud/GeoSearchListener;)V

    sput-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    :goto_3
    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a(Lcom/baidu/mapapi/cloud/GeoSearchManager;)V

    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->c:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/a;->a(ILandroid/os/Handler;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    iput-object p1, v0, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    goto :goto_3
.end method

.method public searchBounds(Lcom/baidu/mapapi/cloud/BoundsSearchInfo;)Z
    .locals 4

    iget-object v0, p1, Lcom/baidu/mapapi/cloud/BoundsSearchInfo;->ak:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.map.baidu.com/geosearch/poi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/BoundsSearchInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/search/a;->h(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public searchDetail(Lcom/baidu/mapapi/cloud/DetailSearchInfo;)Z
    .locals 4

    iget-object v0, p1, Lcom/baidu/mapapi/cloud/DetailSearchInfo;->ak:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.map.baidu.com/geosearch/detail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/DetailSearchInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/search/a;->i(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public searchNearby(Lcom/baidu/mapapi/cloud/NearbySearchInfo;)Z
    .locals 4

    iget-object v0, p1, Lcom/baidu/mapapi/cloud/NearbySearchInfo;->ak:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.map.baidu.com/geosearch/poi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/NearbySearchInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/search/a;->h(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public searchRegion(Lcom/baidu/mapapi/cloud/RegionSearchInfo;)Z
    .locals 4

    iget-object v0, p1, Lcom/baidu/mapapi/cloud/RegionSearchInfo;->ak:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.map.baidu.com/geosearch/poi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/RegionSearchInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Lcom/baidu/platform/comjni/map/search/a;

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/search/a;->h(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method
