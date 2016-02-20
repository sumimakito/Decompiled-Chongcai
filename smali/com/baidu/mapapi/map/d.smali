.class Lcom/baidu/mapapi/map/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/platform/comapi/map/y;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/MapView;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/MapView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;I)V

    return-void
.end method

.method public a(ILcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;ILcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/platform/comapi/map/w;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/w;

    iget v0, v0, Lcom/baidu/platform/comapi/map/w;->b:I

    invoke-static {v1, v0}, Lcom/baidu/mapapi/map/MapView;->b(Lcom/baidu/mapapi/map/MapView;I)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/platform/comapi/map/w;",
            ">;I)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/w;

    invoke-static {v1, v0, p2}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;Lcom/baidu/platform/comapi/map/w;I)V

    return-void
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->k()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1, v0}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;F)F

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u7f29\u5c0f\u5230\u6700\u5c0f\u7ea7\u522b"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v3, v2}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->b(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->b:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->b(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->b:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->b(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapController;->b:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapView;->b(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MapController;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->b:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->b(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MapController;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/mapapi/map/MapController;->b:Landroid/os/Message;

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->c(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MKMapViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/baidu/platform/comapi/a;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->c(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MKMapViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mapapi/map/MKMapViewListener;->onMapAnimationFinish()V

    :cond_2
    return-void

    :cond_3
    const/high16 v1, 0x41980000    # 19.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1, v0}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;F)F

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u653e\u5927\u5230\u6700\u5927\u7ea7\u522b"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0, v4}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;F)F

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v3, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto/16 :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/platform/comapi/map/w;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/w;

    iget v1, v0, Lcom/baidu/platform/comapi/map/w;->e:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/baidu/mapapi/map/MapPoi;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MapPoi;-><init>()V

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/w;->d:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v2}, Lcom/baidu/mapapi/utils/d;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mapapi/map/MapPoi;->geoPt:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/w;->c:Ljava/lang/String;

    const-string v3, "\\\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mapapi/map/MapPoi;->strText:Ljava/lang/String;

    iget v2, v0, Lcom/baidu/platform/comapi/map/w;->f:I

    iput v2, v1, Lcom/baidu/mapapi/map/MapPoi;->offset:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v2}, Lcom/baidu/mapapi/map/MapView;->c(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MKMapViewListener;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/baidu/platform/comapi/a;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v2}, Lcom/baidu/mapapi/map/MapView;->c(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MKMapViewListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/baidu/mapapi/map/MKMapViewListener;->onClickMapPoi(Lcom/baidu/mapapi/map/MapPoi;)V

    :cond_0
    iget v1, v0, Lcom/baidu/platform/comapi/map/w;->e:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapView;->b(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MapController;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->j()Lcom/baidu/platform/comapi/map/x;

    move-result-object v1

    iput v5, v1, Lcom/baidu/platform/comapi/map/x;->c:I

    iput v5, v1, Lcom/baidu/platform/comapi/map/x;->b:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v2}, Lcom/baidu/mapapi/map/MapView;->b(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MapController;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    const/16 v3, 0x12c

    invoke-virtual {v2, v1, v3}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/x;I)V

    :cond_1
    iget v1, v0, Lcom/baidu/platform/comapi/map/w;->e:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapView;->d(Lcom/baidu/mapapi/map/MapView;)V

    :cond_2
    iget v1, v0, Lcom/baidu/platform/comapi/map/w;->e:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;Lcom/baidu/platform/comapi/map/w;I)V

    :cond_3
    return-void
.end method

.method public c()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapView;->a:Lcom/baidu/platform/comapi/map/v;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/v;->k()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1, v0}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;F)F

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u7f29\u5c0f\u5230\u6700\u5c0f\u7ea7\u522b"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v3, v2}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->c(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MKMapViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/baidu/platform/comapi/a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->c(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/mapapi/map/MKMapViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mapapi/map/MKMapViewListener;->onMapMoveFinish()V

    :cond_1
    return-void

    :cond_2
    const/high16 v1, 0x41980000    # 19.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v1, v0}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;F)F

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u653e\u5927\u5230\u6700\u5927\u7ea7\u522b"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-static {v0, v4}, Lcom/baidu/mapapi/map/MapView;->a(Lcom/baidu/mapapi/map/MapView;F)F

    iget-object v0, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v3, v3}, Lcom/baidu/mapapi/map/MapView;->a(ZZ)V

    goto :goto_0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/platform/comapi/map/k;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/platform/comapi/map/w;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
