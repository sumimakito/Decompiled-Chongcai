.class public Lcom/baidu/platform/comapi/map/C;
.super Lcom/baidu/platform/comapi/map/i;


# static fields
.field static b:Lcom/baidu/platform/comapi/map/C;


# instance fields
.field a:Ljava/lang/String;

.field f:I

.field g:I

.field h:I

.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/platform/comapi/map/C;->b:Lcom/baidu/platform/comapi/map/C;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/C;->a:Ljava/lang/String;

    iput v1, p0, Lcom/baidu/platform/comapi/map/C;->f:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/C;->g:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/C;->h:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/C;->i:I

    iput p1, p0, Lcom/baidu/platform/comapi/map/C;->d:I

    return-void
.end method

.method public static a()Lcom/baidu/platform/comapi/map/i;
    .locals 2

    sget-object v0, Lcom/baidu/platform/comapi/map/C;->b:Lcom/baidu/platform/comapi/map/C;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/platform/comapi/map/C;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/C;-><init>(I)V

    sput-object v0, Lcom/baidu/platform/comapi/map/C;->b:Lcom/baidu/platform/comapi/map/C;

    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/C;->b:Lcom/baidu/platform/comapi/map/C;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/C;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/C;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/C;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/C;->e:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget v1, p0, Lcom/baidu/platform/comapi/map/C;->c:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "accFlag"

    iget v2, p0, Lcom/baidu/platform/comapi/map/C;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "centerFlag"

    iget v2, p0, Lcom/baidu/platform/comapi/map/C;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/baidu/platform/comapi/map/C;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "centerX"

    iget v2, p0, Lcom/baidu/platform/comapi/map/C;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "centerY"

    iget v2, p0, Lcom/baidu/platform/comapi/map/C;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method
