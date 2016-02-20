.class public Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;
.super Lcn/apppark/mcd/vo/base/BaseReturnVo;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private commentCount:Ljava/lang/String;

.field private galleryPic:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isRebate:Ljava/lang/String;

.field private oriPrice:Ljava/lang/String;

.field private picHeight:I

.field private picPath:Ljava/lang/String;

.field private picWidth:I

.field private price:Ljava/lang/String;

.field private soldCount:Ljava/lang/String;

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
.method public getCommentCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->commentCount:Ljava/lang/String;

    return-object v0
.end method

.method public getGalleryPic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->galleryPic:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRebate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->isRebate:Ljava/lang/String;

    return-object v0
.end method

.method public getOriPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->oriPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPicHeight()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->picHeight:I

    return v0
.end method

.method public getPicPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPicWidth()I
    .locals 1

    iget v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->picWidth:I

    return v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getSoldCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->soldCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->commentCount:Ljava/lang/String;

    return-void
.end method

.method public setGalleryPic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->galleryPic:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsRebate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->isRebate:Ljava/lang/String;

    return-void
.end method

.method public setOriPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->oriPrice:Ljava/lang/String;

    return-void
.end method

.method public setPicHeight(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->picHeight:I

    return-void
.end method

.method public setPicPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->picPath:Ljava/lang/String;

    return-void
.end method

.method public setPicWidth(I)V
    .locals 0

    iput p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->picWidth:I

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->price:Ljava/lang/String;

    return-void
.end method

.method public setSoldCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->soldCount:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->type:Ljava/lang/String;

    return-void
.end method
