.class public Lcn/apppark/mcd/vo/tieba/SonItemVo;
.super Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private commentId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private replyId:Ljava/lang/String;

.field private subTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/SonItemVo;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/SonItemVo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/SonItemVo;->replyId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/tieba/SonItemVo;->subTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/SonItemVo;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/SonItemVo;->content:Ljava/lang/String;

    return-void
.end method

.method public setReplyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/SonItemVo;->replyId:Ljava/lang/String;

    return-void
.end method

.method public setSubTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/tieba/SonItemVo;->subTime:Ljava/lang/String;

    return-void
.end method
