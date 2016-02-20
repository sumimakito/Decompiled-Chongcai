.class public Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private commentNum:I

.field private content:Ljava/lang/String;

.field private goodNum:Ljava/lang/String;

.field private subTime:Ljava/lang/String;

.field private tiebaId:Ljava/lang/String;

.field private tiebaName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private topicId:Ljava/lang/String;


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
.method public getCommentNum()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->commentNum:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->goodNum:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->subTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTiebaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->tiebaId:Ljava/lang/String;

    return-object v0
.end method

.method public getTiebaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->tiebaName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentNum(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->commentNum:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->content:Ljava/lang/String;

    return-void
.end method

.method public setGoodNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->goodNum:Ljava/lang/String;

    return-void
.end method

.method public setSubTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->subTime:Ljava/lang/String;

    return-void
.end method

.method public setTiebaId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->tiebaId:Ljava/lang/String;

    return-void
.end method

.method public setTiebaName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->tiebaName:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->topicId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TMyHistoryVo [tiebaId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->tiebaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tiebaName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->tiebaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commentNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->commentNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", goodNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->goodNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->topicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/mcd/vo/tieba/TMyHistoryVo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
