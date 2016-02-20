.class public Lcom/baidu/mapapi/map/GraphicsOverlay;
.super Lcom/baidu/mapapi/map/Overlay;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Lcom/baidu/mapapi/map/MapView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/Graphic;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/MapView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    iput-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->d:Z

    const/16 v0, 0x1d

    iput v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->mType:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a()V
    .locals 14

    const/4 v13, 0x4

    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Graphic;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget-object v5, v1, Lcom/baidu/mapapi/map/Geometry;->b:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    if-ne v1, v11, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v11, :cond_0

    new-array v7, v6, [I

    new-array v8, v6, [I

    move v4, v3

    :goto_2
    if-ge v4, v6, :cond_3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v9

    aput v9, v7, v4

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v8, v4

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "x"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "y"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :goto_4
    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "linewidth"

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v5

    iget v5, v5, Lcom/baidu/mapapi/map/Symbol;->a:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "red"

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iget v5, v5, Lcom/baidu/mapapi/map/Symbol$Color;->red:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "green"

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iget v5, v5, Lcom/baidu/mapapi/map/Symbol$Color;->green:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "blue"

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iget v5, v5, Lcom/baidu/mapapi/map/Symbol$Color;->blue:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "alpha"

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iget v5, v5, Lcom/baidu/mapapi/map/Symbol$Color;->alpha:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "type"

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v5

    iget v5, v5, Lcom/baidu/mapapi/map/Geometry;->a:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "status"

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v5

    iget v5, v5, Lcom/baidu/mapapi/map/Symbol;->c:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    if-eq v1, v13, :cond_4

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    if-ne v1, v10, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "level"

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v5

    iget v5, v5, Lcom/baidu/mapapi/map/Geometry;->c:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_5
    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "geometryaddr"

    iget-object v5, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v5}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v5, v5, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getID()J

    move-result-wide v0

    iget-object v4, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v5, "id"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->f(Landroid/os/Bundle;)I

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v11, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    new-array v4, v1, [I

    new-array v6, v1, [I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v7

    aput v7, v4, v3

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v6, v3

    new-instance v7, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v8

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-direct {v7, v8, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-static {v7}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v7

    aput v7, v4, v10

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v6, v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v7

    aput v7, v4, v11

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v6, v11

    new-instance v7, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v8

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-direct {v7, v8, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-static {v7}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v7

    aput v7, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v6, v5

    aget v1, v4, v3

    aput v1, v4, v13

    aget v1, v6, v3

    aput v1, v6, v13

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v5, "x"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "y"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    if-eq v1, v13, :cond_7

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    if-ne v1, v10, :cond_0

    :cond_7
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v4, v10, [I

    new-array v6, v10, [I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v5

    aput v5, v4, v3

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v6, v3

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v5, "x"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "y"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_4

    :cond_8
    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "level"

    iget-object v5, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v5}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/map/t;->k()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_9
    iput-boolean v10, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->d:Z

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->d:Z

    return-void
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->d:Z

    return v0
.end method

.method public getAllGraphics()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/Graphic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeAll()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->d:Z

    return-void
.end method

.method public removeGraphic(J)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "geometryaddr"

    iget-object v2, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/a;->g(Landroid/os/Bundle;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Graphic;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Graphic;->getID()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/GraphicsOverlay;->d:Z

    return-void
.end method

.method public setData(Lcom/baidu/mapapi/map/Graphic;)J
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_1
    new-instance v1, Lcom/baidu/mapapi/map/Geometry;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/Geometry;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v2

    iget v2, v2, Lcom/baidu/mapapi/map/Geometry;->a:I

    iput v2, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/map/Geometry;->b:Ljava/util/ArrayList;

    iput-object v2, v1, Lcom/baidu/mapapi/map/Geometry;->b:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v2

    iget v2, v2, Lcom/baidu/mapapi/map/Geometry;->c:I

    iput v2, v1, Lcom/baidu/mapapi/map/Geometry;->c:I

    new-instance v2, Lcom/baidu/mapapi/map/Symbol;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/Symbol;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iput-object v3, v2, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v3

    iget v3, v3, Lcom/baidu/mapapi/map/Symbol;->a:I

    iput v3, v2, Lcom/baidu/mapapi/map/Symbol;->a:I

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v3

    iget v3, v3, Lcom/baidu/mapapi/map/Symbol;->c:I

    iput v3, v2, Lcom/baidu/mapapi/map/Symbol;->c:I

    new-instance v3, Lcom/baidu/mapapi/map/Graphic;

    invoke-direct {v3, v1, v2}, Lcom/baidu/mapapi/map/Graphic;-><init>(Lcom/baidu/mapapi/map/Geometry;Lcom/baidu/mapapi/map/Symbol;)V

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget-object v4, v1, Lcom/baidu/mapapi/map/Geometry;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v1

    iget v5, v1, Lcom/baidu/mapapi/map/Symbol;->a:I

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    if-nez v1, :cond_4

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iget v1, v1, Lcom/baidu/mapapi/map/Symbol$Color;->red:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v6, v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iget v1, v1, Lcom/baidu/mapapi/map/Symbol$Color;->green:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v7, v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iget v1, v1, Lcom/baidu/mapapi/map/Symbol$Color;->blue:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v8, v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/Symbol;->b:Lcom/baidu/mapapi/map/Symbol$Color;

    iget v1, v1, Lcom/baidu/mapapi/map/Symbol$Color;->alpha:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v9, v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getSymbol()Lcom/baidu/mapapi/map/Symbol;

    move-result-object v1

    iget v10, v1, Lcom/baidu/mapapi/map/Symbol;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v11, v1, Lcom/baidu/mapapi/map/Geometry;->c:I

    const/4 v1, 0x0

    cmpg-float v1, v6, v1

    if-ltz v1, :cond_5

    const/high16 v1, 0x437f0000    # 255.0f

    cmpl-float v1, v6, v1

    if-gtz v1, :cond_5

    const/4 v1, 0x0

    cmpg-float v1, v7, v1

    if-ltz v1, :cond_5

    const/high16 v1, 0x437f0000    # 255.0f

    cmpl-float v1, v7, v1

    if-gtz v1, :cond_5

    const/4 v1, 0x0

    cmpg-float v1, v8, v1

    if-ltz v1, :cond_5

    const/high16 v1, 0x437f0000    # 255.0f

    cmpl-float v1, v8, v1

    if-gtz v1, :cond_5

    const/4 v1, 0x0

    cmpg-float v1, v9, v1

    if-ltz v1, :cond_5

    const/high16 v1, 0x437f0000    # 255.0f

    cmpl-float v1, v9, v1

    if-lez v1, :cond_6

    :cond_5
    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v1, 0x2

    if-ge v12, v1, :cond_7

    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_7
    if-gtz v5, :cond_8

    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_8
    new-array v13, v12, [I

    new-array v14, v12, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v12, :cond_a

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v15

    aput v15, v13, v2

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v14, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "x"

    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "y"

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "linewidth"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "red"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "green"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "blue"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "alpha"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v4

    iget v4, v4, Lcom/baidu/mapapi/map/Geometry;->a:I

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "status"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "level"

    invoke-virtual {v1, v2, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "geometryaddr"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v4, v4, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v5, "id"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Lcom/baidu/platform/comjni/map/basemap/a;->f(Landroid/os/Bundle;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/map/Graphic;->a(J)V

    invoke-virtual {v3, v1, v2}, Lcom/baidu/mapapi/map/Graphic;->a(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->d:Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    :cond_e
    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_f
    if-lez v5, :cond_10

    if-eqz v10, :cond_11

    const/4 v1, 0x1

    if-eq v10, v1, :cond_11

    :cond_10
    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x5

    new-array v2, v1, [I

    new-array v12, v1, [I

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    const/4 v13, 0x0

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v14

    aput v14, v2, v13

    const/4 v13, 0x0

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v12, v13

    new-instance v13, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v14

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-direct {v13, v14, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-static {v13}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    const/4 v13, 0x1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v14

    aput v14, v2, v13

    const/4 v13, 0x1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v12, v13

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    const/4 v13, 0x2

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v14

    aput v14, v2, v13

    const/4 v13, 0x2

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v12, v13

    new-instance v13, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v14

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-direct {v13, v14, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-static {v13}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v13

    aput v13, v2, v4

    const/4 v4, 0x3

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v12, v4

    const/4 v1, 0x4

    const/4 v4, 0x0

    aget v4, v2, v4

    aput v4, v2, v1

    const/4 v1, 0x4

    const/4 v4, 0x0

    aget v4, v12, v4

    aput v4, v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "x"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "y"

    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/map/Graphic;->getGeometry()Lcom/baidu/mapapi/map/Geometry;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/Geometry;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    :cond_13
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_14
    if-eqz v10, :cond_15

    const/4 v2, 0x1

    if-eq v10, v2, :cond_15

    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_15
    if-gtz v11, :cond_16

    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_16
    new-array v2, v1, [I

    new-array v12, v1, [I

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v13

    aput v13, v2, v4

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v1

    aput v1, v12, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v4, "x"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "y"

    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_2

    :cond_17
    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->a:Landroid/os/Bundle;

    const-string v2, "level"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/map/GraphicsOverlay;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getController()Lcom/baidu/mapapi/map/MapController;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/t;->k()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3
.end method
