.class public Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private area_id:Ljava/lang/String;

.field private city_id:Ljava/lang/String;

.field private id:I

.field private isNext:Z

.field private name:Ljava/lang/String;

.field private provience_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->isNext:Z

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getArea_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->area_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->city_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvience_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->provience_id:Ljava/lang/String;

    return-object v0
.end method

.method public isNext()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->isNext:Z

    return v0
.end method

.method public setArea_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->area_id:Ljava/lang/String;

    return-void
.end method

.method public setCity_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->city_id:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNext(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->isNext:Z

    return-void
.end method

.method public setProvience_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyBaseAreaVo;->provience_id:Ljava/lang/String;

    return-void
.end method
