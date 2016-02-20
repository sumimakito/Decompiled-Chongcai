.class public abstract Lcom/baidu/platform/comapi/map/i;
.super Ljava/lang/Object;


# instance fields
.field c:I

.field d:I

.field e:Lcom/baidu/platform/comapi/map/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/platform/comapi/map/i;->c:I

    iput v0, p0, Lcom/baidu/platform/comapi/map/i;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/i;->e:Lcom/baidu/platform/comapi/map/t;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/platform/comapi/map/i;->c:I

    iput v0, p0, Lcom/baidu/platform/comapi/map/i;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/i;->e:Lcom/baidu/platform/comapi/map/t;

    iput p1, p0, Lcom/baidu/platform/comapi/map/i;->d:I

    return-void
.end method


# virtual methods
.method public a(ILcom/baidu/platform/comapi/map/t;)V
    .locals 0

    iput p1, p0, Lcom/baidu/platform/comapi/map/i;->c:I

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/i;->e:Lcom/baidu/platform/comapi/map/t;

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Z)V
    .locals 2

    iget v0, p0, Lcom/baidu/platform/comapi/map/i;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/i;->e:Lcom/baidu/platform/comapi/map/t;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/i;->e:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/baidu/platform/comapi/map/i;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IZ)V

    goto :goto_0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()V
.end method

.method public abstract d()Landroid/os/Bundle;
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lcom/baidu/platform/comapi/map/i;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/i;->e:Lcom/baidu/platform/comapi/map/t;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/i;->e:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/baidu/platform/comapi/map/i;->c:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)V

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/baidu/platform/comapi/map/i;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/baidu/platform/comapi/map/i;->c:I

    return v0
.end method
