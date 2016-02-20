.class public Lcom/baidu/mapapi/map/OverlayItem;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;

.field protected final mPoint:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field protected final mSnippet:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/map/OverlayItem;->mPoint:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iput-object p2, p0, Lcom/baidu/mapapi/map/OverlayItem;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mapapi/map/OverlayItem;->mSnippet:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/map/OverlayItem;->b:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/OverlayItem;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mapapi/map/OverlayItem;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/map/OverlayItem;->a:I

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/map/OverlayItem;->a:I

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/OverlayItem;->c:Ljava/lang/String;

    return-void
.end method

.method b()I
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/OverlayItem;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/OverlayItem;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/OverlayItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getMarker()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/OverlayItem;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPoint()Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/OverlayItem;->mPoint:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/OverlayItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/OverlayItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/OverlayItem;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method
