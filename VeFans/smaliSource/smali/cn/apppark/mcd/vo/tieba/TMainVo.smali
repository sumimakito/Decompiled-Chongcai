.class public Lcn/apppark/mcd/vo/tieba/TMainVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# instance fields
.field private commentNum:I

.field private content:Ljava/lang/String;

.field private goodNum:I

.field private headUrl:Ljava/lang/String;

.field private imgNum:Ljava/lang/String;

.field private imgUrlItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/ImgVo;",
            ">;"
        }
    .end annotation
.end field

.field private isCollect:Ljava/lang/String;

.field private isGood:Ljava/lang/String;

.field private miniImgUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/ImgVo;",
            ">;"
        }
    .end annotation
.end field

.field private subTime:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private topicId:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentNum()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->commentNum:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodNum()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->goodNum:I

    return v0
.end method

.method public getHeadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->headUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImgNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->imgNum:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrlItem()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/ImgVo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->imgUrlItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsCollect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->isCollect:Ljava/lang/String;

    return-object v0
.end method

.method public getIsGood()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->isGood:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniImgUrl()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/ImgVo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->miniImgUrl:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->subTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentNum(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->commentNum:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->content:Ljava/lang/String;

    return-void
.end method

.method public setGoodNum(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->goodNum:I

    return-void
.end method

.method public setHeadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->headUrl:Ljava/lang/String;

    return-void
.end method

.method public setImgNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->imgNum:Ljava/lang/String;

    return-void
.end method

.method public setImgUrlItem(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/ImgVo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->imgUrlItem:Ljava/util/ArrayList;

    return-void
.end method

.method public setIsCollect(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->isCollect:Ljava/lang/String;

    return-void
.end method

.method public setIsGood(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->isGood:Ljava/lang/String;

    return-void
.end method

.method public setMiniImgUrl(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/ImgVo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->miniImgUrl:Ljava/util/ArrayList;

    return-void
.end method

.method public setSubTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->subTime:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->topicId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMainVo;->userId:Ljava/lang/String;

    return-void
.end method
