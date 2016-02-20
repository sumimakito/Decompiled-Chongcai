.class Lcom/baidu/mapapi/utils/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/utils/f;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/utils/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/utils/g;->a:Lcom/baidu/mapapi/utils/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7da

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/utils/g;->a:Lcom/baidu/mapapi/utils/f;

    invoke-static {v0}, Lcom/baidu/mapapi/utils/f;->a(Lcom/baidu/mapapi/utils/f;)Lcom/baidu/mapapi/MKGeneralListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/utils/g;->a:Lcom/baidu/mapapi/utils/f;

    invoke-static {v0}, Lcom/baidu/mapapi/utils/f;->a(Lcom/baidu/mapapi/utils/f;)Lcom/baidu/mapapi/MKGeneralListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/MKGeneralListener;->onGetPermissionState(I)V

    :cond_0
    return-void
.end method
