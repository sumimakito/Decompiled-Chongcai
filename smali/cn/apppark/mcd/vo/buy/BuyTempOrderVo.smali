.class public Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private clinchTime:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isPayInline:Ljava/lang/String;

.field private isPayMoney:Ljava/lang/String;

.field private isSelPayOnLine:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private orderItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProductVo;",
            ">;"
        }
    .end annotation
.end field

.field private picPath:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalNumber:Ljava/lang/String;

.field private totalPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isSelPayOnLine:Ljava/lang/String;

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getClinchTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->clinchTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPayInline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isPayInline:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPayMoney()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isPayMoney:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSelPayOnLine()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isSelPayOnLine:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isPayInline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    iput-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isSelPayOnLine:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isSelPayOnLine:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "0"

    iput-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isSelPayOnLine:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderItem()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProductVo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->orderItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPicPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->remark:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->remark:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->totalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->totalPrice:Ljava/lang/String;

    return-object v0
.end method

.method public setClinchTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->clinchTime:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsPayInline(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isPayInline:Ljava/lang/String;

    return-void
.end method

.method public setIsPayMoney(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isPayMoney:Ljava/lang/String;

    return-void
.end method

.method public setIsSelPayOnLine(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->isSelPayOnLine:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->number:Ljava/lang/String;

    return-void
.end method

.method public setOrderItem(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProductVo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->orderItem:Ljava/util/ArrayList;

    return-void
.end method

.method public setPicPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->picPath:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->price:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->remark:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->status:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotalNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->totalNumber:Ljava/lang/String;

    return-void
.end method

.method public setTotalPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->totalPrice:Ljava/lang/String;

    return-void
.end method
