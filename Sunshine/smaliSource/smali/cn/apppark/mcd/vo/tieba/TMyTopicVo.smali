.class public Lcn/apppark/mcd/vo/tieba/TMyTopicVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private TBId:Ljava/lang/String;

.field private commentNum:Ljava/lang/String;

.field private subtime:Ljava/lang/String;

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
.method public getCommentNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->commentNum:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->subtime:Ljava/lang/String;

    return-object v0
.end method

.method public getTBId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->TBId:Ljava/lang/String;

    return-object v0
.end method

.method public getTiebaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->tiebaName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->commentNum:Ljava/lang/String;

    return-void
.end method

.method public setSubtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->subtime:Ljava/lang/String;

    return-void
.end method

.method public setTBId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->TBId:Ljava/lang/String;

    return-void
.end method

.method public setTiebaName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->tiebaName:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyTopicVo;->topicId:Ljava/lang/String;

    return-void
.end method
