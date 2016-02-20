.class public Lcn/apppark/mcd/vo/buy/BuyOrderVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private clinchTime:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private formatId:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private ids:Ljava/lang/String;

.field private isAlipay:Ljava/lang/String;

.field private isSel:Z

.field private isShowEdit:Z

.field private logId:Ljava/lang/String;

.field private logNum:Ljava/lang/String;

.field private logisticUrl:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private oldNumber:Ljava/lang/String;

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

.field private orderNumber:Ljava/lang/String;

.field private picPath:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private standardId:Ljava/lang/String;

.field private standardValue:Ljava/lang/String;

.field private statis:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalNumber:Ljava/lang/String;

.field private totalPrice:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isSel:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isShowEdit:Z

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

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->clinchTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->formatId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->ids:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAlipay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isAlipay:Ljava/lang/String;

    return-object v0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->logId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->logNum:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->logisticUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getOldNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->oldNumber:Ljava/lang/String;

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

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->orderItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->orderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPicPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->price:Ljava/lang/String;

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->price:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->price:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getStandardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->standardId:Ljava/lang/String;

    return-object v0
.end method

.method public getStandardValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->standardValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStatis()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->statis:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->totalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->totalPrice:Ljava/lang/String;

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->totalPrice:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->price:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->type:I

    return v0
.end method

.method public isSel()Z
    .locals 2

    const-string v0, "-1"

    iget-object v1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isSel:Z

    goto :goto_0
.end method

.method public isShowEdit()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isShowEdit:Z

    return v0
.end method

.method public setClinchTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->clinchTime:Ljava/lang/String;

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->format:Ljava/lang/String;

    return-void
.end method

.method public setFormatId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->formatId:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->id:Ljava/lang/String;

    return-void
.end method

.method public setIds(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->ids:Ljava/lang/String;

    return-void
.end method

.method public setIsAlipay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isAlipay:Ljava/lang/String;

    return-void
.end method

.method public setLogId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->logId:Ljava/lang/String;

    return-void
.end method

.method public setLogNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->logNum:Ljava/lang/String;

    return-void
.end method

.method public setLogisticUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->logisticUrl:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->msg:Ljava/lang/String;

    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->note:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->number:Ljava/lang/String;

    return-void
.end method

.method public setOldNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->oldNumber:Ljava/lang/String;

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

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->orderItem:Ljava/util/ArrayList;

    return-void
.end method

.method public setOrderNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->orderNumber:Ljava/lang/String;

    return-void
.end method

.method public setPicPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->picPath:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->price:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->productId:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->reason:Ljava/lang/String;

    return-void
.end method

.method public setSel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isSel:Z

    return-void
.end method

.method public setShowEdit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isShowEdit:Z

    return-void
.end method

.method public setStandardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->standardId:Ljava/lang/String;

    return-void
.end method

.method public setStandardValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->standardValue:Ljava/lang/String;

    return-void
.end method

.method public setStatis(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->statis:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->status:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotalNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->totalNumber:Ljava/lang/String;

    return-void
.end method

.method public setTotalPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->totalPrice:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->type:I

    return-void
.end method
