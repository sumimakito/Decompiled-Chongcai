.class public Lcom/baidu/mapapi/search/MKLine;
.super Ljava/lang/Object;


# static fields
.field public static final LINE_TYPE_BUS:I = 0x0

.field public static final LINE_TYPE_SUBWAY:I = 0x1


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/platform/comapi/basestruct/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/baidu/mapapi/search/MKPoiInfo;

.field private i:Lcom/baidu/mapapi/search/MKPoiInfo;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/platform/comapi/basestruct/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/MKLine;->b:I

    return-void
.end method

.method a(Lcom/baidu/mapapi/search/MKPoiInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/MKLine;->h:Lcom/baidu/mapapi/search/MKPoiInfo;

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

    iput-object v0, p0, Lcom/baidu/mapapi/search/MKLine;->g:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/platform/comapi/basestruct/GeoPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/search/MKLine;->j:Ljava/util/ArrayList;

    return-void
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/MKLine;->c:I

    return-void
.end method

.method b(Lcom/baidu/mapapi/search/MKPoiInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/MKLine;->i:Lcom/baidu/mapapi/search/MKPoiInfo;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/MKLine;->e:Ljava/lang/String;

    return-void
.end method

.method c(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/MKLine;->d:I

    return-void
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/MKLine;->c:I

    return v0
.end method

.method public getGetOffStop()Lcom/baidu/mapapi/search/MKPoiInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKLine;->i:Lcom/baidu/mapapi/search/MKPoiInfo;

    return-object v0
.end method

.method public getGetOnStop()Lcom/baidu/mapapi/search/MKPoiInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKLine;->h:Lcom/baidu/mapapi/search/MKPoiInfo;

    return-object v0
.end method

.method public getNumViaStops()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/MKLine;->b:I

    return v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/platform/comapi/basestruct/GeoPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKLine;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKLine;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKLine;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/MKLine;->d:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/MKLine;->f:Ljava/lang/String;

    return-object v0
.end method
