.class public Lcom/baidu/mapapi/map/PopupOverlay;
.super Lcom/baidu/mapapi/map/Overlay;


# static fields
.field private static d:I


# instance fields
.field a:Lcom/baidu/mapapi/map/PopupClickListener;

.field private b:Lcom/baidu/mapapi/map/MapView;

.field private c:Lcom/baidu/mapapi/map/MapController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/baidu/mapapi/map/PopupOverlay;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/map/MapView;Lcom/baidu/mapapi/map/PopupClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    iput-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iput-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->a:Lcom/baidu/mapapi/map/PopupClickListener;

    iput-object p1, p0, Lcom/baidu/mapapi/map/PopupOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    const/16 v0, 0x15

    iput v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->mType:I

    iput-object p2, p0, Lcom/baidu/mapapi/map/PopupOverlay;->a:Lcom/baidu/mapapi/map/PopupClickListener;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_1

    move-object p1, v2

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move v4, v3

    move v3, v1

    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_2
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v3, v5, v4

    add-int/2addr v1, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_3

    int-to-float v3, v5

    invoke-virtual {v1, p2, v3, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    if-eqz p3, :cond_4

    add-int v3, v5, v4

    int-to-float v3, v3

    invoke-virtual {v1, p3, v3, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    move-object p1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    move v3, v0

    move v4, v0

    goto :goto_1
.end method


# virtual methods
.method public hidePop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sput v2, Lcom/baidu/mapapi/map/PopupOverlay;->d:I

    return-void
.end method

.method public showPopup(Landroid/graphics/Bitmap;Lcom/baidu/platform/comapi/basestruct/GeoPoint;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "layeraddr"

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/t;->e:Ljava/util/Map;

    const-string v3, "popup"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bshow"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "y"

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "imgW"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "imgH"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "showLR"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "icon0width"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "icon1width"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "iconlayer"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "offset"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "popname"

    const v2, -0x4cd266b2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v2, "imgdata"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v1, v4}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)V

    sget v0, Lcom/baidu/mapapi/map/PopupOverlay;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget v0, Lcom/baidu/mapapi/map/PopupOverlay;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/mapapi/map/PopupOverlay;->d:I

    goto/16 :goto_0
.end method

.method public showPopup([Landroid/graphics/Bitmap;Lcom/baidu/platform/comapi/basestruct/GeoPoint;I)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-gez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    array-length v0, p1

    if-le v0, v4, :cond_6

    aget-object v0, p1, v1

    if-eqz v0, :cond_3

    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    aget-object v2, p1, v7

    if-nez v2, :cond_4

    aget-object v0, p1, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/baidu/mapapi/map/PopupOverlay;->showPopup(Landroid/graphics/Bitmap;Lcom/baidu/platform/comapi/basestruct/GeoPoint;I)V

    goto :goto_0

    :pswitch_0
    aget-object v0, p1, v1

    invoke-direct {p0, v0, v2, v2}, Lcom/baidu/mapapi/map/PopupOverlay;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v2, v1

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v4, v4, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v4, v4, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v4}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "layeraddr"

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/t;->e:Ljava/util/Map;

    const-string v6, "popup"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bshow"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v5, "x"

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "y"

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "imgW"

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "imgH"

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "showLR"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "icon0width"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "icon1width"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "iconlayer"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "offset"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "popname"

    const v1, -0x4cd266b2

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "imgdata"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/platform/comjni/map/basemap/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v1, v7}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/PopupOverlay;->c:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)V

    sget v0, Lcom/baidu/mapapi/map/PopupOverlay;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/PopupOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget v0, Lcom/baidu/mapapi/map/PopupOverlay;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/mapapi/map/PopupOverlay;->d:I

    goto/16 :goto_0

    :pswitch_1
    aget-object v0, p1, v1

    if-eqz v0, :cond_7

    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_2
    aget-object v3, p1, v1

    aget-object v4, p1, v7

    invoke-direct {p0, v3, v4, v2}, Lcom/baidu/mapapi/map/PopupOverlay;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    goto/16 :goto_1

    :cond_3
    move v0, v1

    :cond_4
    aget-object v2, p1, v4

    if-eqz v2, :cond_5

    aget-object v2, p1, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_3
    aget-object v1, p1, v1

    aget-object v3, p1, v7

    aget-object v4, p1, v4

    invoke-direct {p0, v1, v3, v4}, Lcom/baidu/mapapi/map/PopupOverlay;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    move v2, v0

    goto/16 :goto_1

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    move-object v3, v2

    move v2, v1

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
