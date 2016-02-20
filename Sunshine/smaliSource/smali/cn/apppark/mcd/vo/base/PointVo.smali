.class public Lcn/apppark/mcd/vo/base/PointVo;
.super Lcn/apppark/mcd/vo/base/BaseReturnVo;


# instance fields
.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BaseReturnVo;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/PointVo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/PointVo;->y:Ljava/lang/String;

    return-object v0
.end method

.method public setX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/PointVo;->x:Ljava/lang/String;

    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/PointVo;->y:Ljava/lang/String;

    return-void
.end method
