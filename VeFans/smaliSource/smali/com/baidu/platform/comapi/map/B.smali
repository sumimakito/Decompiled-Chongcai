.class public Lcom/baidu/platform/comapi/map/B;
.super Lcom/baidu/platform/comapi/map/i;


# static fields
.field static b:Lcom/baidu/platform/comapi/map/B;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/platform/comapi/map/B;->b:Lcom/baidu/platform/comapi/map/B;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/B;->a:Ljava/lang/String;

    iput p1, p0, Lcom/baidu/platform/comapi/map/B;->d:I

    return-void
.end method

.method public static a()Lcom/baidu/platform/comapi/map/i;
    .locals 2

    sget-object v0, Lcom/baidu/platform/comapi/map/B;->b:Lcom/baidu/platform/comapi/map/B;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/platform/comapi/map/B;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/B;-><init>(I)V

    sput-object v0, Lcom/baidu/platform/comapi/map/B;->b:Lcom/baidu/platform/comapi/map/B;

    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/B;->b:Lcom/baidu/platform/comapi/map/B;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/B;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/B;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/B;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/B;->e:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()Lcom/baidu/platform/comjni/map/basemap/a;

    move-result-object v0

    iget v1, p0, Lcom/baidu/platform/comapi/map/B;->c:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(I)V

    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
