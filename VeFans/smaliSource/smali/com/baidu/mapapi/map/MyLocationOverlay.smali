.class public Lcom/baidu/mapapi/map/MyLocationOverlay;
.super Lcom/baidu/mapapi/map/Overlay;


# instance fields
.field private a:Lcom/baidu/mapapi/map/LocationData;

.field private b:Lcom/baidu/mapapi/map/MapView;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/MapView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->a:Lcom/baidu/mapapi/map/LocationData;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->c:Z

    iput-object v1, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    const/4 v0, 0x7

    iput v0, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->mType:I

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->d:Ljava/lang/String;

    return-object v0
.end method

.method public disableCompass()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->c:Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->a:Lcom/baidu/mapapi/map/LocationData;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MyLocationOverlay;->setData(Lcom/baidu/mapapi/map/LocationData;)V

    return-void
.end method

.method protected dispatchTap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableCompass()Z
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->c:Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->a:Lcom/baidu/mapapi/map/LocationData;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MyLocationOverlay;->setData(Lcom/baidu/mapapi/map/LocationData;)V

    return v1
.end method

.method public getMyLocation()Lcom/baidu/mapapi/map/LocationData;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->a:Lcom/baidu/mapapi/map/LocationData;

    return-object v0
.end method

.method public isCompassEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->c:Z

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/map/LocationData;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->c:Z

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p1, Lcom/baidu/mapapi/map/LocationData;->direction:F

    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->a:Lcom/baidu/mapapi/map/LocationData;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/LocationData;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/MyLocationOverlay;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method
