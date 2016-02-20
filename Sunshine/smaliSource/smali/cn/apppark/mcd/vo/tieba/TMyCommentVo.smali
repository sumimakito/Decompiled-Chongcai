.class public Lcn/apppark/mcd/vo/tieba/TMyCommentVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private commentId:Ljava/lang/String;

.field private commentNum:Ljava/lang/String;

.field private sonItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/SonItemVo;",
            ">;"
        }
    .end annotation
.end field

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
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->commentNum:Ljava/lang/String;

    return-object v0
.end method

.method public getSonItem()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/SonItemVo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->sonItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->subTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTiebaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->tiebaId:Ljava/lang/String;

    return-object v0
.end method

.method public getTiebaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->tiebaName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setCommentNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->commentNum:Ljava/lang/String;

    return-void
.end method

.method public setSonItem(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/SonItemVo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->sonItem:Ljava/util/ArrayList;

    return-void
.end method

.method public setSubTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->subTime:Ljava/lang/String;

    return-void
.end method

.method public setTiebaId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->tiebaId:Ljava/lang/String;

    return-void
.end method

.method public setTiebaName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->tiebaName:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/TMyCommentVo;->topicId:Ljava/lang/String;

    return-void
.end method
