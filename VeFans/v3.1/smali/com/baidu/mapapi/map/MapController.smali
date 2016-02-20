.class public Lcom/baidu/mapapi/map/MapController;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/baidu/platform/comapi/map/t;

.field b:Landroid/os/Message;

.field private c:Lcom/baidu/mapapi/map/MapView;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/MapView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapController;->b:Landroid/os/Message;

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    return-void
.end method


# virtual methods
.method public animateTo(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    goto :goto_0
.end method

.method public animateTo(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    iput-object p2, p0, Lcom/baidu/mapapi/map/MapController;->b:Landroid/os/Message;

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1, v0, p2}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public enableClick(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->b(Z)V

    return-void
.end method

.method public handleFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/map/t;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/t;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public scrollBy(II)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/t;->e(II)V

    return-void
.end method

.method public setCenter(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v2

    iput v2, v0, Lcom/baidu/platform/comapi/map/x;->d:I

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/x;->e:I

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/x;)V

    goto :goto_0
.end method

.method public setOverlooking(I)V
    .locals 3

    if-gtz p1, :cond_0

    const/16 v0, -0x2d

    if-ge p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Lcom/baidu/platform/comapi/map/x;->c:I

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    const/16 v2, 0x12c

    invoke-virtual {v1, v0, v2}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/x;I)V

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, v0, Lcom/baidu/platform/comapi/map/x;->b:I

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    const/16 v2, 0x12c

    invoke-virtual {v1, v0, v2}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/x;I)V

    goto :goto_0
.end method

.method public setZoom(I)I
    .locals 6

    const/4 v5, 0x0

    const/16 v1, 0x13

    const/4 v0, 0x3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, -0x1

    :goto_0
    return p1

    :cond_0
    if-ge p1, v0, :cond_2

    move p1, v0

    :cond_1
    :goto_1
    int-to-float v3, p1

    iput v3, v2, Lcom/baidu/platform/comapi/map/x;->a:F

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/x;)V

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v4, v5}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0

    :cond_2
    if-le p1, v1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v5, v4}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v4, v4}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->f()Z

    move-result v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->k()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    :goto_0
    return v0

    :cond_0
    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v4, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v3, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0
.end method

.method public zoomInFixing(II)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/t;->b(II)Z

    move-result v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->k()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    :goto_0
    return v0

    :cond_0
    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v4, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v3, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->g()Z

    move-result v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->k()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    :goto_0
    return v0

    :cond_0
    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v4, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v3, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0
.end method

.method public zoomOutFixing(II)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/t;->c(II)Z

    move-result v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->k()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    :goto_0
    return v0

    :cond_0
    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v4, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v3, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0
.end method

.method public zoomToSpan(II)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapController;->c:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(II)V

    return-void
.end method
