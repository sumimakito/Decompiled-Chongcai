.class public Lcom/baidu/platform/comapi/map/E;
.super Lcom/baidu/platform/comapi/map/i;


# static fields
.field static f:Lcom/baidu/platform/comapi/map/E;


# instance fields
.field a:Ljava/lang/String;

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/platform/comapi/map/E;->f:Lcom/baidu/platform/comapi/map/E;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/E;->a:Ljava/lang/String;

    iput p1, p0, Lcom/baidu/platform/comapi/map/E;->d:I

    return-void
.end method

.method public static a()Lcom/baidu/platform/comapi/map/i;
    .locals 2

    sget-object v0, Lcom/baidu/platform/comapi/map/E;->f:Lcom/baidu/platform/comapi/map/E;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/platform/comapi/map/E;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/E;-><init>(I)V

    sput-object v0, Lcom/baidu/platform/comapi/map/E;->f:Lcom/baidu/platform/comapi/map/E;

    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/E;->f:Lcom/baidu/platform/comapi/map/E;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/E;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/E;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->e:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget v1, p0, Lcom/baidu/platform/comapi/map/E;->c:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "routeIndex"

    iget v2, p0, Lcom/baidu/platform/comapi/map/E;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
