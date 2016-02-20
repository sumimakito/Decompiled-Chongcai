.class public Lcn/apppark/mcd/vo/tieba/TCommentVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private commentId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private floorNum:Ljava/lang/String;

.field private headUrl:Ljava/lang/String;

.field private hostUserId:Ljava/lang/String;

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

.field private isShowMore:Z

.field private sonItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TReplayVo;",
            ">;"
        }
    .end annotation
.end field

.field private subTime:Ljava/lang/String;

.field private totalCount:I

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->isShowMore:Z

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFloorNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->floorNum:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->headUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHostUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->hostUserId:Ljava/lang/String;

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

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->imgUrlItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSonItem()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TReplayVo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->sonItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->subTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->totalCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isShowMore()Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->isShowMore:Z

    return v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->content:Ljava/lang/String;

    return-void
.end method

.method public setFloorNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->floorNum:Ljava/lang/String;

    return-void
.end method

.method public setHeadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->headUrl:Ljava/lang/String;

    return-void
.end method

.method public setHostUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->hostUserId:Ljava/lang/String;

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

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->imgUrlItem:Ljava/util/ArrayList;

    return-void
.end method

.method public setShowMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->isShowMore:Z

    return-void
.end method

.method public setSonItem(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TReplayVo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->sonItem:Ljava/util/ArrayList;

    return-void
.end method

.method public setSubTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->subTime:Ljava/lang/String;

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->totalCount:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TCommentVo;->userName:Ljava/lang/String;

    return-void
.end method
