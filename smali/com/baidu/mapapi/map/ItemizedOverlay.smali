.class public Lcom/baidu/mapapi/map/ItemizedOverlay;
.super Lcom/baidu/mapapi/map/Overlay;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/baidu/mapapi/map/OverlayItem;",
        ">",
        "Lcom/baidu/mapapi/map/Overlay;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field protected mMapView:Lcom/baidu/mapapi/map/MapView;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/baidu/mapapi/map/MapView;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/16 v0, 0x1b

    iput v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->mType:I

    iput-object p1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->mMapView:Lcom/baidu/mapapi/map/MapView;

    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/OverlayItem;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/OverlayItem;->b()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->b()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/OverlayItem;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->b()I

    move-result v0

    if-ne v3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b(Z)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x80000000

    const v0, 0x7fffffff

    iget-object v2, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    sub-int v0, v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->getPoint()Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v0

    :goto_2
    if-le v0, v2, :cond_3

    move v2, v0

    :cond_3
    if-ge v0, v1, :cond_5

    :goto_3
    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method protected static boundCenter(Lcom/baidu/mapapi/map/OverlayItem;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/OverlayItem;->a(I)V

    goto :goto_0
.end method

.method protected static boundCenterBottom(Lcom/baidu/mapapi/map/OverlayItem;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/OverlayItem;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/OverlayItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v3, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->b:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->d:Z

    return-void
.end method

.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->d:Z

    return v0
.end method

.method public addItem(Lcom/baidu/mapapi/map/OverlayItem;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->addItem(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public addItem(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/OverlayItem;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v11, 0x1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "itemaddr"

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/t;->f:Ljava/util/Map;

    const-string v2, "item"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bshow"

    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/OverlayItem;->a(Ljava/lang/String;)V

    new-instance v6, Lcom/baidu/platform/comjni/tools/ParcelItem;

    invoke-direct {v6}, Lcom/baidu/platform/comjni/tools/ParcelItem;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->getPoint()Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "y"

    invoke-virtual {v8}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "imgW"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "imgH"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "showLR"

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "iconwidth"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "iconlayer"

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "bound"

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->a()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "popname"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "imgindex"

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->b()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->a(Lcom/baidu/mapapi/map/OverlayItem;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v1, "imgdata"

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_1
    invoke-virtual {v6, v7}, Lcom/baidu/platform/comjni/tools/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v8, "imgdata"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/baidu/platform/comjni/tools/ParcelItem;

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comjni/tools/ParcelItem;

    aput-object v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "itemdatas"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/platform/comjni/map/basemap/a;->c(Landroid/os/Bundle;)V

    :cond_4
    iput-boolean v11, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->d:Z

    return-void
.end method

.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->getPoint()Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->getPoint()Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v5

    if-le v4, v5, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v5

    if-lt v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v0

    if-ne v2, v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mapapi/map/ItemizedOverlay;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method protected createItem(I)Lcom/baidu/mapapi/map/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllItem()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/OverlayItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCenter()Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->getItem(I)Lcom/baidu/mapapi/map/OverlayItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->getPoint()Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    goto :goto_0
.end method

.method protected getIndexToDraw(I)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method public final getItem(I)Lcom/baidu/mapapi/map/OverlayItem;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLatSpanE6()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->b(Z)I

    move-result v0

    return v0
.end method

.method public getLonSpanE6()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->b(Z)I

    move-result v0

    return v0
.end method

.method protected hitTest(Lcom/baidu/mapapi/map/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .locals 4

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/16 v2, 0xa

    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget v0, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method protected onTap(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/mapapi/map/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reAddAll()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->removeAll()Z

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->addItem(Ljava/util/List;)V

    return-void
.end method

.method public removeAll()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->d:Z

    return v2
.end method

.method public removeItem(Lcom/baidu/mapapi/map/OverlayItem;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " id: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/OverlayItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "itemaddr"

    iget-object v4, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v4, v4, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove item id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/OverlayItem;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/OverlayItem;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    return v2

    :cond_2
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/OverlayItem;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/a;->d(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->d:Z

    move v2, v3

    goto :goto_1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
