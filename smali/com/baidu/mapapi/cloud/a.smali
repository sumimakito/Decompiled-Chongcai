.class final Lcom/baidu/mapapi/cloud/a;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager$a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/cloud/GeoSearchManager$a;->a(Landroid/os/Message;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_1
    return-void
.end method
