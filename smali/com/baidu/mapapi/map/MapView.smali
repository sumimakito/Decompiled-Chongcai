.class public Lcom/baidu/mapapi/map/MapView;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/MapView$b;,
        Lcom/baidu/mapapi/map/MapView$a;,
        Lcom/baidu/mapapi/map/MapView$LayoutParams;
    }
.end annotation


# instance fields
.field a:Lcom/baidu/platform/comapi/map/v;

.field b:Lcom/baidu/mapapi/map/MapView$b;

.field c:Lcom/baidu/platform/comapi/map/c;

.field private d:Lcom/baidu/mapapi/map/MapController;

.field private e:Lcom/baidu/platform/comapi/map/y;

.field private f:I

.field private g:I

.field private h:Landroid/widget/ZoomControls;

.field private i:F

.field private j:Lcom/baidu/platform/comapi/map/Projection;

.field private k:Landroid/content/Context;

.field private l:Lcom/baidu/mapapi/map/MKMapViewListener;

.field private m:Z

.field private n:Lcom/baidu/platform/comapi/map/x;

.field private o:Z

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/y;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->c:Lcom/baidu/platform/comapi/map/c;

    iput v2, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    iput v2, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/mapapi/map/MapView;->i:F

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->j:Lcom/baidu/platform/comapi/map/Projection;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/content/Context;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->l:Lcom/baidu/mapapi/map/MKMapViewListener;

    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MapView;->o:Z

    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MapView;->p:Z

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/y;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->c:Lcom/baidu/platform/comapi/map/c;

    iput v2, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    iput v2, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/mapapi/map/MapView;->i:F

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->j:Lcom/baidu/platform/comapi/map/Projection;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/content/Context;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->l:Lcom/baidu/mapapi/map/MKMapViewListener;

    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MapView;->o:Z

    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MapView;->p:Z

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/y;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->c:Lcom/baidu/platform/comapi/map/c;

    iput v2, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    iput v2, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/mapapi/map/MapView;->i:F

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->j:Lcom/baidu/platform/comapi/map/Projection;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/content/Context;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->l:Lcom/baidu/mapapi/map/MKMapViewListener;

    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MapView;->o:Z

    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MapView;->p:Z

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;)F
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->i:F

    return v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;F)F
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->i:F

    return p1
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/PoiOverlay;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/PoiOverlay;->onTap(I)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(ILcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 5

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/ItemizedOverlay;

    invoke-virtual {v0, v3, p0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->onTap(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/mapapi/map/MapView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/ItemizedOverlay;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/ItemizedOverlay;->onTap(I)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/platform/comapi/map/v;

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/map/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "overlooking"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "rotation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "centerptx"

    const-wide v2, 0x4168b73a40000000L    # 1.2958162E7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "centerpty"

    const-wide v2, 0x415268ccc0000000L    # 4825907.0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "modulePath"

    invoke-static {}, Lcom/baidu/platform/comapi/d/c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appSdcardPath"

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Test"

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "appCachePath"

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appSecondCachePath"

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mapTmpMax"

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "domTmpMax"

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "itsTmpMax"

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v1, v0, p1}, Lcom/baidu/platform/comapi/map/v;->a(Landroid/os/Bundle;Landroid/content/Context;)V

    new-instance v0, Lcom/baidu/mapapi/map/MapController;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/MapController;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/v;->b()Lcom/baidu/platform/comapi/map/t;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->g()V

    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->e()V

    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->d()V

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->refresh()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/v;->getLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/v;->getTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/v;->getRight()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/v;->getBottom()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comapi/map/v;->layout(IIII)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, v5}, Lcom/baidu/platform/comapi/map/v;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, v6}, Lcom/baidu/platform/comapi/map/v;->setFocusable(Z)V

    new-instance v0, Landroid/widget/ZoomControls;

    invoke-direct {v0, p1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/baidu/mapapi/map/b;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/map/b;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/baidu/mapapi/map/c;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/map/c;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v6}, Landroid/widget/ZoomControls;->setFocusable(Z)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v5}, Landroid/widget/ZoomControls;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v5, v5}, Landroid/widget/ZoomControls;->measure(II)V

    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/MapView$b;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mapapi/map/MapView$b;-><init>(Lcom/baidu/mapapi/map/MapView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    invoke-virtual {v0, v5}, Lcom/baidu/mapapi/map/MapView$b;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/v;->getLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/v;->getTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/v;->getRight()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/v;->getBottom()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/map/MapView$b;->layout(IIII)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, -0x2

    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    move v3, v1

    :goto_0
    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    :cond_0
    :goto_1
    invoke-virtual {p0, p2}, Lcom/baidu/mapapi/map/MapView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p2, Lcom/baidu/mapapi/map/MapView$LayoutParams;

    iget v2, p2, Lcom/baidu/mapapi/map/MapView$LayoutParams;->x:I

    iget v1, p2, Lcom/baidu/mapapi/map/MapView$LayoutParams;->y:I

    iget v4, p2, Lcom/baidu/mapapi/map/MapView$LayoutParams;->mode:I

    if-nez v4, :cond_1

    iget-object v4, p2, Lcom/baidu/mapapi/map/MapView$LayoutParams;->point:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    iget-object v2, p2, Lcom/baidu/mapapi/map/MapView$LayoutParams;->point:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lcom/baidu/platform/comapi/map/Projection;->toPixels(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v4, p2, Lcom/baidu/mapapi/map/MapView$LayoutParams;->x:I

    add-int/2addr v2, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v4, p2, Lcom/baidu/mapapi/map/MapView$LayoutParams;->y:I

    add-int/2addr v1, v4

    :cond_1
    iget v4, p2, Lcom/baidu/mapapi/map/MapView$LayoutParams;->alignment:I

    sparse-switch v4, :sswitch_data_0

    :goto_2
    :sswitch_0
    add-int/2addr v3, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/view/View;->layout(IIII)V

    :goto_3
    return-void

    :cond_2
    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :sswitch_1
    sub-int/2addr v1, v0

    goto :goto_2

    :sswitch_2
    sub-int/2addr v2, v3

    goto :goto_2

    :sswitch_3
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    sub-int/2addr v1, v0

    goto :goto_2

    :sswitch_4
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v1, v4

    goto :goto_2

    :sswitch_5
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    goto :goto_2

    :sswitch_6
    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v1, v4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v5, v5, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_5
    move v3, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x10 -> :sswitch_6
        0x11 -> :sswitch_4
        0x30 -> :sswitch_0
        0x33 -> :sswitch_0
        0x50 -> :sswitch_1
        0x51 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;ILcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(ILcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;Lcom/baidu/platform/comapi/map/w;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/platform/comapi/map/w;I)V

    return-void
.end method

.method private a(Lcom/baidu/platform/comapi/map/w;I)V
    .locals 5

    const/16 v4, 0xc

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mLayerID:I

    if-ne v0, p2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    if-ne v0, v4, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/RouteOverlay;

    iget v3, p1, Lcom/baidu/platform/comapi/map/w;->b:I

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/RouteOverlay;->onTap(I)Z

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/TransitOverlay;

    iget v3, p1, Lcom/baidu/platform/comapi/map/w;->b:I

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/TransitOverlay;->onTap(I)Z

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    if-ne v0, v4, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/RouteOverlay;

    iget v3, p1, Lcom/baidu/platform/comapi/map/w;->b:I

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/RouteOverlay;->onTap(I)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MapController;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v3, 0x15

    if-ne v0, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/PopupOverlay;

    iget-object v0, v0, Lcom/baidu/mapapi/map/PopupOverlay;->a:Lcom/baidu/mapapi/map/PopupClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/PopupOverlay;

    iget-object v0, v0, Lcom/baidu/mapapi/map/PopupOverlay;->a:Lcom/baidu/mapapi/map/PopupClickListener;

    invoke-interface {v0, p1}, Lcom/baidu/mapapi/map/PopupClickListener;->onClickedPopup(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/MapView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MKMapViewListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Lcom/baidu/mapapi/map/MKMapViewListener;

    return-object v0
.end method

.method private d()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Lcom/baidu/platform/comapi/d/c;->m()I

    move-result v1

    const/16 v2, 0xb4

    if-lt v1, v2, :cond_0

    const-string v1, "logo_h.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string v1, "logo_l.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "logoaddr"

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/t;->g:Ljava/util/Map;

    const-string v4, "logo"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bshow"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "imgW"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "imgH"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "showLR"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "iconwidth"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "iconlayer"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bound"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "popname"

    const v3, -0x4cd266b3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "imgdata"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->c:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->c:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/MapView;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->f()V

    return-void
.end method

.method private e()V
    .locals 5

    const-string v0, "{\"dataset\":[{\"x\":%d,\"y\":%d,\"hidetime\":1000}]}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/high16 v3, 0x42100000    # 36.0f

    sget v4, Lcom/baidu/platform/comapi/d/c;->A:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x42200000    # 40.0f

    sget v4, Lcom/baidu/platform/comapi/d/c;->A:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/d;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/d;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->e()V

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MyLocationOverlay;->dispatchTap()Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    new-instance v0, Lcom/baidu/mapapi/map/d;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/d;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/y;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/v;->a(Lcom/baidu/platform/comapi/map/y;)V

    new-instance v0, Lcom/baidu/mapapi/map/e;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/e;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->c:Lcom/baidu/platform/comapi/map/c;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->c:Lcom/baidu/platform/comapi/map/c;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/v;->a(Lcom/baidu/platform/comapi/map/c;)V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/baidu/platform/comapi/map/E;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->c()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/E;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/E;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/i;->a(Z)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/E;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->e()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/G;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->c()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/G;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/G;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/i;->a(Z)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/G;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->e()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/C;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->c()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/C;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/C;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/i;->a(Z)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/C;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->e()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/s;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->c()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/s;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/s;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/i;->a(Z)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/s;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->e()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    if-ne v4, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Lcom/baidu/mapapi/map/MapView$LayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/baidu/mapapi/map/MapView$LayoutParams;

    iget v0, v0, Lcom/baidu/mapapi/map/MapView$LayoutParams;->mode:I

    if-nez v0, :cond_0

    invoke-direct {p0, v4, v1}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method a(II)V
    .locals 7

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->n()Lcom/baidu/platform/comapi/map/x;

    move-result-object v1

    iget v0, v1, Lcom/baidu/platform/comapi/map/x;->a:F

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getMapCenter()Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    new-instance v3, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v4

    div-int/lit8 v5, p1, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v5

    div-int/lit8 v6, p2, 0x2

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    new-instance v4, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v5

    div-int/lit8 v6, p1, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v2

    div-int/lit8 v6, p2, 0x2

    sub-int/2addr v2, v6

    invoke-direct {v4, v5, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-static {v3}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    invoke-static {v4}, Lcom/baidu/mapapi/utils/d;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    new-instance v4, Lcom/baidu/platform/comapi/basestruct/c;

    invoke-direct {v4}, Lcom/baidu/platform/comapi/basestruct/c;-><init>()V

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/basestruct/c;->a(I)V

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/baidu/platform/comapi/basestruct/c;->b(I)V

    new-instance v2, Lcom/baidu/platform/comapi/basestruct/c;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/basestruct/c;-><init>()V

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/baidu/platform/comapi/basestruct/c;->a(I)V

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/basestruct/c;->b(I)V

    new-instance v3, Lcom/baidu/platform/comapi/basestruct/b;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/basestruct/b;-><init>()V

    invoke-virtual {v3, v4}, Lcom/baidu/platform/comapi/basestruct/b;->a(Lcom/baidu/platform/comapi/basestruct/c;)V

    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/basestruct/b;->b(Lcom/baidu/platform/comapi/basestruct/c;)V

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/map/v;->a(Lcom/baidu/platform/comapi/basestruct/b;)F

    move-result v0

    :cond_0
    iput v0, v1, Lcom/baidu/platform/comapi/map/x;->a:F

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/x;)V

    return-void
.end method

.method a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p2}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    return-void
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapController;->zoomIn()Z

    move-result v0

    return v0
.end method

.method c()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapController;->zoomOut()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/baidu/mapapi/map/MapView$LayoutParams;

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/mapapi/map/MapView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/mapapi/map/MapView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public displayZoomControls(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->destroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/baidu/mapapi/map/MapView$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/baidu/mapapi/map/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/map/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/map/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getController()Lcom/baidu/mapapi/map/MapController;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    return-object v0
.end method

.method public getCurrentMap()Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/BaiduMapSDK/capture.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/t;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getLatitudeSpan()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->c()I

    move-result v0

    return v0
.end method

.method public getLongitudeSpan()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->d()I

    move-result v0

    return v0
.end method

.method public getMapCenter()Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->j()Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/baidu/mapapi/utils/d;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public getMapOverlooking()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->m()I

    move-result v0

    return v0
.end method

.method public getMapRotation()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->l()I

    move-result v0

    return v0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public getMinZoomLevel()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()Lcom/baidu/platform/comapi/map/Projection;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->j:Lcom/baidu/platform/comapi/map/Projection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/map/MapView$a;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/MapView$a;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->j:Lcom/baidu/platform/comapi/map/Projection;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->j:Lcom/baidu/platform/comapi/map/Projection;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->k()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isDoubleClickZooming()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->d()Z

    move-result v0

    return v0
.end method

.method public isSatellite()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->g()Z

    move-result v0

    return v0
.end method

.method public isTraffic()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->h()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->setBuiltInZoomControls(Z)V

    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/v;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/v;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v4, -0x2

    const/4 v0, 0x0

    sub-int v1, p4, p2

    iput v1, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    sub-int v1, p5, p3

    iput v1, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView$b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MapView$b;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    invoke-virtual {v1, v0, v0, v2, v3}, Lcom/baidu/mapapi/map/MapView$b;->layout(IIII)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/v;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/v;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    invoke-virtual {v1, v0, v0, v2, v3}, Lcom/baidu/platform/comapi/map/v;->layout(IIII)V

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v1}, Landroid/widget/ZoomControls;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v1, v0}, Landroid/widget/ZoomControls;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ZoomControls;->measure(II)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v1}, Landroid/widget/ZoomControls;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v2}, Landroid/widget/ZoomControls;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    add-int/lit8 v4, p4, -0xa

    sub-int v1, v4, v1

    add-int/lit8 v4, p5, -0x5

    sub-int v2, v4, v2

    sub-int/2addr v2, p3

    add-int/lit8 v4, p4, -0xa

    add-int/lit8 v5, p5, -0x5

    sub-int/2addr v5, p3

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/widget/ZoomControls;->layout(IIII)V

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->b:Lcom/baidu/mapapi/map/MapView$b;

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    if-ne v2, v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->onPause()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->n()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->n:Lcom/baidu/platform/comapi/map/x;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->o:Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->p:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->q:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "lat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "lon"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    new-instance v3, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v3, v0, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MapController;->setCenter(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    :cond_0
    const-string v0, "zoom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MapController;->setZoom(I)I

    :cond_1
    const-string v0, "traffic"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->setTraffic(Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->onResume()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->n:Lcom/baidu/platform/comapi/map/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->n()Lcom/baidu/platform/comapi/map/x;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->n:Lcom/baidu/platform/comapi/map/x;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iput-object v0, v1, Lcom/baidu/platform/comapi/map/x;->f:Lcom/baidu/platform/comapi/map/x$b;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->n:Lcom/baidu/platform/comapi/map/x;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/v;->a(Lcom/baidu/platform/comapi/map/x;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MapView;->o:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/v;->a(Z)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MapView;->p:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/v;->b(Z)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->q:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/GraphicsOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/GraphicsOverlay;->a()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/ItemizedOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->reAddAll()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->refresh()V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getMapCenter()Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "lon"

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "zoom"

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getZoomLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "traffic"

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->isTraffic()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->f:I

    iput p2, p0, Lcom/baidu/mapapi/map/MapView;->g:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/t;->d(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/v;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public preLoad()V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 13

    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getOverlays()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->h()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_e

    move v2, v3

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v1, v3

    move v8, v3

    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v9, 0x1b

    if-ne v0, v9, :cond_17

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/ItemizedOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->a()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/ItemizedOverlay;->getAllItem()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_c

    iget-object v8, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v8, v8, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v8}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v8

    iget-object v9, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v9, v9, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v9, v9, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v8, v9}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    :goto_2
    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/ItemizedOverlay;->a(Z)V

    :cond_3
    move v9, v10

    :goto_3
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v8, 0xe

    if-ne v0, v8, :cond_16

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/PoiOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/PoiOverlay;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/PoiOverlay;->a()Ljava/lang/String;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/baidu/platform/comapi/map/C;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/C;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/PoiOverlay;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/C;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/baidu/platform/comapi/map/C;->a(Z)V

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/C;->e()V

    :cond_4
    move v8, v10

    :goto_4
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/RouteOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/RouteOverlay;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/RouteOverlay;->b()Ljava/lang/String;

    move-result-object v1

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/baidu/platform/comapi/map/E;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/E;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/RouteOverlay;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/E;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/baidu/platform/comapi/map/E;->a(Z)V

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/E;->e()V

    :cond_5
    move v7, v10

    :cond_6
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_8

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/TransitOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TransitOverlay;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TransitOverlay;->b()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/baidu/platform/comapi/map/G;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/G;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TransitOverlay;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/G;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/baidu/platform/comapi/map/G;->a(Z)V

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/G;->e()V

    :cond_7
    move v6, v10

    :cond_8
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MyLocationOverlay;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MyLocationOverlay;->a()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/baidu/platform/comapi/map/s;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/s;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MyLocationOverlay;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/s;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/baidu/platform/comapi/map/s;->a(Z)V

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/s;->e()V

    :cond_9
    move v5, v10

    :cond_a
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    iget v0, v0, Lcom/baidu/mapapi/map/Overlay;->mType:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_15

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/GraphicsOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/GraphicsOverlay;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/GraphicsOverlay;->getAllGraphics()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v4, v4, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v4, v4, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v1, v4}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    :goto_5
    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/GraphicsOverlay;->a(Z)V

    :cond_b
    move v1, v10

    :goto_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    move v1, v8

    move v8, v9

    goto/16 :goto_1

    :cond_c
    iget-object v8, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v8, v8, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v8}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v8

    iget-object v9, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v9, v9, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v9, v9, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v8, v9, v10}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v8, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v8, v8, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v8}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v8

    iget-object v9, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v9, v9, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v9, v9, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v8, v9}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v4, v4, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v4, v4, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v1, v4, v10}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v4, v4, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v4, v4, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v1, v4}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)V

    goto :goto_5

    :cond_e
    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v1, v3

    move v8, v3

    :cond_f
    if-nez v8, :cond_10

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v2, v2, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v2, v2, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v2, v2, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v2, v2, Lcom/baidu/platform/comapi/map/t;->b:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)V

    :cond_10
    if-nez v1, :cond_11

    invoke-static {}, Lcom/baidu/platform/comapi/map/C;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->c()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/C;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/baidu/platform/comapi/map/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/C;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/map/i;->a(Z)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/C;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->e()V

    :cond_11
    if-nez v7, :cond_12

    invoke-static {}, Lcom/baidu/platform/comapi/map/E;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->c()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/E;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/baidu/platform/comapi/map/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/E;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/map/i;->a(Z)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/E;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->e()V

    :cond_12
    if-nez v6, :cond_13

    invoke-static {}, Lcom/baidu/platform/comapi/map/G;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->c()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/G;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/baidu/platform/comapi/map/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/G;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/map/i;->a(Z)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/G;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->e()V

    :cond_13
    if-nez v5, :cond_14

    invoke-static {}, Lcom/baidu/platform/comapi/map/s;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->c()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/s;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/baidu/platform/comapi/map/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/s;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/map/i;->a(Z)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/s;->a()Lcom/baidu/platform/comapi/map/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/i;->e()V

    :cond_14
    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v0, v1, v3}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->d:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)V

    goto/16 :goto_0

    :cond_15
    move v1, v4

    goto/16 :goto_6

    :cond_16
    move v8, v1

    goto/16 :goto_4

    :cond_17
    move v9, v8

    goto/16 :goto_3
.end method

.method public regMapViewListener(Lcom/baidu/mapapi/BMapManager;Lcom/baidu/mapapi/map/MKMapViewListener;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/baidu/mapapi/map/MapView;->l:Lcom/baidu/mapapi/map/MKMapViewListener;

    goto :goto_0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setDoubleClickZooming(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->a(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/v;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/v;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setSatellite(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MapView;->o:Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/v;->a(Z)V

    return-void
.end method

.method public setTraffic(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MapView;->p:Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/v;->b(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/v;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->d:Lcom/baidu/mapapi/map/MapController;

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    iget v1, v1, Lcom/baidu/platform/comapi/map/t;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
