.class public Lcn/apppark/mcd/vo/buy/BuySignVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private retFlag:Ljava/lang/String;

.field private retMsg:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private signStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;-><init>()V

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getRetFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->retFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSignStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->signStr:Ljava/lang/String;

    return-object v0
.end method

.method public setRetFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->retFlag:Ljava/lang/String;

    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->retMsg:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->sign:Ljava/lang/String;

    return-void
.end method

.method public setSignStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->signStr:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-----------------BuySignVo [retMsg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->retFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/buy/BuySignVo;->signStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
