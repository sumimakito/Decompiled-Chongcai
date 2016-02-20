.class public Lcom/baidu/mapapi/utils/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/baidu/platform/comapi/map/l;)Lcom/baidu/mapapi/map/MKOLSearchRecord;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/baidu/mapapi/map/MKOLSearchRecord;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MKOLSearchRecord;-><init>()V

    iget v0, p0, Lcom/baidu/platform/comapi/map/l;->a:I

    iput v0, v2, Lcom/baidu/mapapi/map/MKOLSearchRecord;->cityID:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/l;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/mapapi/map/MKOLSearchRecord;->cityName:Ljava/lang/String;

    iget v0, p0, Lcom/baidu/platform/comapi/map/l;->d:I

    iput v0, v2, Lcom/baidu/mapapi/map/MKOLSearchRecord;->cityType:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/l;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/l;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/l;

    invoke-static {v0}, Lcom/baidu/mapapi/utils/e;->a(Lcom/baidu/platform/comapi/map/l;)Lcom/baidu/mapapi/map/MKOLSearchRecord;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v0, Lcom/baidu/platform/comapi/map/l;->c:I

    add-int/2addr v0, v1

    iput-object v3, v2, Lcom/baidu/mapapi/map/MKOLSearchRecord;->childCities:Ljava/util/ArrayList;

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    iget v0, v2, Lcom/baidu/mapapi/map/MKOLSearchRecord;->cityType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iput v1, v2, Lcom/baidu/mapapi/map/MKOLSearchRecord;->size:I

    :goto_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/baidu/platform/comapi/map/l;->c:I

    iput v0, v2, Lcom/baidu/mapapi/map/MKOLSearchRecord;->size:I

    goto :goto_2
.end method

.method public static a(Lcom/baidu/platform/comapi/map/o;)Lcom/baidu/mapapi/map/MKOLUpdateElement;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MKOLUpdateElement;-><init>()V

    iget v1, p0, Lcom/baidu/platform/comapi/map/o;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;->cityID:I

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/o;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;->cityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/o;->g:Lcom/baidu/platform/comapi/basestruct/c;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/o;->g:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/c;->b()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/o;->g:Lcom/baidu/platform/comapi/basestruct/c;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/c;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-static {v1}, Lcom/baidu/mapapi/utils/d;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;->geoPt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    :cond_1
    iget v1, p0, Lcom/baidu/platform/comapi/map/o;->e:I

    iput v1, v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;->level:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/o;->i:I

    iput v1, v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;->ratio:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/o;->h:I

    iput v1, v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;->serversize:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/o;->i:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/baidu/platform/comapi/map/o;->h:I

    iput v1, v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;->size:I

    :goto_1
    iget v1, p0, Lcom/baidu/platform/comapi/map/o;->l:I

    iput v1, v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;->status:I

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/o;->j:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;->update:Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/baidu/platform/comapi/map/o;->h:I

    iget v2, p0, Lcom/baidu/platform/comapi/map/o;->i:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Lcom/baidu/mapapi/map/MKOLUpdateElement;->size:I

    goto :goto_1
.end method
