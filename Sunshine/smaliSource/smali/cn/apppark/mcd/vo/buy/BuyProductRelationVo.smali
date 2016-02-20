.class public Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;
.super Lcn/apppark/mcd/vo/base/BaseReturnVo;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appId:I

.field private firstValueId:I

.field private oriPrice:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private productId:I

.field private secondValueId:I

.field private standardId:I

.field private stock:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BaseReturnVo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->appId:I

    return v0
.end method

.method public getFirstValueId()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->firstValueId:I

    return v0
.end method

.method public getOriPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->oriPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->productId:I

    return v0
.end method

.method public getSecondValueId()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->secondValueId:I

    return v0
.end method

.method public getStandardId()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->standardId:I

    return v0
.end method

.method public getStock()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->stock:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->appId:I

    return-void
.end method

.method public setFirstValueId(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->firstValueId:I

    return-void
.end method

.method public setOriPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->oriPrice:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->price:Ljava/lang/String;

    return-void
.end method

.method public setProductId(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->productId:I

    return-void
.end method

.method public setSecondValueId(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->secondValueId:I

    return-void
.end method

.method public setStandardId(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->standardId:I

    return-void
.end method

.method public setStock(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->stock:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BuyProductRelationVo [standardId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->standardId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->productId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstValueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->firstValueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondValueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->secondValueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->stock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", picUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oriPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->oriPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/buy/BuyProductRelationVo;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
