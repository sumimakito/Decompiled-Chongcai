.class public Lcom/baidu/platform/comapi/map/k;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/baidu/platform/comapi/map/w;

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/platform/comapi/map/w;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/w;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/k;->a:Lcom/baidu/platform/comapi/map/w;

    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/k;->b:J

    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/k;->c:J

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/k;->d:Ljava/lang/String;

    return-void
.end method
