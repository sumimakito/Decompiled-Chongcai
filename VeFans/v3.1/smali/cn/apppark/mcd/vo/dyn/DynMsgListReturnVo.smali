.class public Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;
.super Lcn/apppark/mcd/vo/base/BaseReturnVo;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ItemWidth:I

.field private browseCount:Ljava/lang/String;

.field private collectCount:Ljava/lang/String;

.field private commentCount:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private forwardCount:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isFavorites:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private newsId:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private picHeight:I

.field private picPath:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private picWidth:I

.field private pics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareCount:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BaseReturnVo;-><init>()V

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getBrowseCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->browseCount:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->collectCount:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->commentCount:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->forwardCount:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFavorites()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->isFavorites:Ljava/lang/String;

    return-object v0
.end method

.method public getItemWidth()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->ItemWidth:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->newsId:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPicHeight()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->picHeight:I

    return v0
.end method

.method public getPicPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPicWidth()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->picWidth:I

    return v0
.end method

.method public getPics()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->pics:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->shareCount:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBrowseCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->browseCount:Ljava/lang/String;

    return-void
.end method

.method public setCollectCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->collectCount:Ljava/lang/String;

    return-void
.end method

.method public setCommentCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->commentCount:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setForwardCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->forwardCount:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsFavorites(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->isFavorites:Ljava/lang/String;

    return-void
.end method

.method public setItemWidth(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->ItemWidth:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNewsId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->newsId:Ljava/lang/String;

    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->note:Ljava/lang/String;

    return-void
.end method

.method public setPicHeight(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->picHeight:I

    return-void
.end method

.method public setPicPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->picPath:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setPicWidth(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->picWidth:I

    return-void
.end method

.method public setPics(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->pics:Ljava/util/ArrayList;

    return-void
.end method

.method public setShareCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->shareCount:Ljava/lang/String;

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->shareUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->type:Ljava/lang/String;

    return-void
.end method
