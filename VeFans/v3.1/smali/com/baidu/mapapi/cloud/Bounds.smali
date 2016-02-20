.class public Lcom/baidu/mapapi/cloud/Bounds;
.super Ljava/lang/Object;


# instance fields
.field public leftBottom:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field public rightTop:Lcom/baidu/platform/comapi/basestruct/GeoPoint;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v0, p1, p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/Bounds;->leftBottom:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v0, p3, p4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/Bounds;->rightTop:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    return-void
.end method
