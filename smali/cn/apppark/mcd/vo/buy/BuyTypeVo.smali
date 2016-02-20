.class public Lcn/apppark/mcd/vo/buy/BuyTypeVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private price:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTypeVo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTypeVo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTypeVo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTypeVo;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTypeVo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTypeVo;->price:Ljava/lang/String;

    return-void
.end method
