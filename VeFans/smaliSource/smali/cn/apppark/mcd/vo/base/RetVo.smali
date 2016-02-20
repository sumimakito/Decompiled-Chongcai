.class public Lcn/apppark/mcd/vo/base/RetVo;
.super Lcn/apppark/mcd/vo/base/BaseReturnVo;


# instance fields
.field private isSuccess:Z

.field private memberStatus:Ljava/lang/String;

.field private needImageCode:Ljava/lang/String;

.field private retFlag:I

.field private retMsg:Ljava/lang/String;

.field private smsEnabled:Ljava/lang/String;

.field private waitTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BaseReturnVo;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemberStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/RetVo;->memberStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedImageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/RetVo;->needImageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetFlag()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/base/RetVo;->retFlag:I

    return v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/RetVo;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsEnabled()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/base/RetVo;->smsEnabled:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/base/RetVo;->waitTime:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/vo/base/RetVo;->isSuccess:Z

    return v0
.end method

.method public setMemberStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/RetVo;->memberStatus:Ljava/lang/String;

    return-void
.end method

.method public setNeedImageCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/RetVo;->needImageCode:Ljava/lang/String;

    return-void
.end method

.method public setRetFlag(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/base/RetVo;->retFlag:I

    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/RetVo;->retMsg:Ljava/lang/String;

    return-void
.end method

.method public setSmsEnabled(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/base/RetVo;->smsEnabled:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/vo/base/RetVo;->isSuccess:Z

    return-void
.end method

.method public setWaitTime(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/base/RetVo;->waitTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RetVo [isSuccess="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/apppark/mcd/vo/base/RetVo;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/apppark/mcd/vo/base/RetVo;->retFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/base/RetVo;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/base/RetVo;->smsEnabled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needImageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/base/RetVo;->needImageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
