.class public Lcn/apppark/mcd/vo/tieba/TReplayVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private content:Ljava/lang/String;

.field private replyId:Ljava/lang/String;

.field private replyName:Ljava/lang/String;

.field private subTime:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


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
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->replyId:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->replyName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->subTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->content:Ljava/lang/String;

    return-void
.end method

.method public setReplyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->replyId:Ljava/lang/String;

    return-void
.end method

.method public setReplyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->replyName:Ljava/lang/String;

    return-void
.end method

.method public setSubTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->subTime:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TReplayVo;->userName:Ljava/lang/String;

    return-void
.end method
