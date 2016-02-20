.class public Lcn/apppark/mcd/vo/dyn/DynRssHead5003Vo;
.super Lcn/apppark/mcd/vo/base/BaseReturnVo;


# instance fields
.field private link:Ljava/lang/String;

.field private pubDate:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/mcd/vo/base/BaseReturnVo;-><init>()V

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynRssHead5003Vo;->title:Ljava/lang/String;

    iput-object p2, p0, Lcn/apppark/mcd/vo/dyn/DynRssHead5003Vo;->pubDate:Ljava/lang/String;

    iput-object p3, p0, Lcn/apppark/mcd/vo/dyn/DynRssHead5003Vo;->link:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynRssHead5003Vo;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getPubDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynRssHead5003Vo;->pubDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/vo/dyn/DynRssHead5003Vo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynRssHead5003Vo;->link:Ljava/lang/String;

    return-void
.end method

.method public setPubDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynRssHead5003Vo;->pubDate:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/vo/dyn/DynRssHead5003Vo;->title:Ljava/lang/String;

    return-void
.end method
