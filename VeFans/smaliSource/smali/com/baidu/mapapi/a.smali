.class Lcom/baidu/mapapi/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/BMapManager;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/BMapManager;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7da

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    invoke-static {v0}, Lcom/baidu/mapapi/BMapManager;->c(Lcom/baidu/mapapi/BMapManager;)Lcom/baidu/mapapi/utils/f;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    invoke-static {v1}, Lcom/baidu/mapapi/BMapManager;->a(Lcom/baidu/mapapi/BMapManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    invoke-static {v2}, Lcom/baidu/mapapi/BMapManager;->b(Lcom/baidu/mapapi/BMapManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    invoke-static {v0}, Lcom/baidu/mapapi/BMapManager;->d(Lcom/baidu/mapapi/BMapManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    iget-object v0, v0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    invoke-static {v0, v4}, Lcom/baidu/mapapi/BMapManager;->a(Lcom/baidu/mapapi/BMapManager;Z)Z

    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    iget-object v0, v0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    invoke-interface {v0, v3}, Lcom/baidu/mapapi/MKGeneralListener;->onGetNetworkState(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    iget-object v0, v0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    iget-object v0, v0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    const/16 v1, 0x12c

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/MKGeneralListener;->onGetPermissionState(I)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xff09

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    iget-object v0, v0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    iget-object v0, v0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    invoke-interface {v0, v2}, Lcom/baidu/mapapi/MKGeneralListener;->onGetNetworkState(I)V

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v3, :cond_5

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_5

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    iget-object v0, v0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/a;->a:Lcom/baidu/mapapi/BMapManager;

    iget-object v0, v0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/MKGeneralListener;

    invoke-interface {v0, v3}, Lcom/baidu/mapapi/MKGeneralListener;->onGetNetworkState(I)V

    goto :goto_0
.end method
