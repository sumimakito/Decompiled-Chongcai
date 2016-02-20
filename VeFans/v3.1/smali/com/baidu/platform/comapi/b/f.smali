.class Lcom/baidu/platform/comapi/b/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/b/e;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/b/f;->a:Lcom/baidu/platform/comapi/b/e;

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

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/f;->a:Lcom/baidu/platform/comapi/b/e;

    invoke-static {v0}, Lcom/baidu/platform/comapi/b/e;->a(Lcom/baidu/platform/comapi/b/e;)Lcom/baidu/platform/comapi/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/f;->a:Lcom/baidu/platform/comapi/b/e;

    invoke-static {v0}, Lcom/baidu/platform/comapi/b/e;->a(Lcom/baidu/platform/comapi/b/e;)Lcom/baidu/platform/comapi/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/b/d;->a(Landroid/os/Message;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
