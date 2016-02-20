.class public Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->a:Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;

    return-void
.end method


# virtual methods
.method public ReqLayerData(Landroid/os/Bundle;II)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->a:Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->a:Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->ReqLayerData(Landroid/os/Bundle;II)I

    move-result v0

    goto :goto_0
.end method

.method public SetMapCallback(Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->a:Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;

    const/4 v0, 0x1

    goto :goto_0
.end method
