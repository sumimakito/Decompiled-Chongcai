.class Lcom/baidu/platform/comapi/map/u;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/t;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/t;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xfa0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/v;->f:Lcom/baidu/platform/comapi/map/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/v;->f:Lcom/baidu/platform/comapi/map/c;

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/baidu/platform/comapi/map/c;->a(Z)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x27

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/y;->b()V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->b(Lcom/baidu/platform/comapi/map/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->c(Lcom/baidu/platform/comapi/map/t;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->d(Lcom/baidu/platform/comapi/map/t;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->e(Lcom/baidu/platform/comapi/map/t;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/y;->a()V

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_4

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/map/y;->a(I)V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/v;->e:Lcom/baidu/platform/comapi/map/y;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/y;->c()V

    goto :goto_1

    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/v;->setRenderMode(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/u;->a:Lcom/baidu/platform/comapi/map/t;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/v;->setRenderMode(I)V

    goto :goto_1
.end method
