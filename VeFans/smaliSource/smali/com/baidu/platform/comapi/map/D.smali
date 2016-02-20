.class public Lcom/baidu/platform/comapi/map/D;
.super Lcom/baidu/platform/comapi/map/i;


# static fields
.field static a:Lcom/baidu/platform/comapi/map/D;


# instance fields
.field b:Ljava/lang/String;

.field f:I

.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/platform/comapi/map/D;->a:Lcom/baidu/platform/comapi/map/D;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/D;->b:Ljava/lang/String;

    iput v1, p0, Lcom/baidu/platform/comapi/map/D;->f:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/D;->g:I

    iput p1, p0, Lcom/baidu/platform/comapi/map/D;->d:I

    return-void
.end method

.method public static a()Lcom/baidu/platform/comapi/map/i;
    .locals 2

    sget-object v0, Lcom/baidu/platform/comapi/map/D;->a:Lcom/baidu/platform/comapi/map/D;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/platform/comapi/map/D;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/D;-><init>(I)V

    sput-object v0, Lcom/baidu/platform/comapi/map/D;->a:Lcom/baidu/platform/comapi/map/D;

    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/D;->a:Lcom/baidu/platform/comapi/map/D;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/D;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/D;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/D;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/D;->e:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget v1, p0, Lcom/baidu/platform/comapi/map/D;->c:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "rgcIndex"

    iget v2, p0, Lcom/baidu/platform/comapi/map/D;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "rgcType"

    iget v2, p0, Lcom/baidu/platform/comapi/map/D;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
