.class public final Leg;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;)V
    .locals 0

    iput-object p1, p0, Leg;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;Lef;)V
    .locals 0

    invoke-direct {p0, p1}, Leg;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Leg;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "255"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Leg;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Leh;

    invoke-direct {v1, p0}, Leh;-><init>(Leg;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Leg;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    iget-object v1, p0, Leg;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;

    const-class v2, Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    invoke-static {v0, v2}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->a(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;)Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    iget-object v0, p0, Leg;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->b(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;)Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leg;->a:Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->c(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
