.class public Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;
.super Landroid/app/Activity;


# static fields
.field public static itemVoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/FunctionMapVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field public mBMapManager:Lcom/baidu/mapapi/BMapManager;

.field private mGeoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMapController:Lcom/baidu/mapapi/map/MapController;

.field private mMapView:Lcom/baidu/mapapi/map/MapView;

.field private mMarker:Landroid/graphics/drawable/Drawable;

.field private mPopView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapController:Lcom/baidu/mapapi/map/MapController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mGeoList:Ljava/util/ArrayList;

    iput-object p0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mPopView:Landroid/view/View;

    return-object p1
.end method

.method private addOverLay()V
    .locals 15

    const/4 v2, 0x0

    const-wide v13, 0x412e848000000000L    # 1000000.0

    const-wide/16 v11, 0x0

    sget-object v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->itemVoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->itemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v2

    :goto_0
    sget-object v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->itemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->itemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/FunctionMapVo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getLatitude()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getLongitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    new-instance v3, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    new-instance v4, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-direct {v4, v3, v0, v5}, Lcom/baidu/mapapi/map/OverlayItem;-><init>(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mGeoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mGeoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    new-instance v0, Lkv;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMarker:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-direct {v0, p0, v1, v3}, Lkv;-><init>(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;Landroid/graphics/drawable/Drawable;Lcom/baidu/mapapi/map/MapView;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mGeoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lkv;->addItem(Ljava/util/List;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->refresh()V

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mGeoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mGeoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mGeoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->getPoint()Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapController:Lcom/baidu/mapapi/map/MapController;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MapController;->setCenter(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    :cond_3
    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mPopView:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mGeoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    const-string v1, "306DC9F2BBE9263792E9B3301D33C09A98E6EC8D"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->setContentView(I)V

    const v0, 0x7f0a0250

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MapView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapView;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapController:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapController:Lcom/baidu/mapapi/map/MapController;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapController;->setZoom(I)I

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->addOverLay()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->destroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public showMap()I
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.baidu.BaiduMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.apps.maps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public startFunctions(Lcn/apppark/mcd/vo/free/FunctionMapVo;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->showMap()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getGoogle_latitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getGoogle_longitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://ditu.google.cn/maps?hl=zh&mrt=loc&q="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0, v1}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "intent://map/marker?location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&title=\u5f53\u524d\u4f4d\u7f6e&content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&src=#Intent;scheme=bdapp;package=com.baidu.BaiduMap;end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v2, "\u5bf9\u4e0d\u8d77,\u5730\u5740\u9519\u8bef"

    invoke-virtual {v1, v2, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getGoogle_latitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getGoogle_longitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/free/FunctionMapVo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://ditu.google.cn/maps?hl=zh&mrt=loc&q="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0, v1}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
