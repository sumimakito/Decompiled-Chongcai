.class public final Lkv;
.super Lcom/baidu/mapapi/map/ItemizedOverlay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/mapapi/map/ItemizedOverlay",
        "<",
        "Lcom/baidu/mapapi/map/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcn/apppark/mcd/vo/free/FunctionMapVo;

.field final synthetic b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;Landroid/graphics/drawable/Drawable;Lcom/baidu/mapapi/map/MapView;)V
    .locals 0

    iput-object p1, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    invoke-direct {p0, p2, p3}, Lcom/baidu/mapapi/map/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/baidu/mapapi/map/MapView;)V

    return-void
.end method


# virtual methods
.method protected final onTap(I)Z
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->itemVoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/FunctionMapVo;

    iput-object v0, p0, Lkv;->a:Lcn/apppark/mcd/vo/free/FunctionMapVo;

    new-instance v2, Lcom/baidu/mapapi/map/PopupOverlay;

    iget-object v0, p0, Lkv;->mMapView:Lcom/baidu/mapapi/map/MapView;

    new-instance v1, Lkw;

    invoke-direct {v1, p0}, Lkw;-><init>(Lkv;)V

    invoke-direct {v2, v0, v1}, Lcom/baidu/mapapi/map/PopupOverlay;-><init>(Lcom/baidu/mapapi/map/MapView;Lcom/baidu/mapapi/map/PopupClickListener;)V

    iget-object v0, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    iput-object v4, v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    iget-object v1, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f03005e

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->b(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0288

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->c(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    iget-object v1, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->b(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    iget-object v1, v0, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->c(Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->getPoint()Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v2, v1, v0, v3}, Lcom/baidu/mapapi/map/PopupOverlay;->showPopup(Landroid/graphics/Bitmap;Lcom/baidu/platform/comapi/basestruct/GeoPoint;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onTap(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/mapapi/map/MapView;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/map/ItemizedOverlay;->onTap(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/mapapi/map/MapView;)Z

    const/4 v0, 0x0

    return v0
.end method
