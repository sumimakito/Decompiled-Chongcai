.class public Lcom/baidu/mapapi/map/MKOfflineMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/MKOfflineMap$a;
    }
.end annotation


# static fields
.field public static final TYPE_DOWNLOAD_UPDATE:I = 0x0

.field public static final TYPE_NEW_OFFLINE:I = 0x6

.field public static final TYPE_VER_UPDATE:I = 0x4


# instance fields
.field private a:Lcom/baidu/platform/comapi/map/m;

.field private b:Lcom/baidu/mapapi/map/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    iput-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->b:Lcom/baidu/mapapi/map/a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MKOfflineMap;)Lcom/baidu/mapapi/map/a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->b:Lcom/baidu/mapapi/map/a;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/m;->d(I)Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/m;->b(Lcom/baidu/platform/comapi/map/q;)V

    invoke-static {}, Lcom/baidu/platform/comapi/map/m;->a()V

    return-void
.end method

.method public getAllUpdateInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/MKOLUpdateElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/m;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/p;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/p;->a()Lcom/baidu/platform/comapi/map/o;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/utils/e;->a(Lcom/baidu/platform/comapi/map/o;)Lcom/baidu/mapapi/map/MKOLUpdateElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getHotCityList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/m;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/l;

    invoke-static {v0}, Lcom/baidu/mapapi/utils/e;->a(Lcom/baidu/platform/comapi/map/l;)Lcom/baidu/mapapi/map/MKOLSearchRecord;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getOfflineCityList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/m;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/l;

    invoke-static {v0}, Lcom/baidu/mapapi/utils/e;->a(Lcom/baidu/platform/comapi/map/l;)Lcom/baidu/mapapi/map/MKOLSearchRecord;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getUpdateInfo(I)Lcom/baidu/mapapi/map/MKOLUpdateElement;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/m;->f(I)Lcom/baidu/platform/comapi/map/p;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/p;->a()Lcom/baidu/platform/comapi/map/o;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/utils/e;->a(Lcom/baidu/platform/comapi/map/o;)Lcom/baidu/mapapi/map/MKOLUpdateElement;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Lcom/baidu/mapapi/map/MapController;Lcom/baidu/mapapi/map/MKOfflineMapListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/baidu/mapapi/map/MapController;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/m;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/m;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    iget-object v1, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    new-instance v1, Lcom/baidu/mapapi/map/MKOfflineMap$a;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/map/MKOfflineMap$a;-><init>(Lcom/baidu/mapapi/map/MKOfflineMap;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/m;->a(Lcom/baidu/platform/comapi/map/q;)V

    new-instance v0, Lcom/baidu/mapapi/map/a;

    invoke-direct {v0, p2}, Lcom/baidu/mapapi/map/a;-><init>(Lcom/baidu/mapapi/map/MKOfflineMapListener;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->b:Lcom/baidu/mapapi/map/a;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause(I)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/m;->c(I)Z

    move-result v0

    return v0
.end method

.method public remove(I)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/m;->e(I)Z

    move-result v0

    return v0
.end method

.method public scan()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MKOfflineMap;->scan(Z)I

    move-result v0

    return v0
.end method

.method public scan(Z)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/m;->d()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "OfflineDemo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before import "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v2, p1}, Lcom/baidu/platform/comapi/map/m;->a(Z)Z

    iget-object v2, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/m;->d()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, "OfflineDemo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after import "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public searchCity(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/m;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/l;

    invoke-static {v0}, Lcom/baidu/mapapi/utils/e;->a(Lcom/baidu/platform/comapi/map/l;)Lcom/baidu/mapapi/map/MKOLSearchRecord;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public start(I)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MKOfflineMap;->a:Lcom/baidu/platform/comapi/map/m;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/m;->b(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
