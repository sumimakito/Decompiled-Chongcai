.class public Lcom/baidu/platform/comjni/map/search/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/baidu/platform/comjni/map/search/JNISearch;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    new-instance v0, Lcom/baidu/platform/comjni/map/search/JNISearch;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/search/JNISearch;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/search/JNISearch;->Create()I

    move-result v0

    iput v0, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    iget v0, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->GetSearchResult(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/search/JNISearch;->ReverseGeocodeSearch(III)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->ForceSearchByCityName(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->POIDetailSearchPlace(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/search/JNISearch;->BusLineDetailSearch(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->QueryInterface(I)I

    move-result v0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->AreaSearch(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/search/JNISearch;->geocode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->Release(I)I

    move-result v0

    return v0
.end method

.method public c(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->AreaMultiSearch(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->RoutePlanByBus(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->RoutePlanByCar(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public f(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->RoutePlanByFoot(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public g(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->SuggestionSearch(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public h(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->GeoSearch(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public i(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->GeoDetailSearch(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public j(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/search/a;->b:Lcom/baidu/platform/comjni/map/search/JNISearch;

    iget v1, p0, Lcom/baidu/platform/comjni/map/search/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/search/JNISearch;->MapBoundSearch(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
