.class public Lcom/baidu/platform/comapi/map/s;
.super Lcom/baidu/platform/comapi/map/i;


# static fields
.field static a:Lcom/baidu/platform/comapi/map/s;


# instance fields
.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/platform/comapi/map/s;->a:Lcom/baidu/platform/comapi/map/s;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/s;->b:Ljava/lang/String;

    iput p1, p0, Lcom/baidu/platform/comapi/map/s;->d:I

    return-void
.end method

.method public static a()Lcom/baidu/platform/comapi/map/i;
    .locals 2

    sget-object v0, Lcom/baidu/platform/comapi/map/s;->a:Lcom/baidu/platform/comapi/map/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/platform/comapi/map/s;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/s;-><init>(I)V

    sput-object v0, Lcom/baidu/platform/comapi/map/s;->a:Lcom/baidu/platform/comapi/map/s;

    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/s;->a:Lcom/baidu/platform/comapi/map/s;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/s;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/s;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
