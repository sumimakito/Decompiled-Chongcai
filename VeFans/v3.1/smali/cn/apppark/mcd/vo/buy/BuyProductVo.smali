.class public Lcn/apppark/mcd/vo/buy/BuyProductVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private commentCount:Ljava/lang/String;

.field private createDate:Ljava/lang/String;

.field private detail:Ljava/lang/String;

.field private havaStore:Z

.field private id:Ljava/lang/String;

.field private isFavorite:Ljava/lang/String;

.field private isRebate:Ljava/lang/String;

.field private mainPara:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private oriPrice:Ljava/lang/String;

.field private picPath:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productPic:Ljava/lang/String;

.field private productSum:I

.field private retFlag:Ljava/lang/String;

.field private retMsg:Ljava/lang/String;

.field private soldCount:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->havaStore:Z

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getCommentCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->commentCount:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFavorite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->isFavorite:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRebate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->isRebate:Ljava/lang/String;

    return-object v0
.end method

.method public getMainPara()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->mainPara:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getOriPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->oriPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPicPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductPic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->productPic:Ljava/lang/String;

    return-object v0
.end method

.method public getProductSum()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->productSum:I

    return v0
.end method

.method public getRetFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->retFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSoldCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->soldCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isHavaStore()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->havaStore:Z

    return v0
.end method

.method public setCommentCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->commentCount:Ljava/lang/String;

    return-void
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->createDate:Ljava/lang/String;

    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->detail:Ljava/lang/String;

    return-void
.end method

.method public setHavaStore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->havaStore:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsFavorite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->isFavorite:Ljava/lang/String;

    return-void
.end method

.method public setIsRebate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->isRebate:Ljava/lang/String;

    return-void
.end method

.method public setMainPara(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->mainPara:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->number:Ljava/lang/String;

    return-void
.end method

.method public setOriPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->oriPrice:Ljava/lang/String;

    return-void
.end method

.method public setPicPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->picPath:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->price:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductPic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->productPic:Ljava/lang/String;

    return-void
.end method

.method public setProductSum(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->productSum:I

    return-void
.end method

.method public setRetFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->retFlag:Ljava/lang/String;

    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->retMsg:Ljava/lang/String;

    return-void
.end method

.method public setSoldCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->soldCount:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductVo;->type:Ljava/lang/String;

    return-void
.end method
