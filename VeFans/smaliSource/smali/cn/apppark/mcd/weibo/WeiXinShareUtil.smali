.class public Lcn/apppark/mcd/weibo/WeiXinShareUtil;
.super Ljava/lang/Object;


# instance fields
.field private APP_KEY:Ljava/lang/String;

.field a:Landroid/app/Activity;

.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->APP_KEY:Ljava/lang/String;

    return-void
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getWeiXin()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->APP_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v0, p0, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iget-object v1, v1, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getWeixinAppID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->unregisterApp()V

    :cond_0
    return-void
.end method


# virtual methods
.method public sendWeiXinImgText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->getWeiXin()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    iput-object p4, v0, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    iput-object p1, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    iput-object p2, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    const-string v0, "webpage"

    invoke-direct {p0, v0}, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    if-eqz p5, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput v0, v2, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    iget-object v0, p0, Lcn/apppark/mcd/weibo/WeiXinShareUtil;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
